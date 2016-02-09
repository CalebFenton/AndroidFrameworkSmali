.class Lcom/android/server/AppOpsService$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    #@0
    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    #@2
    monitor-enter v2

    #@3
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    #@5
    const/4 v3, 0x0

    #@6
    iput-boolean v3, v1, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    #@8
    .line 94
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    #@a
    const/4 v3, 0x0

    #@b
    iput-boolean v3, v1, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    #@d
    .line 95
    new-instance v0, Lcom/android/server/AppOpsService$1$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1$1;-><init>(Lcom/android/server/AppOpsService$1;)V

    #@12
    .line 101
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@14
    const/4 v1, 0x0

    #@15
    check-cast v1, [Ljava/lang/Void;

    #@17
    invoke-virtual {v0, v3, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 91
    return-void

    #@1c
    .line 92
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method
