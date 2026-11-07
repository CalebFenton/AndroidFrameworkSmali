.class public Lcom/android/internal/telephony/ImsIndication;
.super Landroid/hardware/radio/ims/IRadioImsIndication$Stub;
.source "ImsIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 41
    const-string p0, "b2a615a151c7114c4216b1987fd32d40c797d00a"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public blacklist notifyAnbr(IIII)V
    .registers 7

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 89
    filled-new-array {p2, p3, p4}, [I

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x455

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNotifyAnbrRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist onConnectionSetupFailure(IILandroid/hardware/radio/ims/ConnectionFailureInfo;)V
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 63
    new-instance p2, Landroid/telephony/ims/feature/ConnectionFailureInfo;

    iget v0, p3, Landroid/hardware/radio/ims/ConnectionFailureInfo;->failureReason:I

    .line 64
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalConnectionFailureReason(I)I

    move-result v0

    iget v1, p3, Landroid/hardware/radio/ims/ConnectionFailureInfo;->causeCode:I

    iget p3, p3, Landroid/hardware/radio/ims/ConnectionFailureInfo;->waitTimeMillis:I

    invoke-direct {p2, v0, v1, p3}, Landroid/telephony/ims/feature/ConnectionFailureInfo;-><init>(III)V

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x454

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mConnectionSetupFailureRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist triggerImsDeregistration(II)V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 109
    iget-object p1, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x453

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 112
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDeregistrationReason(I)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    .line 114
    iget-object p0, p0, Lcom/android/internal/telephony/ImsIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mTriggerImsDeregistrationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
