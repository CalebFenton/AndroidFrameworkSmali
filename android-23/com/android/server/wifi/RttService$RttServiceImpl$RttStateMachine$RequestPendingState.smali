.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPendingState"
.end annotation


# instance fields
.field mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@0
    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const v5, 0x27302

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    .line 335
    const-string/jumbo v0, "RttService"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "RequestPendingState got"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 336
    iget v0, p1, Landroid/os/Message;->what:I

    #@21
    sparse-switch v0, :sswitch_data_0

    #@24
    .line 394
    return v4

    #@25
    .line 338
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 339
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@2b
    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    #@2d
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    #@30
    .line 340
    const-string/jumbo v0, "RttService"

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "abort key: "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@41
    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 341
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@50
    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@52
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@54
    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@59
    move-result v1

    #@5a
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    #@5d
    .line 342
    iput-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@5f
    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@61
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@63
    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    #@65
    invoke-static {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@68
    .line 396
    :goto_0
    const/4 v0, 0x1

    #@69
    return v0

    #@6a
    .line 347
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@6c
    if-nez v0, :cond_3

    #@6e
    .line 348
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@70
    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@72
    invoke-virtual {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->issueNextRequest()Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@75
    move-result-object v0

    #@76
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@78
    .line 349
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@7a
    if-nez v0, :cond_1

    #@7c
    .line 350
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@7e
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@80
    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    #@82
    invoke-static {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@85
    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@87
    if-eqz v0, :cond_2

    #@89
    .line 353
    const-string/jumbo v0, "RttService"

    #@8c
    new-instance v1, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v2, "new mOutstandingRequest.key is: "

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    .line 354
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@9a
    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@9c
    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    goto :goto_0

    #@a8
    .line 356
    :cond_2
    const-string/jumbo v0, "RttService"

    #@ab
    .line 357
    const-string/jumbo v1, "CMD_ISSUE_NEXT_REQUEST: mOutstandingRequest =null "

    #@ae
    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b1
    goto :goto_0

    #@b2
    .line 362
    :cond_3
    const-string/jumbo v0, "RttService"

    #@b5
    new-instance v1, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v2, "Current mOutstandingRequest.key is: "

    #@bd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    .line 363
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@c3
    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@c5
    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v1

    #@cd
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d0
    .line 364
    const-string/jumbo v0, "RttService"

    #@d3
    const-string/jumbo v1, "Ignoring CMD_ISSUE_NEXT_REQUEST"

    #@d6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d9
    goto :goto_0

    #@da
    .line 368
    :sswitch_2
    const-string/jumbo v0, "RttService"

    #@dd
    new-instance v1, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v2, "Received an RTT response from: "

    #@e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v1

    #@ef
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v1

    #@f3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@f8
    iget-object v1, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@fa
    .line 370
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@fc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fe
    check-cast v0, [Landroid/net/wifi/RttManager$RttResult;

    #@100
    .line 369
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResult(Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;[Landroid/net/wifi/RttManager$RttResult;)V

    #@103
    .line 371
    iput-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@105
    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@107
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    #@10a
    goto/16 :goto_0

    #@10c
    .line 375
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@10e
    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@110
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    #@113
    move-result v0

    #@114
    if-nez v0, :cond_4

    #@116
    .line 376
    const-string/jumbo v0, "RttService"

    #@119
    new-instance v1, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    const-string/jumbo v2, "UID: "

    #@121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v1

    #@125
    iget v2, p1, Landroid/os/Message;->sendingUid:I

    #@127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v1

    #@12b
    const-string/jumbo v2, " has no "

    #@12e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v1

    #@132
    .line 377
    const-string/jumbo v2, "LOCATION_HARDWARE Permission"

    #@135
    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v1

    #@139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v1

    #@13d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@140
    goto/16 :goto_0

    #@142
    .line 381
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@144
    if-eqz v0, :cond_5

    #@146
    .line 382
    iget v0, p1, Landroid/os/Message;->arg2:I

    #@148
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@14a
    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@14c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@14f
    move-result v1

    #@150
    if-ne v0, v1, :cond_5

    #@152
    .line 383
    const-string/jumbo v0, "RttService"

    #@155
    new-instance v1, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v2, "Cancelling ongoing RTT of: "

    #@15d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v1

    #@161
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@166
    move-result-object v1

    #@167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v1

    #@16b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16e
    .line 384
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@170
    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->params:[Landroid/net/wifi/RttManager$RttParams;

    #@172
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    #@175
    .line 385
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@177
    iget-object v0, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@179
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@17b
    iget-object v1, v1, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@17d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@180
    move-result v1

    #@181
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    #@184
    .line 386
    iput-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->mOutstandingRequest:Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@186
    .line 387
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@188
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    #@18b
    goto/16 :goto_0

    #@18d
    .line 390
    :cond_5
    return v4

    #@18e
    .line 336
    :sswitch_data_0
    .sparse-switch
        0x27201 -> :sswitch_3
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_1
        0x27303 -> :sswitch_2
    .end sparse-switch
.end method
