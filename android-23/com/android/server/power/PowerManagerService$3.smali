.class Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$confirm:Z

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "val$shutdown"    # Z
    .param p3, "val$confirm"    # Z
    .param p4, "val$reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2267
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    #@2
    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$3;->val$shutdown:Z

    #@4
    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService$3;->val$confirm:Z

    #@6
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$3;->val$reason:Ljava/lang/String;

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
    .line 2270
    monitor-enter p0

    #@1
    .line 2271
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$3;->val$shutdown:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2272
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    #@7
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$3;->val$confirm:Z

    #@d
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :goto_0
    monitor-exit p0

    #@11
    .line 2269
    return-void

    #@12
    .line 2274
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    #@14
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->val$reason:Ljava/lang/String;

    #@1a
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$3;->val$confirm:Z

    #@1c
    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 2270
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method
