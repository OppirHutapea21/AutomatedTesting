#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios 
#<> (placeholder)
#""
## (Comments)

#Sample Feature Definition Template
@tag
Feature: Test For Tokopedia Contact


@tag1
Scenario: Title of your scenario
Given Mengklik gambar img-problem
When Setelah menekan button gambar img-problem 
	And Menampilkan 8 pilihan

Scenario: Untuk menambahkan laporan scam
When: menekan pilihan scram
	Then: menampilkan keterangan laporan scram dan pilihan "Apakah Anda butuh bantuan lebih lanjut?"
	And: Saya memilih pilihan "Apakah Anda butuh bantuan lebih lanjut?"
	
	Scenario: Butuh bantuan lain
	When: menekan pilihan butuh bantuan 
	Then: muncul beberapa isian form
	And: TextArea, menuliskan detail permasalahan yang dihadapi 
		Then: Menuliskan detail masalah pada TextArea  
			And: Jumlah karakter yang dimasukkan 30 status="accepted/valid"
			And: Jumlah karakter yang dimasukkan lebih dari 30 status="accepted/valid"
			And: Jumlah karakter yang dimasukkan kurang dari 30 karakter staus ="accepted/valid"

Scenario: Mengisi Form untuk Nama
	Then: isi form nama
		And: jumlah karakter yang dimasukkan 3 status ="accepted/valid"
		And: jumlah karakter yang dimasukkan kurang dari 3 status="accepted/valid"
		And: jumlah karakter yang dimasukkan lebig dari 3 status="accepted/valid"
		
Scenario: Mengisi Form untuk email
Then: isi form email
	And: Tidak menggunakan simbol '@' status="accepted/valid"
	And: Tidak menggunakan simbol @ status="accepted/valid"
	
Scenario: Upload gambar
Then: mengupload gambar 
	And: status accepted/valid untuk semua extention gambar(JPG, JPEG,PNG)
Examples:
    | name  |value | status |
    | name1 |  5   | success|
    | name2 |  7   | Fail   |
    
