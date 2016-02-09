.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachingState"
.end annotation


# instance fields
.field private mCurrentAllowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    .line 185
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    #@8
    .line 184
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    #@3
    return-void
.end method

.method private doEnter()V
    .locals 6

    #@0
    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    #@e
    .line 194
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@12
    .line 195
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    #@14
    add-int/lit8 v3, v3, 0x1

    #@16
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    #@18
    .line 194
    const v4, 0x43001

    #@1b
    .line 195
    const/4 v5, 0x0

    #@1c
    .line 194
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x1

    #@21
    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    #@24
    .line 192
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2
    const-string/jumbo v1, "AttachingState: enter"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@8
    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    #@b
    .line 187
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 202
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v4, :sswitch_data_0

    #@5
    .line 269
    const/4 v3, 0x0

    #@6
    .line 272
    .local v3, "retVal":Z
    :goto_0
    return v3

    #@7
    .line 204
    .end local v3    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@b
    .line 205
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string/jumbo v4, "DcSwitchStateMachine.AttachingState: REQ_CONNECT"

    #@e
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    #@11
    .line 206
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "AttachingState: REQ_CONNECT, apnRequest="

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@2a
    .line 209
    const/4 v3, 0x1

    #@2b
    .line 210
    .restart local v3    # "retVal":Z
    goto :goto_0

    #@2c
    .line 214
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v3    # "retVal":Z
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v1, Landroid/os/AsyncResult;

    #@30
    .line 215
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    #@32
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@34
    if-eq v4, v5, :cond_1

    #@36
    .line 216
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "EVENT_DATA_ALLOWED ignored arg1="

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const-string/jumbo v6, ", seq="

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    .line 217
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    #@53
    .line 216
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    #@5e
    .line 232
    :cond_0
    :goto_1
    const/4 v3, 0x1

    #@5f
    .line 233
    .restart local v3    # "retVal":Z
    goto :goto_0

    #@60
    .line 218
    .end local v3    # "retVal":Z
    :cond_1
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@62
    if-eqz v4, :cond_0

    #@64
    .line 219
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@66
    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    #@68
    if-eqz v4, :cond_2

    #@6a
    .line 220
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6c
    check-cast v2, Lcom/android/internal/telephony/CommandException;

    #@6e
    .line 221
    .local v2, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@71
    move-result-object v4

    #@72
    .line 222
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@74
    .line 221
    if-ne v4, v5, :cond_2

    #@76
    .line 225
    const/4 v3, 0x1

    #@77
    .line 226
    .restart local v3    # "retVal":Z
    goto :goto_0

    #@78
    .line 229
    .end local v2    # "e":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "retVal":Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@7a
    new-instance v5, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v6, "EVENT_DATA_ALLOWED failed, "

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    #@93
    .line 230
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@95
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@97
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@9a
    move-result-object v5

    #@9b
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    #@9e
    goto :goto_1

    #@9f
    .line 237
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@a1
    const-string/jumbo v5, "AttachingState going to retry"

    #@a4
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@a7
    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    #@aa
    .line 239
    const/4 v3, 0x1

    #@ab
    .line 240
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    #@ad
    .line 245
    .end local v3    # "retVal":Z
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@af
    const-string/jumbo v5, "AttachingState: EVENT_DATA_ATTACHED"

    #@b2
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@b5
    .line 247
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@b7
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@b9
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    #@bc
    move-result-object v5

    #@bd
    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    #@c0
    .line 248
    const/4 v3, 0x1

    #@c1
    .line 249
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    #@c3
    .line 254
    .end local v3    # "retVal":Z
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@c5
    const-string/jumbo v5, "AttachingState: REQ_DISCONNECT_ALL"

    #@c8
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@cb
    .line 259
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@cd
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    #@d0
    .line 260
    const/4 v3, 0x1

    #@d1
    .line 261
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    #@d3
    .line 202
    nop

    #@d4
    :sswitch_data_0
    .sparse-switch
        0x43001 -> :sswitch_1
        0x44000 -> :sswitch_0
        0x44001 -> :sswitch_2
        0x44002 -> :sswitch_4
        0x44007 -> :sswitch_3
    .end sparse-switch
.end method
