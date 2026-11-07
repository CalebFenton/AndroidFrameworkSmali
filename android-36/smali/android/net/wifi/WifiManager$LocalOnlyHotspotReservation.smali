.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalOnlyHotspotReservation"
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mClosed:Z

.field private final blacklist mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private final blacklist mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 5
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .param p2, "config"    # Landroid/net/wifi/SoftApConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7255
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7248
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Landroid/util/CloseGuard;

    .line 7251
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mClosed:Z

    .line 7256
    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 7257
    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->toWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 7258
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 7259
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 7286
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmLock(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_1f
    .catchall {:try_start_0 .. :try_end_7} :catchall_1d

    .line 7287
    :try_start_7
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mClosed:Z

    if-nez v1, :cond_18

    .line 7288
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mClosed:Z

    .line 7289
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-$$Nest$mstopLocalOnlyHotspot(Landroid/net/wifi/WifiManager;)V

    .line 7290
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V

    .line 7292
    :cond_18
    monitor-exit v0

    .line 7296
    goto :goto_28

    .line 7292
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    .end local p0    # "this":Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    :try_start_1c
    throw v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1d} :catch_1f
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 7296
    .restart local p0    # "this":Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    :catchall_1d
    move-exception v0

    goto :goto_2d

    .line 7293
    :catch_1f
    move-exception v0

    .line 7294
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    const-string v1, "WifiManager"

    const-string v2, "Failed to stop Local Only Hotspot."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    .line 7296
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 7297
    nop

    .line 7298
    return-void

    .line 7296
    :goto_2d
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 7297
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7303
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 7304
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 7306
    :cond_9
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 7308
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7309
    nop

    .line 7310
    return-void

    .line 7308
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7309
    throw v0
.end method

.method public whitelist getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 2

    .line 7280
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-object v0
.end method

.method public whitelist getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7272
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method
