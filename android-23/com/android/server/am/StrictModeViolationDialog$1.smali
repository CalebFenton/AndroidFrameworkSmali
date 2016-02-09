.class Lcom/android/server/am/StrictModeViolationDialog$1;
.super Landroid/os/Handler;
.source "StrictModeViolationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/StrictModeViolationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/StrictModeViolationDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/StrictModeViolationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/StrictModeViolationDialog;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #@2
    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-get2(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ActivityManagerService;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #@9
    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-get0(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #@11
    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-get0(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    #@14
    move-result-object v0

    #@15
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@17
    iget-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #@19
    if-ne v0, v2, :cond_0

    #@1b
    .line 90
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #@1d
    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-get0(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    #@20
    move-result-object v0

    #@21
    const/4 v2, 0x0

    #@22
    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v1

    #@25
    .line 93
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #@27
    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-get1(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;

    #@2a
    move-result-object v0

    #@2b
    iget v1, p1, Landroid/os/Message;->what:I

    #@2d
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    #@30
    .line 97
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    #@32
    invoke-virtual {v0}, Lcom/android/server/am/StrictModeViolationDialog;->dismiss()V

    #@35
    .line 87
    return-void

    #@36
    .line 88
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method
