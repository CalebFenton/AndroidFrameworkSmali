.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;
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
    name = "LocalOnlyHotspotSubscription"
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/WifiManager;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7425
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7421
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Landroid/util/CloseGuard;

    .line 7426
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 7427
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 7432
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->this$0:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->unregisterLocalOnlyHotspotObserver()V

    .line 7433
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_11
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 7437
    nop

    :goto_b
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 7438
    goto :goto_1b

    .line 7437
    :catchall_f
    move-exception v0

    goto :goto_1c

    .line 7434
    :catch_11
    move-exception v0

    .line 7435
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v1, "WifiManager"

    const-string v2, "Failed to unregister LocalOnlyHotspotObserver."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    .line 7437
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 7439
    :goto_1b
    return-void

    .line 7437
    :goto_1c
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 7438
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 7444
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 7445
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 7447
    :cond_9
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 7449
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7450
    nop

    .line 7451
    return-void

    .line 7449
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7450
    throw v0
.end method
