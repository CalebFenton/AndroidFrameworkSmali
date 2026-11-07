.class public Landroid/net/ITetheringEventCallback$Default;
.super Ljava/lang/Object;
.source "ITetheringEventCallback.java"

# interfaces
.implements Landroid/net/ITetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ITetheringEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCallbackStarted(Landroid/net/TetheringCallbackStartedParcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/net/TetheringCallbackStartedParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onCallbackStopped(I)V
    .registers 2
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/net/TetheringConfigurationParcel;)V
    .registers 2
    .param p1, "config"    # Landroid/net/TetheringConfigurationParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onOffloadStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist onSupportedTetheringTypes(J)V
    .registers 3
    .param p1, "supportedBitmap"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onTetherClientsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    .local p1, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/TetheredClient;>;"
    return-void
.end method

.method public blacklist onTetherStatesChanged(Landroid/net/TetherStatesParcel;)V
    .registers 2
    .param p1, "states"    # Landroid/net/TetherStatesParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onUpstreamChanged(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
