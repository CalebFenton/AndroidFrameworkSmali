.class public Lcom/android/internal/telephony/ImsResponse;
.super Landroid/hardware/radio/ims/IRadioImsResponse$Stub;
.source "ImsResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 39
    const-string p0, "b2a615a151c7114c4216b1987fd32d40c797d00a"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public blacklist sendAnbrQueryResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x7

    .line 101
    iget-object p0, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSrvccCallInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x7

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startImsTrafficResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/ims/ConnectionFailureInfo;)V
    .registers 9

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x2

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 71
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_35

    if-eqz p2, :cond_30

    .line 73
    new-instance v2, Landroid/telephony/ims/feature/ConnectionFailureInfo;

    iget v4, p2, Landroid/hardware/radio/ims/ConnectionFailureInfo;->failureReason:I

    .line 74
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalConnectionFailureReason(I)I

    move-result v4

    iget v5, p2, Landroid/hardware/radio/ims/ConnectionFailureInfo;->causeCode:I

    iget p2, p2, Landroid/hardware/radio/ims/ConnectionFailureInfo;->waitTimeMillis:I

    invoke-direct {v2, v4, v5, p2}, Landroid/telephony/ims/feature/ConnectionFailureInfo;-><init>(III)V

    aput-object v2, v1, v3

    .line 77
    :cond_30
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 79
    :cond_35
    iget-object p0, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method public blacklist stopImsTrafficResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x7

    .line 87
    iget-object p0, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist triggerEpsFallbackResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x7

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist updateImsCallStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x7

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist updateImsRegistrationInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x7

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/ImsResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method
