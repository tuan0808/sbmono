const { withNativeFederation, share } = require('@angular-architects/native-federation/config');

module.exports = withNativeFederation({
  name: 'dashboard',

  exposes: {
    './Routes': './apps/dashboard/src/app/app.routes.ts',
  },

  shared: share({
    '@angular/core': { singleton: true, strictVersion: true, requiredVersion: '~19.2.0' },
    '@angular/common': { singleton: true, strictVersion: true, requiredVersion: '~19.2.0' },
    '@angular/router': { singleton: true, strictVersion: true, requiredVersion: '~19.2.0' },
    '@angular/fire': { singleton: true, strictVersion: false, requiredVersion: '~19.2.0' },
    '@angular/fire/auth': { singleton: true, strictVersion: false, requiredVersion: '~19.2.0' },
    'rxjs': { singleton: true, strictVersion: false, requiredVersion: '~19.2.0' },
    'ngx-toastr': { singleton: true, strictVersion: false, requiredVersion: '~19.2.0' },
  }),

  skip: [
    // Add any problematic packages here
  ]
});
