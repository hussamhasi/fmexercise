import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class LoginService {
  baseUrl: string;
  constructor(
    private httpClient: HttpClient
    ) {
      this.baseUrl = "http://127.0.0.1:8000";
  }

  attempt(userData): Observable<any>{
    const url = `${this.baseUrl}/api/login`;
    return this.httpClient.post<any>(url, userData);
  }
}
