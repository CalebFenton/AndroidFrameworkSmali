.class public interface abstract Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;
.super Ljava/lang/Object;
.source "IActiveOperationalDatasetReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub;,
        Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.connectivity.android.net.thread.IActiveOperationalDatasetReceiver"


# virtual methods
.method public abstract blacklist onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/net/thread/ActiveOperationalDataset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
