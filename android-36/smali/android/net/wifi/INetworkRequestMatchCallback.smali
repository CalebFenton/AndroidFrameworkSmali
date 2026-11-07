.class public interface abstract Landroid/net/wifi/INetworkRequestMatchCallback;
.super Ljava/lang/Object;
.source "INetworkRequestMatchCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/INetworkRequestMatchCallback$_Parcel;,
        Landroid/net/wifi/INetworkRequestMatchCallback$Stub;,
        Landroid/net/wifi/INetworkRequestMatchCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.INetworkRequestMatchCallback"


# virtual methods
.method public abstract blacklist onAbort()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMatch(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUserSelectionCallbackRegistration(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
