.class public Landroid/media/IMediaRouter2$Default;
.super Ljava/lang/Object;
.source "IMediaRouter2.java"

# interfaces
.implements Landroid/media/IMediaRouter2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2;
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

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "suggestingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 40
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    return-void
.end method

.method public blacklist notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p2, "currentSystemSessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    .local p1, "currentRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    return-void
.end method

.method public blacklist notifyRoutesUpdated(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    return-void
.end method

.method public blacklist notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "requestId"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    .registers 2
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 2
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .param p1, "uniqueRequestId"    # J
    .param p3, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method
