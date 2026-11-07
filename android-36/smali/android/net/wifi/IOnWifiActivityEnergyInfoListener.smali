.class public interface abstract Landroid/net/wifi/IOnWifiActivityEnergyInfoListener;
.super Ljava/lang/Object;
.source "IOnWifiActivityEnergyInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IOnWifiActivityEnergyInfoListener$Stub;,
        Landroid/net/wifi/IOnWifiActivityEnergyInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IOnWifiActivityEnergyInfoListener"


# virtual methods
.method public abstract blacklist onWifiActivityEnergyInfo(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
