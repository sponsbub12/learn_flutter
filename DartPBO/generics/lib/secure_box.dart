class SecureBox<T>{
  //T = ada suatu tipe data apapun itu yang akan menggantikan
  //posisi T
  final T _data;
  final String _pin;

  SecureBox(this._data,this._pin);

  T getData(String pin) => (pin == _pin) ? _data : null;
}