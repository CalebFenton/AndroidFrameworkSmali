.class public interface abstract Landroid/net/connectivity/android/net/ITestNetworkManager;
.super Ljava/lang/Object;
.source "ITestNetworkManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;,
        Landroid/net/connectivity/android/net/ITestNetworkManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.ITestNetworkManager"


# virtual methods
.method public abstract blacklist createInterface(ZZZZ[Landroid/net/LinkAddress;Ljava/lang/String;)Landroid/net/TestNetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setCarrierEnabled(Landroid/net/TestNetworkInterface;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist teardownTestNetwork(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
