<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penulis extends CI_Controller {

	function __construct()
    {
        parent::__construct();

        $this->load->model("penulis_model");
        $this->load->library("form_validation");
        
    }

	public function index()
	{
		$this->load->view("template/header");
        $this->load->view("template/sidebar");
        $data["penulis"] = $this->penulis_model->tampil_data();
		$this->load->view("penulis/list",$data);
		$this->load->view("template/footer");
    }
    
    function tambah()
    {

        $this->form_validation->set_rules('nama', 'nama', 'required');
        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('error', "Data Gagal Di Tambahkan");
            redirect('penulis');
        } else {
            $data = array(
                "nama" => $_POST['nama'],
                "alamat" => $_POST['alamat'],
                "hp" => $_POST['hp'],
                
            );
            $this->penulis_model->tambah($data);
            $this->session->set_flashdata('sukses', "Data Berhasil Disimpan");
            redirect('penulis');
        }
    }

    public function edit($id = null)
    {
        $this->form_validation->set_rules('idpenulis', 'idpenulis', 'required');
        $this->form_validation->set_rules('nama', 'nama', 'required');
        if($this->form_validation->run()==FALSE){
            $this->session->set_flashdata('error',"Data Gagal Di Edit");
            redirect('penulis');
        }else{
            $data=array(
                "nama" => $_POST['nama'],
                "alamat" => $_POST['alamat'],
                "hp" => $_POST['hp']
            );
            $this->penulis_model->update($data);
            $this->session->set_flashdata('sukses',"Data Berhasil Diedit");
            redirect('penulis');
        }
    }

    public function hapus($id)
    {
        if($id==""){
			$this->session->set_flashdata('error',"Data Anda Gagal Di Hapus");
			redirect('penulis');
		}else{
			$this->penulis_model->hapus($id);
			$this->session->set_flashdata('sukses',"Data Berhasil Dihapus");
			redirect('penulis');
		}
    }
    
}