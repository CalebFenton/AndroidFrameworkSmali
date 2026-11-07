.class final Landroid/media/MediaRouter2$RouteCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RouteCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field public final blacklist mPreference:Landroid/media/RouteDiscoveryPreference;

.field public final blacklist mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "routeCallback"    # Landroid/media/MediaRouter2$RouteCallback;
    .param p3, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 2380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2381
    iput-object p2, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    .line 2382
    iput-object p1, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2383
    iput-object p3, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 2384
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2388
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2389
    return v0

    .line 2391
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2392
    return v2

    .line 2394
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2399
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
