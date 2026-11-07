.class public Landroid/media/IMediaRouterService$Default;
.super Ljava/lang/Object;
.source "IMediaRouterService.java"

# interfaces
.implements Landroid/media/IMediaRouterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public blacklist getDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;)Ljava/util/Map;
    .registers 3
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;)Ljava/util/Map;
    .registers 3
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .registers 3
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 3
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemRoutes(Ljava/lang/String;Z)Ljava/util/List;
    .registers 4
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "isProxyRouter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemSessionInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 4
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
    .registers 3
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 3
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .registers 3
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method public blacklist registerProxyRouter(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "targetUser"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public blacklist registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 3
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    .registers 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public blacklist releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 3
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "requestId"    # I
    .param p3, "managerRequestId"    # J
    .param p5, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p6, "route"    # Landroid/media/MediaRoute2Info;
    .param p7, "sessionHints"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public blacklist selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist setBluetoothA2dpOn(Landroid/media/IMediaRouterClient;Z)V
    .registers 3
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;Ljava/util/List;)V
    .registers 3
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    .local p2, "suggestedDeviceInfo":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    return-void
.end method

.method public blacklist setDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;Ljava/util/List;)V
    .registers 3
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    .local p2, "suggestedDeviceInfo":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    return-void
.end method

.method public blacklist setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .registers 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeTypes"    # I
    .param p3, "activeScan"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "preference"    # Landroid/media/RouteDiscoveryPreference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist setRouteListingPreference(Landroid/media/IMediaRouter2;Landroid/media/RouteListingPreference;)V
    .registers 3
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "routeListingPreference"    # Landroid/media/RouteListingPreference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    .registers 5
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .registers 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "explicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    .registers 5
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    return-void
.end method

.method public blacklist setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .registers 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist showMediaOutputSwitcherWithProxyRouter(Landroid/media/IMediaRouter2Manager;)Z
    .registers 3
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showMediaOutputSwitcherWithRouter2(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 7
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;
    .param p5, "transferInitiatorUserHandle"    # Landroid/os/UserHandle;
    .param p6, "transferInitiatorPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    return-void
.end method

.method public blacklist transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist unregisterClient(Landroid/media/IMediaRouterClient;)V
    .registers 2
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist unregisterManager(Landroid/media/IMediaRouter2Manager;)V
    .registers 2
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist unregisterRouter2(Landroid/media/IMediaRouter2;)V
    .registers 2
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    .registers 3
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "scanningState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public blacklist updateScanningStateWithRouter2(Landroid/media/IMediaRouter2;I)V
    .registers 3
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "scanningState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method
