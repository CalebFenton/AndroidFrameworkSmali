.class public interface abstract Landroid/net/connectivity/android/net/thread/IThreadNetworkController;
.super Ljava/lang/Object;
.source "IThreadNetworkController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;,
        Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.thread.IThreadNetworkController"


# virtual methods
.method public abstract blacklist activateEphemeralKeyMode(JLandroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createRandomizedDataset(Ljava/lang/String;Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deactivateEphemeralKeyMode(Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getThreadVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist join(Landroid/net/thread/ActiveOperationalDataset;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist leave(Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerConfigurationCallback(Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerOperationalDatasetCallback(Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerStateCallback(Landroid/net/connectivity/android/net/thread/IStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist scheduleMigration(Landroid/net/thread/PendingOperationalDataset;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setChannelMaxPowers([Landroid/net/connectivity/android/net/thread/ChannelMaxPower;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setConfiguration(Landroid/net/thread/ThreadConfiguration;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setEnabled(ZLandroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setTestNetworkAsUpstream(Ljava/lang/String;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterConfigurationCallback(Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterOperationalDatasetCallback(Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterStateCallback(Landroid/net/connectivity/android/net/thread/IStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
