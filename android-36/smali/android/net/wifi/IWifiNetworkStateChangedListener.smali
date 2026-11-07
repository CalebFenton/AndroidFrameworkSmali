.class public interface abstract Landroid/net/wifi/IWifiNetworkStateChangedListener;
.super Ljava/lang/Object;
.source "IWifiNetworkStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiNetworkStateChangedListener$Stub;,
        Landroid/net/wifi/IWifiNetworkStateChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiNetworkStateChangedListener"


# virtual methods
.method public abstract blacklist onWifiNetworkStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
