.class final Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RouteListingPreferenceCallbackRecord"
.end annotation


# instance fields
.field public final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field public final blacklist mRouteListingPreferenceCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/media/RouteListingPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/RouteListingPreference;",
            ">;)V"
        }
    .end annotation

    .line 2409
    .local p2, "routeListingPreferenceCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/RouteListingPreference;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2410
    iput-object p1, p0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2411
    iput-object p2, p0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mRouteListingPreferenceCallback:Ljava/util/function/Consumer;

    .line 2412
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2416
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2417
    return v0

    .line 2419
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2420
    return v2

    .line 2422
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mRouteListingPreferenceCallback:Ljava/util/function/Consumer;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mRouteListingPreferenceCallback:Ljava/util/function/Consumer;

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2428
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mRouteListingPreferenceCallback:Ljava/util/function/Consumer;

    invoke-interface {v0}, Ljava/util/function/Consumer;->hashCode()I

    move-result v0

    return v0
.end method
