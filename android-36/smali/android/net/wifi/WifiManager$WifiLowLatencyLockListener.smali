.class public interface abstract Landroid/net/wifi/WifiManager$WifiLowLatencyLockListener;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiLowLatencyLockListener"
.end annotation


# virtual methods
.method public abstract whitelist onActivatedStateChanged(Z)V
.end method

.method public whitelist onActiveUsersChanged([I)V
    .registers 2
    .param p1, "activeUids"    # [I

    .line 8265
    return-void
.end method

.method public whitelist onOwnershipChanged([I)V
    .registers 2
    .param p1, "ownerUids"    # [I

    .line 8249
    return-void
.end method
