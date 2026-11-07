.class public final Landroid/os/PowerManager$LowPowerStandbyPortsLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LowPowerStandbyPortsLock"
.end annotation


# instance fields
.field private blacklist mHeld:Z

.field private final blacklist mPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/os/PowerManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/PowerManager;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)V"
        }
    .end annotation

    .line 3877
    .local p2, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerManager$LowPowerStandbyPortDescription;>;"
    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3878
    iput-object p2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mPorts:Ljava/util/List;

    .line 3879
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    .line 3880
    return-void
.end method


# virtual methods
.method public whitelist acquire()V
    .registers 5

    .line 3885
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3887
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mPorts:Ljava/util/List;

    .line 3888
    invoke-static {v3}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 3887
    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->acquireLowPowerStandbyPorts(Landroid/os/IBinder;Ljava/util/List;)V

    .line 3889
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_1a
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    .line 3892
    nop

    .line 3893
    :try_start_16
    monitor-exit v0

    .line 3894
    return-void

    .line 3893
    :catchall_18
    move-exception v1

    goto :goto_20

    .line 3890
    :catch_1a
    move-exception v1

    .line 3891
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    throw v2

    .line 3893
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_18

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 4

    .line 3916
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3917
    :try_start_3
    iget-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z

    if-eqz v1, :cond_11

    .line 3918
    const-string v1, "PowerManager"

    const-string v2, "LowPowerStandbyPorts finalized while still held"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->release()V

    .line 3921
    :cond_11
    monitor-exit v0

    .line 3922
    return-void

    .line 3921
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist release()V
    .registers 4

    .line 3904
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 3906
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->releaseLowPowerStandbyPorts(Landroid/os/IBinder;)V

    .line 3907
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_14
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 3910
    nop

    .line 3911
    :try_start_10
    monitor-exit v0

    .line 3912
    return-void

    .line 3911
    :catchall_12
    move-exception v1

    goto :goto_1a

    .line 3908
    :catch_14
    move-exception v1

    .line 3909
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    throw v2

    .line 3911
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_12

    throw v1
.end method
