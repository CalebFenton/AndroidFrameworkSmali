.class Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;
.super Lcom/android/internal/telephony/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 742
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 4

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x2

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$000(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V

    .line 746
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v0, 0x3

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public blacklist exit()V
    .registers 3

    .line 1071
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x3

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$100(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V

    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmActiveCommandCallbacks(Lcom/android/internal/telephony/euicc/EuiccConnector;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    .line 1076
    invoke-interface {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    goto :goto_10

    .line 1078
    :cond_20
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmActiveCommandCallbacks(Lcom/android/internal/telephony/euicc/EuiccConnector;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 15

    .line 751
    const-string v1, "EuiccConnector"

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v2, :cond_23

    .line 752
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccSession;->get(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccSession;->endAllSessions()V

    .line 753
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fputmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/service/euicc/IEuiccService;)V

    .line 754
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v3

    :cond_23
    const/4 v2, 0x3

    if-ne v0, v2, :cond_40

    .line 757
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccSession;->get(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccSession;->endAllSessions()V

    .line 758
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$munbind(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 759
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return v3

    :cond_40
    const/4 v2, 0x6

    if-ne v0, v2, :cond_4b

    .line 762
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 763
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v3

    .line 765
    :cond_4b
    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$smisEuiccCommand(I)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 766
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$smgetCallback(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    move-result-object v2

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$monCommandStart(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    .line 768
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 769
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$mgetSlotIdFromCardId(Lcom/android/internal/telephony/euicc/EuiccConnector;I)I

    move-result v6

    .line 771
    :try_start_62
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_1e0

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unimplemented eUICC command: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-interface {v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    .line 1050
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$monCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return v3

    :catch_86
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1d0

    .line 787
    :pswitch_8a
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v0}, Landroid/service/euicc/IEuiccService;->getAvailableMemoryInBytes(ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V

    goto/16 :goto_1dd

    .line 1034
    :pswitch_9a
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$16;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$16;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v0}, Landroid/service/euicc/IEuiccService;->dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V

    goto/16 :goto_1dd

    .line 969
    :pswitch_aa
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$12;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v0, v6, p1, v4}, Landroid/service/euicc/IEuiccService;->eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    goto/16 :goto_1dd

    .line 1012
    :pswitch_bc
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$15;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v0}, Landroid/service/euicc/IEuiccService;->startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    goto/16 :goto_1dd

    .line 998
    :pswitch_cc
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$14;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$14;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v0}, Landroid/service/euicc/IEuiccService;->getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V

    goto/16 :goto_1dd

    .line 984
    :pswitch_dc
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$13;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v0}, Landroid/service/euicc/IEuiccService;->retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    goto/16 :goto_1dd

    .line 955
    :pswitch_ec
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$11;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v0}, Landroid/service/euicc/IEuiccService;->eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    goto/16 :goto_1dd

    .line 939
    :pswitch_fc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v0

    iget-object v4, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mIccid:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mNickname:Ljava/lang/String;

    new-instance v5, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$10;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v0, v6, v4, p1, v5}, Landroid/service/euicc/IEuiccService;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    goto/16 :goto_1dd

    .line 920
    :pswitch_114
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;

    .line 921
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 922
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v5

    iget-object v8, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mIccid:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mForceDeactivateSim:Z

    new-instance v10, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$9;

    invoke-direct {v10, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    iget-boolean v11, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mUsePortIndex:Z

    invoke-interface/range {v5 .. v11}, Landroid/service/euicc/IEuiccService;->switchToSubscription(IILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;Z)V

    goto/16 :goto_1dd

    .line 905
    :pswitch_130
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;

    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mIccid:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$8;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {v0, v6, p1, v4}, Landroid/service/euicc/IEuiccService;->deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    goto/16 :goto_1dd

    .line 891
    :pswitch_146
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v0}, Landroid/service/euicc/IEuiccService;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    goto/16 :goto_1dd

    .line 873
    :pswitch_156
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;

    .line 874
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v4

    iget-boolean p1, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mForceDeactivateSim:Z

    new-instance v5, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-interface {v4, v6, p1, v5}, Landroid/service/euicc/IEuiccService;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    goto :goto_1dd

    .line 858
    :pswitch_16b
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v0}, Landroid/service/euicc/IEuiccService;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    goto :goto_1dd

    .line 835
    :pswitch_17a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccSession;->get(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccSession;

    move-result-object v0

    const-string v4, "DOWNLOAD"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/euicc/EuiccSession;->startSession(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v5

    iget v7, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mPortIndex:I

    iget-object v8, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v9, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSwitchAfterDownload:Z

    iget-boolean v10, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mForceDeactivateSim:Z

    iget-object v11, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mResolvedBundle:Landroid/os/Bundle;

    new-instance v12, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;

    invoke-direct {v12, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface/range {v5 .. v12}, Landroid/service/euicc/IEuiccService;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V

    goto :goto_1dd

    .line 815
    :pswitch_1a6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;

    .line 816
    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object v5

    iget v7, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mPortIndex:I

    iget-object v8, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v9, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mSwitchAfterDownload:Z

    iget-boolean v10, p1, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mForceDeactivateSim:Z

    new-instance v11, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;

    invoke-direct {v11, p0, v2, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;I)V

    invoke-interface/range {v5 .. v11}, Landroid/service/euicc/IEuiccService;->getDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    goto :goto_1dd

    .line 773
    :pswitch_1c1
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    invoke-interface {p1, v6, v0}, Landroid/service/euicc/IEuiccService;->getEid(ILandroid/service/euicc/IGetEidCallback;)V
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_1cf} :catch_86

    goto :goto_1dd

    .line 1058
    :goto_1d0
    const-string v0, "Exception making binder call to EuiccService"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    invoke-interface {v2}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    .line 1060
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->-$$Nest$monCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    :goto_1dd
    return v3

    :cond_1de
    const/4 p0, 0x0

    return p0

    :pswitch_data_1e0
    .packed-switch 0x64
        :pswitch_1c1
        :pswitch_1a6
        :pswitch_17a
        :pswitch_16b
        :pswitch_156
        :pswitch_146
        :pswitch_130
        :pswitch_114
        :pswitch_fc
        :pswitch_ec
        :pswitch_dc
        :pswitch_cc
        :pswitch_bc
        :pswitch_aa
        :pswitch_9a
        :pswitch_8a
    .end packed-switch
.end method
