.class public interface abstract Landroid/net/thread/ThreadNetworkController$StateCallback;
.super Ljava/lang/Object;
.source "ThreadNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/thread/ThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallback"
.end annotation


# virtual methods
.method public abstract whitelist onDeviceRoleChanged(I)V
.end method

.method public whitelist onEphemeralKeyStateChanged(ILjava/lang/String;Ljava/time/Instant;)V
    .registers 4
    .param p1, "ephemeralKeyState"    # I
    .param p2, "ephemeralKey"    # Ljava/lang/String;
    .param p3, "expiry"    # Ljava/time/Instant;

    .line 380
    return-void
.end method

.method public whitelist onPartitionIdChanged(J)V
    .registers 3
    .param p1, "partitionId"    # J

    .line 352
    return-void
.end method

.method public whitelist onThreadEnableStateChanged(I)V
    .registers 2
    .param p1, "enabledState"    # I

    .line 362
    return-void
.end method
