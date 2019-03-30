import { Component, OnInit } from '@angular/core';
import{ HomePageServiceService } from '../home_page_service/home-page-service.service'

@Component({
  selector: 'app-home-page',
  templateUrl: './home-page.component.html',
  styleUrls: ['./home-page.component.css'],
  providers:[HomePageServiceService]
})
export class HomePageComponent implements OnInit {
result;
emailid;
loginpassword;

  constructor(private HomePageServiceService:HomePageServiceService) { }

  ngOnInit() {
  }

logindetails(){
  this.HomePageServiceService.getservice(this.emailid,this.loginpassword).subscribe(res=> {

    this.result=res.success;
});

}
}
