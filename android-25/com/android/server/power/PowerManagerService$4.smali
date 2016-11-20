.class Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$confirm:Z

.field final synthetic val$haltMode:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "val$haltMode"    # I
    .param p3, "val$confirm"    # Z
    .param p4, "val$reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2479
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    iput p2, p0, Lcom/android/server/power/PowerManagerService$4;->val$haltMode:I

    #@4
    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    #@6
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 2482
    monitor-enter p0

    #@1
    .line 2483
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$4;->val$haltMode:I

    #@3
    const/4 v1, 0x2

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 2484
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    #@e
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :goto_0
    monitor-exit p0

    #@12
    .line 2481
    return-void

    #@13
    .line 2485
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$4;->val$haltMode:I

    #@15
    const/4 v1, 0x1

    #@16
    if-ne v0, v1, :cond_1

    #@18
    .line 2486
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #@1a
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@1d
    move-result-object v0

    #@1e
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    #@20
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    #@22
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 2482
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0

    #@29
    .line 2488
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2b
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@2e
    move-result-object v0

    #@2f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    #@31
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    #@33
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    goto :goto_0
.end method
