.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildProcedureOngoing"
.end annotation


# instance fields
.field private blacklist mAwaitingChildResponse:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

.field private blacklist mChildInRemoteProcedures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFirstChildReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastInboundRequestMsgId:I

.field private blacklist mLocalRequestOngoing:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

.field private blacklist mOutboundRespPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field

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

    .line 2696
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method private blacklist executeLocalRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;)V
    .registers 10
    .param p1, "req"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 2855
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->releaseWakeLock()V

    .line 2856
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->getChildSession(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 2857
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mLocalRequestOngoing:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 2859
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    if-nez v0, :cond_33

    .line 2863
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child state machine not found for local request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->procedureType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Creation of Child Session may have been failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 2868
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->transitionToIdleIfAllProceduresDone()V

    .line 2869
    return-void

    .line 2871
    :cond_33
    iget v0, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->procedureType:I

    packed-switch v0, :pswitch_data_d8

    .line 2900
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Child procedure type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->procedureType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto/16 :goto_d6

    .line 2885
    :pswitch_57
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v1

    .line 2886
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v2

    .line 2887
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 2888
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->getEncapSocketOrNull()Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-result-object v3

    .line 2885
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->performMigration(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;)V

    .line 2889
    goto :goto_d6

    .line 2891
    :pswitch_75
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v1

    .line 2892
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v2

    .line 2893
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 2894
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->getEncapSocketOrNull()Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-result-object v3

    .line 2891
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->performRekeyMigration(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;)V

    .line 2895
    goto :goto_d6

    .line 2882
    :pswitch_93
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->rekeyChildSession()V

    .line 2883
    goto :goto_d6

    .line 2897
    :pswitch_99
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->deleteChildSession()V

    .line 2898
    goto :goto_d6

    .line 2873
    :pswitch_9f
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 2874
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 2875
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 2876
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->getEncapSocketOrNull()Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-result-object v4

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2878
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v0

    const/4 v6, 0x0

    aget-object v0, v0, v6

    iget v6, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 2879
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getSkD()[B

    move-result-object v7

    .line 2873
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->createChildSession(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;I[B)V

    .line 2880
    nop

    .line 2905
    :goto_d6
    return-void

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_99
        :pswitch_93
        :pswitch_75
        :pswitch_57
    .end packed-switch
.end method

.method private blacklist getChildSession(Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .registers 4
    .param p1, "callback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 2837
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 2838
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    monitor-exit v0

    return-object v1

    .line 2839
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist getChildSession(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .registers 4
    .param p1, "req"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 2830
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->childSessionCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    if-nez v0, :cond_13

    .line 2831
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->remoteSpi:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    return-object v0

    .line 2833
    :cond_13
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;->childSessionCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->getChildSession(Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getEncapSocketOrNull()Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .registers 2

    .line 2847
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->useUdpEncapSocket()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2848
    const/4 v0, 0x0

    return-object v0

    .line 2850
    :cond_e
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIkeSocket()Lcom/android/internal/net/ipsec/ike/IkeSocket;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    .line 2851
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->getUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-result-object v0

    .line 2850
    return-object v0
.end method

.method private blacklist handleInboundDeleteChildRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 15
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 2998
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3000
    .local v0, "childToDelPayloadsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3002
    .local v1, "spiHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 3003
    .local v3, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v5, v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    packed-switch v5, :pswitch_data_124

    .line 3040
    :pswitch_22
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected payload types found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto/16 :goto_d5

    .line 3038
    :pswitch_3e
    goto/16 :goto_d5

    .line 3007
    :pswitch_40
    goto/16 :goto_d5

    .line 3014
    :pswitch_42
    move-object v5, v3

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    .line 3016
    .local v5, "delPayload":Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;
    iget-object v6, v5, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spisToDelete:[I

    array-length v7, v6

    :goto_48
    if-ge v4, v7, :cond_b6

    aget v8, v6, v4

    .line 3017
    .local v8, "spi":I
    iget-object v9, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 3018
    .local v9, "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    if-nez v9, :cond_73

    .line 3020
    iget-object v10, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Child SA not found with received SPI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto :goto_b3

    .line 3021
    :cond_73
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_96

    .line 3022
    iget-object v10, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received repeated Child SPI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto :goto_b3

    .line 3025
    :cond_96
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a4

    .line 3026
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    :cond_a4
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 3031
    .local v10, "delPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b3

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3016
    .end local v8    # "spi":I
    .end local v9    # "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .end local v10    # "delPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :cond_b3
    :goto_b3
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 3035
    :cond_b6
    goto :goto_d5

    .line 3009
    .end local v5    # "delPayload":Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;
    :pswitch_b7
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected or unknown notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    iget v6, v6, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 3012
    nop

    .line 3042
    .end local v3    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :goto_d5
    goto/16 :goto_10

    .line 3046
    :cond_d7
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 3047
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v3, "No Child SA is found for this request."

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 3048
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-array v4, v4, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    iget-object v5, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v5, v5, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    .line 3049
    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedInformationalMessage([Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v3

    .line 3048
    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 3053
    return-void

    .line 3057
    :cond_f7
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 3058
    .local v3, "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    nop

    .line 3061
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3058
    const/4 v5, 0x5

    const/16 v6, 0x25

    invoke-virtual {v3, v5, v6, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->receiveRequest(IILjava/util/List;)V

    .line 3062
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mAwaitingChildResponse:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3063
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInRemoteProcedures:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3064
    .end local v3    # "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    goto :goto_ff

    .line 3065
    :cond_123
    return-void

    :pswitch_data_124
    .packed-switch 0x29
        :pswitch_b7
        :pswitch_42
        :pswitch_40
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3e
    .end packed-switch
.end method

.method private blacklist handleInboundRekeyChildRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 15
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 3070
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3071
    .local v0, "handledPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const/4 v1, 0x0

    .line 3072
    .local v1, "targetChild":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3074
    .local v2, "unrecognizedSpis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 3075
    .local v4, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    sparse-switch v5, :sswitch_data_fa

    goto :goto_8e

    .line 3105
    :sswitch_23
    goto :goto_8e

    .line 3078
    :sswitch_24
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3079
    goto :goto_8e

    .line 3081
    :sswitch_28
    move-object v5, v4

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 3082
    .local v5, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    const/16 v6, 0x4009

    iget v7, v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    if-eq v6, v7, :cond_32

    goto :goto_8e

    .line 3084
    :cond_32
    iget v6, v5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spi:I

    .line 3085
    .local v6, "childSpi":I
    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 3087
    .local v7, "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    if-nez v7, :cond_62

    .line 3090
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3091
    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Child SA not found with received SPI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    goto :goto_8e

    .line 3092
    :cond_62
    if-nez v1, :cond_72

    .line 3096
    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    goto :goto_8e

    .line 3098
    :cond_72
    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than one Notify-Rekey Payload found with SPI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 3099
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3101
    nop

    .line 3109
    .end local v4    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .end local v5    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .end local v6    # "childSpi":I
    .end local v7    # "child":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    :goto_8e
    goto :goto_11

    .line 3112
    :cond_8f
    if-nez v1, :cond_d9

    .line 3113
    nop

    .line 3114
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v6, v3, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    .line 3115
    .local v6, "errorPayloads":[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    const/4 v3, 0x0

    .line 3116
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3117
    .local v5, "spi":Ljava/lang/Integer;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    new-instance v8, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 3120
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    new-array v10, v10, [B

    const/4 v11, 0x3

    const/16 v12, 0x2c

    invoke-direct {v8, v11, v9, v12, v10}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(III[B)V

    aput-object v8, v6, v3

    .line 3123
    .end local v5    # "spi":Ljava/lang/Integer;
    move v3, v7

    goto :goto_9d

    .line 3125
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_be
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v7, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v9, v7, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    .line 3126
    const/16 v7, 0x25

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedNotificationMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;IZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v4

    .line 3133
    .local v4, "msg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v5, v7, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 3134
    return-void

    .line 3138
    .end local v3    # "i":I
    .end local v4    # "msg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .end local v6    # "errorPayloads":[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
    :cond_d9
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3139
    .local v3, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v4, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3140
    invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3142
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mAwaitingChildResponse:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3143
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInRemoteProcedures:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3145
    iget-object v4, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v4, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->receiveRequest(IILjava/util/List;)V

    .line 3147
    return-void

    nop

    :sswitch_data_fa
    .sparse-switch
        0x29 -> :sswitch_28
        0x2b -> :sswitch_24
        0x2f -> :sswitch_23
    .end sparse-switch
.end method

.method private blacklist handleOutboundRequest(ILjava/util/List;)V
    .registers 13
    .param p1, "exchangeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 3150
    .local p2, "outboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3152
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInitiatorSpi()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3153
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getResponderSpi()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-boolean v8, v5, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->isLocalInit:Z

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3158
    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalRequestMessageId()I

    move-result v9

    const/16 v5, 0x2e

    const/4 v7, 0x0

    move v6, p1

    .end local p1    # "exchangeType":I
    .local v6, "exchangeType":I
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    .line 3159
    .local v0, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    .line 3161
    .local p1, "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 3162
    return-void
.end method

.method private blacklist handleOutboundResponse(ILjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 15
    .param p1, "exchangeType"    # I
    .param p3, "childSession"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;",
            ")V"
        }
    .end annotation

    .line 3171
    .local p2, "outboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mOutboundRespPayloads:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3172
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mAwaitingChildResponse:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3178
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mAwaitingChildResponse:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3180
    :cond_13
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3182
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInitiatorSpi()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 3183
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getResponderSpi()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-boolean v9, v0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->isLocalInit:Z

    iget v10, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mLastInboundRequestMsgId:I

    const/16 v6, 0x2e

    const/4 v8, 0x1

    move v7, p1

    .end local p1    # "exchangeType":I
    .local v7, "exchangeType":I
    invoke-direct/range {v1 .. v10}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    .line 3189
    .local v1, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-instance p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mOutboundRespPayloads:Ljava/util/List;

    invoke-direct {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    .line 3190
    .local p1, "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 3194
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mOutboundRespPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3195
    return-void
.end method

.method private blacklist transitionToIdleIfAllProceduresDone()V
    .registers 3

    .line 2824
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInRemoteProcedures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2825
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 2827
    :cond_15
    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 3

    .line 2715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 2716
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInRemoteProcedures:Ljava/util/Set;

    .line 2718
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mLocalRequestOngoing:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 2720
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mLastInboundRequestMsgId:I

    .line 2721
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mOutboundRespPayloads:Ljava/util/List;

    .line 2722
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mAwaitingChildResponse:Ljava/util/Set;

    .line 2723
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 2810
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-boolean v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsClosing:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mFirstChildReqList:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 2811
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mFirstChildReqList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->releaseSpiResources(Ljava/util/List;)V

    .line 2813
    :cond_f
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;->exitState()V

    .line 2814
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 3199
    const/16 v0, 0x8

    return v0
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 2916
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mLastInboundRequestMsgId:I

    .line 2917
    packed-switch p2, :pswitch_data_5a

    .line 2946
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IKE exchange subtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 2949
    return-void

    .line 2943
    :pswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->handleGenericInfoRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2944
    goto :goto_55

    .line 2940
    :pswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->handleInboundRekeyChildRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2941
    goto :goto_55

    .line 2934
    :pswitch_2d
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    .line 2938
    goto :goto_55

    .line 2931
    :pswitch_3d
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->handleInboundDeleteChildRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2932
    goto :goto_55

    .line 2926
    :pswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->handleDeleteSessionRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2929
    return-void

    .line 2919
    :pswitch_45
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    .line 2923
    nop

    .line 2951
    :goto_55
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->transitionToIdleIfAllProceduresDone()V

    .line 2952
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x3
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_2d
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 5
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "ikeException"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 2988
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 2990
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2991
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 2992
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 6
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 2956
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 2958
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2960
    .local v0, "handledPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 2961
    .local v2, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    sparse-switch v3, :sswitch_data_40

    goto :goto_28

    .line 2972
    :sswitch_22
    goto :goto_28

    .line 2967
    :sswitch_23
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2968
    goto :goto_28

    .line 2964
    :sswitch_27
    nop

    .line 2976
    .end local v2    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :goto_28
    goto :goto_10

    .line 2978
    :cond_29
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2979
    .local v1, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2980
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2982
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->receiveResponse(ILjava/util/List;)V

    .line 2983
    return-void

    :sswitch_data_40
    .sparse-switch
        0x29 -> :sswitch_27
        0x2b -> :sswitch_23
        0x2f -> :sswitch_22
    .end sparse-switch
.end method

.method protected blacklist handleTempFailure()V
    .registers 2

    .line 2820
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmTempFailHandler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->handleTempFailure()V

    .line 2821
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1, "message"    # Landroid/os/Message;

    .line 2732
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_c2

    .line 2804
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;->processStateMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 2800
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;

    .line 2801
    .local v0, "fatalError":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;->exception:Ljava/lang/Exception;

    invoke-static {v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;Z)V

    .line 2802
    return v3

    .line 2785
    .end local v0    # "fatalError":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;
    :sswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->executeLocalRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;)V

    .line 2786
    return v3

    .line 2765
    :sswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;

    .line 2766
    .local v0, "childData":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;->reqPayloads:Ljava/util/List;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mFirstChildReqList:Ljava/util/List;

    .line 2768
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;->childSessionCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    invoke-direct {p0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->getChildSession(Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 2769
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    if-nez v2, :cond_40

    .line 2770
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "First child not found."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 2771
    return v3

    .line 2774
    :cond_40
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;->reqPayloads:Ljava/util/List;

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;->respPayloads:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v2

    .line 2777
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v7

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v2

    .line 2778
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 2779
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->getEncapSocketOrNull()Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-result-object v9

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v10, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mSaProposal:Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2781
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v2

    aget-object v1, v2, v1

    iget v11, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 2782
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getSkD()[B

    move-result-object v12

    .line 2774
    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->handleFirstChildExchange(Ljava/util/List;Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;I[B)V

    .line 2783
    return v3

    .line 2754
    .end local v0    # "childData":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;
    :sswitch_7a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 2756
    .local v0, "childSession":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    if-ne v1, v0, :cond_86

    .line 2757
    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 2758
    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mLocalRequestOngoing:Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 2760
    :cond_86
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInRemoteProcedures:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2762
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->transitionToIdleIfAllProceduresDone()V

    .line 2763
    return v3

    .line 2741
    .end local v0    # "childSession":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    :sswitch_8f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;

    .line 2742
    .local v0, "outboundData":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;
    iget v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;->exchangeType:I

    .line 2743
    .local v1, "exchangeType":I
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;->payloadList:Ljava/util/List;

    .line 2745
    .local v2, "outboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-boolean v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;->isResp:Z

    if-eqz v4, :cond_a1

    .line 2746
    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;->childSession:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->handleOutboundResponse(ILjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    goto :goto_a4

    .line 2749
    :cond_a1
    invoke-direct {p0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->handleOutboundRequest(ILjava/util/List;)V

    .line 2752
    :goto_a4
    return v3

    .line 2735
    .end local v0    # "outboundData":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;
    .end local v1    # "exchangeType":I
    .end local v2    # "outboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :sswitch_a5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V

    .line 2739
    return v3

    .line 2791
    :sswitch_af
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mChildInLocalProcedure:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    if-nez v0, :cond_c0

    .line 2794
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->buildIkeDeleteReq(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2798
    :cond_c0
    return v1

    nop

    :sswitch_data_c2
    .sparse-switch
        0xca -> :sswitch_af
        0x12f -> :sswitch_a5
        0x130 -> :sswitch_8f
        0x131 -> :sswitch_7a
        0x132 -> :sswitch_21
        0x133 -> :sswitch_19
        0x13e -> :sswitch_d
    .end sparse-switch
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 2727
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildProcedureOngoing;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 2728
    return-void
.end method
