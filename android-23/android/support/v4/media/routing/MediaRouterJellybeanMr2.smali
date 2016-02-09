.class Landroid/support/v4/media/routing/MediaRouterJellybeanMr2;
.super Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.source "MediaRouterJellybeanMr2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr2$RouteInfo;,
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr2$UserRouteInfo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;-><init>()V

    #@3
    return-void
.end method

.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0
    .param p0, "routerObj"    # Ljava/lang/Object;
    .param p1, "types"    # I
    .param p2, "callbackObj"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 25
    check-cast p0, Landroid/media/MediaRouter;

    #@2
    .line 26
    .end local p0    # "routerObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/MediaRouter$Callback;

    #@4
    .line 25
    .end local p2    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    #@7
    .line 24
    return-void
.end method

.method public static getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "routerObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 21
    check-cast p0, Landroid/media/MediaRouter;

    #@2
    .end local p0    # "routerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
