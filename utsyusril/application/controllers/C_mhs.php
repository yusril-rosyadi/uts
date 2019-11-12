<?php 


class C_MHS extends CI_Controller{

	public function tambahmhs()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama','nama','required');


		if (!$this->form_validation->run()==false) {
			$this->M_mhs->tampil();
			redirect('C_page/');
		}else {
			redirect('C_page/tambahmhs');
		}
	}
	public function editmhs()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama','nama','required');

		if ($this->form_validation->run()!=false) {
			$this->M_mhs->edit_mhs();
			redirect('C_page');
		}else{
			redirect('C_page/editmhs');
		}
	}

	public function hapusmhs($id) {
		if ($id != ""){
			$this->M_mhs->hapus_mhs($id);
			redirect('C_page');
		}else{
			redirect('C_page');
		}
	}
	
}

