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
    .line 88
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

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
    .line 90
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@2
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get2(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@9
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@11
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    #@14
    move-result-object v0

    #@15
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    #@17
    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@19
    if-ne v0, v2, :cond_0

    #@1b
    .line 92
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@1d
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

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
    .line 95
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@27
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->-get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    #@2a
    move-result-object v0

    #@2b
    iget v1, p1, Landroid/os/Message;->what:I

    #@2d
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    #@30
    .line 98
    const/4 v0, 0x0

    #@31
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppErrorDialog$1;->removeMessages(I)V

    #@34
    .line 102
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    #@36
    invoke-virtual {v0}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    #@39
    .line 89
    return-void

    #@3a
    .line 90
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method
