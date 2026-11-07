.class public interface abstract Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener;
.super Ljava/lang/Object;
.source "IWifiVerboseLoggingStatusChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener$Stub;,
        Landroid/net/wifi/IWifiVerboseLoggingStatusChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiVerboseLoggingStatusChangedListener"


# virtual methods
.method public abstract blacklist onStatusChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
