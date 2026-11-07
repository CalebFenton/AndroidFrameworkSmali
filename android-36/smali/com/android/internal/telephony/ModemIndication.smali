.class public Lcom/android/internal/telephony/ModemIndication;
.super Landroid/hardware/radio/modem/IRadioModemIndication$Stub;
.source "ModemIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 130
    const-string p0, "787419262f7c39ea36c0fbe22681bada95d1f97b"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist hardwareConfigChanged(I[Landroid/hardware/radio/modem/HardwareConfig;)V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 53
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalHardwareConfigList([Landroid/hardware/radio/modem/HardwareConfig;)Ljava/util/ArrayList;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x410

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 57
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist modemReset(ILjava/lang/String;)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 71
    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x417

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 73
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsModemRestartEvent(Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist onImeiMappingChanged(ILandroid/hardware/radio/modem/ImeiInfo;)V
    .registers 5

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 146
    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 147
    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x456

    const-string v1, "ImeiMappingChanged"

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 149
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsImeiMappingChanged(Landroid/hardware/radio/modem/ImeiInfo;)V

    return-void
.end method

.method public blacklist radioCapabilityIndication(ILandroid/hardware/radio/modem/RadioCapability;)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 87
    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/modem/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x412

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 91
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist radioStateChanged(II)V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 103
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioState(I)I

    move-result p1

    .line 104
    iget-object p2, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 105
    iget-object p2, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radioStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 109
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(IZ)V

    return-void
.end method

.method public blacklist rilConnected(I)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 119
    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40a

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 122
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 123
    iget-object p1, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget v0, p1, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscription:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/ModemIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method
