from aiohttp import web

routes = web.RouteTableDef()

@routes.get("/", allow_head=True)
def root_route_handler(request):
    return web.json_response("luteg96")
