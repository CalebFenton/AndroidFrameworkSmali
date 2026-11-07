.class public interface abstract Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;
.super Ljava/lang/Object;
.source "ThreadNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationalDatasetCallback"
.end annotation


# virtual methods
.method public abstract whitelist onActiveOperationalDatasetChanged(Landroid/net/thread/ActiveOperationalDataset;)V
.end method

.method public whitelist onPendingOperationalDatasetChanged(Landroid/net/thread/PendingOperationalDataset;)V
    .registers 2
    .param p1, "pendingDataset"    # Landroid/net/thread/PendingOperationalDataset;

    .line 520
    return-void
.end method
