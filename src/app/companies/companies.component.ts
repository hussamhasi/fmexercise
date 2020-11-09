import { Component, OnInit } from '@angular/core';
import { CompaniesService } from '../companies.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-companies',
  templateUrl: './companies.component.html',
  styleUrls: ['./companies.component.css']
})
export class CompaniesComponent implements OnInit {

  constructor(private companiesService: CompaniesService, private router: Router) { }
  companies: Array<any>;
  ngOnInit(): void {
    this.companiesService.all().subscribe(r =>{
      this.companies = r;
    });
  }

  createCompany(): void{
    this.router.navigateByUrl('/create-company');
  }

  edit(id): void{
    this.router.navigateByUrl('company/'+id);
  }
  view(id): void{
    this.router.navigateByUrl('company/'+id+'/view');
  }

}
