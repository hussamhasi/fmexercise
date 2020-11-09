import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CompaniesService {
  baseUrl: string;
  constructor(
    private httpClient: HttpClient
    ) {
      this.baseUrl = "http://127.0.0.1:8000";
  }

  all(): Observable<any>{
    const url = `${this.baseUrl}/api/companies`;
    return this.httpClient.get<any>(url);
  }

  search(name): Observable<any>{
    const url = `${this.baseUrl}/api/companies/search?name=${name}`;
    return this.httpClient.get<any>(url);
  }
  
  company(id): Observable<any>{
    const url = `${this.baseUrl}/api/companies/${id}`;
    return this.httpClient.get<any>(url);
  }

  create(data): Observable<any>{
    const url = `${this.baseUrl}/api/companies`;
    return this.httpClient.post<any>(url, data);
  }

  
  update(data, id): Observable<any>{
    const url = `${this.baseUrl}/api/companies/${id}`;
    return this.httpClient.post<any>(url, data);
  }
}
