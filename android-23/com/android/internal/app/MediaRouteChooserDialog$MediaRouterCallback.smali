.class final Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteChooserDialog;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteChooserDialog;

    #@0
    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@2
    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialog;Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteChooserDialog;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;)V

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
    .line 246
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    #@5
    .line 245
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    #@5
    .line 255
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    #@5
    .line 250
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->dismiss()V

    #@5
    .line 260
    return-void
.end method
