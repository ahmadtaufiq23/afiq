<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Penulis_model extends CI_Model{  

    private $_table = "penulis";

    function tampil_data()
    {
        return $this->db->query("select * from penulis");
    }
    
    function tambah($data)
    {
        $this->db->insert('penulis',$data);
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["idpenulis" => $id])->row();
    }

    public function update($data)
    {
        $this->db->where('idpenulis',$_POST['idpenulis']);
        $this->db->update('penulis',$data);
    }

   function hapus($id)
    {
        $this->db->where('idpenulis',$id);
        $this->db->delete('penulis');

    }

    

}
