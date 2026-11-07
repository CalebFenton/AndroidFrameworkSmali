.class public interface abstract Landroid/net/wifi/IWifiNetworkSelectionConfigListener;
.super Ljava/lang/Object;
.source "IWifiNetworkSelectionConfigListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Stub;,
        Landroid/net/wifi/IWifiNetworkSelectionConfigListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiNetworkSelectionConfigListener"


# virtual methods
.method public abstract blacklist onResult(Landroid/net/wifi/WifiNetworkSelectionConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
