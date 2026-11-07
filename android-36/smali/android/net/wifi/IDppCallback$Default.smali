.class public Landroid/net/wifi/IDppCallback$Default;
.super Ljava/lang/Object;
.source "IDppCallback.java"

# interfaces
.implements Landroid/net/wifi/IDppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IDppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBootstrapUriGenerated(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onFailure(ILjava/lang/String;Ljava/lang/String;[I)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "channelList"    # Ljava/lang/String;
    .param p4, "bandArray"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onProgress(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onSuccessConfigReceived(I)V
    .registers 2
    .param p1, "newNetworkId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
