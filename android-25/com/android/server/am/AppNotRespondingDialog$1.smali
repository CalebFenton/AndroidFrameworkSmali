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
    .line 141
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
    .line 143
    const/4 v1, 0x0

    #@1
    .line 145
    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@3
    invoke-virtual {v3}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    #@6
    move-result-object v3

    #@7
    .line 146
    iget v4, p1, Landroid/os/Message;->what:I

    #@9
    .line 145
    const/16 v5, 0x13d

    #@b
    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@e
    .line 148
    iget v3, p1, Landroid/os/Message;->what:I

    #@10
    packed-switch v3, :pswitch_data_0

    #@13
    .line 174
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_0

    #@15
    .line 176
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@17
    invoke-virtual {v3}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 182
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@20
    invoke-virtual {v3}, Lcom/android/server/am/AppNotRespondingDialog;->dismiss()V

    #@23
    .line 142
    return-void

    #@24
    .line 151
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@26
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    #@29
    move-result-object v3

    #@2a
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@2c
    invoke-static {v4}, Lcom/android/server/am/AppNotRespondingDialog;->-get0(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    #@2f
    move-result-object v4

    #@30
    iget-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@32
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    #@35
    goto :goto_0

    #@36
    .line 156
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@38
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    #@3b
    move-result-object v4

    #@3c
    monitor-enter v4

    #@3d
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@40
    .line 157
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@42
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get0(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    #@45
    move-result-object v0

    #@46
    .line 159
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, p1, Landroid/os/Message;->what:I

    #@48
    const/4 v5, 0x3

    #@49
    if-ne v3, v5, :cond_1

    #@4b
    .line 160
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@4d
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    #@50
    move-result-object v3

    #@51
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    #@53
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@56
    move-result-wide v6

    #@57
    const/4 v5, 0x0

    #@58
    .line 160
    invoke-virtual {v3, v0, v6, v7, v5}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    #@5b
    move-result-object v1

    #@5c
    .line 164
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    #@5d
    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    #@5f
    .line 165
    const/4 v3, 0x0

    #@60
    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    #@62
    .line 166
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@64
    iget-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@66
    if-ne v3, v5, :cond_2

    #@68
    .line 167
    const/4 v3, 0x0

    #@69
    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    #@6b
    .line 169
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    #@6d
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->-get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    #@70
    move-result-object v3

    #@71
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@73
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    monitor-exit v4

    #@77
    .line 156
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7a
    goto :goto_0

    #@7b
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    #@7c
    monitor-exit v4

    #@7d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@80
    throw v3

    #@81
    .line 177
    :catch_0
    move-exception v2

    #@82
    .line 178
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "AppNotRespondingDialog"

    #@85
    const-string/jumbo v4, "bug report receiver dissappeared"

    #@88
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8b
    goto :goto_1

    #@8c
    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
