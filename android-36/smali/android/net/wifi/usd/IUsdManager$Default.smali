.class public Landroid/net/wifi/usd/IUsdManager$Default;
.super Ljava/lang/Object;
.source "IUsdManager.java"

# interfaces
.implements Landroid/net/wifi/usd/IUsdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/IUsdManager;
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

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelPublish(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist cancelSubscribe(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist getCharacteristics()Landroid/net/wifi/usd/Characteristics;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist publish(Landroid/net/wifi/usd/PublishConfig;Landroid/net/wifi/usd/IPublishSessionCallback;)V
    .registers 3
    .param p1, "publishConfig"    # Landroid/net/wifi/usd/PublishConfig;
    .param p2, "callback"    # Landroid/net/wifi/usd/IPublishSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist registerPublisherStatusListener(Landroid/net/wifi/IBooleanListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist registerSubscriberStatusListener(Landroid/net/wifi/IBooleanListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist sendMessage(II[BLandroid/net/wifi/IBooleanListener;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "peerId"    # I
    .param p3, "message"    # [B
    .param p4, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist subscribe(Landroid/net/wifi/usd/SubscribeConfig;Landroid/net/wifi/usd/ISubscribeSessionCallback;)V
    .registers 3
    .param p1, "subscribeConfig"    # Landroid/net/wifi/usd/SubscribeConfig;
    .param p2, "callback"    # Landroid/net/wifi/usd/ISubscribeSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist unregisterPublisherStatusListener(Landroid/net/wifi/IBooleanListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist unregisterSubscriberStatusListener(Landroid/net/wifi/IBooleanListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/wifi/IBooleanListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist updatePublish(I[B)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "ssi"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
