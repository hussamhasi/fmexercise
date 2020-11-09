import { Component, OnInit } from '@angular/core';
import {LoginService} from '../login.service';
import { Validators, FormBuilder } from '@angular/forms';
import { catchError } from 'rxjs/operators';
import { throwError } from 'rxjs';
import { Router } from '@angular/router';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  submited: boolean;
  backendError: boolean;
  loginForm = this.fb.group({
    email: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.required]]
  });
  constructor(private fb: FormBuilder, private loginService: LoginService, private router: Router) { }

  ngOnInit(): void {
    this.submited = false;
    this.backendError = false;
  }
  login(): void{
    this.submited = true;
    if (!this.loginForm.valid){
      return;
    }
    console.log(this.loginForm.value);
    this.loginService.attempt(this.loginForm.value).pipe(
      catchError(err => {
        this.backendError = true;
          return throwError(err);
      })
  ).subscribe(r =>{
      console.log(r);
      localStorage.setItem('access_token', r.access_token);
      localStorage.setItem('user', JSON.stringify(r.user));
      if(r.user.user_type == 'admin'){
        this.router.navigateByUrl('/companies');
      }else{
        this.router.navigateByUrl('/companies/search');
      }
    });
  }

}
