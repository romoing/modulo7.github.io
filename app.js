import express from 'express';

//Crear una api de express
const api = express();


api.get('/api/', (req, res) => {
  
  return res.json({ message: 'Hello World' });
 
});

/* minuto 50 07/11 161 min
 */
/* api.get('/api/suma', (req, res) => {
  const suma = a + b;

return res.json({ 
  resultado=suma
 }); */
 









//Meter api en un servidor
api.listen(8000, () => {
  console.log('Api levantada en un servidor con el puerto', 8000);
});