.class Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;
.super Landroid/media/IMediaRouter2Manager$Stub;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;


# direct methods
.method public static synthetic blacklist $r8$lambda$afM8YrbqTbSbMsnn3Xlwb7uDsvs(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monRequestFailedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fdlCw522Ets56XcEJ_JHqHWPNbY(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monDiscoveryPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gWN3D3i6QTJ7BLUuJdyQi_uQ3OE(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;ILandroid/media/RoutingSessionInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionCreatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;ILandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j7ISaTLRB7dyWbNK0zAYd7RTBQg(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monInvalidateInstanceOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mrVyffRBx4nsfSpuI3Qk3oigKa0(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monRouteListingPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tROjnuph3ZKEWoAyyr_82XBPwVA(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionUpdatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$weFlKxNxSmpPLGtn_TsVwtAHp3w(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionReleasedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yEXVH5t-ynBsYrqukTeHZOJe_Sw(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monDeviceSuggestionsChangeHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3528
    iput-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-direct {p0}, Landroid/media/IMediaRouter2Manager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/MediaRouter2-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;-><init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V

    return-void
.end method


# virtual methods
.method public blacklist invalidateInstance()V
    .registers 4

    .line 3613
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 3614
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3613
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3617
    return-void
.end method

.method public blacklist notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "suggestingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 3585
    .local p3, "deviceSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 3586
    invoke-static {v1, v2, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3585
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3592
    return-void
.end method

.method public blacklist notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "routeDiscoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 3561
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 3562
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3561
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3567
    return-void
.end method

.method public blacklist notifyRequestFailed(II)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "reason"    # I

    .line 3603
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 3607
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3608
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3604
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3603
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3609
    return-void
.end method

.method public blacklist notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "routeListingPreference"    # Landroid/media/RouteListingPreference;

    .line 3572
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 3573
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3572
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3578
    return-void
.end method

.method public blacklist notifyRoutesUpdated(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 3596
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v2, v2, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    .line 3597
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3596
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3599
    return-void
.end method

.method public blacklist notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "routingSessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3532
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 3536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3533
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3532
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3538
    return-void
.end method

.method public blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .param p1, "routingSessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3551
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 3552
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3551
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3556
    return-void
.end method

.method public blacklist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .param p1, "routingSessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 3542
    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 3543
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3542
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3547
    return-void
.end method
