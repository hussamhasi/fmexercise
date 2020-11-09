import { Component, OnInit, ViewChild } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Validators, FormBuilder } from '@angular/forms';
import { CompaniesService } from '../companies.service';

@Component({
  selector: 'app-update-company',
  templateUrl: './update-company.component.html',
  styleUrls: ['./update-company.component.css']
})
export class UpdateCompanyComponent implements OnInit {
  companyID: number;
  constructor(private router: Router, private fb: FormBuilder, private companiesService: CompaniesService, private route: ActivatedRoute) { }
  @ViewChild('image', { static: false }) image;
  companyForm = this.fb.group({
    name: ['', [Validators.required]],
    email: ['', [Validators.required, Validators.email]],
    website: ['', [Validators.required]],
    address: ['', [Validators.required]],
    type: ['', [Validators.required]],
    image: ['', []],
    map_location: ['', [Validators.required]],
    is_private: ['', []],
    description: ['', []]
  });

  ngOnInit(): void {
    this.route.params.subscribe(r=>{
      this.companyID = r.id;
      this.companiesService.company(r.id).subscribe(res =>{
        console.log(res);
        this.companyForm.controls.name.setValue(res.name);
        this.companyForm.controls.email.setValue(res.email);
        this.companyForm.controls.website.setValue(res.website);
        this.companyForm.controls.address.setValue(res.address);
        this.companyForm.controls.type.setValue(res.type);
        this.companyForm.controls.map_location.setValue(res.map_location);
        this.companyForm.controls.is_private.setValue(res.is_private);
        this.companyForm.controls.description.setValue(res.description);
      });
    });
    
  }

  update(): void{
    console.log(this.companyForm);
    
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
    if (this.image.nativeElement.files.length > 0){
      formdata.append('image', this.image.nativeElement.files[0]);
    }
    formdata.append('map_location', form.map_location);
    formdata.append('is_private', !!form.is_private ? '1' : '0');
    formdata.append('description', form.description);
    this.companiesService.update(formdata, this.companyID).subscribe(r =>{
      this.router.navigateByUrl('/companies');
    });
  }

}
