.class Lcom/android/server/am/ActivityManagerService$7$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$7;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$7;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$7;
    .param p2, "val$d"    # Landroid/app/Dialog;

    #@0
    .prologue
    .line 5459
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7$1;->this$1:Lcom/android/server/am/ActivityManagerService$7;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$7$1;->val$d:Landroid/app/Dialog;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 5462
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7$1;->this$1:Lcom/android/server/am/ActivityManagerService$7;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@8
    .line 5463
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7$1;->val$d:Landroid/app/Dialog;

    #@a
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@d
    .line 5464
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7$1;->this$1:Lcom/android/server/am/ActivityManagerService$7;

    #@f
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@11
    const/4 v2, 0x0

    #@12
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchWarningShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 5462
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@18
    .line 5461
    return-void

    #@19
    .line 5462
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1e
    throw v0
.end method
