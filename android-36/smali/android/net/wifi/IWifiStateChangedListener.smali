.class public interface abstract Landroid/net/wifi/IWifiStateChangedListener;
.super Ljava/lang/Object;
.source "IWifiStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiStateChangedListener$Stub;,
        Landroid/net/wifi/IWifiStateChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiStateChangedListener"


# virtual methods
.method public abstract blacklist onWifiStateChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
