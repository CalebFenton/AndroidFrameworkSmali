.class public final Landroid/scheduling/RebootReadinessManager;
.super Ljava/lang/Object;
.source "RebootReadinessManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;,
        Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;,
        Landroid/scheduling/RebootReadinessManager$RebootReadinessStatus;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REBOOT_READY:Ljava/lang/String; = "android.scheduling.action.REBOOT_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ESTIMATED_FINISH_TIME_KEY:Ljava/lang/String; = "ESTIMATED_FINISH_TIME"

.field public static final whitelist EXTRA_IS_READY_TO_REBOOT:Ljava/lang/String; = "android.scheduling.extra.IS_READY_TO_REBOOT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IS_REBOOT_READY_KEY:Ljava/lang/String; = "IS_REBOOT_READY"

.field public static final blacklist SUBSYSTEM_NAME_KEY:Ljava/lang/String; = "SUBSYSTEM_NAME"

.field private static final blacklist TAG:Ljava/lang/String; = "RebootReadinessManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mProxyList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;",
            "Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/scheduling/IRebootReadinessManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/scheduling/IRebootReadinessManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/scheduling/IRebootReadinessManager;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/scheduling/RebootReadinessManager;->mProxyList:Landroid/util/ArrayMap;

    .line 122
    iput-object p1, p0, Landroid/scheduling/RebootReadinessManager;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Landroid/scheduling/RebootReadinessManager;->mService:Landroid/scheduling/IRebootReadinessManager;

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist addRequestRebootReadinessStatusListener(Ljava/util/concurrent/Executor;Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;

    .line 311
    :try_start_0
    new-instance v0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;

    invoke-direct {v0, p2, p1}, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;-><init>(Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;Ljava/util/concurrent/Executor;)V

    .line 313
    .local v0, "proxy":Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;
    iget-object v1, p0, Landroid/scheduling/RebootReadinessManager;->mService:Landroid/scheduling/IRebootReadinessManager;

    invoke-interface {v1, v0}, Landroid/scheduling/IRebootReadinessManager;->addRequestRebootReadinessStatusListener(Landroid/scheduling/IRequestRebootReadinessStatusListener;)V

    .line 314
    iget-object v1, p0, Landroid/scheduling/RebootReadinessManager;->mProxyList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 317
    nop

    .line 318
    .end local v0    # "proxy":Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;
    return-void

    .line 315
    :catch_11
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cancelPendingReboot()V
    .registers 3

    .line 280
    :try_start_0
    iget-object v0, p0, Landroid/scheduling/RebootReadinessManager;->mService:Landroid/scheduling/IRebootReadinessManager;

    iget-object v1, p0, Landroid/scheduling/RebootReadinessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/scheduling/IRebootReadinessManager;->cancelPendingReboot(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 283
    nop

    .line 284
    return-void

    .line 281
    :catch_d
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isReadyToReboot()Z
    .registers 3

    .line 294
    :try_start_0
    iget-object v0, p0, Landroid/scheduling/RebootReadinessManager;->mService:Landroid/scheduling/IRebootReadinessManager;

    invoke-interface {v0}, Landroid/scheduling/IRebootReadinessManager;->isReadyToReboot()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 295
    :catch_7
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist markRebootPending()V
    .registers 3

    .line 266
    :try_start_0
    iget-object v0, p0, Landroid/scheduling/RebootReadinessManager;->mService:Landroid/scheduling/IRebootReadinessManager;

    iget-object v1, p0, Landroid/scheduling/RebootReadinessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/scheduling/IRebootReadinessManager;->markRebootPending(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catch_d
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeRequestRebootReadinessStatusListener(Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;)V
    .registers 4
    .param p1, "callback"    # Landroid/scheduling/RebootReadinessManager$RequestRebootReadinessStatusListener;

    .line 329
    :try_start_0
    iget-object v0, p0, Landroid/scheduling/RebootReadinessManager;->mProxyList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;

    .line 330
    .local v0, "proxy":Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;
    if-eqz v0, :cond_14

    .line 331
    iget-object v1, p0, Landroid/scheduling/RebootReadinessManager;->mService:Landroid/scheduling/IRebootReadinessManager;

    invoke-interface {v1, v0}, Landroid/scheduling/IRebootReadinessManager;->removeRequestRebootReadinessStatusListener(Landroid/scheduling/IRequestRebootReadinessStatusListener;)V

    .line 332
    iget-object v1, p0, Landroid/scheduling/RebootReadinessManager;->mProxyList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    .line 336
    .end local v0    # "proxy":Landroid/scheduling/RebootReadinessManager$RebootReadinessCallbackProxy;
    :cond_14
    nop

    .line 337
    return-void

    .line 334
    :catch_16
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
