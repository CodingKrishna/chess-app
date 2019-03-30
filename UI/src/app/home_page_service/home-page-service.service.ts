import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class HomePageServiceService {

  constructor(private http:HttpClient ) { }


  getservice(email,password): Observable<any> {


    const URL="http://localhost:8080/Chess/Login?email="+email+"&password="+password+"";

        return this.http.get(URL);

      }

}
