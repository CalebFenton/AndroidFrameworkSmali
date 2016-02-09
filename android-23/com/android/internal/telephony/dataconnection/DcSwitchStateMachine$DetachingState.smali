.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetachingState"
.end annotation


# instance fields
.field private mCurrentDisallowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@0
    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    .line 331
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    #@8
    .line 330
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@3
    const-string/jumbo v2, "DetachingState: enter"

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@9
    .line 336
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@b
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    #@17
    .line 337
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@1b
    .line 338
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    #@1d
    add-int/lit8 v3, v3, 0x1

    #@1f
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    #@21
    .line 337
    const v4, 0x43003

    #@24
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v1, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    #@2b
    .line 334
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 345
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v3, :sswitch_data_0

    #@5
    .line 393
    const/4 v2, 0x0

    #@6
    .line 396
    .local v2, "retVal":Z
    :goto_0
    return v2

    #@7
    .line 347
    .end local v2    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@b
    .line 348
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string/jumbo v3, "DcSwitchStateMachine.DetachingState: REQ_CONNECT"

    #@e
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    #@11
    .line 349
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "DetachingState: REQ_CONNECT, apnRequest="

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@2a
    .line 352
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@2c
    invoke-static {v3, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    #@2f
    .line 353
    const/4 v2, 0x1

    #@30
    .line 354
    .restart local v2    # "retVal":Z
    goto :goto_0

    #@31
    .line 359
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v2    # "retVal":Z
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@33
    const-string/jumbo v4, "DetachingState: EVENT_DATA_DETACHED"

    #@36
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@39
    .line 361
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@3b
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@3d
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@40
    move-result-object v4

    #@41
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    #@44
    .line 362
    const/4 v2, 0x1

    #@45
    .line 363
    .restart local v2    # "retVal":Z
    goto :goto_0

    #@46
    .line 366
    .end local v2    # "retVal":Z
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@48
    check-cast v1, Landroid/os/AsyncResult;

    #@4a
    .line 367
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    #@4c
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@4e
    if-eq v3, v4, :cond_1

    #@50
    .line 368
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@52
    new-instance v4, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v5, "EVENT_DATA_DISALLOWED ignored arg1="

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    const-string/jumbo v5, ", seq="

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 369
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    #@6d
    .line 368
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    #@78
    .line 377
    :cond_0
    :goto_1
    const/4 v2, 0x1

    #@79
    .line 378
    .restart local v2    # "retVal":Z
    goto :goto_0

    #@7a
    .line 370
    .end local v2    # "retVal":Z
    :cond_1
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7c
    if-eqz v3, :cond_0

    #@7e
    .line 374
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@80
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v5, "EVENT_DATA_DISALLOWED failed, "

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    #@99
    .line 375
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@9b
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@9d
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    #@a0
    move-result-object v4

    #@a1
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    #@a4
    goto :goto_1

    #@a5
    .line 382
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@a7
    const-string/jumbo v4, "DetachingState: REQ_DISCONNECT_ALL, already detaching"

    #@aa
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@ad
    .line 384
    const/4 v2, 0x1

    #@ae
    .line 385
    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    #@b0
    .line 345
    :sswitch_data_0
    .sparse-switch
        0x43003 -> :sswitch_2
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_3
        0x44008 -> :sswitch_1
    .end sparse-switch
.end method
