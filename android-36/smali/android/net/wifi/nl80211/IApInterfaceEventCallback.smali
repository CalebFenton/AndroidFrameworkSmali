.class public interface abstract Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
.super Ljava/lang/Object;
.source "IApInterfaceEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;,
        Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist BANDWIDTH_160:I = 0x6

.field public static final blacklist BANDWIDTH_20:I = 0x2

.field public static final blacklist BANDWIDTH_20_NOHT:I = 0x1

.field public static final blacklist BANDWIDTH_320:I = 0x7

.field public static final blacklist BANDWIDTH_40:I = 0x3

.field public static final blacklist BANDWIDTH_80:I = 0x4

.field public static final blacklist BANDWIDTH_80P80:I = 0x5

.field public static final blacklist BANDWIDTH_INVALID:I = 0x0

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.IApInterfaceEventCallback"


# virtual methods
.method public abstract blacklist onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSoftApChannelSwitched(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
