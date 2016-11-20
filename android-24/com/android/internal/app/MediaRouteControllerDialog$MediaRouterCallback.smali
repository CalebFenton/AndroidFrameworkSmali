.class final Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    #@0
    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    #@3
    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-wrap0(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    #@5
    .line 296
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
    .line 310
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-wrap0(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    #@5
    .line 309
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-wrap0(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    #@5
    .line 314
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-wrap0(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    #@5
    .line 291
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get0(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    #@5
    move-result-object v0

    #@6
    if-ne p2, v0, :cond_0

    #@8
    .line 303
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@a
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-wrap1(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    #@d
    .line 301
    :cond_0
    return-void
.end method
