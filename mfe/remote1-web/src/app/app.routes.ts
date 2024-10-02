import { Routes } from '@angular/router';

export const routes: Routes = [
    {
        path: '',
        loadComponent: () => import(`./features/dashboard/dashboard.component`)
            .then(x => x.DashboardComponent)
    }
];
