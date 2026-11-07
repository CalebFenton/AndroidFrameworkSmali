.class public interface abstract Landroid/media/MediaRouter2Manager$Callback;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public blacklist onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;

    .line 1028
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/media/MediaRouter2Manager$Callback;->onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 1029
    return-void
.end method

.method public blacklist onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1018
    .local p2, "preferredFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist onRequestFailed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 1054
    return-void
.end method

.method public blacklist onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "routeListingPreference"    # Landroid/media/RouteListingPreference;

    .line 1042
    return-void
.end method

.method public blacklist onRoutesUpdated()V
    .registers 1

    .line 981
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 2
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 994
    return-void
.end method

.method public blacklist onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 2
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 987
    return-void
.end method

.method public blacklist onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 3
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 1009
    return-void
.end method

.method public blacklist onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "newSession"    # Landroid/media/RoutingSessionInfo;

    .line 1003
    return-void
.end method
