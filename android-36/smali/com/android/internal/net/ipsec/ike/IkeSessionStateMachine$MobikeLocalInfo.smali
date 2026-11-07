.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobikeLocalInfo"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$z-iAJI4MlriV4XCV-OqHLqOOfWs(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->lambda$notifyConnectionInfoChanged$0(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    return-void
.end method

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

    .line 5816
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method private blacklist buildUpdateSaAddressesReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .registers 12

    .line 5852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 5853
    .local v1, "payloadList":Ljava/util/List;, "Ljava/util/List<-Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;>;"
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 v2, 0x4010

    invoke-direct {v0, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5855
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->needNatDetection()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 5856
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 5858
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 5859
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 5860
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getLocalPort()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 5861
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemotePort()I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5862
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInitiatorSpi()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5863
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getResponderSpi()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 5864
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mneedEnableForceUdpEncap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Z

    move-result v10

    .line 5856
    invoke-static/range {v1 .. v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$smaddNatDetectionPayloadsToList(Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;IIJJZ)V

    .line 5867
    :cond_57
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5869
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 5871
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalRequestMessageId()I

    move-result v4

    .line 5867
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedInformationalMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleNatDetection(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V
    .registers 12
    .param p1, "resp"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p3, "natDestPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeMessage;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 5979
    .local p2, "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mdidPeerIncludeNattDetectionPayloads(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5982
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getNatStatus()I

    move-result v0

    if-nez v0, :cond_1d

    .line 5983
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->markSeverNattUnsupported()V

    .line 5985
    :cond_1d
    return-void

    .line 5988
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v4, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    .line 5989
    move-object v6, p2

    move-object v7, p3

    .end local p2    # "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    .end local p3    # "natDestPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .local v6, "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    .local v7, "natDestPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$misLocalOrRemoteNatDetected(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;JJLjava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z

    move-result p2

    .line 5994
    .local p2, "isNatDetected":Z
    iget-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->handleNatDetectionResultInMobike(Z)V

    .line 5995
    return-void
.end method

.method private synthetic blacklist lambda$notifyConnectionInfoChanged$0(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 3
    .param p1, "connectionInfo"    # Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 6016
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionCallback(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/net/ipsec/ike/IkeSessionCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/ipsec/ike/IkeSessionCallback;->onIkeSessionConnectionInfoChanged(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    return-void
.end method

.method private blacklist migrateAllChildSAs(Z)V
    .registers 7
    .param p1, "mobikeEnabled"    # Z

    .line 5999
    if-eqz p1, :cond_4

    .line 6000
    const/4 v0, 0x5

    goto :goto_5

    .line 6001
    :cond_4
    const/4 v0, 0x4

    :goto_5
    nop

    .line 6004
    .local v0, "command":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 6005
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 6006
    .local v2, "remoteChildSpi":I
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmLocalRequestFactory(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    move-result-object v4

    .line 6008
    invoke-virtual {v4, v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getChildLocalRequest(II)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    move-result-object v4

    .line 6006
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 6004
    .end local v2    # "remoteChildSpi":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6010
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method private blacklist needNatDetection()Z
    .registers 5

    .line 5834
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    .line 5837
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getNatStatus()I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 5838
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getNatStatus()I

    move-result v0

    if-eq v0, v2, :cond_29

    :cond_28
    move v1, v2

    .line 5837
    :cond_29
    return v1

    .line 5845
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getNatStatus()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_38

    move v1, v2

    :cond_38
    return v1
.end method

.method private blacklist notifyConnectionInfoChanged()V
    .registers 4

    .line 6013
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    .line 6014
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->buildIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    move-result-object v0

    .line 6015
    .local v0, "connectionInfo":Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 6017
    return-void
.end method

.method private blacklist validateResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 10
    .param p1, "resp"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5922
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_91

    .line 5928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5929
    .local v0, "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    const/4 v1, 0x0

    .line 5931
    .local v1, "natDestPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 5932
    .local v3, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    packed-switch v4, :pswitch_data_ae

    .line 5964
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

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

    goto :goto_7e

    .line 5934
    :pswitch_40
    move-object v4, v3

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 5935
    .local v4, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v5

    if-nez v5, :cond_79

    .line 5940
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    packed-switch v5, :pswitch_data_b4

    .line 5956
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unknown or unexpected status notifications with notify type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 5962
    goto :goto_7e

    .line 5945
    :pswitch_69
    if-nez v1, :cond_6d

    .line 5951
    move-object v1, v4

    .line 5952
    goto :goto_7e

    .line 5946
    :cond_6d
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v5, "More than one NOTIFY_TYPE_NAT_DETECTION_DESTINATION_IP found"

    invoke-direct {v2, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5942
    :pswitch_75
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5943
    goto :goto_7e

    .line 5937
    :cond_79
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    move-result-object v2

    throw v2

    .line 5966
    .end local v3    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .end local v4    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :goto_7e
    goto :goto_14

    .line 5968
    :cond_7f
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->getMessage()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    const/16 v3, 0x4004

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->hasNotifyPayload(I)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 5969
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->handleNatDetection(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)V

    .line 5971
    :cond_90
    return-void

    .line 5923
    .end local v0    # "natSourcePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    .end local v1    # "natDestPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_91
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid exchange type; expected INFORMATIONAL, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_ae
    .packed-switch 0x29
        :pswitch_40
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x4004
        :pswitch_75
        :pswitch_69
    .end packed-switch
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 4

    .line 5819
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mEnabledExtensions:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 5820
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "Non-MOBIKE mobility event: Server does not send NOTIFY_TYPE_MOBIKE_SUPPORTED. Skip UPDATE_SA_ADDRESSES exchange"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 5823
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->migrateAllChildSAs(Z)V

    .line 5824
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->notifyConnectionInfoChanged()V

    .line 5825
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 5826
    return-void

    .line 5829
    :cond_27
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "RFC4555 MOBIKE mobility event: Perform UPDATE_SA_ADDRESSES exchange"

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 5830
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->buildUpdateSaAddressesReq()Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$EncryptedRetransmitter;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    .line 5831
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 5881
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$DeleteBase;->exitState()V

    .line 5883
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    if-eqz v0, :cond_c

    .line 5884
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 5886
    :cond_c
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 6021
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 5891
    packed-switch p2, :pswitch_data_18

    .line 5898
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    goto :goto_17

    .line 5893
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->handleDeleteSessionRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5894
    nop

    .line 5903
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 4
    .param p1, "resp"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 5908
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->stopRetransmitting()V

    .line 5911
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->validateResp(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 5913
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->migrateAllChildSAs(Z)V

    .line 5914
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->notifyConnectionInfoChanged()V

    .line 5915
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIdle:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Idle;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V
    :try_end_18
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_5 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    .line 5918
    goto :goto_1f

    .line 5916
    :catch_19
    move-exception v0

    .line 5917
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 5919
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method protected blacklist triggerRetransmit()V
    .registers 2

    .line 5876
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MobikeLocalInfo;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->retransmit()V

    .line 5877
    return-void
.end method
