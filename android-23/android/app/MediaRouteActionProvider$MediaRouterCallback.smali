.class Landroid/app/MediaRouteActionProvider$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MediaRouteActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field private final mProviderWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/MediaRouteActionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/MediaRouteActionProvider;)V
    .locals 1
    .param p1, "provider"    # Landroid/app/MediaRouteActionProvider;

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    #@3
    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->mProviderWeak:Ljava/lang/ref/WeakReference;

    #@a
    .line 157
    return-void
.end method

.method private refreshRoute(Landroid/media/MediaRouter;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;

    #@0
    .prologue
    .line 177
    iget-object v1, p0, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->mProviderWeak:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/MediaRouteActionProvider;

    #@8
    .line 178
    .local v0, "provider":Landroid/app/MediaRouteActionProvider;
    if-eqz v0, :cond_0

    #@a
    .line 179
    invoke-static {v0}, Landroid/app/MediaRouteActionProvider;->-wrap0(Landroid/app/MediaRouteActionProvider;)V

    #@d
    .line 176
    :goto_0
    return-void

    #@e
    .line 181
    :cond_0
    invoke-virtual {p1, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    #@11
    goto :goto_0
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 163
    invoke-direct {p0, p1}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/media/MediaRouter;)V

    #@3
    .line 162
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 173
    invoke-direct {p0, p1}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/media/MediaRouter;)V

    #@3
    .line 172
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 168
    invoke-direct {p0, p1}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/media/MediaRouter;)V

    #@3
    .line 167
    return-void
.end method
