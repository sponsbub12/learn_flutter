class PersegiPanjang{
  // _ <- underscore pada dart membuat sebuah variable menjadi private
  double _panjang , _lebar;
  void setPanjang(double value){
    if(value<0){
      //value = value * -1;
      value *= -1;
    }
    //masukkan value ke panjang
    _panjang = value;
  }
  double getPanjang(){
    return _panjang;
  }
  //properti setter dan getter pada dart
  //penggunaan nya hampir sama seperti field
  //kita dapat membuat properti tanpa ada field.
  void set lebar(double value){
    if(value<0){
      value *= -1;
    }
    _lebar = value;
  }
  //pada getter tidak perlu memakai ()
  double get lebar{
    return _lebar;
  }
  //persegi panjang punya luas. tidak dapat menghitung luas
  double hitungLuas(){
    return _panjang * _lebar;
  }
  
  double get luas => _panjang * lebar;
}