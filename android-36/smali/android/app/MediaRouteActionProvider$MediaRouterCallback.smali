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
.field private final greylist-max-o mProviderWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/MediaRouteActionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/MediaRouteActionProvider;)V
    .registers 3
    .param p1, "provider"    # Landroid/app/MediaRouteActionProvider;

    .line 156
    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->mProviderWeak:Ljava/lang/ref/WeakReference;

    .line 158
    return-void
.end method

.method private greylist-max-o refreshRoute(Landroid/media/MediaRouter;)V
    .registers 3
    .param p1, "router"    # Landroid/media/MediaRouter;

    .line 176
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->mProviderWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/MediaRouteActionProvider;

    .line 177
    .local v0, "provider":Landroid/app/MediaRouteActionProvider;
    if-eqz v0, :cond_e

    .line 178
    invoke-static {v0}, Landroid/app/MediaRouteActionProvider;->-$$Nest$mrefreshRoute(Landroid/app/MediaRouteActionProvider;)V

    goto :goto_11

    .line 180
    :cond_e
    invoke-virtual {p1, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 182
    :goto_11
    return-void
.end method


# virtual methods
.method public whitelist onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 162
    invoke-direct {p0, p1}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/media/MediaRouter;)V

    .line 163
    return-void
.end method

.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 172
    invoke-direct {p0, p1}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/media/MediaRouter;)V

    .line 173
    return-void
.end method

.method public whitelist onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 167
    invoke-direct {p0, p1}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/media/MediaRouter;)V

    .line 168
    return-void
.end method
