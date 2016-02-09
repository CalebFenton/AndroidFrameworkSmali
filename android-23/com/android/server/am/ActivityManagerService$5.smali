.class Lcom/android/server/am/ActivityManagerService$5;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->showLaunchWarningLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$cur:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$next:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$cur"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "val$next"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 5056
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$5;->val$cur:Lcom/android/server/am/ActivityRecord;

    #@4
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$next:Lcom/android/server/am/ActivityRecord;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 5059
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    .line 5060
    :try_start_0
    new-instance v0, Lcom/android/server/am/LaunchWarningWindow;

    #@5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@9
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$cur:Lcom/android/server/am/ActivityRecord;

    #@b
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$5;->val$next:Lcom/android/server/am/ActivityRecord;

    #@d
    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/LaunchWarningWindow;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    #@10
    .line 5061
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    #@13
    .line 5062
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@15
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    #@17
    new-instance v3, Lcom/android/server/am/ActivityManagerService$5$1;

    #@19
    invoke-direct {v3, p0, v0}, Lcom/android/server/am/ActivityManagerService$5$1;-><init>(Lcom/android/server/am/ActivityManagerService$5;Landroid/app/Dialog;)V

    #@1c
    .line 5070
    const-wide/16 v4, 0xfa0

    #@1e
    .line 5062
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 5058
    return-void

    #@23
    .line 5059
    .end local v0    # "d":Landroid/app/Dialog;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method
