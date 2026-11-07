.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Idle"
.end annotation


# instance fields
.field private blacklist mDpdAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1426
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method private blacklist executeLocalRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;Landroid/os/Message;)V
    .registers 6
    .param p1, "req"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;
    .param p2, "message"    # Landroid/os/Message;

    .line 1589
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->releaseWakeLock()V

    .line 1591
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->isRequestForCurrentSa(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1592
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Request is for a deleted SA. Ignore it."

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmScheduler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->readyForNextProcedure()Z

    .line 1594
    return-void

    .line 1597
    :cond_1a
    iget v0, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->procedureType:I

    sparse-switch v0, :sswitch_data_80

    .line 1622
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid local request procedure type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->procedureType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_7e

    .line 1608
    :sswitch_3d
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDpdOnDemandIkeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdOnDemandIkeLocalInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1609
    goto :goto_7e

    .line 1619
    :sswitch_47
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mMobikeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1620
    goto :goto_7e

    .line 1605
    :sswitch_51
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDpdIkeLocalInfo:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DpdIkeLocalInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1606
    goto :goto_7e

    .line 1599
    :sswitch_5b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mRekeyIkeLocalCreate:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$RekeyIkeLocalCreate;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1600
    goto :goto_7e

    .line 1602
    :sswitch_65
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mDeleteIkeLocalDelete:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteIkeLocalDelete;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1603
    goto :goto_7e

    .line 1615
    :sswitch_6f
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1616
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildProcedureOngoing:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1617
    nop

    .line 1626
    :goto_7e
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_6f
        0x2 -> :sswitch_6f
        0x3 -> :sswitch_6f
        0x4 -> :sswitch_6f
        0x5 -> :sswitch_6f
        0x192 -> :sswitch_65
        0x193 -> :sswitch_5b
        0x195 -> :sswitch_51
        0x196 -> :sswitch_47
        0x197 -> :sswitch_3d
    .end sparse-switch
.end method

.method private blacklist isRequestForCurrentSa(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)Z
    .registers 8
    .param p1, "localRequest"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    .line 1632
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->isChildRequest()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 1633
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 1634
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    iget v2, v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->remoteSpi:I

    sget v3, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->SPI_NOT_INCLUDED:I

    if-eq v2, v3, :cond_20

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->remoteSpi:I

    .line 1635
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1f

    goto :goto_20

    .line 1638
    .end local v0    # "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    :cond_1f
    goto :goto_3c

    .line 1636
    .restart local v0    # "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    :cond_20
    :goto_20
    return v1

    .line 1639
    .end local v0    # "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;
    :cond_21
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    .line 1640
    .local v0, "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;
    iget-wide v2, v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;->remoteSpi:J

    sget v4, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->SPI_NOT_INCLUDED:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3e

    iget-wide v2, v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;->remoteSpi:J

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1641
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getRemoteSpi()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3c

    goto :goto_3e

    .line 1645
    .end local v0    # "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    return v0

    .line 1642
    .restart local v0    # "req":Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;
    :cond_3e
    :goto_3e
    return v1
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 12

    .line 1433
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmScheduler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->readyForNextProcedure()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1434
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmBusyWakeLock(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1439
    :cond_15
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->isLivenessCheckRequested()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1440
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v1, 0x140

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(II)V

    .line 1443
    :cond_27
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeSessionParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getDpdDelaySeconds()I

    move-result v0

    .line 1444
    .local v0, "dpdDelaySeconds":I
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_a1

    .line 1445
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 1446
    .local v7, "dpdDelayMs":J
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getRemoteSpi()J

    move-result-wide v1

    .line 1447
    .local v1, "remoteIkeSpi":J
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v4, 0x195

    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mgetIntentIkeSmMsg(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;IJ)Landroid/os/Message;

    move-result-object v10

    .line 1448
    .local v10, "intentIkeMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1450
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionId(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)I

    move-result v4

    .line 1452
    invoke-static {v4, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$smgetIntentIdentifier(IJ)Ljava/lang/String;

    move-result-object v4

    .line 1449
    const-string v5, "IkeAlarmReceiver.ACTION_DPD"

    invoke-static {v3, v5, v4, v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->buildIkeAlarmIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1463
    .local v9, "dpdIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmDeps(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;

    move-result-object v3

    new-instance v4, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1466
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "IkeAlarmReceiver.ACTION_DPD"

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V

    .line 1464
    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Dependencies;->newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->mDpdAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    .line 1471
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->mDpdAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->schedule()V

    .line 1472
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DPD Alarm scheduled with DPD delay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 1474
    .end local v1    # "remoteIkeSpi":J
    .end local v7    # "dpdDelayMs":J
    .end local v9    # "dpdIntent":Landroid/app/PendingIntent;
    .end local v10    # "intentIkeMsg":Landroid/os/Message;
    :cond_a1
    return-void
.end method

.method protected blacklist exitState()V
    .registers 3

    .line 1479
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->mDpdAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    if-eqz v0, :cond_10

    .line 1480
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->mDpdAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->cancel()V

    .line 1481
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "DPD Alarm canceled"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 1484
    :cond_10
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmBusyWakeLock(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1485
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1650
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 1489
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_dc

    .line 1575
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->isLocalRequest(I)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 1576
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->handleLocalRequest(ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 1581
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmScheduler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->readyForNextProcedure()Z

    .line 1582
    return v2

    .line 1500
    :sswitch_22
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1501
    return v2

    .line 1551
    :sswitch_2c
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-boolean v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsRetransmitSuspended:Z

    .line 1552
    return v2

    .line 1546
    :sswitch_31
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-boolean v2, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsRetransmitSuspended:Z

    .line 1547
    return v2

    .line 1558
    :sswitch_36
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->isLivenessCheckRequested()Z

    move-result v0

    if-eqz v0, :cond_44

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4b

    .line 1562
    :cond_44
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->livenessCheckRequested(I)V

    .line 1565
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmLocalRequestFactory(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 1569
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getRemoteSpi()J

    move-result-wide v3

    .line 1567
    const/16 v1, 0x197

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getIkeLocalRequest(IJ)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;

    move-result-object v0

    .line 1565
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->handleLocalRequest(ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 1570
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmScheduler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;->readyForNextProcedure()Z

    .line 1571
    return v2

    .line 1538
    :sswitch_6c
    :try_start_6c
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->onUnderpinnedNetworkSetByUser(Landroid/net/Network;)V
    :try_end_79
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_6c .. :try_end_79} :catch_7a

    .line 1541
    goto :goto_80

    .line 1539
    :catch_7a
    move-exception v0

    .line 1540
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 1542
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    :goto_80
    return v2

    .line 1516
    :sswitch_81
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isMobilityEnabled()Z

    move-result v0

    if-nez v0, :cond_95

    .line 1517
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "setNetwork() called for session without mobility support."

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;)V

    .line 1520
    return v2

    .line 1524
    :cond_95
    :try_start_95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;

    .line 1525
    .local v0, "params":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->network:Landroid/net/Network;

    iget v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->ipVersion:I

    iget v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->encapType:I

    iget v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->keepaliveDelaySeconds:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->onNetworkSetByUser(Landroid/net/Network;III)V
    :try_end_aa
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_95 .. :try_end_aa} :catch_ab

    .line 1532
    .end local v0    # "params":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;
    goto :goto_b1

    .line 1530
    :catch_ab
    move-exception v0

    .line 1531
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 1534
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    :goto_b1
    return v2

    .line 1496
    :sswitch_b2
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->handleFiredAlarm(Landroid/os/Message;)V

    .line 1497
    return v2

    .line 1504
    :sswitch_b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->executeLocalRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;Landroid/os/Message;)V

    .line 1505
    return v2

    .line 1491
    :sswitch_be
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1492
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mReceiving:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Receiving;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1493
    return v2

    .line 1510
    :sswitch_cd
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 1513
    return v1

    .line 1584
    :cond_db
    return v1

    :sswitch_data_dc
    .sparse-switch
        0xca -> :sswitch_cd
        0x12d -> :sswitch_be
        0x133 -> :sswitch_b6
        0x13b -> :sswitch_b2
        0x13d -> :sswitch_81
        0x13f -> :sswitch_6c
        0x140 -> :sswitch_36
        0x141 -> :sswitch_31
        0x142 -> :sswitch_2c
        0x18f -> :sswitch_22
    .end sparse-switch
.end method
