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
.field final synthetic this$0:Landroid/app/MediaRouteButton;


# direct methods
.method private constructor <init>(Landroid/app/MediaRouteButton;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/MediaRouteButton;

    #@0
    .prologue
    .line 415
    iput-object p1, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    #@2
    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$MediaRouterCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/MediaRouteButton;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;)V

    #@3
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    #@2
    invoke-static {v0}, Landroid/app/MediaRouteButton;->-wrap0(Landroid/app/MediaRouteButton;)V

    #@5
    .line 417
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    #@2
    invoke-static {v0}, Landroid/app/MediaRouteButton;->-wrap0(Landroid/app/MediaRouteButton;)V

    #@5
    .line 427
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p4, "index"    # I

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    #@2
    invoke-static {v0}, Landroid/app/MediaRouteButton;->-wrap0(Landroid/app/MediaRouteButton;)V

    #@5
    .line 443
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    #@2
    invoke-static {v0}, Landroid/app/MediaRouteButton;->-wrap0(Landroid/app/MediaRouteButton;)V

    #@5
    .line 422
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    #@2
    invoke-static {v0}, Landroid/app/MediaRouteButton;->-wrap0(Landroid/app/MediaRouteButton;)V

    #@5
    .line 432
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    #@2
    invoke-static {v0}, Landroid/app/MediaRouteButton;->-wrap0(Landroid/app/MediaRouteButton;)V

    #@5
    .line 448
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 438
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    #@2
    invoke-static {v0}, Landroid/app/MediaRouteButton;->-wrap0(Landroid/app/MediaRouteButton;)V

    #@5
    .line 437
    return-void
.end method
