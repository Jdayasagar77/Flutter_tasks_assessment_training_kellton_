class State1 {
  String image;
  String name1;
  String capital;
  String chiefMinister;
  String area;
  String description;

  State1({
    required this.image,
    required this.name1,
    required this.capital,
    required this.chiefMinister,
    required this.area,
    required this.description,
  });
}

class State1Service {
  List<State1> getState1s() {
    List<State1> state1s = [
      State1(
        image: 'images/IN-DL.png',
        name1: 'Delhi',
        capital: 'Delhi',
        chiefMinister: 'Arvind Kejriwal',
        area: '1485 km sq',
        description:
            'Officially the National Capital Territory (NCT) of Delhi, is a union territory of India containing New Delhi, the capital of India. Straddling the Yamuna river, primarily its western or right bank, Delhi shares borders with the state1 of Uttar Pradesh in the east and with the state1 of Haryana in the remaining directions.',
      ),
      State1(
        image: 'images/IN-MH.png',
        name1: 'Maharashtra',
        capital: 'Mumbai',
        chiefMinister: 'Bhagat Singh Koshyari',
        area: '1485 km sq',
        description:
            'Officially the National Capital Territory (NCT) of Delhi, is a union territory of India containing New Delhi, the capital of India. Straddling the Yamuna river, primarily its western or right bank, Delhi shares borders with the state1 of Uttar Pradesh in the east and with the state1 of Haryana in the remaining directions.',
      ),
      State1(
        image: 'images/IN-TN.png',
        name1: 'Tamil Nadu',
        capital: 'Chennai',
        chiefMinister: 'Banwarilal Purohit',
        area: '1485 km sq',
        description:
            'Officially the National Capital Territory (NCT) of Delhi, is a union territory of India containing New Delhi, the capital of India. Straddling the Yamuna river, primarily its western or right bank, Delhi shares borders with the state1 of Uttar Pradesh in the east and with the state1 of Haryana in the remaining directions.',
      ),
      State1(
        image: 'images/IN-RJ.png',
        name1: 'Punjab',
        capital: 'Chandigarh',
        chiefMinister: 'S Banwarilal Purohit',
        area: '1485 km sq',
        description:
            'Officially the National Capital Territory (NCT) of Delhi, is a union territory of India containing New Delhi, the capital of India. Straddling the Yamuna river, primarily its western or right bank, Delhi shares borders with the state1 of Uttar Pradesh in the east and with the state1 of Haryana in the remaining directions.',
      ),
      State1(
        image: 'images/IN-TG.png',
        name1: 'Telangana',
        capital: 'Delhi',
        chiefMinister: 'K Chandrashekar Rao',
        area: '1485 km sq',
        description:
            'Officially the National Capital Territory (NCT) of Delhi, is a union territory of India containing New Delhi, the capital of India. Straddling the Yamuna river, primarily its western or right bank, Delhi shares borders with the state1 of Uttar Pradesh in the east and with the state1 of Haryana in the remaining directions.',
      ),
      State1(
        image: 'images/IN-KL.png',
        name1: 'Karnataka',
        capital: 'Banglore',
        chiefMinister: 'Thawar Chand Gehlot',
        area: '1485 km sq',
        description:
            'Officially the National Capital Territory (NCT) of Delhi, is a union territory of India containing New Delhi, the capital of India. Straddling the Yamuna river, primarily its western or right bank, Delhi shares borders with the state1 of Uttar Pradesh in the east and with the state1 of Haryana in the remaining directions.',
      ),
    ];
    return state1s;
  }
}
