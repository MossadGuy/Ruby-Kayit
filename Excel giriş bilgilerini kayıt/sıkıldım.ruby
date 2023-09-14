require 'csv'

def excel_uye_kaydet(uye_bilgileri)
  CSV.open('denek.csv', 'a+') do |csv|
    csv << [uye_bilgileri[:kunad], uye_bilgileri[:ad], uye_bilgileri[:soyad], uye_bilgileri[:email], uye_bilgileri[:sifre]]
  end
end

def uye_bilgisi_gir
  puts "\nÜye bilgilerini girin:\n"
  print "Kunlanıcı Adı: "
  kunad = gets.chomp
  print "Ad: "
  ad = gets.chomp
  print "Soyad: "
  soyad = gets.chomp
  print "Email: "
  email = gets.chomp
  print "Şifre: " 
  sifre = gets.chomp

  uye_bilgileri = {kunad: kunad, ad: ad, soyad: soyad, email: email, sifre: sifre}
  excel_uye_kaydet(uye_bilgileri)
  puts "Üye bilgileri başarıyla kaydedildi!"
end

uye_bilgisi_gir
