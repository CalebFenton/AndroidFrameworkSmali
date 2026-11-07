.class public interface abstract Landroid/net/wifi/IWifiConnectedNetworkScorer;
.super Ljava/lang/Object;
.source "IWifiConnectedNetworkScorer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiConnectedNetworkScorer$Stub;,
        Landroid/net/wifi/IWifiConnectedNetworkScorer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiConnectedNetworkScorer"


# virtual methods
.method public abstract blacklist onNetworkSwitchAccepted(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onNetworkSwitchRejected(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSetScoreUpdateObserver(Landroid/net/wifi/IScoreUpdateObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStart(Landroid/net/wifi/WifiConnectedSessionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStop(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
