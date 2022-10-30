
class DateService {

    String getFullDate() {
    String date = '';
    final now = DateTime.now();
    date += '${now.year}-';
    if(now.month.toString().length <= 1){
      date += '0${now.month}-';
    }else{
      date += '${now.month}-';
    }
    if(now.day.toString().length <= 1){
      date += '0${now.day}';
    }else{
      date += '${now.day} ';
    }

    date += '${now.hour}:';

    if(now.minute.toString().length <= 1){
      date += '0${now.minute} ';
    }else{
      date += '${now.minute}:';
    }

    if(now.minute.toString().length <= 1){
      date += '0${now.second} ';
    }else{
      date += now.second.toString();
    }
    

    return date;
  }
}