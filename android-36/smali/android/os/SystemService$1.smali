.class Landroid/os/SystemService$1;
.super Ljava/lang/Object;
.source "SystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 55
    invoke-static {}, Landroid/os/SystemService;->-$$Nest$sfgetsPropertyLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 56
    :try_start_5
    invoke-static {}, Landroid/os/SystemService;->-$$Nest$sfgetsPropertyLock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method
