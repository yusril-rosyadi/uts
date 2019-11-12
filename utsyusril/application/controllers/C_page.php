<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class C_page extends CI_Controller
{
	
	public function index ()
	{
		$data['mhs'] = $this->M_mhs->ambilmhs();
		$this->load->view('v_mhs',$data);
	}

	public function tambahmhs()
	{
		$this->load->view('v_mhs_tambah');
	}

	public function editmhs($id)
	{
		$data['mhs'] = $this->M_mhs->editambilmhs($id);
		$this->load->view('v_mhs_edit',$data);		
	}
	public function v_riwayat ()
	{
		$data['mhs'] = $this->M_mhs->ambilriwayat();
		$this->load->view('v_riwayat',$data);
	}
}
