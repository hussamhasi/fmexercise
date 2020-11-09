import { Component, OnInit } from '@angular/core';
import { CompaniesService } from '../companies.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-companies-search',
  templateUrl: './companies-search.component.html',
  styleUrls: ['./companies-search.component.css']
})
export class CompaniesSearchComponent implements OnInit {

  constructor(private companiesService: CompaniesService, private router: Router) { }
  companies: Array<any>;
  ngOnInit(): void {
    
  }

  search($event): void{
    this.companiesService.search($event.srcElement.value).subscribe(r =>{
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
