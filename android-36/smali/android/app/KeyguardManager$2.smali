.class Landroid/app/KeyguardManager$2;
.super Lcom/android/internal/policy/IDeviceLockedStateListener$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Landroid/app/KeyguardManager$2;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/android/internal/policy/IDeviceLockedStateListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceLockedStateChanged$0(Landroid/app/KeyguardManager$DeviceLockedStateListener;Z)V
    .registers 2
    .param p0, "listener"    # Landroid/app/KeyguardManager$DeviceLockedStateListener;
    .param p1, "isDeviceLocked"    # Z

    .line 277
    invoke-interface {p0, p1}, Landroid/app/KeyguardManager$DeviceLockedStateListener;->onDeviceLockedStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onDeviceLockedStateChanged$1(ZLandroid/app/KeyguardManager$DeviceLockedStateListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "isDeviceLocked"    # Z
    .param p1, "listener"    # Landroid/app/KeyguardManager$DeviceLockedStateListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 276
    new-instance v0, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/app/KeyguardManager$DeviceLockedStateListener;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method


# virtual methods
.method public blacklist onDeviceLockedStateChanged(Z)V
    .registers 5
    .param p1, "isDeviceLocked"    # Z

    .line 271
    invoke-static {}, Landroid/app/Flags;->deviceUnlockListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 272
    return-void

    .line 274
    :cond_7
    iget-object v0, p0, Landroid/app/KeyguardManager$2;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmDeviceLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 275
    :try_start_e
    iget-object v1, p0, Landroid/app/KeyguardManager$2;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v1}, Landroid/app/KeyguardManager;->-$$Nest$fgetmDeviceLockedStateListeners(Landroid/app/KeyguardManager;)Landroid/util/ArrayMap;

    move-result-object v1

    new-instance v2, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/app/KeyguardManager$2$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_1e

    throw v1
.end method
