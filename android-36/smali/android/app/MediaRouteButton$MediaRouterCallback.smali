.class final Landroid/app/MediaRouteButton$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/MediaRouteButton;


# direct methods
.method private constructor blacklist <init>(Landroid/app/MediaRouteButton;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;)V

    return-void
.end method


# virtual methods
.method public whitelist onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 384
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    .line 385
    return-void
.end method

.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 394
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    .line 395
    return-void
.end method

.method public whitelist onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .registers 6
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p4, "index"    # I

    .line 410
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    .line 411
    return-void
.end method

.method public whitelist onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 4
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 389
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    .line 390
    return-void
.end method

.method public whitelist onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 399
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    .line 400
    return-void
.end method

.method public whitelist onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .registers 5
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;

    .line 415
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    .line 416
    return-void
.end method

.method public whitelist onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 5
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 404
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-static {v0}, Landroid/app/MediaRouteButton;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteButton;)V

    .line 405
    return-void
.end method
