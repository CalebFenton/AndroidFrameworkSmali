.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private final blacklist mPhoneId:I

.field blacklist mResource:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;I)V
    .registers 3

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 75
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mImsManager:Lcom/android/ims/ImsManager;

    .line 77
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mResource:Landroid/content/res/Resources;

    return-void
.end method

.method private blacklist ackViaIms()Z
    .registers 3

    .line 346
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mResource:Landroid/content/res/Resources;

    const v0, 0x111024c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p0, 0x0

    .line 352
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ackViaIms : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsimDataDownloadHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private blacklist acknowledgeImsSms(IIZ[B)V
    .registers 7

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_5

    :cond_4
    const/4 p3, 0x2

    .line 363
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending result via acknowledgeImsSms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsimDataDownloadHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :try_start_23
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_4e

    if-eqz p4, :cond_32

    .line 367
    array-length v0, p4

    if-lez v0, :cond_32

    .line 368
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsManager;->acknowledgeSms(III[B)V

    return-void

    :catch_30
    move-exception p0

    goto :goto_36

    .line 370
    :cond_32
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_35
    .catch Lcom/android/ims/ImsException; {:try_start_23 .. :try_end_35} :catch_30

    return-void

    .line 374
    :goto_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to acknowledgeSms(). Error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void
.end method

.method private blacklist acknowledgeSmsWithError(IIII)V
    .registers 8

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsWithError- cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " smsSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsimDataDownloadHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3d

    .line 309
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->ackViaIms()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 310
    invoke-direct {p0, p3, p4, v2, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeImsSms(IIZ[B)V

    return-void

    .line 312
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private blacklist acknowledgeSmsWithSuccess(IIII)V
    .registers 7

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsWithSuccess- cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " smsSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsimDataDownloadHandler"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3c

    .line 299
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->ackViaIms()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 300
    invoke-direct {p0, p3, p4, v1, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeImsSms(IIZ[B)V

    return-void

    .line 302
    :cond_3c
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private blacklist addUsimDataDownloadToMetrics(ZI)V
    .registers 6

    .line 334
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    .line 335
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSMSPP(ILjava/lang/String;Z)V

    .line 336
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsPP(IZ)V

    return-void
.end method

.method private static blacklist getEnvelopeBodyLength(II)I
    .registers 5

    .line 0
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x7f

    const/4 v2, 0x2

    if-le p1, v1, :cond_9

    move p1, v2

    goto :goto_a

    :cond_9
    const/4 p1, 0x1

    :goto_a
    add-int/2addr v0, p1

    if-eqz p0, :cond_f

    add-int/2addr v0, v2

    add-int/2addr v0, p0

    :cond_f
    return v0
.end method

.method private blacklist handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 137
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v4

    .line 138
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    .line 139
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 141
    aget-byte v8, v6, v7

    const/16 v9, 0xff

    and-int/2addr v8, v9

    add-int/lit8 v10, v8, 0x1

    .line 143
    array-length v11, v6

    sub-int/2addr v11, v10

    .line 145
    invoke-static {v8, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    move-result v12

    add-int/lit8 v13, v12, 0x1

    const/16 v16, 0x2

    const/16 v14, 0x7f

    if-le v12, v14, :cond_2d

    move/from16 v17, v16

    goto :goto_2f

    :cond_2d
    const/16 v17, 0x1

    :goto_2f
    add-int v13, v13, v17

    move/from16 v17, v7

    .line 151
    new-array v7, v13, [B

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x1

    const-string v15, "smsSource: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "Token: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v15, "UsimDataDownloadHandler"

    invoke-static {v15, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, -0x2f

    .line 156
    aput-byte v9, v7, v17

    const/16 v9, -0x7f

    if-le v12, v14, :cond_62

    .line 158
    aput-byte v9, v7, v18

    move/from16 v19, v16

    goto :goto_64

    :cond_62
    move/from16 v19, v18

    :goto_64
    add-int/lit8 v20, v19, 0x1

    int-to-byte v12, v12

    .line 160
    aput-byte v12, v7, v19

    add-int/lit8 v12, v19, 0x2

    .line 163
    sget-object v21, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v20

    add-int/lit8 v9, v19, 0x3

    .line 164
    aput-byte v16, v7, v12

    add-int/lit8 v12, v19, 0x4

    const/16 v20, -0x7d

    .line 165
    aput-byte v20, v7, v9

    add-int/lit8 v9, v19, 0x5

    .line 166
    aput-byte v22, v7, v12

    if-eqz v8, :cond_9e

    add-int/lit8 v12, v19, 0x6

    .line 170
    sget-object v20, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v7, v9

    add-int/lit8 v9, v19, 0x7

    int-to-byte v14, v8

    .line 171
    aput-byte v14, v7, v12

    move/from16 v12, v18

    .line 172
    invoke-static {v6, v12, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v8

    :cond_9e
    add-int/lit8 v8, v9, 0x1

    .line 177
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v7, v9

    const/16 v12, 0x7f

    if-le v11, v12, :cond_b4

    add-int/lit8 v9, v9, 0x2

    .line 179
    aput-byte v22, v7, v8

    move v8, v9

    :cond_b4
    add-int/lit8 v9, v8, 0x1

    int-to-byte v12, v11

    .line 181
    aput-byte v12, v7, v8

    .line 182
    invoke-static {v6, v10, v7, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    if-eq v9, v13, :cond_d1

    .line 187
    const-string v4, "startDataDownload() calculated incorrect envelope length, aborting."

    invoke-static {v15, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    const/16 v4, 0xff

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    move/from16 v1, v17

    .line 190
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZI)V

    return-void

    .line 194
    :cond_d1
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 195
    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    filled-new-array {v4, v5, v2, v1, v3}, [I

    move-result-object v1

    move/from16 v3, v16

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v7, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    const/4 v12, 0x1

    .line 199
    invoke-direct {v0, v12, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZI)V

    return-void
.end method

.method private static blacklist is7bitDcs(I)Z
    .registers 2

    .line 0
    and-int/lit16 v0, p0, 0x8c

    if-eqz v0, :cond_d

    and-int/lit16 p0, p0, 0xf4

    const/16 v0, 0xf0

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;IIIII)V
    .registers 16

    .line 230
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 231
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const/16 v2, 0x90

    .line 234
    const-string v3, "UsimDataDownloadHandler"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_e

    if-eqz v1, :cond_12

    :cond_e
    const/16 v2, 0x91

    if-ne v0, v2, :cond_2c

    .line 235
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USIM data download succeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_79

    :cond_2c
    const/16 v2, 0x93

    if-ne v0, v2, :cond_3d

    if-nez v1, :cond_3d

    .line 238
    const-string p1, "USIM data download failed: Toolkit busy"

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd4

    .line 239
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    return-void

    :cond_3d
    const/16 v1, 0x62

    if-eq v0, v1, :cond_60

    const/16 v1, 0x63

    if-ne v0, v1, :cond_46

    goto :goto_60

    .line 246
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected SW1/SW2 response from UICC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    move v0, v5

    goto :goto_79

    .line 243
    :cond_60
    :goto_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USIM data download failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 250
    :goto_79
    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz p1, :cond_d7

    .line 251
    array-length v1, p1

    if-nez v1, :cond_81

    goto :goto_d7

    :cond_81
    const/4 v1, 0x3

    const/4 v2, 0x7

    const/4 v3, 0x2

    if-eqz v0, :cond_90

    .line 265
    array-length v6, p1

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [B

    .line 266
    aput-byte v5, v6, v5

    .line 267
    aput-byte v2, v6, v4

    goto :goto_9e

    .line 269
    :cond_90
    array-length v6, p1

    add-int/lit8 v6, v6, 0x6

    new-array v6, v6, [B

    .line 270
    aput-byte v5, v6, v5

    const/16 v7, -0x2b

    .line 271
    aput-byte v7, v6, v4

    .line 273
    aput-byte v2, v6, v3

    move v3, v1

    :goto_9e
    add-int/lit8 v7, v3, 0x1

    int-to-byte p3, p3

    .line 276
    aput-byte p3, v6, v3

    add-int/lit8 p3, v3, 0x2

    int-to-byte v8, p2

    .line 277
    aput-byte v8, v6, v7

    .line 279
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    move-result p2

    if-eqz p2, :cond_b7

    .line 280
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v2

    add-int/2addr v3, v1

    int-to-byte p2, p2

    .line 281
    aput-byte p2, v6, p3

    goto :goto_bc

    :cond_b7
    add-int/2addr v3, v1

    .line 283
    array-length p2, p1

    int-to-byte p2, p2

    aput-byte p2, v6, p3

    .line 286
    :goto_bc
    array-length p2, p1

    invoke-static {p1, v5, v6, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne p4, v4, :cond_cc

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->ackViaIms()Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 289
    invoke-direct {p0, p5, p6, v4, v6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeImsSms(IIZ[B)V

    return-void

    .line 291
    :cond_cc
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 292
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 291
    invoke-interface {p0, v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_d7
    :goto_d7
    if-eqz v0, :cond_dd

    .line 253
    invoke-direct {p0, v5, p4, p5, p6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithSuccess(IIII)V

    return-void

    :cond_dd
    const/16 p1, 0xd5

    .line 255
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "UsimDataDownloadHandler"

    if-eq v0, v1, :cond_b5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5f

    if-eq v0, v3, :cond_25

    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring unexpected message, what="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 423
    :cond_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 425
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, [I

    .line 426
    aget v3, v0, v4

    .line 427
    aget v1, v0, v1

    .line 428
    aget v0, v0, v5

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received EVENT_WRITE_SMS_COMPLETE from source : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_54

    .line 433
    const-string p1, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, v4, v3, v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithSuccess(IIII)V

    return-void

    .line 436
    :cond_54
    const-string v4, "Failed to write SMS-PP message to UICC"

    invoke-static {v2, v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0xff

    .line 437
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    return-void

    .line 399
    :cond_5f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 401
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, [I

    .line 402
    aget v10, v0, v5

    .line 403
    aget v12, v0, v3

    const/4 v3, 0x4

    .line 404
    aget v11, v0, v3

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EVENT_SEND_ENVELOPE_RESPONSE from source : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UICC Send Envelope failure, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd5

    .line 411
    invoke-direct {p0, p1, v10, v11, v12}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(IIII)V

    return-void

    .line 417
    :cond_a2
    const-string v3, "Successful in sending envelope response"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/uicc/IccIoResult;

    aget v8, v0, v4

    aget v9, v0, v1

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;IIIII)V

    return-void

    :cond_b5
    move-object v6, p0

    .line 393
    const-string p0, "EVENT_START_DATA_DOWNLOAD"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/gsm/SmsMessage;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v6, p0, v0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)V

    return-void
.end method

.method blacklist handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;II)I
    .registers 7

    .line 97
    const-string v0, "UsimDataDownloadHandler"

    if-eqz p1, :cond_16

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 99
    const-string p1, "Received SMS-PP data download, sending to UICC."

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)I

    move-result p0

    return p0

    .line 102
    :cond_16
    const-string p1, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 107
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iget p2, p2, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    filled-new-array {p3, p2, p4}, [I

    move-result-object p2

    const/4 p4, 0x3

    .line 108
    invoke-virtual {p0, p4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 106
    invoke-interface {v0, p4, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 110
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZI)V

    const/4 p0, -0x1

    return p0
.end method

.method public blacklist setImsManager(Lcom/android/ims/ImsManager;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mImsManager:Lcom/android/ims/ImsManager;

    return-void
.end method

.method public blacklist setResourcesForTest(Landroid/content/res/Resources;)V
    .registers 2

    .line 463
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mResource:Landroid/content/res/Resources;

    .line 464
    const-string p0, "UsimDataDownloadHandler"

    const-string p1, "setResourcesForTest"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;II)I
    .registers 5

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, -0x1

    return p0

    .line 130
    :cond_d
    const-string p0, "UsimDataDownloadHandler"

    const-string p1, "startDataDownload failed to send message to start data download."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method
