.class Landroid/os/health/SystemHealthManager$1;
.super Landroid/os/ResultReceiver;
.source "SystemHealthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/health/SystemHealthManager;->getSupportedPowerMonitors(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/health/SystemHealthManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$onResult:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "this$0"    # Landroid/os/health/SystemHealthManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 531
    iput-object p1, p0, Landroid/os/health/SystemHealthManager$1;->this$0:Landroid/os/health/SystemHealthManager;

    iput-object p3, p0, Landroid/os/health/SystemHealthManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/os/health/SystemHealthManager$1;->val$onResult:Ljava/util/function/Consumer;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2
    .param p0, "onResult"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Ljava/util/List;

    .line 541
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 534
    const-string/jumbo v0, "monitors"

    const-class v1, Landroid/os/PowerMonitor;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PowerMonitor;

    .line 536
    .local v0, "array":[Landroid/os/PowerMonitor;
    if-eqz v0, :cond_12

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_16

    :cond_12
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    .line 537
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    :goto_16
    iget-object v2, p0, Landroid/os/health/SystemHealthManager$1;->this$0:Landroid/os/health/SystemHealthManager;

    invoke-static {v2}, Landroid/os/health/SystemHealthManager;->-$$Nest$fgetmPowerMonitorsLock(Landroid/os/health/SystemHealthManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 538
    :try_start_1d
    iget-object v3, p0, Landroid/os/health/SystemHealthManager$1;->this$0:Landroid/os/health/SystemHealthManager;

    invoke-static {v3, v1}, Landroid/os/health/SystemHealthManager;->-$$Nest$fputmPowerMonitorsInfo(Landroid/os/health/SystemHealthManager;Ljava/util/List;)V

    .line 539
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_3a

    .line 540
    iget-object v2, p0, Landroid/os/health/SystemHealthManager$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_34

    .line 541
    iget-object v2, p0, Landroid/os/health/SystemHealthManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/os/health/SystemHealthManager$1;->val$onResult:Ljava/util/function/Consumer;

    new-instance v4, Landroid/os/health/SystemHealthManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v1}, Landroid/os/health/SystemHealthManager$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_39

    .line 543
    :cond_34
    iget-object v2, p0, Landroid/os/health/SystemHealthManager$1;->val$onResult:Ljava/util/function/Consumer;

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 545
    :goto_39
    return-void

    .line 539
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3
.end method
