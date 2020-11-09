import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { BrowserModule } from '@angular/platform-browser';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent} from './login/login.component';
import { AdminGuard } from './admin.guard';
import { AuthGuard } from './auth.guard';
import { GuestGuard } from './guest.guard';
import { CompaniesComponent} from './companies/companies.component';
import { CreateCompanyComponent } from './create-company/create-company.component';
import { UpdateCompanyComponent } from './update-company/update-company.component';
import {CompanyComponent} from './company/company.component';
import { CompaniesSearchComponent } from './companies-search/companies-search.component';
const routes: Routes = [
  {
    path: '',
    component: LoginComponent,
    canActivate: [GuestGuard]
  },
  {
    path: 'companies',
    component: CompaniesComponent,
    canActivate: [AuthGuard, AdminGuard]
  },
  {
    path: 'create-company',
    component: CreateCompanyComponent,
    canActivate: [AuthGuard, AdminGuard]
  },
  {
    path: 'company/:id',
    component: UpdateCompanyComponent,
    canActivate: [AuthGuard, AdminGuard]
  },
  {
    path: 'company/:id/view',
    component: CompanyComponent,
    canActivate: [AuthGuard]
  },
  {
    path: 'companies/search',
    component: CompaniesSearchComponent,
    canActivate: [AuthGuard]
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
