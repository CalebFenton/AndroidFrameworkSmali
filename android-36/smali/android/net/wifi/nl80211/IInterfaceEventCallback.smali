.class public interface abstract Landroid/net/wifi/nl80211/IInterfaceEventCallback;
.super Ljava/lang/Object;
.source "IInterfaceEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;,
        Landroid/net/wifi/nl80211/IInterfaceEventCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.IInterfaceEventCallback"


# virtual methods
.method public abstract blacklist OnApInterfaceReady(Landroid/net/wifi/nl80211/IApInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist OnApTorndownEvent(Landroid/net/wifi/nl80211/IApInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist OnClientInterfaceReady(Landroid/net/wifi/nl80211/IClientInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist OnClientTorndownEvent(Landroid/net/wifi/nl80211/IClientInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
