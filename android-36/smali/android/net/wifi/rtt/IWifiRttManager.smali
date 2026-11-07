.class public interface abstract Landroid/net/wifi/rtt/IWifiRttManager;
.super Ljava/lang/Object;
.source "IWifiRttManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/IWifiRttManager$Stub;,
        Landroid/net/wifi/rtt/IWifiRttManager$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o cancelRanging(Landroid/os/WorkSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRttCharacteristics()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o isAvailable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startRanging(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
