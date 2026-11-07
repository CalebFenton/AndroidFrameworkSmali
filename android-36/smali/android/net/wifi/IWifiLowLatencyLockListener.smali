.class public interface abstract Landroid/net/wifi/IWifiLowLatencyLockListener;
.super Ljava/lang/Object;
.source "IWifiLowLatencyLockListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiLowLatencyLockListener$Stub;,
        Landroid/net/wifi/IWifiLowLatencyLockListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiLowLatencyLockListener"


# virtual methods
.method public abstract blacklist onActivatedStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onActiveUsersChanged([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOwnershipChanged([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
