.class public interface abstract Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;
.super Ljava/lang/Object;
.source "IOperationalDatasetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback$Stub;,
        Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.thread.IOperationalDatasetCallback"


# virtual methods
.method public abstract blacklist onActiveOperationalDatasetChanged(Landroid/net/thread/ActiveOperationalDataset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPendingOperationalDatasetChanged(Landroid/net/thread/PendingOperationalDataset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
