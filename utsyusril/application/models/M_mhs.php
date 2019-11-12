<?php 

defined('BASEPATH') OR exit('No direct script access allowed');
class M_mhs extends CI_Model
{
	public function ambilmhs(){
		$query = $this->db->get('mahasiswa');
		return $query->result_array();
	}
	public function editambilmhs($id){
		$this->db->where('id',$id);
		$query = $this->db->get('mahasiswa');
		return $query->result_array();
	}
	public function tambah_mhs()
	{
		$data = array(
		'nim'=>$this->input->post('nim'),
		'nama_mhs' => $this->input->post('nama'),
		'jenis_kelamin' => $this->input->post('jk'),
		'alamat' => $this->input->post('alamat'),
		'no_hp' => $this->input->post('no_hp'));

	return $this->db->insert('mahasiswa',$data);
	}

	public function edit_mhs()
	{
		$data = array(
		'nim'=>$this->input->post('nim'),
		'nama_mhs' => $this->input->post('nama'),
		'jenis_kelamin' => $this->input->post('jk'),
		'alamat' => $this->input->post('alamat'),
		'no_hp' => $this->input->post('no_hp'));

		$id_lama = $this->input->post('id');
		$this->db->where('id', $id_lama);
		return $this->db->update('mahasiswa',$data);
	}
	public function hapus_mhs($id){
		return $this->db->delete('mahasiswa',array('id' =>$id));
	}
	public function ambilriwayat(){
		$query = $this->db->get('log');
		return $query->result_array();
	}
}

