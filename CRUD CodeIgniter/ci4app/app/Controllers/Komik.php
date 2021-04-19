<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{
    protected $komikModel;

    public function __construct()
    {
        $this->komikModel = new KomikModel();
        $this->req = \Config\Services::request();
    }

    public function index()
    {
        // $komik = $this->komikModel->findAll();
        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->komikModel->getKomik()
        ];


        return view('komik/index', $data);
    }
    public function detail($slug)
    {

        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];
        //jika tidak ada tabel
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul Komik' . $slug . 'Tidak Ditemukan.');
        }
        return view('komik/detail', $data);
    }
    public function create()
    {
        // session();
        $data = [
            'title' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation()

        ];
        return view('komik/create', $data);
    }
    public function save()
    {
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    //'uploaded' => 'Pilih gambar sampul terlebih dahulu',
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/komik/create')->withInput();
        }
        //ambil gambar
        $fileSampul = $this->req->getFile('sampul');
        //apakah tidak ada gambar yang diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.png';
        } else {
            //generate nama sampul random
            $namaSampul = $fileSampul->getRandomName();
            //pindah file ke img
            $fileSampul->move('img', $namaSampul);
        }

        //nama file sama nama upload
        // //ambil gambar
        // $fileSampul = $this->req->getFile('sampul');
        // //pindah file ke img
        // $fileSampul->move('img');
        // //ambil nama file 
        // $namaSampul = $fileSampul->getName();

        // $request = service('request');
        // dd($request->getVar());
        $slug = url_title($this->req->getVar('judul'), '-', true);
        $this->komikModel->save(
            [
                'judul' => $this->req->getVar('judul'),
                'slug' => $slug,
                'penulis' => $this->req->getVar('penulis'),
                'penerbit' => $this->req->getVar('penerbit'),
                'sampul' => $namaSampul
            ]
        );

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan');

        return redirect()->to('/komik');
    }
    public function delete($id)
    {
        //cari gambar berdasarkan id
        $komik = $this->komikModel->find($id);
        //cek jika gambar default
        if ($komik['sampul'] != 'default.png') {

            //hapus gambar
            unlink('img/' . $komik['sampul']);
        }

        $this->komikModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil dihapus');
        return redirect()->to('/komik');
    }
    public function edit($slug)
    {
        $data = [
            'title' => 'Form Ubah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];
        return view('komik/edit', $data);
    }
    public function update($id)
    {
        //cek judul
        $komikLama = $this->komikModel->getKomik($this->req->getVar('slug'));
        if ($komikLama['judul'] == $this->req->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }
        if (!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    //'uploaded' => 'Pilih gambar sampul terlebih dahulu',
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]
        ])) {
            return redirect()->to('/komik/edit/' . $this->req->getVar('slug'))->withInput();
        }

        $fileSampul = $this->req->getFile('sampul');

        //cek gambar, apakah menggunakan gambar lama
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->req->getvar('sampulLama');
        } else {
            //generate nama file random
            $namaSampul = $fileSampul->getRandomName();
            //pindahkan gambar
            $fileSampul->move('img', $namaSampul);
            //hapus file yang lama
            unlink('img/' . $this->req->getvar('sampulLama'));
        }

        $slug = url_title($this->req->getVar('judul'), '-', true);
        $this->komikModel->save(
            [
                'id' => $id,
                'judul' => $this->req->getVar('judul'),
                'slug' => $slug,
                'penulis' => $this->req->getVar('penulis'),
                'penerbit' => $this->req->getVar('penerbit'),
                'sampul' => $namaSampul
            ]
        );
        session()->setFlashdata('pesan', 'Data berhasil diubah');

        return redirect()->to('/komik');
    }
}
