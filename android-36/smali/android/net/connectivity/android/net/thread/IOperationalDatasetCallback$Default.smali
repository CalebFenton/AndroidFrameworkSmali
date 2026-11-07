.class public Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback$Default;
.super Ljava/lang/Object;
.source "IOperationalDatasetCallback.java"

# interfaces
.implements Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onActiveOperationalDatasetChanged(Landroid/net/thread/ActiveOperationalDataset;)V
    .registers 2
    .param p1, "activeOpDataset"    # Landroid/net/thread/ActiveOperationalDataset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onPendingOperationalDatasetChanged(Landroid/net/thread/PendingOperationalDataset;)V
    .registers 2
    .param p1, "pendingOpDataset"    # Landroid/net/thread/PendingOperationalDataset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
