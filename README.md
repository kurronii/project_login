# Sistem Login

Sistem login lengkap dengan frontend React dan backend Node.js, menampilkan autentikasi JWT, database MySQL, dan desain responsif.

## Fitur

- ✅ **Form Login**: Email/Username dan Password
- ✅ **Validasi Form**: Validasi field wajib dan format email
- ✅ **Penanganan Error**: Menampilkan pesan error untuk login yang gagal
- ✅ **Protected Routes**: Dashboard hanya bisa diakses dengan JWT yang valid
- ✅ **Show/Hide Password**: Toggle visibilitas password
- ✅ **Desain Responsif**: Ramah mobile dan desktop dengan Bootstrap
- ✅ **UI Profesional**: Desain bersih dan modern
- ✅ **Autentikasi JWT**: Autentikasi berbasis token yang aman
- ✅ **HTTP-Only Cookies**: Manajemen session yang aman
- ✅ **Password Hashing**: bcrypt untuk penyimpanan password yang aman
- ✅ **Fungsi Logout**: Terminasi session yang tepat

## Tech Stack

- **Backend**: Node.js, Express.js
- **Frontend**: React.js
- **Database**: MySQL
- **Autentikasi**: JWT + HTTP-Only Cookies
- **Password Hashing**: bcrypt
- **Styling**: Bootstrap 5
- **Validasi**: express-validator

## Instalasi

### Prasyarat

- Node.js (v14 atau lebih tinggi)
- MySQL (v5.7 atau lebih tinggi)
- npm atau yarn

### Petunjuk Setup

1. **Clone dan Install Dependencies**
   ```bash
   npm run install-all
   ```

2. **Setup Database**
   - Buat database MySQL dengan nama `login_system`
   - Jalankan script SQL:
   ```bash
   mysql -u root -p < database.sql
   ```

3. **Konfigurasi Environment**
   - Copy `env.example` menjadi `.env`
   - Update kredensial database di `.env`:
   ```
   DB_HOST=localhost
   DB_USER=root
   DB_PASSWORD=your_password
   DB_NAME=login_system
   JWT_SECRET=your-super-secret-jwt-key
   ```

4. **Jalankan Aplikasi**
   ```bash
   npm run dev
   ```

   Ini akan menjalankan:
   - Backend server di `http://localhost:5000`
   - Frontend React app di `http://localhost:3000`

## Penggunaan

### Akun Test Default
- **Email**: admin@example.com
- **Password**: password123

### API Endpoints

- `POST /api/register` - Registrasi user
- `POST /api/login` - Login user
- `GET /api/dashboard` - Dashboard terlindungi (memerlukan JWT)
- `POST /api/logout` - Logout user
- `GET /api/verify` - Verifikasi JWT token

### Ringkasan Fitur

1. **Form Login**
   - Validasi email
   - Field password dengan toggle show/hide
   - Validasi form dengan pesan error
   - Loading states

2. **Autentikasi**
   - JWT tokens dengan masa berlaku 24 jam
   - HTTP-only cookies untuk keamanan
   - Protected routes
   - Verifikasi token otomatis

3. **Dashboard**
   - Menampilkan informasi user
   - Fungsi logout yang aman
   - Desain responsif

4. **Keamanan**
   - Password hashing dengan bcrypt
   - Validasi JWT token
   - HTTP-only cookies
   - Konfigurasi CORS

## Struktur Project

```
├── client/                 # React frontend
│   ├── src/
│   │   ├── components/    # React components
│   │   │   ├── Login.js   # Komponen form login
│   │   │   └── Dashboard.js # Komponen dashboard
│   │   ├── App.js         # Komponen app utama
│   │   └── index.js       # Entry point
│   └── package.json
├── server.js              # Express backend server
├── database.sql           # Script setup database
├── package.json           # Dependencies backend
└── README.md
```

## Fitur Keamanan

- **Password Hashing**: Semua password di-hash menggunakan bcrypt
- **JWT Tokens**: Autentikasi berbasis token yang aman
- **HTTP-Only Cookies**: Mencegah serangan XSS
- **Input Validation**: Validasi server-side untuk semua input
- **CORS Protection**: Dikonfigurasi untuk origin tertentu

## Development

### Menjalankan dalam Mode Development

```bash
# Jalankan frontend dan backend
npm run dev

# Atau jalankan secara terpisah
npm run server  # Backend saja
npm run client  # Frontend saja
```

### Manajemen Database

Aplikasi akan otomatis membuat tabel users pada run pertama. Anda juga bisa menjalankan script SQL secara manual:

```bash
mysql -u root -p login_system < database.sql
```

## Deployment Production

1. Set `NODE_ENV=production` di environment Anda
2. Gunakan JWT secret yang kuat
3. Konfigurasi kredensial database yang tepat
4. Setup HTTPS untuk transmisi cookie yang aman
5. Gunakan reverse proxy (nginx) untuk production

## Troubleshooting

### Masalah Umum

1. **Error Koneksi Database**
   - Pastikan MySQL berjalan
   - Verifikasi kredensial database di `.env`
   - Pastikan database `login_system` ada

2. **Error CORS**
   - Pastikan backend berjalan di port 5000
   - Verifikasi konfigurasi CORS di server.js

3. **Masalah JWT Token**
   - Pastikan JWT_SECRET sudah di-set di `.env`
   - Verifikasi masa berlaku token (24 jam default)

## Cara Menjalankan Project

### Opsi 1: Menggunakan start.bat (Recommended)
```bash
./start.bat
```

### Opsi 2: Manual Setup
```bash
# 1. Install dependencies
npm run install-all

# 2. Setup database (buat database login_system di MySQL)
# 3. Copy env.example ke .env dan edit konfigurasi
cp env.example .env

# 4. Jalankan aplikasi
npm run dev
```

### Opsi 3: Setup Otomatis
```bash
# Jalankan setup otomatis
node setup.js
```

## Akses Aplikasi

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:5000
- **Login**: http://localhost:3000/login
- **Dashboard**: http://localhost:3000/dashboard (setelah login)

## Lisensi

Project ini open source dan tersedia di bawah MIT License.