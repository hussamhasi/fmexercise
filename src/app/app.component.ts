import { Component } from '@angular/core';
import { Router } from '@angular/router';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  isAuth: boolean;
  constructor(private router: Router){
  }
  ngDoCheck(): void {
    this.isAuth = !!localStorage.getItem('user') && !!localStorage.getItem('access_token');

  }
  title = 'company';
  logout(): void{
    localStorage.removeItem('user');
    localStorage.removeItem('access_token');
    this.router.navigateByUrl('/');
  }
}
