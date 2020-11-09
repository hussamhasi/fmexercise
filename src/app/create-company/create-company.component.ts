import { Component, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { Validators, FormBuilder } from '@angular/forms';
import { CompaniesService } from '../companies.service';

@Component({
  selector: 'app-create-company',
  templateUrl: './create-company.component.html',
  styleUrls: ['./create-company.component.css']
})
export class CreateCompanyComponent implements OnInit {

  submitted: boolean;
  constructor(private router: Router, private fb: FormBuilder, private companiesService: CompaniesService) { }
  @ViewChild('image', { static: false }) image;
  companyForm = this.fb.group({
    name: ['', [Validators.required]],
    email: ['', [Validators.required, Validators.email]],
    website: ['', [Validators.required]],
    address: ['', [Validators.required]],
    type: ['', [Validators.required]],
    image: ['', [Validators.required]],
    map_location: ['', [Validators.required]],
    is_private: ['', []],
    description: ['', []]
  });

  ngOnInit(): void {
    this.submitted = false;
  }

  create(): void{
    this. submitted = true;

    if (!this.companyForm.valid){
      return;
    }
    
    const formdata = new FormData();
    const form = this.companyForm.value;
    formdata.append('name', form.name);
    formdata.append('email', form.email);
    formdata.append('website', form.website);
    formdata.append('address', form.address);
    formdata.append('type', form.type);
    formdata.append('image', this.image.nativeElement.files[0]);
    formdata.append('map_location', form.map_location);
    formdata.append('is_private', !!form.is_private ? '1' : '0');
    formdata.append('description', form.description);
    this.companiesService.create(formdata).subscribe(r =>{
      this.router.navigateByUrl('/companies');
    });
  }

}
