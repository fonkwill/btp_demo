module.exports = cds.service.impl(async function() {
  const odata = await cds.connect.to('z001_srv_metadata');

  this.on('READ', 'salesorder', req => {
      return odata.run(req.query);
  });
});