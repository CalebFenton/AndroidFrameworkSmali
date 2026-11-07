.class abstract Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BusyState"
.end annotation


# instance fields
.field protected blacklist mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1898
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$LocalRequestQueuer;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method private blacklist isTempFailure(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Z
    .registers 7
    .param p1, "message"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 2223
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 2224
    const/16 v1, 0x29

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2226
    .local v0, "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 2227
    .local v2, "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_20

    .line 2228
    const/4 v1, 0x1

    return v1

    .line 2230
    .end local v2    # "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_20
    goto :goto_c

    .line 2231
    :cond_21
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected blacklist getIkeSaRecordForPacket(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .registers 5
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 1999
    iget-boolean v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->fromIkeInitiator:Z

    if-eqz v0, :cond_13

    .line 2000
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmLocalSpiToIkeSaRecordMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    return-object v0

    .line 2002
    :cond_13
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmLocalSpiToIkeSaRecordMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    return-object v0
.end method

.method protected blacklist handle3gppRespAndExtractNonError3gppPayloads(ILjava/util/List;)Ljava/util/List;
    .registers 9
    .param p1, "exchangeSubtype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 2360
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIke3gppExtensionExchange(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    move-result-object v0

    .line 2361
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->extract3gppResponsePayloads(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2364
    .local v0, "ike3gppPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIke3gppExtensionExchange(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->handle3gppResponsePayloads(ILjava/util/List;)V

    .line 2366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2367
    .local v1, "ike3gppErrorNotifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 2368
    .local v3, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    instance-of v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    if-eqz v4, :cond_38

    .line 2369
    move-object v4, v3

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 2370
    .local v4, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 2371
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2374
    .end local v3    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .end local v4    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_38
    goto :goto_1c

    .line 2375
    :cond_39
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2377
    return-object v0
.end method

.method protected blacklist handleGenericInfoRequest(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 9
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 2245
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    .local v0, "infoPayloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;>;"
    iget-object v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 2247
    .local v2, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    sparse-switch v3, :sswitch_data_c0

    .line 2261
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    goto :goto_32

    .line 2250
    :sswitch_1f
    goto :goto_4a

    .line 2252
    :sswitch_20
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 2253
    .local v3, "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v5, 0x4011

    if-ne v4, v5, :cond_4a

    .line 2254
    nop

    .line 2255
    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->handleCookie2AndGenerateCopy(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v4

    .line 2254
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 2261
    .end local v3    # "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :goto_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unexpected payload in an INFORMATIONAL request. Payload type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logw(Ljava/lang/String;)V

    .line 2266
    .end local v2    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :cond_4a
    :goto_4a
    goto :goto_b

    .line 2269
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIke3gppExtensionExchange(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    .line 2270
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppExtensionExchange;->getResponsePayloads(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 2272
    .local v1, "ikePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 2273
    .local v3, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    instance-of v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    if-eqz v4, :cond_74

    .line 2274
    move-object v4, v3

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 2276
    :cond_74
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unexpected payload that is not an IkeInformationalPayload"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 2280
    .end local v3    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :goto_8c
    goto :goto_5d

    .line 2282
    :cond_8d
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 2285
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    .line 2284
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    iget-object v4, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    .line 2283
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedInformationalMessage([Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    .line 2288
    .local v2, "infoResp":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v3, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    :try_end_a9
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_0 .. :try_end_a9} :catch_ab

    .line 2296
    .end local v0    # "infoPayloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;>;"
    .end local v1    # "ikePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v2    # "infoResp":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    nop

    .line 2297
    return-void

    .line 2289
    :catch_ab
    move-exception v0

    .line 2290
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    .line 2294
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 2295
    return-void

    :sswitch_data_c0
    .sparse-switch
        0x29 -> :sswitch_20
        0x2f -> :sswitch_1f
    .end sparse-switch
.end method

.method protected blacklist handleReceivedIkePacket(Landroid/os/Message;)V
    .registers 18
    .param p1, "message"    # Landroid/os/Message;

    .line 2010
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "handleReceivedIkePacket: "

    .line 2012
    .local v2, "methodTag":Ljava/lang/String;
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;

    .line 2013
    .local v3, "receivedIkePacket":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;
    iget-object v8, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 2014
    .local v8, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    iget-object v9, v3, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ReceivedIkePacket;->ikePacketBytes:[B

    .line 2015
    .local v9, "ikePacketBytes":[B
    invoke-virtual {v0, v8}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->getIkeSaRecordForPacket(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v7

    .line 2017
    .local v7, "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    iget-boolean v4, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-eqz v4, :cond_19

    const-string v4, "response"

    goto :goto_1b

    :cond_19
    const-string v4, "request"

    :goto_1b
    move-object v11, v4

    .line 2020
    .local v11, "msgDirection":Ljava/lang/String;
    if-nez v7, :cond_40

    .line 2022
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received an IKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "but found no matching SA for it"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 2027
    return-void

    .line 2030
    :cond_40
    iget-object v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Received an "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2033
    invoke-virtual {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->getBasicInfoString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on IKE SA with local SPI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2035
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Packet size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2030
    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 2039
    iget-boolean v4, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    const-string v12, "Unrecognized decoding status: "

    const-string v13, "Protected error"

    const/4 v14, 0x1

    if-eqz v4, :cond_155

    .line 2040
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalRequestMessageId()I

    move-result v4

    .line 2041
    .local v4, "expectedMsgId":I
    add-int/lit8 v5, v4, -0x1

    iget v6, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    if-ne v5, v6, :cond_a5

    .line 2042
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "Received re-transmitted response. Discard it."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 2043
    return-void

    .line 2046
    :cond_a5
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    .line 2054
    invoke-virtual {v7, v14}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getCollectedFragments(Z)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    move-result-object v10

    .line 2047
    invoke-static/range {v4 .. v10}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->decode(ILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;

    move-result-object v5

    .line 2055
    .local v5, "decodeResult":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    iget v6, v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    packed-switch v6, :pswitch_data_316

    .line 2096
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto/16 :goto_153

    .line 2089
    :pswitch_d7
    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "Message authentication or decryption failed on received response. Discard it"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v12, v5

    check-cast v12, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;

    iget-object v12, v12, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;->ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2094
    goto :goto_153

    .line 2076
    :pswitch_f5
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;->ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 2077
    .local v6, "ikeException":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2079
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->incrementLocalRequestMessageId()V

    .line 2080
    invoke-virtual {v7, v14}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->resetCollectedFragments(Z)V

    .line 2082
    new-instance v10, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v12, "Generic processing error in the received response"

    invoke-direct {v10, v12, v6}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v7, v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V

    .line 2087
    goto :goto_153

    .line 2072
    .end local v6    # "ikeException":Landroid/net/ipsec/ike/exceptions/IkeException;
    :pswitch_121
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    invoke-virtual {v7, v6, v14}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->updateCollectedFragments(Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;Z)V

    .line 2074
    goto :goto_153

    .line 2057
    :pswitch_128
    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->markPeerAsAlive()V

    .line 2059
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->incrementLocalRequestMessageId()V

    .line 2060
    invoke-virtual {v7, v14}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->resetCollectedFragments(Z)V

    .line 2062
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;

    .line 2063
    .local v6, "resultOk":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;
    iget-object v10, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;->ikeMessage:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v0, v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->isTempFailure(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)Z

    move-result v10

    if-eqz v10, :cond_144

    .line 2064
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->handleTempFailure()V

    goto :goto_14d

    .line 2066
    :cond_144
    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmTempFailHandler(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$TempFailureHandler;->reset()V

    .line 2069
    :goto_14d
    iget-object v10, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;->ikeMessage:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-virtual {v0, v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2070
    nop

    .line 2101
    .end local v4    # "expectedMsgId":I
    .end local v5    # "decodeResult":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    .end local v6    # "resultOk":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;
    :goto_153
    goto/16 :goto_314

    .line 2102
    :cond_155
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getRemoteRequestMessageId()I

    move-result v4

    .line 2103
    .restart local v4    # "expectedMsgId":I
    add-int/lit8 v5, v4, -0x1

    iget v6, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    if-ne v5, v6, :cond_1e7

    .line 2104
    invoke-virtual {v7, v9}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->isRetransmittedRequest([B)Z

    move-result v5

    if-eqz v5, :cond_1cd

    .line 2105
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLastSentRespMsgId()I

    move-result v5

    iget v6, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const-string v10, "Received re-transmitted request "

    if-ne v5, v6, :cond_1ad

    .line 2106
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " Retransmitting response"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 2110
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLastSentRespAllPackets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_195
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 2111
    .local v6, "packet":[B
    iget-object v10, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v10}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->sendIkePacket([B)V

    .line 2112
    .end local v6    # "packet":[B
    goto :goto_195

    :cond_1ab
    goto/16 :goto_314

    .line 2114
    :cond_1ad
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " Original request is still being processed"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_314

    .line 2122
    :cond_1cd
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "Received a request with invalid message ID. Discard it."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;)V

    goto/16 :goto_314

    .line 2125
    :cond_1e7
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeIntegrity:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeCipher:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    .line 2133
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getCollectedFragments(Z)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    move-result-object v10

    .line 2126
    invoke-static/range {v4 .. v10}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->decode(ILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;

    move-result-object v5

    .line 2134
    .restart local v5    # "decodeResult":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    iget v6, v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    packed-switch v6, :pswitch_data_322

    .line 2213
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;->status:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto/16 :goto_314

    .line 2206
    :pswitch_21a
    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "Message authentication or decryption failed on received request. Discard it"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v12, v5

    check-cast v12, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;

    iget-object v12, v12, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;->ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;

    invoke-virtual {v6, v10, v12}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2211
    goto/16 :goto_314

    .line 2188
    :pswitch_239
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;

    .line 2191
    .local v6, "resultError":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;
    iget-object v10, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;->ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 2192
    .local v10, "ikeException":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v12, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;->ikeException:Landroid/net/ipsec/ike/exceptions/IkeException;

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2194
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->incrementRemoteRequestMessageId()V

    .line 2195
    invoke-virtual {v7, v15}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->resetCollectedFragments(Z)V

    .line 2197
    iget-object v12, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;->firstPacket:[B

    invoke-virtual {v7, v12}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->updateLastReceivedReqFirstPacket([B)V

    .line 2200
    iget v12, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    move-object v13, v10

    check-cast v13, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-virtual {v0, v7, v12, v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->handleRequestGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;ILandroid/net/ipsec/ike/exceptions/IkeProtocolException;)V

    .line 2204
    goto/16 :goto_314

    .line 2184
    .end local v6    # "resultError":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;
    .end local v10    # "ikeException":Landroid/net/ipsec/ike/exceptions/IkeException;
    :pswitch_26b
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    invoke-virtual {v7, v6, v15}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->updateCollectedFragments(Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;Z)V

    .line 2186
    goto/16 :goto_314

    .line 2136
    :pswitch_273
    iget-object v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v6}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->markPeerAsAlive()V

    .line 2138
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->incrementRemoteRequestMessageId()V

    .line 2139
    invoke-virtual {v7, v15}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->resetCollectedFragments(Z)V

    .line 2141
    move-object v6, v5

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;

    .line 2142
    .local v6, "resultOk":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;
    iget-object v10, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;->ikeMessage:Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 2143
    .local v10, "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v12, v6, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;->firstPacket:[B

    invoke-virtual {v7, v12}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->updateLastReceivedReqFirstPacket([B)V

    .line 2146
    invoke-virtual {v10}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->isDpdRequest()Z

    move-result v12

    if-eqz v12, :cond_2b9

    .line 2147
    iget-object v12, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Received DPD request"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 2148
    iget-object v12, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-array v13, v15, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    iget v14, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    .line 2149
    const/4 v15, 0x1

    invoke-virtual {v12, v7, v13, v15, v14}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedInformationalMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v12

    .line 2154
    .local v12, "dpdResponse":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    iget-object v13, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v13, v7, v12}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2155
    goto :goto_314

    .line 2158
    .end local v12    # "dpdResponse":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :cond_2b9
    invoke-virtual {v10}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getIkeExchangeSubType()I

    move-result v12

    .line 2159
    .local v12, "ikeExchangeSubType":I
    iget-object v13, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Request exchange subtype: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2162
    invoke-static {v12}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getIkeExchangeSubTypeString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2159
    invoke-virtual {v13, v14}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logd(Ljava/lang/String;)V

    .line 2165
    if-eqz v12, :cond_2ea

    const/4 v15, 0x1

    if-eq v12, v15, :cond_2ea

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2e6

    goto :goto_2ea

    .line 2181
    :cond_2e6
    invoke-virtual {v0, v10, v12, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V

    .line 2182
    goto :goto_314

    .line 2170
    :cond_2ea
    :goto_2ea
    iget-object v13, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v14, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v14, v14, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCurrentIkeSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget v15, v8, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/4 v1, 0x7

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildAndSendErrorNotificationResponse(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;II)V

    .line 2174
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v13, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot handle message with invalid or unexpected IkeExchangeSubType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v13}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 2179
    return-void

    .line 2220
    .end local v4    # "expectedMsgId":I
    .end local v5    # "decodeResult":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    .end local v6    # "resultOk":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;
    .end local v10    # "ikeMessage":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .end local v12    # "ikeExchangeSubType":I
    :goto_314
    return-void

    nop

    :pswitch_data_316
    .packed-switch 0x0
        :pswitch_128
        :pswitch_121
        :pswitch_f5
        :pswitch_d7
    .end packed-switch

    :pswitch_data_322
    .packed-switch 0x0
        :pswitch_273
        :pswitch_26b
        :pswitch_239
        :pswitch_21a
    .end packed-switch
.end method

.method protected blacklist handleRequestGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;ILandroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .registers 10
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "messageId"    # I
    .param p3, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 2321
    invoke-virtual {p3}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->buildNotifyPayload()Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v0

    .line 2322
    .local v0, "errNotify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 2324
    invoke-virtual {v2, p1, v4, v3, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->buildEncryptedInformationalMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;[Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;ZI)Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    move-result-object v2

    .line 2322
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendEncryptedIkeMessage(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V

    .line 2331
    invoke-virtual {p3}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_21

    .line 2332
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, p3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 2334
    :cond_21
    return-void
.end method

.method protected blacklist handleRequestIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ILandroid/os/Message;)V
    .registers 7
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "ikeExchangeSubType"    # I
    .param p3, "message"    # Landroid/os/Message;

    .line 2302
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not support handling an encrypted request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 2305
    return-void
.end method

.method protected blacklist handleResponseGenericProcessError(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;)V
    .registers 5
    .param p1, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "ikeException"    # Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    .line 2346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not support handling generic processing error of encrypted response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 2350
    return-void
.end method

.method protected blacklist handleResponseIkeMessage(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)V
    .registers 4
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 2309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not support handling an encrypted response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    .line 2311
    return-void
.end method

.method protected blacklist handleTempFailure()V
    .registers 4

    .line 2237
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Received unexpected TEMPORARY_FAILURE"

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 2241
    return-void
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .line 1903
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_b2

    .line 1980
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->isLocalRequest(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1981
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->handleLocalRequest(ILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 1982
    return v2

    .line 1911
    :sswitch_19
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1912
    return v2

    .line 1970
    :sswitch_23
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-boolean v1, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsRetransmitSuspended:Z

    .line 1973
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    if-eqz v0, :cond_30

    .line 1974
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->restartRetransmitting()V

    .line 1976
    :cond_30
    return v2

    .line 1960
    :sswitch_31
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iput-boolean v2, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIsRetransmitSuspended:Z

    .line 1963
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    if-eqz v0, :cond_3e

    .line 1964
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->mRetransmitter:Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/Retransmitter;->suspendRetransmitting()V

    .line 1966
    :cond_3e
    return v2

    .line 1951
    :sswitch_3f
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->isLivenessCheckRequested()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4e

    .line 1953
    return v2

    .line 1955
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mLivenessAssister:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->livenessCheckRequested(I)V

    .line 1956
    return v2

    .line 1944
    :sswitch_57
    :try_start_57
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->onUnderpinnedNetworkSetByUser(Landroid/net/Network;)V
    :try_end_64
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_57 .. :try_end_64} :catch_65

    .line 1947
    goto :goto_6b

    .line 1945
    :catch_65
    move-exception v0

    .line 1946
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 1948
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    :goto_6b
    return v2

    .line 1923
    :sswitch_6c
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isMobilityEnabled()Z

    move-result v0

    if-nez v0, :cond_80

    .line 1924
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v1, "setNetwork() called for session without mobility support."

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logi(Ljava/lang/String;)V

    .line 1927
    return v2

    .line 1931
    :cond_80
    :try_start_80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;

    .line 1932
    .local v0, "params":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->network:Landroid/net/Network;

    iget v4, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->ipVersion:I

    iget v5, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->encapType:I

    iget v6, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;->keepaliveDelaySeconds:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->onNetworkSetByUser(Landroid/net/Network;III)V
    :try_end_95
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_80 .. :try_end_95} :catch_96

    .line 1939
    .end local v0    # "params":Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$NetworkParams;
    goto :goto_9c

    .line 1937
    :catch_96
    move-exception v0

    .line 1938
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 1940
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    :goto_9c
    return v2

    .line 1908
    :sswitch_9d
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->handleFiredAlarm(Landroid/os/Message;)V

    .line 1909
    return v2

    .line 1919
    :sswitch_a1
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->triggerRetransmit()V

    .line 1920
    return v2

    .line 1915
    :sswitch_a5
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const-string v2, "Invalid execute local request command in non-idle state"

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 1916
    return v1

    .line 1905
    :sswitch_ad
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->handleReceivedIkePacket(Landroid/os/Message;)V

    .line 1906
    return v2

    .line 1984
    :cond_b1
    return v1

    :sswitch_data_b2
    .sparse-switch
        0x12d -> :sswitch_ad
        0x133 -> :sswitch_a5
        0x134 -> :sswitch_a1
        0x13b -> :sswitch_9d
        0x13d -> :sswitch_6c
        0x13f -> :sswitch_57
        0x140 -> :sswitch_3f
        0x141 -> :sswitch_31
        0x142 -> :sswitch_23
        0x18f -> :sswitch_19
    .end sparse-switch
.end method

.method protected blacklist triggerRetransmit()V
    .registers 4

    .line 1995
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$BusyState;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retransmission trigger dropped in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->logWtf(Ljava/lang/String;)V

    .line 1996
    return-void
.end method
