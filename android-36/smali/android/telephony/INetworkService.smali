.class public interface abstract Landroid/telephony/INetworkService;
.super Ljava/lang/Object;
.source "INetworkService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/INetworkService$Stub;,
        Landroid/telephony/INetworkService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o createNetworkServiceProvider(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o removeNetworkServiceProvider(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
