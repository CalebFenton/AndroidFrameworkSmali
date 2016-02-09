.class Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 9013
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 9018
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 9019
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@10
    move-result-object v0

    #@11
    const v1, 0x2300d

    #@14
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@17
    .line 9020
    return-void

    #@18
    .line 9023
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get7()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 9024
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, " Enter DisconnectedState scan interval "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 9025
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@31
    move-result-object v2

    #@32
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@34
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@37
    move-result v2

    #@38
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 9026
    const-string/jumbo v2, " mLegacyPnoEnabled= "

    #@3f
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 9026
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@48
    move-result v2

    #@49
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 9027
    const-string/jumbo v2, " screenOn="

    #@50
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 9027
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@59
    move-result v2

    #@5a
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 9028
    const-string/jumbo v2, " useGscan="

    #@61
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    .line 9028
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@67
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@6a
    move-result v2

    #@6b
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 9028
    const-string/jumbo v2, "/"

    #@72
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    .line 9029
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@78
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@7b
    move-result-object v2

    #@7c
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7e
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@81
    move-result v2

    #@82
    .line 9024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@8d
    .line 9033
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8f
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@92
    .line 9035
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@94
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@97
    move-result v0

    #@98
    if-eqz v0, :cond_4

    #@9a
    .line 9036
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9c
    const-string/jumbo v1, "disconnectedEnter"

    #@9f
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    #@a2
    .line 9068
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a4
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get57(Lcom/android/server/wifi/WifiStateMachine;)I

    #@a7
    move-result v0

    #@a8
    if-eqz v0, :cond_3

    #@aa
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ac
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_7

    #@b6
    .line 9074
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@bb
    move-result-wide v2

    #@bc
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;J)J

    #@bf
    .line 9075
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c1
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set13(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@c4
    .line 9015
    return-void

    #@c5
    .line 9038
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c7
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@ca
    move-result v0

    #@cb
    if-eqz v0, :cond_5

    #@cd
    .line 9042
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cf
    const/16 v1, 0x1f4

    #@d1
    invoke-static {v0, v1, v5, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@d4
    goto :goto_0

    #@d5
    .line 9047
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d7
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@da
    move-result v0

    #@db
    if-eqz v0, :cond_6

    #@dd
    .line 9054
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@df
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get47(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@e2
    move-result v0

    #@e3
    if-nez v0, :cond_2

    #@e5
    .line 9055
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e7
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    #@ea
    goto :goto_0

    #@eb
    .line 9058
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ed
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@f0
    goto :goto_0

    #@f1
    .line 9069
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@f6
    move-result-object v0

    #@f7
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    #@fa
    move-result-object v0

    #@fb
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@fe
    move-result v0

    #@ff
    if-nez v0, :cond_3

    #@101
    .line 9070
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@103
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@105
    .line 9071
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@107
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)I

    #@10a
    move-result v3

    #@10b
    add-int/lit8 v3, v3, 0x1

    #@10d
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@110
    move-result v2

    #@111
    .line 9070
    const v3, 0x20058

    #@114
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@117
    move-result-object v1

    #@118
    .line 9071
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@11a
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get57(Lcom/android/server/wifi/WifiStateMachine;)I

    #@11d
    move-result v2

    #@11e
    int-to-long v2, v2

    #@11f
    .line 9070
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@122
    goto :goto_1
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 9299
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set13(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@6
    .line 9301
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    #@b
    .line 9302
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@10
    .line 9303
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@1f
    .line 9298
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 9079
    const/4 v11, 0x1

    #@1
    .line 9081
    .local v11, "ret":Z
    move-object/from16 v0, p0

    #@3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    move-object/from16 v0, p1

    #@f
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    #@12
    .line 9083
    move-object/from16 v0, p1

    #@14
    iget v2, v0, Landroid/os/Message;->what:I

    #@16
    sparse-switch v2, :sswitch_data_0

    #@19
    .line 9292
    const/4 v11, 0x0

    #@1a
    .line 9294
    :cond_0
    :goto_0
    :sswitch_0
    return v11

    #@1b
    .line 9085
    :sswitch_1
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_0

    #@29
    .line 9086
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get57(Lcom/android/server/wifi/WifiStateMachine;)I

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_0

    #@33
    move-object/from16 v0, p1

    #@35
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@37
    move-object/from16 v0, p0

    #@39
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3b
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)I

    #@3e
    move-result v3

    #@3f
    if-ne v2, v3, :cond_0

    #@41
    .line 9087
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@45
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@50
    move-result v2

    #@51
    if-nez v2, :cond_0

    #@53
    .line 9088
    move-object/from16 v0, p0

    #@55
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@57
    const/4 v3, -0x1

    #@58
    const/4 v4, -0x1

    #@59
    const/4 v6, 0x0

    #@5a
    const/4 v7, 0x0

    #@5b
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@5e
    .line 9089
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@66
    .line 9090
    move-object/from16 v0, p0

    #@68
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@6a
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)I

    #@6d
    move-result v6

    #@6e
    add-int/lit8 v6, v6, 0x1

    #@70
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@73
    move-result v4

    #@74
    .line 9089
    const v6, 0x20058

    #@77
    .line 9090
    const/4 v7, 0x0

    #@78
    .line 9089
    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@7b
    move-result-object v3

    #@7c
    .line 9090
    move-object/from16 v0, p0

    #@7e
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@80
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get57(Lcom/android/server/wifi/WifiStateMachine;)I

    #@83
    move-result v4

    #@84
    int-to-long v6, v4

    #@85
    .line 9089
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@88
    goto :goto_0

    #@89
    .line 9100
    :sswitch_2
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@91
    .line 9101
    move-object/from16 v0, p0

    #@93
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@95
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)I

    #@98
    move-result v6

    #@99
    add-int/lit8 v6, v6, 0x1

    #@9b
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@9e
    move-result v4

    #@9f
    .line 9100
    const v6, 0x20058

    #@a2
    .line 9101
    const/4 v7, 0x0

    #@a3
    .line 9100
    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@a6
    move-result-object v3

    #@a7
    .line 9101
    move-object/from16 v0, p0

    #@a9
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@ab
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get57(Lcom/android/server/wifi/WifiStateMachine;)I

    #@ae
    move-result v4

    #@af
    int-to-long v6, v4

    #@b0
    .line 9100
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@b3
    .line 9102
    const/4 v11, 0x0

    #@b4
    .line 9103
    goto/16 :goto_0

    #@b6
    .line 9105
    :sswitch_3
    move-object/from16 v0, p1

    #@b8
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@ba
    const/4 v3, 0x1

    #@bb
    if-eq v2, v3, :cond_2

    #@bd
    .line 9106
    move-object/from16 v0, p0

    #@bf
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@c1
    move-object/from16 v0, p1

    #@c3
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@c5
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set33(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@c8
    .line 9108
    move-object/from16 v0, p0

    #@ca
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@cc
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@cf
    move-result-object v2

    #@d0
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    #@d3
    .line 9109
    move-object/from16 v0, p0

    #@d5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d7
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)I

    #@da
    move-result v2

    #@db
    const/4 v3, 0x3

    #@dc
    if-ne v2, v3, :cond_1

    #@de
    .line 9110
    move-object/from16 v0, p0

    #@e0
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e2
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    #@e5
    move-result-object v2

    #@e6
    const v3, 0x20084

    #@e9
    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@ec
    .line 9111
    move-object/from16 v0, p0

    #@ee
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f0
    const/4 v3, 0x1

    #@f1
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;I)V

    #@f4
    .line 9113
    :cond_1
    move-object/from16 v0, p0

    #@f6
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@fc
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get69(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    #@ff
    move-result-object v3

    #@100
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap55(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    #@103
    .line 9115
    :cond_2
    move-object/from16 v0, p0

    #@105
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@107
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@10a
    move-result-object v2

    #@10b
    .line 9116
    const/4 v3, -0x1

    #@10c
    .line 9115
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    #@10f
    goto/16 :goto_0

    #@111
    .line 9122
    :sswitch_4
    move-object/from16 v0, p1

    #@113
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@115
    move-object/from16 v16, v0

    #@117
    check-cast v16, Lcom/android/server/wifi/StateChangeResult;

    #@119
    .line 9123
    .local v16, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@11c
    move-result v2

    #@11d
    if-eqz v2, :cond_3

    #@11f
    .line 9124
    move-object/from16 v0, p0

    #@121
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@123
    new-instance v3, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v4, "SUPPLICANT_STATE_CHANGE_EVENT state="

    #@12b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v3

    #@12f
    move-object/from16 v0, v16

    #@131
    iget-object v4, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v3

    #@137
    .line 9125
    const-string/jumbo v4, " -> state= "

    #@13a
    .line 9124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v3

    #@13e
    .line 9125
    move-object/from16 v0, v16

    #@140
    iget-object v4, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@142
    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    #@145
    move-result-object v4

    #@146
    .line 9124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v3

    #@14a
    .line 9126
    const-string/jumbo v4, " debouncing="

    #@14d
    .line 9124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v3

    #@151
    .line 9126
    move-object/from16 v0, p0

    #@153
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@155
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@158
    move-result v4

    #@159
    .line 9124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v3

    #@15d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@160
    move-result-object v3

    #@161
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@164
    .line 9128
    :cond_3
    move-object/from16 v0, p0

    #@166
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@168
    move-object/from16 v0, v16

    #@16a
    iget-object v3, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@16c
    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    #@16f
    move-result-object v3

    #@170
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    #@173
    .line 9130
    const/4 v11, 0x0

    #@174
    .line 9131
    goto/16 :goto_0

    #@176
    .line 9133
    .end local v16    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_5
    move-object/from16 v0, p0

    #@178
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17a
    move-object/from16 v0, p1

    #@17c
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap3(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z

    #@17f
    move-result v2

    #@180
    if-nez v2, :cond_4

    #@182
    .line 9135
    move-object/from16 v0, p0

    #@184
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@186
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get6()I

    #@189
    move-result v3

    #@18a
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@18d
    .line 9136
    const/4 v2, 0x1

    #@18e
    return v2

    #@18f
    .line 9138
    :cond_4
    move-object/from16 v0, p1

    #@191
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@193
    const/4 v3, -0x2

    #@194
    if-ne v2, v3, :cond_7

    #@196
    .line 9141
    move-object/from16 v0, p0

    #@198
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@19a
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@19d
    move-result-object v2

    #@19e
    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1a0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1a3
    move-result v5

    #@1a4
    .line 9142
    .local v5, "period":I
    move-object/from16 v0, p0

    #@1a6
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1a8
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1ab
    move-result-object v2

    #@1ac
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1af
    move-result v2

    #@1b0
    if-eqz v2, :cond_5

    #@1b2
    .line 9143
    move-object/from16 v0, p0

    #@1b4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b6
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@1b9
    move-result-object v2

    #@1ba
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1bd
    move-result-object v2

    #@1be
    .line 9144
    const-string/jumbo v3, "wifi_scan_interval_p2p_connected_ms"

    #@1c1
    .line 9145
    int-to-long v6, v5

    #@1c2
    .line 9143
    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@1c5
    move-result-wide v2

    #@1c6
    long-to-int v5, v2

    #@1c7
    .line 9147
    :cond_5
    move-object/from16 v0, p0

    #@1c9
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1cb
    move-object/from16 v0, p1

    #@1cd
    iget v3, v0, Landroid/os/Message;->arg2:I

    #@1cf
    .line 9148
    const/4 v4, 0x1

    #@1d0
    const/4 v6, 0x0

    #@1d1
    const/4 v7, 0x0

    #@1d2
    .line 9147
    invoke-static/range {v2 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    #@1d5
    move-result v2

    #@1d6
    if-nez v2, :cond_6

    #@1d8
    .line 9149
    move-object/from16 v0, p0

    #@1da
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1dc
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()I

    #@1df
    move-result v3

    #@1e0
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@1e3
    .line 9150
    move-object/from16 v0, p0

    #@1e5
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1e7
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1ec
    const-string/jumbo v4, "Disconnected CMD_START_SCAN source "

    #@1ef
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v3

    #@1f3
    .line 9151
    move-object/from16 v0, p1

    #@1f5
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@1f7
    .line 9150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v3

    #@1fb
    .line 9152
    const-string/jumbo v4, " "

    #@1fe
    .line 9150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v3

    #@202
    .line 9152
    move-object/from16 v0, p1

    #@204
    iget v4, v0, Landroid/os/Message;->arg2:I

    #@206
    .line 9150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@209
    move-result-object v3

    #@20a
    .line 9152
    const-string/jumbo v4, ", "

    #@20d
    .line 9150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v3

    #@211
    .line 9152
    move-object/from16 v0, p0

    #@213
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@215
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get22(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    #@218
    move-result-object v4

    #@219
    .line 9150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21c
    move-result-object v3

    #@21d
    .line 9153
    const-string/jumbo v4, " -> obsolete"

    #@220
    .line 9150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v3

    #@224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v3

    #@228
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@22b
    .line 9154
    const/4 v2, 0x1

    #@22c
    return v2

    #@22d
    .line 9157
    :cond_6
    move-object/from16 v0, p0

    #@22f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@231
    const/4 v3, 0x0

    #@232
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    #@235
    .line 9158
    move-object/from16 v0, p0

    #@237
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@239
    const/4 v3, 0x1

    #@23a
    move-object/from16 v0, p1

    #@23c
    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    #@23f
    .line 9159
    const/4 v11, 0x1

    #@240
    goto/16 :goto_0

    #@242
    .line 9173
    .end local v5    # "period":I
    :cond_7
    move-object/from16 v0, p0

    #@244
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@246
    const/4 v3, 0x0

    #@247
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    #@24a
    .line 9174
    const/4 v11, 0x0

    #@24b
    goto/16 :goto_0

    #@24d
    .line 9178
    :sswitch_6
    move-object/from16 v0, p1

    #@24f
    iget v2, v0, Landroid/os/Message;->arg2:I

    #@251
    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    #@253
    if-ge v2, v3, :cond_8

    #@255
    .line 9179
    move-object/from16 v0, p0

    #@257
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@259
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()I

    #@25c
    move-result v3

    #@25d
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@260
    .line 9180
    const/4 v2, 0x1

    #@261
    return v2

    #@262
    .line 9186
    :cond_8
    move-object/from16 v0, p0

    #@264
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@266
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@269
    move-result v2

    #@26a
    if-eqz v2, :cond_a

    #@26c
    .line 9187
    move-object/from16 v0, p0

    #@26e
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@270
    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    #@272
    const-wide/16 v6, 0x0

    #@274
    cmp-long v2, v2, v6

    #@276
    if-nez v2, :cond_9

    #@278
    .line 9189
    move-object/from16 v0, p0

    #@27a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27c
    const-string/jumbo v3, "disconnectedRestart"

    #@27f
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    #@282
    goto/16 :goto_0

    #@284
    .line 9193
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@287
    move-result-wide v12

    #@288
    .line 9194
    .local v12, "now":J
    move-object/from16 v0, p0

    #@28a
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28c
    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    #@28e
    const-wide/16 v6, 0x0

    #@290
    cmp-long v2, v2, v6

    #@292
    if-eqz v2, :cond_0

    #@294
    move-object/from16 v0, p0

    #@296
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@298
    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    #@29a
    cmp-long v2, v12, v2

    #@29c
    if-lez v2, :cond_0

    #@29e
    .line 9195
    move-object/from16 v0, p0

    #@2a0
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2a2
    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    #@2a4
    sub-long v2, v12, v2

    #@2a6
    .line 9196
    const-wide/32 v6, 0x1d4c0

    #@2a9
    .line 9195
    cmp-long v2, v2, v6

    #@2ab
    if-lez v2, :cond_0

    #@2ad
    .line 9197
    move-object/from16 v0, p0

    #@2af
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b1
    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    #@2b3
    .line 9198
    move-object/from16 v0, p0

    #@2b5
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2b7
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@2ba
    move-result-object v4

    #@2bb
    iget-object v4, v4, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2bd
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@2c0
    move-result v4

    #@2c1
    int-to-long v6, v4

    #@2c2
    .line 9197
    cmp-long v2, v2, v6

    #@2c4
    if-gez v2, :cond_0

    #@2c6
    .line 9200
    move-object/from16 v0, p0

    #@2c8
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2ca
    const-string/jumbo v3, "disconnected restart gscan"

    #@2cd
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    #@2d0
    goto/16 :goto_0

    #@2d2
    .line 9211
    .end local v12    # "now":J
    :cond_a
    move-object/from16 v0, p0

    #@2d4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2d6
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@2d9
    move-result v2

    #@2da
    if-nez v2, :cond_b

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2e0
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get47(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@2e3
    move-result v2

    #@2e4
    if-eqz v2, :cond_c

    #@2e6
    .line 9215
    :cond_b
    :goto_1
    const/4 v2, 0x1

    #@2e7
    return v2

    #@2e8
    .line 9211
    :cond_c
    move-object/from16 v0, p0

    #@2ea
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2ec
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@2ef
    move-result v2

    #@2f0
    if-eqz v2, :cond_b

    #@2f2
    .line 9212
    move-object/from16 v0, p0

    #@2f4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2f6
    const/4 v3, 0x0

    #@2f7
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    #@2fa
    .line 9213
    move-object/from16 v0, p0

    #@2fc
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2fe
    const/4 v3, 0x1

    #@2ff
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    #@302
    goto :goto_1

    #@303
    .line 9221
    :sswitch_7
    move-object/from16 v0, p0

    #@305
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@307
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@30a
    move-result v2

    #@30b
    if-nez v2, :cond_d

    #@30d
    move-object/from16 v0, p0

    #@30f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@311
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get47(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@314
    move-result v2

    #@315
    if-eqz v2, :cond_d

    #@317
    .line 9222
    move-object/from16 v0, p0

    #@319
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@31b
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@31e
    move-result v2

    #@31f
    .line 9221
    if-eqz v2, :cond_d

    #@321
    .line 9223
    move-object/from16 v0, p0

    #@323
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@325
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@328
    move-result v2

    #@329
    if-eqz v2, :cond_f

    #@32b
    .line 9225
    :cond_d
    move-object/from16 v0, p0

    #@32d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@32f
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@332
    move-result v2

    #@333
    if-nez v2, :cond_e

    #@335
    .line 9226
    move-object/from16 v0, p0

    #@337
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@339
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get47(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@33c
    move-result v2

    #@33d
    if-eqz v2, :cond_10

    #@33f
    .line 9247
    :cond_e
    :goto_2
    const/4 v11, 0x0

    #@340
    .line 9248
    goto/16 :goto_0

    #@342
    .line 9224
    :cond_f
    move-object/from16 v0, p0

    #@344
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@346
    const/4 v3, 0x1

    #@347
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    #@34a
    goto :goto_2

    #@34b
    .line 9227
    :cond_10
    move-object/from16 v0, p0

    #@34d
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34f
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@352
    move-result v2

    #@353
    .line 9225
    if-eqz v2, :cond_e

    #@355
    .line 9228
    move-object/from16 v0, p0

    #@357
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@359
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@35c
    move-result v2

    #@35d
    if-nez v2, :cond_e

    #@35f
    .line 9231
    move-object/from16 v0, p0

    #@361
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@363
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)I

    #@366
    move-result v2

    #@367
    const/4 v3, 0x1

    #@368
    if-ge v2, v3, :cond_12

    #@36a
    .line 9232
    const/16 v9, 0x7530

    #@36c
    .line 9238
    .local v9, "delay":I
    :goto_3
    move-object/from16 v0, p0

    #@36e
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@370
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)I

    #@373
    move-result v3

    #@374
    add-int/lit8 v3, v3, 0x1

    #@376
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set13(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@379
    .line 9239
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    #@37c
    move-result v2

    #@37d
    if-eqz v2, :cond_11

    #@37f
    .line 9240
    move-object/from16 v0, p0

    #@381
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@383
    new-instance v3, Ljava/lang/StringBuilder;

    #@385
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@388
    const-string/jumbo v4, "Starting PNO alarm "

    #@38b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38e
    move-result-object v3

    #@38f
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@392
    move-result-object v3

    #@393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@396
    move-result-object v3

    #@397
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    #@39a
    .line 9242
    :cond_11
    move-object/from16 v0, p0

    #@39c
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@39e
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    #@3a1
    move-result-object v2

    #@3a2
    .line 9243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3a5
    move-result-wide v6

    #@3a6
    int-to-long v0, v9

    #@3a7
    move-wide/from16 v18, v0

    #@3a9
    add-long v6, v6, v18

    #@3ab
    .line 9244
    move-object/from16 v0, p0

    #@3ad
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3af
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    #@3b2
    move-result-object v3

    #@3b3
    .line 9242
    const/4 v4, 0x0

    #@3b4
    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@3b7
    goto :goto_2

    #@3b8
    .line 9233
    .end local v9    # "delay":I
    :cond_12
    move-object/from16 v0, p0

    #@3ba
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3bc
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)I

    #@3bf
    move-result v2

    #@3c0
    const/4 v3, 0x3

    #@3c1
    if-ge v2, v3, :cond_13

    #@3c3
    .line 9234
    const v9, 0xea60

    #@3c6
    .restart local v9    # "delay":I
    goto :goto_3

    #@3c7
    .line 9236
    .end local v9    # "delay":I
    :cond_13
    const v9, 0x57e40

    #@3ca
    .restart local v9    # "delay":I
    goto :goto_3

    #@3cb
    .line 9250
    .end local v9    # "delay":I
    :sswitch_8
    move-object/from16 v0, p1

    #@3cd
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3cf
    check-cast v10, Landroid/net/NetworkInfo;

    #@3d1
    .line 9251
    .local v10, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    #@3d3
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3d5
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3d8
    move-result-object v2

    #@3d9
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    #@3dc
    move-result v3

    #@3dd
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@3e0
    .line 9252
    move-object/from16 v0, p0

    #@3e2
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3e4
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3e7
    move-result-object v2

    #@3e8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@3eb
    move-result v2

    #@3ec
    if-eqz v2, :cond_14

    #@3ee
    .line 9253
    move-object/from16 v0, p0

    #@3f0
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3f2
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@3f5
    move-result-object v2

    #@3f6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f9
    move-result-object v2

    #@3fa
    .line 9254
    const v3, 0x10e0028

    #@3fd
    .line 9253
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@400
    move-result v8

    #@401
    .line 9255
    .local v8, "defaultInterval":I
    move-object/from16 v0, p0

    #@403
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@405
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@408
    move-result-object v2

    #@409
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@40c
    move-result-object v2

    #@40d
    .line 9256
    const-string/jumbo v3, "wifi_scan_interval_p2p_connected_ms"

    #@410
    .line 9257
    int-to-long v6, v8

    #@411
    .line 9255
    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@414
    move-result-wide v14

    #@415
    .line 9258
    .local v14, "scanIntervalMs":J
    move-object/from16 v0, p0

    #@417
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@419
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    #@41c
    move-result-object v2

    #@41d
    long-to-int v3, v14

    #@41e
    div-int/lit16 v3, v3, 0x3e8

    #@420
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    #@423
    goto/16 :goto_0

    #@425
    .line 9259
    .end local v8    # "defaultInterval":I
    .end local v14    # "scanIntervalMs":J
    :cond_14
    move-object/from16 v0, p0

    #@427
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@429
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@42c
    move-result-object v2

    #@42d
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    #@430
    move-result-object v2

    #@431
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@434
    move-result v2

    #@435
    if-nez v2, :cond_16

    #@437
    .line 9260
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@43a
    move-result v2

    #@43b
    if-eqz v2, :cond_15

    #@43d
    move-object/from16 v0, p0

    #@43f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@441
    const-string/jumbo v3, "Turn on scanning after p2p disconnected"

    #@444
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    #@447
    .line 9261
    :cond_15
    move-object/from16 v0, p0

    #@449
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44b
    move-object/from16 v0, p0

    #@44d
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@44f
    .line 9262
    move-object/from16 v0, p0

    #@451
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@453
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)I

    #@456
    move-result v6

    #@457
    add-int/lit8 v6, v6, 0x1

    #@459
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@45c
    move-result v4

    #@45d
    .line 9261
    const v6, 0x20058

    #@460
    .line 9262
    const/4 v7, 0x0

    #@461
    .line 9261
    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@464
    move-result-object v3

    #@465
    .line 9262
    move-object/from16 v0, p0

    #@467
    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@469
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get57(Lcom/android/server/wifi/WifiStateMachine;)I

    #@46c
    move-result v4

    #@46d
    int-to-long v6, v4

    #@46e
    .line 9261
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    #@471
    goto/16 :goto_0

    #@473
    .line 9268
    :cond_16
    move-object/from16 v0, p0

    #@475
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@477
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    #@47a
    move-result v2

    #@47b
    if-eqz v2, :cond_17

    #@47d
    .line 9269
    move-object/from16 v0, p0

    #@47f
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@481
    const-string/jumbo v3, "p2pRestart"

    #@484
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    #@487
    goto/16 :goto_0

    #@489
    .line 9271
    :cond_17
    move-object/from16 v0, p0

    #@48b
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@48d
    .line 9272
    move-object/from16 v0, p0

    #@48f
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@491
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    #@494
    move-result-object v3

    #@495
    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    #@497
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@49a
    move-result v3

    #@49b
    .line 9273
    const/4 v4, 0x0

    #@49c
    const/4 v6, 0x0

    #@49d
    .line 9271
    invoke-static {v2, v3, v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap52(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@4a0
    goto/16 :goto_0

    #@4a2
    .line 9279
    .end local v10    # "info":Landroid/net/NetworkInfo;
    :sswitch_9
    move-object/from16 v0, p0

    #@4a4
    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4a6
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Z

    #@4a9
    move-result v2

    #@4aa
    if-nez v2, :cond_0

    #@4ac
    .line 9285
    const/4 v11, 0x0

    #@4ad
    goto/16 :goto_0

    #@4af
    .line 9289
    :sswitch_a
    move-object/from16 v0, p0

    #@4b1
    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4b3
    move-object/from16 v0, p1

    #@4b5
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@4b7
    if-eqz v2, :cond_18

    #@4b9
    const/4 v2, 0x1

    #@4ba
    :goto_4
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Z)V

    #@4bd
    goto/16 :goto_0

    #@4bf
    :cond_18
    const/4 v2, 0x0

    #@4c0
    goto :goto_4

    #@4c1
    .line 9083
    nop

    #@4c2
    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_5
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_9
        0x2004b -> :sswitch_9
        0x20058 -> :sswitch_1
        0x2005f -> :sswitch_a
        0x20061 -> :sswitch_2
        0x20098 -> :sswitch_2
        0x2009a -> :sswitch_6
        0x2300b -> :sswitch_8
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_4
        0x24011 -> :sswitch_7
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
