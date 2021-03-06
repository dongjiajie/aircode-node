// const genGraphql = require('./graphql')
// const genModels = require('./models')
const genLib = require('./lib')
const genMiddlewares = require('./middlewares')
const genRoutes = require('./routes')
const genRuntime = require('./runtime')

module.exports = (projectName, resource) => {
	genLib.writeException(projectName)
	genMiddlewares.writeOutputFormat(projectName)
	genMiddlewares.writeValidate(projectName)
	genRoutes.writeIndex(projectName, resource)
	genRoutes.writeGet(projectName, resource)
	genRoutes.writePost(projectName, resource)
	genRoutes.writePut(projectName, resource)
	genRoutes.writeDel(projectName, resource)
	genRuntime.writeDb(projectName, resource)
	genRuntime.writeLog(projectName, resource)
}