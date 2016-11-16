.class Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/os/Handler;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppErrorDialog;

    #@0
    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    .line 153
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@4
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get2(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    #@7
    move-result-object v2

    #@8
    monitor-enter v2

    #@9
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@c
    .line 154
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@e
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_0

    #@14
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@16
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    #@19
    move-result-object v1

    #@1a
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@1c
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@1e
    if-ne v1, v3, :cond_0

    #@20
    .line 155
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@22
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    #@25
    move-result-object v1

    #@26
    const/4 v3, 0x0

    #@27
    iput-object v3, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :cond_0
    monitor-exit v2

    #@2a
    .line 153
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2d
    .line 158
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@2f
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->-get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    #@36
    .line 161
    const/4 v1, 0x6

    #@37
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppErrorDialog$1;->removeMessages(I)V

    #@3a
    .line 163
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@3c
    invoke-virtual {v1}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    #@3f
    .line 150
    return-void

    #@40
    .line 153
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v2

    #@42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@45
    throw v1
.end method
