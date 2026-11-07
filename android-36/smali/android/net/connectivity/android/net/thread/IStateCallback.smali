.class public interface abstract Landroid/net/connectivity/android/net/thread/IStateCallback;
.super Ljava/lang/Object;
.source "IStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/IStateCallback$Stub;,
        Landroid/net/connectivity/android/net/thread/IStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.thread.IStateCallback"


# virtual methods
.method public abstract blacklist onDeviceRoleChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onEphemeralKeyStateChanged(ILjava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPartitionIdChanged(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onThreadEnableStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
