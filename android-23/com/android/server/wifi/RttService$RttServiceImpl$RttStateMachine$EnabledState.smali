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
    .line 272
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, -0x4

    #@1
    .line 275
    const-string/jumbo v4, "RttService"

    #@4
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v6, "EnabledState got"

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 276
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@1d
    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@1f
    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@22
    move-result-object v4

    #@23
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@25
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@2b
    .line 278
    .local v0, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    #@2d
    sparse-switch v4, :sswitch_data_0

    #@30
    .line 325
    const/4 v4, 0x0

    #@31
    return v4

    #@32
    .line 280
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@34
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@36
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    #@38
    invoke-static {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@3b
    .line 327
    :cond_0
    :goto_0
    const/4 v4, 0x1

    #@3c
    return v4

    #@3d
    .line 283
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@3f
    invoke-static {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V

    #@42
    .line 284
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@44
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@46
    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mRequestPendingState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;

    #@48
    invoke-static {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    #@4b
    goto :goto_0

    #@4c
    .line 288
    :sswitch_2
    const-string/jumbo v4, "RttService"

    #@4f
    new-instance v5, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v6, "UID is: "

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    iget v6, p1, Landroid/os/Message;->sendingUid:I

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 289
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@6a
    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@6c
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    #@6f
    move-result v4

    #@70
    if-nez v4, :cond_1

    #@72
    .line 290
    const-string/jumbo v4, "RttService"

    #@75
    new-instance v5, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v6, "UID: "

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    iget v6, p1, Landroid/os/Message;->sendingUid:I

    #@83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    const-string/jumbo v6, " has no"

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    .line 291
    const-string/jumbo v6, " LOCATION_HARDWARE Permission"

    #@91
    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    goto :goto_0

    #@9d
    .line 296
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9f
    check-cast v2, Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@a1
    .line 297
    .local v2, "params":Landroid/net/wifi/RttManager$ParcelableRttParams;
    if-nez v2, :cond_2

    #@a3
    .line 298
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@a5
    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@a7
    .line 299
    const-string/jumbo v5, "No params"

    #@aa
    .line 298
    invoke-virtual {v4, p1, v7, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@ad
    goto :goto_0

    #@ae
    .line 300
    :cond_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@b0
    invoke-virtual {v0, v4, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addRttRequest(ILandroid/net/wifi/RttManager$ParcelableRttParams;)Z

    #@b3
    move-result v4

    #@b4
    if-nez v4, :cond_3

    #@b6
    .line 301
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@b8
    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@ba
    .line 302
    const-string/jumbo v5, "Unspecified"

    #@bd
    .line 301
    invoke-virtual {v4, p1, v7, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 304
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@c4
    const v5, 0x27302

    #@c7
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    #@ca
    goto/16 :goto_0

    #@cc
    .line 309
    .end local v2    # "params":Landroid/net/wifi/RttManager$ParcelableRttParams;
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@ce
    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@d0
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    #@d3
    move-result v4

    #@d4
    if-eqz v4, :cond_0

    #@d6
    .line 313
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@d8
    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@da
    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    #@dd
    move-result-object v4

    #@de
    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    #@e1
    move-result-object v1

    #@e2
    .line 314
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e5
    move-result v4

    #@e6
    .line 313
    if-eqz v4, :cond_0

    #@e8
    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@eb
    move-result-object v3

    #@ec
    check-cast v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    #@ee
    .line 316
    .local v3, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    iget-object v4, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@f0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@f3
    move-result v4

    #@f4
    iget v5, p1, Landroid/os/Message;->arg2:I

    #@f6
    if-ne v4, v5, :cond_4

    #@f8
    .line 317
    const-string/jumbo v4, "RttService"

    #@fb
    const-string/jumbo v5, "Cancelling not-yet-scheduled RTT"

    #@fe
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@101
    .line 318
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    #@103
    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@105
    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    #@108
    move-result-object v4

    #@109
    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    #@10c
    .line 319
    iget-object v4, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@10e
    iget-object v5, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    #@110
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@113
    move-result v5

    #@114
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    #@117
    goto/16 :goto_0

    #@119
    .line 278
    nop

    #@11a
    :sswitch_data_0
    .sparse-switch
        0x27200 -> :sswitch_2
        0x27201 -> :sswitch_3
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_1
    .end sparse-switch
.end method
