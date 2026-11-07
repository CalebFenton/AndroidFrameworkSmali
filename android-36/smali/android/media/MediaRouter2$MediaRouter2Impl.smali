.class interface abstract Landroid/media/MediaRouter2$MediaRouter2Impl;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MediaRouter2Impl"
.end annotation


# virtual methods
.method public abstract blacklist createRouteCallbackRecord(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)Landroid/media/MediaRouter2$RouteCallbackRecord;
.end method

.method public abstract blacklist deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
.end method

.method public abstract blacklist filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RouteDiscoveryPreference;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getAllRoutes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getClientPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getControllers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceSuggestions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract blacklist getPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
.end method

.method public abstract blacklist registerRouteCallback()V
.end method

.method public abstract blacklist releaseSession(ZZLandroid/media/MediaRouter2$RoutingController;)V
.end method

.method public abstract blacklist selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
.end method

.method public abstract blacklist setDeviceSuggestions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
.end method

.method public abstract blacklist setRouteListingPreference(Landroid/media/RouteListingPreference;)V
.end method

.method public abstract blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
.end method

.method public abstract blacklist setSessionVolume(ILandroid/media/RoutingSessionInfo;)V
.end method

.method public abstract blacklist showSystemOutputSwitcher()Z
.end method

.method public abstract blacklist startScan()V
.end method

.method public abstract blacklist stop()V
.end method

.method public abstract blacklist stopScan()V
.end method

.method public abstract blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
.end method

.method public abstract blacklist transferTo(Landroid/media/MediaRoute2Info;)V
.end method

.method public abstract blacklist unregisterRouteCallback()V
.end method

.method public abstract blacklist updateScanningState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist wasTransferredBySelf(Landroid/media/RoutingSessionInfo;)Z
.end method
