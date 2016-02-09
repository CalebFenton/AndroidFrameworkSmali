.class Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 9307
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    #@0
    .prologue
    .line 9312
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@c
    .line 9311
    return-void
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 9412
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    #@9
    .line 9413
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    #@12
    .line 9411
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const v4, 0x2500c

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    .line 9316
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@13
    .line 9318
    iget v0, p1, Landroid/os/Message;->what:I

    #@15
    sparse-switch v0, :sswitch_data_0

    #@18
    .line 9405
    return v2

    #@19
    .line 9323
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@1d
    const v2, 0x2500d

    #@20
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@23
    .line 9324
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@25
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    #@28
    .line 9325
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@2a
    .line 9326
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2c
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@2f
    .line 9327
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@33
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@3a
    .line 9407
    :cond_0
    :goto_0
    :sswitch_1
    return v3

    #@3b
    .line 9330
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@3f
    .line 9331
    const/4 v2, 0x3

    #@40
    .line 9330
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@43
    .line 9332
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@45
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    #@48
    .line 9333
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@4a
    .line 9334
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@55
    goto :goto_0

    #@56
    .line 9338
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@58
    if-nez v0, :cond_1

    #@5a
    iget v0, p1, Landroid/os/Message;->arg2:I

    #@5c
    if-eqz v0, :cond_2

    #@5e
    .line 9339
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@60
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@62
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@64
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@67
    .line 9340
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@69
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    #@6c
    .line 9341
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@6e
    .line 9342
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@70
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@72
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@75
    move-result-object v1

    #@76
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@79
    goto :goto_0

    #@7a
    .line 9344
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_0

    #@80
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@82
    const-string/jumbo v1, "Ignore unspecified fail event during WPS connection"

    #@85
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@88
    goto :goto_0

    #@89
    .line 9348
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8b
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@8d
    .line 9349
    const/4 v2, 0x7

    #@8e
    .line 9348
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@91
    .line 9350
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@93
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    #@96
    .line 9351
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    #@98
    .line 9352
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9a
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9c
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@9f
    move-result-object v1

    #@a0
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@a3
    goto :goto_0

    #@a4
    .line 9355
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a6
    invoke-static {v0, p1, v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@a9
    goto :goto_0

    #@aa
    .line 9358
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ac
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->cancelWps()Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_3

    #@b6
    .line 9359
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b8
    const v1, 0x25010

    #@bb
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    #@be
    .line 9363
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c2
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@c5
    move-result-object v1

    #@c6
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 9361
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cd
    const v1, 0x2500f

    #@d0
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    #@d3
    goto :goto_1

    #@d4
    .line 9376
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d6
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 9380
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@dd
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@e0
    move-result v1

    #@e1
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@e4
    .line 9381
    return v3

    #@e5
    .line 9383
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e7
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    #@ea
    move-result v1

    #@eb
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@ee
    .line 9384
    return v3

    #@ef
    .line 9386
    :sswitch_a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@f2
    move-result v0

    #@f3
    if-eqz v0, :cond_4

    #@f5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f7
    const-string/jumbo v1, "Network connection lost"

    #@fa
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@fd
    .line 9387
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ff
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;)V

    #@102
    goto/16 :goto_0

    #@104
    .line 9390
    :sswitch_b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@107
    move-result v0

    #@108
    if-eqz v0, :cond_0

    #@10a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@10c
    const-string/jumbo v1, "Ignore Assoc reject event during WPS Connection"

    #@10f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@112
    goto/16 :goto_0

    #@114
    .line 9397
    :sswitch_c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@117
    move-result v0

    #@118
    if-eqz v0, :cond_0

    #@11a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11c
    const-string/jumbo v1, "Ignore auth failure during WPS connection"

    #@11f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@122
    goto/16 :goto_0

    #@124
    .line 9318
    :sswitch_data_0
    .sparse-switch
        0x2000e -> :sswitch_7
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_7
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_7
        0x2004a -> :sswitch_7
        0x2004b -> :sswitch_7
        0x2008f -> :sswitch_8
        0x20091 -> :sswitch_8
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_a
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_c
        0x24008 -> :sswitch_1
        0x24009 -> :sswitch_3
        0x2400a -> :sswitch_2
        0x2400b -> :sswitch_4
        0x2402b -> :sswitch_b
        0x25001 -> :sswitch_7
        0x2500a -> :sswitch_5
        0x2500e -> :sswitch_6
    .end sparse-switch
.end method
