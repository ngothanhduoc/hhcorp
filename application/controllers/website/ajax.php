<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Ajax extends CI_Controller {

    public $data;

    public function __construct() {
        parent::__construct();
        $this->load->model('frontend/m_home');
    }

    public function home_circle($offset = 0) {
        $data = $this->data;
        $this->m_home->_table = "group_product";
        $data['group_product'] = $this->m_home->get_table($offset, 3);

        $this->load->view("website/circle", $data);
    }

    public function get_num_product() {
        $this->m_home->_table = "group_product";
        $data = $this->m_home->count_row_table();
        die(json_encode($data));
    }

    public function get_list_product() {
        $my_address = $this->input->post("my_address", TRUE);
        $id_group_product = $this->input->post("id_group_product", TRUE);

        $this->m_home->_table = "product";
        $product = $this->m_home->get_where("product", array("id_group_product" => $id_group_product));

        $start = $this->getLatLong($my_address);

        if (!empty($product)) {
            foreach ($product as $key => $value) {
                $finish = $this->getLatLong($value['address']);

                $distance = $this->Haversine($start, $finish);

                $km = $distance * 1.609344;
                $product_km[$key] = $km;
                $product[$key]['km'] = round($km, 2);
            }
        }
        array_multisort($product_km, SORT_ASC, $product);
        $data['product'] = $product;

        $this->load->view("website/list_product", $data);
    }

    public function getLatLong($address) {

        $address = str_replace(' ', '+', $address);
        $url = 'http://maps.googleapis.com/maps/api/geocode/json?address=' . $address . '&sensor=false';

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $geoloc = curl_exec($ch);

        $json = json_decode($geoloc);
        return array($json->results[0]->geometry->location->lat, $json->results[0]->geometry->location->lng);
    }

    public function Haversine($start, $finish) {

        $theta = $start[1] - $finish[1];
        $distance = (sin(deg2rad($start[0])) * sin(deg2rad($finish[0]))) + (cos(deg2rad($start[0])) * cos(deg2rad($finish[0])) * cos(deg2rad($theta)));
        $distance = acos($distance);
        $distance = rad2deg($distance);
        $distance = $distance * 60 * 1.1515;

        return round($distance, 2);
    }

}
