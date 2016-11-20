.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@0
    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x4

    #@2
    .line 329
    const-string/jumbo v5, "RttService"

    #@5
    new-instance v6, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v7, "EnabledState got"

    #@d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v6

    #@11
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 330
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@1e
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@20
    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@23
    move-result-object v5

    #@24
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@26
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@2c
    .line 332
    .local v0, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget v5, p1, Landroid/os/Message;->what:I

    #@2e
    sparse-switch v5, :sswitch_data_0

    #@31
    .line 387
    return v9

    #@32
    .line 334
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@34
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@36
    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    #@38
    invoke-static {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@3b
    .line 389
    :cond_0
    :goto_0
    :sswitch_1
    const/4 v5, 0x1

    #@3c
    return v5

    #@3d
    .line 337
    :sswitch_2
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@3f
    invoke-static {v5, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V

    #@42
    .line 338
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@44
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@46
    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mInitiatorEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

    #@48
    invoke-static {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@4b
    goto :goto_0

    #@4c
    .line 342
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@50
    .line 343
    .local v3, "params":Landroid/net/wifi/RttManager$ParcelableRttParams;
    if-eqz v3, :cond_1

    #@52
    iget-object v5, v3, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@54
    if-nez v5, :cond_2

    #@56
    .line 345
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@58
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@5a
    .line 346
    const-string/jumbo v6, "No params"

    #@5d
    .line 345
    invoke-virtual {v5, p1, v8, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@60
    goto :goto_0

    #@61
    .line 344
    :cond_2
    iget-object v5, v3, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    #@63
    array-length v5, v5

    #@64
    if-eqz v5, :cond_1

    #@66
    .line 347
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@68
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addRttRequest(ILandroid/net/wifi/RttManager$ParcelableRttParams;)Z

    #@6b
    move-result v5

    #@6c
    if-nez v5, :cond_3

    #@6e
    .line 348
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@70
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@72
    .line 349
    const-string/jumbo v6, "Unspecified"

    #@75
    .line 348
    invoke-virtual {v5, p1, v8, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@78
    goto :goto_0

    #@79
    .line 351
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@7b
    const v6, 0x27302

    #@7e
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    #@81
    goto :goto_0

    #@82
    .line 356
    .end local v3    # "params":Landroid/net/wifi/RttManager$ParcelableRttParams;
    :sswitch_4
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@84
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@86
    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    #@89
    move-result-object v5

    #@8a
    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    #@8d
    move-result-object v1

    #@8e
    .line 357
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@91
    move-result v5

    #@92
    .line 356
    if-eqz v5, :cond_0

    #@94
    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v4

    #@98
    check-cast v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@9a
    .line 359
    .local v4, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    iget-object v5, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@9c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@9f
    move-result v5

    #@a0
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@a2
    if-ne v5, v6, :cond_4

    #@a4
    .line 360
    const-string/jumbo v5, "RttService"

    #@a7
    const-string/jumbo v6, "Cancelling not-yet-scheduled RTT"

    #@aa
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 361
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@af
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@b1
    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    #@b4
    move-result-object v5

    #@b5
    invoke-interface {v5, v4}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    #@b8
    .line 362
    iget-object v5, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@ba
    iget-object v6, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@bc
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@bf
    move-result v6

    #@c0
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    #@c3
    goto/16 :goto_0

    #@c5
    .line 368
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;>;"
    .end local v4    # "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    :sswitch_5
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@c7
    .line 369
    .local v2, "key":I
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@c9
    .line 370
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@cb
    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@cd
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;

    #@d0
    move-result-object v6

    #@d1
    const/16 v7, 0x258

    #@d3
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;

    #@d6
    move-result-object v6

    #@d7
    .line 369
    iput-object v6, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    #@d9
    .line 371
    const-string/jumbo v5, "RttService"

    #@dc
    const-string/jumbo v6, "mWifiNative.enableRttResponder called"

    #@df
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e2
    .line 373
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@e4
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    #@e6
    if-eqz v5, :cond_5

    #@e8
    .line 375
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@ea
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    #@ec
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@ee
    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@f0
    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;

    #@f3
    move-result-object v6

    #@f4
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    #@f7
    move-result-object v6

    #@f8
    iput-object v6, v5, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    #@fa
    .line 376
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addResponderRequest(I)V

    #@fd
    .line 377
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@ff
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    #@101
    invoke-virtual {v0, v2, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResponderEnableSucceed(ILandroid/net/wifi/RttManager$ResponderConfig;)V

    #@104
    .line 378
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@106
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@108
    iget-object v6, v6, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

    #@10a
    invoke-static {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@10d
    goto/16 :goto_0

    #@10f
    .line 380
    :cond_5
    const-string/jumbo v5, "RttService"

    #@112
    const-string/jumbo v6, "enable responder failed"

    #@115
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@118
    .line 381
    const/4 v5, -0x1

    #@119
    invoke-virtual {v0, v2, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResponderEnableFailed(II)V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 332
    :sswitch_data_0
    .sparse-switch
        0x27200 -> :sswitch_3
        0x27201 -> :sswitch_4
        0x27205 -> :sswitch_5
        0x27206 -> :sswitch_1
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_2
    .end sparse-switch
.end method
