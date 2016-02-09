.class Lcom/android/server/am/AppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppNotRespondingDialog;

    #@0
    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 107
    const/4 v1, 0x0

    #@1
    .line 108
    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget v3, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v3, :pswitch_data_0

    #@6
    .line 134
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_0

    #@8
    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@a
    invoke-virtual {v3}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 106
    :cond_0
    :goto_1
    return-void

    #@12
    .line 111
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@14
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@1a
    invoke-static {v4}, Lcom/android/server/am/AppNotRespondingDialog;->-get0(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    #@1d
    move-result-object v4

    #@1e
    iget-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@20
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    #@23
    goto :goto_0

    #@24
    .line 116
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@26
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    #@29
    move-result-object v4

    #@2a
    monitor-enter v4

    #@2b
    .line 117
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@2d
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get0(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    #@30
    move-result-object v0

    #@31
    .line 119
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, p1, Landroid/os/Message;->what:I

    #@33
    const/4 v5, 0x3

    #@34
    if-ne v3, v5, :cond_1

    #@36
    .line 120
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@38
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    #@3b
    move-result-object v3

    #@3c
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3f
    move-result-wide v6

    #@40
    const/4 v5, 0x0

    #@41
    .line 120
    invoke-virtual {v3, v0, v6, v7, v5}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    #@44
    move-result-object v1

    #@45
    .line 124
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    #@46
    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@48
    .line 125
    const/4 v3, 0x0

    #@49
    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@4b
    .line 126
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@4d
    iget-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@4f
    if-ne v3, v5, :cond_2

    #@51
    .line 127
    const/4 v3, 0x0

    #@52
    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@54
    .line 129
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@56
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    #@59
    move-result-object v3

    #@5a
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@5c
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    monitor-exit v4

    #@60
    goto :goto_0

    #@61
    .line 116
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    #@62
    monitor-exit v4

    #@63
    throw v3

    #@64
    .line 137
    :catch_0
    move-exception v2

    #@65
    .line 138
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "AppNotRespondingDialog"

    #@68
    const-string/jumbo v4, "bug report receiver dissappeared"

    #@6b
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    goto :goto_1

    #@6f
    .line 108
    nop

    #@70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
