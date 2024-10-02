import { loadRemoteModule } from '@angular-architects/module-federation';
import { Routes } from '@angular/router';

export const routes: Routes = [
    {
        path: '',
        children: [
            {
                path: '',
                loadChildren: () => 
                        loadRemoteModule({
                            type: 'module',
                            // remoteEntry: `https://remote1.coffeepasta.dev/remoteEntry.js`,
                            remoteEntry: `http://remote1.web.local:3200/remoteEntry.js`,
                            exposedModule: './remoteRoute'
                        }).then(x => x.routes)
            }, {
                path: 'remote1',
                loadChildren: () => 
                        loadRemoteModule({
                            type: 'module',
                            // remoteEntry: `https://remote1.coffeepasta.dev/remoteEntry.js`,
                            remoteEntry: `http://remote1.web.local:3200/remoteEntry.js`,
                            exposedModule: './remoteRoute'
                        }).then(x => x.routes)
            }, {
                path: 'remote2',
                loadChildren: () => 
                        loadRemoteModule({
                            type: 'module',
                            // remoteEntry: `https://remote2.coffeepasta.dev/remoteEntry.js`,
                            remoteEntry: `http://remote2.web.local:3300/remoteEntry.js`,
                            exposedModule: './remoteRoute'
                        }).then(x => x.routes)
            }
        ]
    }
];
