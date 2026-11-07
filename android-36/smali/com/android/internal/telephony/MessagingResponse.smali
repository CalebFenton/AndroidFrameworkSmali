.class public Lcom/android/internal/telephony/MessagingResponse;
.super Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;
.source "MessagingResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private blacklist responseSms(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .registers 11

    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 44
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    .line 45
    new-instance v2, Lcom/android/internal/telephony/SmsResponse;

    iget v3, p2, Landroid/hardware/radio/messaging/SendSmsResult;->messageRef:I

    iget-object v4, p2, Landroid/hardware/radio/messaging/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v5, p2, Landroid/hardware/radio/messaging/SendSmsResult;->errorCode:I

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;IJ)V

    .line 46
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_23

    .line 47
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 49
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist deleteSmsOnRuimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist deleteSmsOnSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getCdmaBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;)V
    .registers 10

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 108
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_28

    const/16 p2, 0x5e

    .line 115
    new-array v1, p2, [I

    const/16 v4, 0x1f

    .line 118
    aput v4, v1, v2

    move v4, v3

    :goto_17
    if-ge v4, p2, :cond_4a

    .line 123
    div-int/lit8 v5, v4, 0x3

    aput v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    .line 124
    aput v3, v1, v5

    add-int/lit8 v5, v4, 0x2

    .line 125
    aput v2, v1, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_17

    :cond_28
    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v3

    .line 130
    new-array v4, v4, [I

    .line 132
    aput v1, v4, v2

    .line 133
    :goto_2f
    array-length v1, p2

    if-ge v2, v1, :cond_49

    .line 135
    aget-object v1, p2, v3

    iget v5, v1, Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    aput v5, v4, v3

    add-int/lit8 v5, v3, 0x1

    .line 136
    iget v6, v1, Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;->language:I

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x2

    .line 137
    iget-boolean v1, v1, Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;->selected:Z

    aput v1, v4, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_2f

    :cond_49
    move-object v1, v4

    .line 140
    :cond_4a
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_53

    .line 141
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 143
    :cond_53
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_58
    return-void
.end method

.method public blacklist getGsmBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V
    .registers 14

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_29

    aget-object v4, p2, v3

    .line 158
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    iget v6, v4, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    iget v7, v4, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->toServiceId:I

    iget v8, v4, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    iget v9, v4, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    iget-boolean v10, v4, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->selected:Z

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 161
    :cond_29
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_32

    .line 162
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 164
    :cond_32
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_37
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 281
    const-string p0, "b28416394e6595c08e97c0473855eb05eed1baed"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist getSmscAddressResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist reportSmsMemoryStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .registers 3

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MessagingResponse;->responseSms(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .registers 3

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MessagingResponse;->responseSms(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendImsSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .registers 3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MessagingResponse;->responseSms(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsExpectMoreResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .registers 3

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MessagingResponse;->responseSms(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .registers 3

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MessagingResponse;->responseSms(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    return-void
.end method

.method public blacklist setCdmaBroadcastActivationResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 239
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setGsmBroadcastActivationResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setGsmBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSmscAddressResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x2

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist writeSmsToRuimResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist writeSmsToSimResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 276
    iget-object p0, p0, Lcom/android/internal/telephony/MessagingResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method
