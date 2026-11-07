.class public interface abstract Landroid/net/INetdEventCallback;
.super Ljava/lang/Object;
.source "INetdEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdEventCallback$Stub;,
        Landroid/net/INetdEventCallback$Default;
    }
.end annotation


# static fields
.field public static final greylist-max-o CALLBACK_CALLER_CONNECTIVITY_SERVICE:I = 0x0

.field public static final greylist-max-o CALLBACK_CALLER_DEVICE_POLICY:I = 0x1

.field public static final greylist-max-o CALLBACK_CALLER_NETWORK_WATCHLIST:I = 0x2


# virtual methods
.method public abstract greylist-max-o onConnectEvent(Ljava/lang/String;IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNat64PrefixEvent(IZLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
