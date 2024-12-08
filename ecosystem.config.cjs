module.exports = {
    apps: [
      {
        name: 'Rently',
        port: '3000',
        exec_mode: 'cluster',
        instances: 'max',
        script: './server/index.mjs'
      }
    ]
  }