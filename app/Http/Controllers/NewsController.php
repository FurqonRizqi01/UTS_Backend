<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\News;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // menggunakan model news untuk select data
        $news = News::all();

		if (!empty($news)) {
			$response = [
				'message' => 'Menampilkan Data Semua Berita',
				'data' => $news,
			];
			return response()->json($response, 200); // Kode status 200: OK
		} else {
			$response = [
				'message' => 'Data tidak ditemukan'
			];
			return response()->json($response, 200); // Kode status 200: OK
		}
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    // Mengupdate data berita
    public function store(Request $request)
    {
        #validate
        $validateData = $request->validate([
            'title' => 'required',
            'author' => 'required',
            'description' => 'required',
            'content' => 'required',
            'url' => 'required',
            'url_image' => 'required',
            'published_at' => 'required',
            'category' => 'required',

        ]);

        $news = News::create($validateData);

		$response = [
			'message' => 'Data Berita Berhasil Dibuat',
			'data' => $news,
		];

		return response()->json($response, 201); // Kode status 200: berhasil dibuat
    }

    /**
     * Display the specified resource.
     */
    // Mencari data Berita
    public function show($id)
    {
        $news = News::find($id);

		if ($news) {
			$response = [
				'message' => 'Mendapatkan detail Berita',
				'data' => $news
			];
	
			return response()->json($response, 200); // Kode status 200: OK
		} else {
			$response = [
				'message' => 'Data tidak ditemukan'
			];
			
			return response()->json($response, 404); // Kode status 404: Not Found
		}
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    // Mengupdate data berita
    public function update(Request $request, string $id)
    {
        $news = News::find($id);

		if ($news) {
			$response = [
				'message' => 'Berita telah diupdate',
				'data' => $news->update($request->all())
			];
	
			return response()->json($response, 200); // Kode status 200: OK
		} else {
			$response = [
				'message' => 'Data tidak ditemukan'
			];

			return response()->json($response, 404); // Kode status 404: Not Found
		}
    }

    /**
     * Remove the specified resource from storage.
     */
    // Menghapus data berita
    public function destroy($id)
    {
        $news = News::find($id);

		if ($news) {
			$response = [
				'message' => 'Berita telah dihapus',
				'data' => $news->delete()
			];

			return response()->json($response, 200); // Kode status 200: OK
		} else {
			$response = [
				'message' => 'Data tidak ditemukan'
			];

			return response()->json($response, 404); // Kode status 404: Not Found
		}
    }

    #Mencari berita berdasar title
    public function search($title)
    {
        // Implementasi pencarian berita berdasarkan judul
        $news = News::where('title', 'like', '%' . $title . '%')->get();

        if ($news->isEmpty()) {
            // Kode respons jika data tidak ditemukan
            $response = [
                'message' => 'Data tidak ditemukan',
            ];
            return response()->json($response, 404); // Kode status 404: Not Found
        } else {
            // Kode respons jika data berhasil ditemukan
            $response = [
                'message' => 'Berita ditemukan',
                'data' => $news,
            ];
            return response()->json($response, 200); // Kode status 200: OK
        }
    }

    # Metode khusus mencari kategori sport,finance,automotive
    public function category($category)
    {
        // Implementasi pencarian berita berdasarkan kategori
        $news = News::where('category', $category)->get();

        if ($news->isEmpty()) {
            // Kode respons jika data tidak ditemukan
            $response = [
                'message' => 'Tidak ditemukan kategori yang dicari',
            ];
            return response()->json($response, 404); // Kode status 404: Not Found
        } else {
            // Kode respons jika data berhasil ditemukan
            $response = [
                'message' => 'Kategori ditemukan',
                'data' => $news,
            ];
            return response()->json($response, 200); // Kode status 200: OK
        }
    }
}
