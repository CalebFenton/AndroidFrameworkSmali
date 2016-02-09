.class Lcom/android/internal/app/MediaRouteControllerDialog$2;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MediaRouteControllerDialog;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get0(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 184
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@e
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->-get1(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    #@19
    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    #@1e
    .line 182
    return-void
.end method
