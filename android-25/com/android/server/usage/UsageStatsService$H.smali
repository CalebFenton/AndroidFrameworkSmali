.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    .line 1100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1099
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1105
    iget v1, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 1163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@a
    .line 1104
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1107
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    #@11
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@13
    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    #@16
    goto :goto_0

    #@17
    .line 1111
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@19
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    #@1c
    goto :goto_0

    #@1d
    .line 1115
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@1f
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@21
    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    #@24
    goto :goto_0

    #@25
    .line 1119
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@27
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v1, Ljava/lang/String;

    #@2b
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@2d
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@2f
    if-ne v6, v2, :cond_1

    #@31
    :goto_1
    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/usage/UsageStatsService;->informListeners(Ljava/lang/String;IZ)V

    #@34
    goto :goto_0

    #@35
    :cond_1
    move v2, v3

    #@36
    goto :goto_1

    #@37
    .line 1123
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@39
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v1, Ljava/lang/String;

    #@3d
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@3f
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@41
    if-ne v6, v2, :cond_2

    #@43
    :goto_2
    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V

    #@46
    goto :goto_0

    #@47
    :cond_2
    move v2, v3

    #@48
    goto :goto_2

    #@49
    .line 1127
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@4b
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@4d
    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->checkIdleStates(I)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_0

    #@53
    .line 1128
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@55
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@57
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@59
    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@5b
    .line 1129
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@5d
    const/4 v5, 0x5

    #@5e
    .line 1128
    invoke-virtual {v2, v5, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@61
    move-result-object v2

    #@62
    .line 1130
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@64
    iget-wide v4, v3, Lcom/android/server/usage/UsageStatsService;->mCheckIdleIntervalMillis:J

    #@66
    .line 1128
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@69
    goto :goto_0

    #@6a
    .line 1135
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@6c
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    #@6e
    const/16 v2, 0xa

    #@70
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@73
    .line 1136
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@75
    const/4 v2, -0x1

    #@76
    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->checkIdleStates(I)Z

    #@79
    goto :goto_0

    #@7a
    .line 1140
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@7c
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->checkParoleTimeout()V

    #@7f
    goto :goto_0

    #@80
    .line 1145
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@82
    invoke-virtual {v1, v3}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    #@85
    goto :goto_0

    #@86
    .line 1149
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@8a
    .line 1150
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@8c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@8e
    check-cast v1, Ljava/lang/String;

    #@90
    .line 1151
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@92
    check-cast v2, Ljava/lang/String;

    #@94
    .line 1152
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@96
    check-cast v3, Ljava/lang/Integer;

    #@98
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@9b
    move-result v3

    #@9c
    .line 1150
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    #@9f
    .line 1153
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 1159
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@a6
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->informParoleStateChanged()V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1105
    nop

    #@ac
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method
