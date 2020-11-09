import { Component, OnInit, ViewChild } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Validators, FormBuilder } from '@angular/forms';
import { CompaniesService } from '../companies.service';
import {DomSanitizer} from '@angular/platform-browser';
@Component({
  selector: 'app-company',
  templateUrl: './company.component.html',
  styleUrls: ['./company.component.css']
})
export class CompanyComponent implements OnInit {
  company: any;
  type: any;
  map: any;
  constructor(private router: Router, private companiesService: CompaniesService, private route: ActivatedRoute, private sanitizer: DomSanitizer) { }
  ngOnInit(): void {
    this.route.params.subscribe(r=>{
      this.companiesService.company(r.id).subscribe(res =>{
        console.log(res);
        this.company = res;
        this.type = res.type;
        this.map = this.sanitizer.bypassSecurityTrustHtml(res.map_location);
      });
    });
  }
}
