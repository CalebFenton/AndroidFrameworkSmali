.class public interface abstract Landroid/telephony/INetworkServiceCallback;
.super Ljava/lang/Object;
.source "INetworkServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/INetworkServiceCallback$Stub;,
        Landroid/telephony/INetworkServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onNetworkStateChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
