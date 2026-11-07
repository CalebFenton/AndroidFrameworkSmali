.class public Lcom/android/internal/telephony/RadioMessagingProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioMessagingProxy.java"


# instance fields
.field private volatile blacklist mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/messaging/IRadioMessaging;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    return-void

    .line 98
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(IZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(IZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 138
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 139
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/messaging/IRadioMessaging;->acknowledgeLastIncomingGsmSms(IZI)V

    return-void

    .line 141
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->acknowledgeLastIncomingGsmSms(IZI)V

    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 72
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    return-void
.end method

.method public blacklist deleteSmsOnRuim(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist deleteSmsOnSim(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 169
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->deleteSmsOnSim(II)V

    return-void

    .line 172
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->deleteSmsOnSim(II)V

    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/messaging/IRadioMessaging;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    return-object p0
.end method

.method public blacklist getCdmaBroadcastConfig(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getGsmBroadcastConfig(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 198
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1}, Landroid/hardware/radio/messaging/IRadioMessaging;->getGsmBroadcastConfig(I)V

    return-void

    .line 201
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getGsmBroadcastConfig(I)V

    return-void
.end method

.method public blacklist getSmscAddress(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 212
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1}, Landroid/hardware/radio/messaging/IRadioMessaging;->getSmscAddress(I)V

    return-void

    .line 215
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getSmscAddress(I)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist reportSmsMemoryStatus(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 227
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->reportSmsMemoryStatus(IZ)V

    return-void

    .line 230
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->reportSmsMemoryStatus(IZ)V

    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 241
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0}, Landroid/hardware/radio/messaging/IRadioMessaging;->responseAcknowledgement()V

    return-void

    .line 244
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_4/IRadio;->responseAcknowledgement()V

    return-void
.end method

.method public blacklist sendCdmaSms(I[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist sendCdmaSmsExpectMore(I[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist sendImsSms(ILjava/lang/String;Ljava/lang/String;[BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 305
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 306
    new-instance v0, Landroid/hardware/radio/messaging/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/ImsSmsMessage;-><init>()V

    .line 308
    iput v2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->tech:I

    int-to-byte p5, p5

    if-lt p5, v1, :cond_1b

    move p5, v1

    goto :goto_1c

    :cond_1b
    move p5, v2

    .line 309
    :goto_1c
    iput-boolean p5, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->retry:Z

    .line 310
    iput p6, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->messageRef:I

    if-eqz p3, :cond_30

    .line 312
    new-array p5, v1, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 313
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object p2

    aput-object p2, p5, v2

    iput-object p5, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 314
    new-array p2, v2, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    iput-object p2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    :cond_30
    if-eqz p4, :cond_40

    .line 317
    new-array p2, v2, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    iput-object p2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 318
    new-array p2, v1, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 319
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object p3

    aput-object p3, p2, v2

    iput-object p2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 321
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->sendImsSms(ILandroid/hardware/radio/messaging/ImsSmsMessage;)V

    return-void

    .line 323
    :cond_46
    new-instance v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 325
    iput v2, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    int-to-byte p5, p5

    if-lt p5, v1, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    .line 326
    :goto_52
    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 327
    iput p6, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    if-eqz p3, :cond_61

    .line 329
    iget-object p5, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    if-eqz p4, :cond_6c

    .line 332
    iget-object p2, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_6c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    return-void
.end method

.method public blacklist sendSms(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 348
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    return-void

    .line 350
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 351
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 352
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    .line 351
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->sendSms_1_6(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void

    .line 354
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void
.end method

.method public blacklist sendSmsExpectMore(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 368
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 369
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    .line 370
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object p2

    .line 369
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->sendSmsExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    return-void

    .line 371
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 372
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 373
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    .line 372
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->sendSmsExpectMore_1_6(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void

    .line 375
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/messaging/IRadioMessaging;)Lcom/android/internal/telephony/HalVersion;
    .registers 7

    .line 45
    const-string v0, "RadioMessagingProxy"

    .line 47
    :try_start_2
    invoke-interface {p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_20

    :catch_b
    move-exception v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_20
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 52
    iput-object p2, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setCdmaBroadcastActivation(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setCdmaBroadcastConfig(I[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setGsmBroadcastActivation(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 449
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->setGsmBroadcastActivation(IZ)V

    return-void

    .line 452
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setGsmBroadcastActivation(IZ)V

    return-void
.end method

.method public blacklist setGsmBroadcastConfig(I[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 465
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 466
    array-length v0, p2

    new-array v0, v0, [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    .line 470
    :goto_11
    array-length v2, p2

    if-ge v1, v2, :cond_46

    .line 471
    new-instance v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    invoke-direct {v2}, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;-><init>()V

    .line 472
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 473
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->toServiceId:I

    .line 474
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 475
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    .line 476
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    iput-boolean v3, v2, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->selected:Z

    .line 477
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 479
    :cond_46
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->setGsmBroadcastConfig(I[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V

    return-void

    .line 481
    :cond_4c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    :goto_51
    array-length v2, p2

    if-ge v1, v2, :cond_87

    .line 485
    new-instance v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;-><init>()V

    .line 486
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 487
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    .line 488
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 489
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    .line 490
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v3

    iput-boolean v3, v2, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    .line 491
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 493
    :cond_87
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setSmscAddress(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 505
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/messaging/IRadioMessaging;->setSmscAddress(ILjava/lang/String;)V

    return-void

    .line 508
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setSmscAddress(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist writeSmsToRuim(II[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist writeSmsToSim(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 556
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 557
    new-instance v0, Landroid/hardware/radio/messaging/SmsWriteArgs;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/SmsWriteArgs;-><init>()V

    .line 559
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSmsWriteArgsStatusAidl(I)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/messaging/SmsWriteArgs;->status:I

    .line 560
    iput-object p3, v0, Landroid/hardware/radio/messaging/SmsWriteArgs;->smsc:Ljava/lang/String;

    .line 561
    iput-object p4, v0, Landroid/hardware/radio/messaging/SmsWriteArgs;->pdu:Ljava/lang/String;

    .line 562
    iget-object p0, p0, Lcom/android/internal/telephony/RadioMessagingProxy;->mMessagingProxy:Landroid/hardware/radio/messaging/IRadioMessaging;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->writeSmsToSim(ILandroid/hardware/radio/messaging/SmsWriteArgs;)V

    return-void

    .line 564
    :cond_22
    new-instance v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 566
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSmsWriteArgsStatus(I)I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->status:I

    .line 567
    iput-object p3, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->smsc:Ljava/lang/String;

    .line 568
    iput-object p4, v0, Landroid/hardware/radio/V1_0/SmsWriteArgs;->pdu:Ljava/lang/String;

    .line 569
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    return-void
.end method
