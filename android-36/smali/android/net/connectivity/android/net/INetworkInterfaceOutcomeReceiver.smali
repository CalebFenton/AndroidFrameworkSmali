.class public interface abstract Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
.super Ljava/lang/Object;
.source "INetworkInterfaceOutcomeReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver$Stub;,
        Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.INetworkInterfaceOutcomeReceiver"


# virtual methods
.method public abstract blacklist onError(Landroid/net/EthernetNetworkManagementException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
