.class Lcom/android/server/am/ActivityManagerService$5$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$5;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$5;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$5;
    .param p2, "val$d"    # Landroid/app/Dialog;

    #@0
    .prologue
    .line 5062
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$5$1;->val$d:Landroid/app/Dialog;

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
    .line 5065
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    .line 5066
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5$1;->val$d:Landroid/app/Dialog;

    #@7
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@a
    .line 5067
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5$1;->this$1:Lcom/android/server/am/ActivityManagerService$5;

    #@c
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@e
    const/4 v2, 0x0

    #@f
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchWarningShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 5064
    return-void

    #@13
    .line 5065
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method
