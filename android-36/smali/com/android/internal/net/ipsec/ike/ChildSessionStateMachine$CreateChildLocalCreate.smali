.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateChildLocalCreate"
.end annotation


# instance fields
.field private blacklist mRequestPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1103
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    return-void
.end method

.method private blacklist isTemporaryFailure(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;)Z
    .registers 4
    .param p1, "createChildResult"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    .line 1186
    iget v0, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 1187
    const/4 v0, 0x0

    return v0

    .line 1189
    :cond_7
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;->exception:Landroid/net/ipsec/ike/exceptions/IkeException;

    instance-of v0, v0, Landroid/net/ipsec/ike/exceptions/TemporaryFailureException;

    return v0
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 7

    .line 1109
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1111
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getRandomnessFactory()Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1110
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getInitChildCreateReqPayloads(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;Landroid/net/ipsec/ike/ChildSessionParams;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    .line 1117
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1118
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getConfigAttributes(Landroid/net/ipsec/ike/ChildSessionParams;)[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    move-result-object v0

    .line 1119
    .local v0, "configAttributes":[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    array-length v1, v0

    if-lez v1, :cond_36

    .line 1120
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;

    .line 1122
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;-><init>(ZLjava/util/List;)V

    .line 1120
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    :cond_36
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/16 v5, 0x24

    invoke-interface {v1, v5, v4, v2, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    :try_end_45
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_45} :catch_46
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_0 .. :try_end_45} :catch_46

    .line 1133
    .end local v0    # "configAttributes":[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    goto :goto_4c

    .line 1130
    :catch_46
    move-exception v0

    .line 1132
    .local v0, "e":Landroid/util/AndroidException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$mhandleChildFatalError(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Ljava/lang/Exception;)V

    .line 1134
    .end local v0    # "e":Landroid/util/AndroidException;
    :goto_4c
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 1177
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->releaseSpiResources(Ljava/util/List;)V

    .line 1178
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1182
    const/16 v0, 0x67

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .line 1138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_62

    .line 1171
    const/4 v0, 0x0

    return v0

    .line 1140
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;

    .line 1141
    .local v0, "rcvResp":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->responsePayloads:Ljava/util/List;

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->exchangeType:I

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1147
    invoke-virtual {v4}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v5

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmIpSecSpiGenerator(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v7, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mRemoteAddress:Ljava/net/InetAddress;

    .line 1142
    const/16 v4, 0x24

    invoke-static/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndNegotiateInitChild(Ljava/util/List;Ljava/util/List;IIZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    move-result-object v1

    .line 1153
    .local v1, "createChildResult":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    invoke-direct {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->isTemporaryFailure(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_57

    .line 1154
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mInitial:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v2, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1156
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmLocalRequestFactory(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v5}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mChildSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1157
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestFactory;->getChildLocalRequest(ILandroid/net/ipsec/ike/ChildSessionCallback;Landroid/net/ipsec/ike/ChildSessionParams;)Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    move-result-object v4

    .line 1156
    invoke-interface {v2, v4}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->scheduleRetryLocalRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;)V

    .line 1161
    return v3

    .line 1164
    :cond_57
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->mRequestPayloads:Ljava/util/List;

    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->responsePayloads:Ljava/util/List;

    iget v5, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->registeredSpi:I

    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreate;->validateAndBuildChild(Ljava/util/List;Ljava/util/List;ILcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;)V

    .line 1169
    return v3

    nop

    :pswitch_data_62
    .packed-switch 0x12f
        :pswitch_7
    .end packed-switch
.end method
