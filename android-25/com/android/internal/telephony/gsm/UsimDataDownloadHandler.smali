.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# static fields
.field private static final BER_SMS_PP_DOWNLOAD_TAG:I = 0xd1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_UICC:I = 0x81

.field private static final EVENT_SEND_ENVELOPE_RESPONSE:I = 0x2

.field private static final EVENT_START_DATA_DOWNLOAD:I = 0x1

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UsimDataDownloadHandler"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5
    .line 61
    return-void
.end method

.method private acknowledgeSmsWithError(I)V
    .locals 3
    .param p1, "cause"    # I

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    #@7
    .line 260
    return-void
.end method

.method private static getEnvelopeBodyLength(II)I
    .locals 2
    .param p0, "scAddressLength"    # I
    .param p1, "tpduLength"    # I

    #@0
    .prologue
    .line 184
    add-int/lit8 v0, p1, 0x5

    #@2
    .line 186
    .local v0, "length":I
    const/16 v1, 0x7f

    #@4
    if-le p1, v1, :cond_1

    #@6
    const/4 v1, 0x2

    #@7
    :goto_0
    add-int/2addr v0, v1

    #@8
    .line 188
    if-eqz p0, :cond_0

    #@a
    .line 189
    add-int/lit8 v1, v0, 0x2

    #@c
    add-int v0, v1, p0

    #@e
    .line 191
    :cond_0
    return v0

    #@f
    .line 186
    :cond_1
    const/4 v1, 0x1

    #@10
    goto :goto_0
.end method

.method private handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 15
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    #@0
    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    #@3
    move-result v1

    #@4
    .line 115
    .local v1, "dcs":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    #@7
    move-result v7

    #@8
    .line 116
    .local v7, "pid":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    #@b
    move-result-object v6

    #@c
    .line 118
    .local v6, "pdu":[B
    const/4 v12, 0x0

    #@d
    aget-byte v12, v6, v12

    #@f
    and-int/lit16 v8, v12, 0xff

    #@11
    .line 119
    .local v8, "scAddressLength":I
    add-int/lit8 v10, v8, 0x1

    #@13
    .line 120
    .local v10, "tpduIndex":I
    array-length v12, v6

    #@14
    sub-int v11, v12, v10

    #@16
    .line 122
    .local v11, "tpduLength":I
    invoke-static {v8, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    #@19
    move-result v0

    #@1a
    .line 126
    .local v0, "bodyLength":I
    add-int/lit8 v13, v0, 0x1

    #@1c
    const/16 v12, 0x7f

    #@1e
    if-le v0, v12, :cond_1

    #@20
    const/4 v12, 0x2

    #@21
    :goto_0
    add-int v9, v13, v12

    #@23
    .line 128
    .local v9, "totalLength":I
    new-array v3, v9, [B

    #@25
    .line 129
    .local v3, "envelope":[B
    const/4 v12, 0x0

    #@26
    .line 132
    const/4 v4, 0x1

    #@27
    .local v4, "index":I
    const/16 v13, -0x2f

    #@29
    aput-byte v13, v3, v12

    #@2b
    .line 133
    const/16 v12, 0x7f

    #@2d
    if-le v0, v12, :cond_0

    #@2f
    .line 134
    add-int/lit8 v5, v4, 0x1

    #@31
    .end local v4    # "index":I
    .local v5, "index":I
    const/16 v12, -0x7f

    #@33
    aput-byte v12, v3, v4

    #@35
    move v4, v5

    #@36
    .line 136
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_0
    add-int/lit8 v5, v4, 0x1

    #@38
    .end local v4    # "index":I
    .restart local v5    # "index":I
    int-to-byte v12, v0

    #@39
    aput-byte v12, v3, v4

    #@3b
    .line 139
    add-int/lit8 v4, v5, 0x1

    #@3d
    .end local v5    # "index":I
    .restart local v4    # "index":I
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@3f
    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@42
    move-result v12

    #@43
    or-int/lit16 v12, v12, 0x80

    #@45
    int-to-byte v12, v12

    #@46
    aput-byte v12, v3, v5

    #@48
    .line 140
    add-int/lit8 v5, v4, 0x1

    #@4a
    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/4 v12, 0x2

    #@4b
    aput-byte v12, v3, v4

    #@4d
    .line 141
    add-int/lit8 v4, v5, 0x1

    #@4f
    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/16 v12, -0x7d

    #@51
    aput-byte v12, v3, v5

    #@53
    .line 142
    add-int/lit8 v5, v4, 0x1

    #@55
    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/16 v12, -0x7f

    #@57
    aput-byte v12, v3, v4

    #@59
    .line 145
    if-eqz v8, :cond_4

    #@5b
    .line 146
    add-int/lit8 v4, v5, 0x1

    #@5d
    .end local v5    # "index":I
    .restart local v4    # "index":I
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@5f
    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@62
    move-result v12

    #@63
    int-to-byte v12, v12

    #@64
    aput-byte v12, v3, v5

    #@66
    .line 147
    add-int/lit8 v5, v4, 0x1

    #@68
    .end local v4    # "index":I
    .restart local v5    # "index":I
    int-to-byte v12, v8

    #@69
    aput-byte v12, v3, v4

    #@6b
    .line 148
    const/4 v12, 0x1

    #@6c
    invoke-static {v6, v12, v3, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6f
    .line 149
    add-int v4, v5, v8

    #@71
    .line 153
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    #@73
    .end local v4    # "index":I
    .restart local v5    # "index":I
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@75
    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    #@78
    move-result v12

    #@79
    or-int/lit16 v12, v12, 0x80

    #@7b
    int-to-byte v12, v12

    #@7c
    aput-byte v12, v3, v4

    #@7e
    .line 154
    const/16 v12, 0x7f

    #@80
    if-le v11, v12, :cond_3

    #@82
    .line 155
    add-int/lit8 v4, v5, 0x1

    #@84
    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/16 v12, -0x7f

    #@86
    aput-byte v12, v3, v5

    #@88
    .line 157
    :goto_2
    add-int/lit8 v5, v4, 0x1

    #@8a
    .end local v4    # "index":I
    .restart local v5    # "index":I
    int-to-byte v12, v11

    #@8b
    aput-byte v12, v3, v4

    #@8d
    .line 158
    invoke-static {v6, v10, v3, v5, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@90
    .line 159
    add-int v4, v5, v11

    #@92
    .line 162
    .end local v5    # "index":I
    .restart local v4    # "index":I
    array-length v12, v3

    #@93
    if-eq v4, v12, :cond_2

    #@95
    .line 163
    const-string/jumbo v12, "UsimDataDownloadHandler"

    #@98
    const-string/jumbo v13, "startDataDownload() calculated incorrect envelope length, aborting."

    #@9b
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 164
    const/16 v12, 0xff

    #@a0
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    #@a3
    .line 165
    return-void

    #@a4
    .line 126
    .end local v3    # "envelope":[B
    .end local v4    # "index":I
    .end local v9    # "totalLength":I
    :cond_1
    const/4 v12, 0x1

    #@a5
    goto/16 :goto_0

    #@a7
    .line 168
    .restart local v3    # "envelope":[B
    .restart local v4    # "index":I
    .restart local v9    # "totalLength":I
    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@aa
    move-result-object v2

    #@ab
    .line 169
    .local v2, "encodedEnvelope":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@ad
    .line 170
    const/4 v13, 0x2

    #@ae
    new-array v13, v13, [I

    #@b0
    const/4 v14, 0x0

    #@b1
    aput v1, v13, v14

    #@b3
    const/4 v14, 0x1

    #@b4
    aput v7, v13, v14

    #@b6
    const/4 v14, 0x2

    #@b7
    .line 169
    invoke-virtual {p0, v14, v13}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@ba
    move-result-object v13

    #@bb
    invoke-interface {v12, v2, v13}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    #@be
    .line 113
    return-void

    #@bf
    .end local v2    # "encodedEnvelope":Ljava/lang/String;
    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_3
    move v4, v5

    #@c0
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    #@c1
    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_4
    move v4, v5

    #@c2
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1
.end method

.method private static is7bitDcs(I)Z
    .locals 4
    .param p0, "dcs"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 272
    and-int/lit16 v2, p0, 0x8c

    #@4
    if-eqz v2, :cond_0

    #@6
    and-int/lit16 v2, p0, 0xf4

    #@8
    const/16 v3, 0xf0

    #@a
    if-ne v2, v3, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    move v0, v1

    #@e
    goto :goto_0
.end method

.method private sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V
    .locals 12
    .param p1, "response"    # Lcom/android/internal/telephony/uicc/IccIoResult;
    .param p2, "dcs"    # I
    .param p3, "pid"    # I

    #@0
    .prologue
    .line 200
    iget v6, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@2
    .line 201
    .local v6, "sw1":I
    iget v7, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@4
    .line 204
    .local v7, "sw2":I
    const/16 v8, 0x90

    #@6
    if-ne v6, v8, :cond_2

    #@8
    if-nez v7, :cond_2

    #@a
    .line 205
    :cond_0
    const-string/jumbo v8, "UsimDataDownloadHandler"

    #@d
    new-instance v9, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v10, "USIM data download succeeded: "

    #@15
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v9

    #@25
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 206
    const/4 v5, 0x1

    #@29
    .line 219
    .local v5, "success":Z
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@2b
    .line 220
    .local v2, "responseBytes":[B
    if-eqz v2, :cond_1

    #@2d
    array-length v8, v2

    #@2e
    if-nez v8, :cond_7

    #@30
    .line 221
    :cond_1
    if-eqz v5, :cond_6

    #@32
    .line 222
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@34
    const/4 v9, 0x1

    #@35
    const/4 v10, 0x0

    #@36
    const/4 v11, 0x0

    #@37
    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    #@3a
    .line 227
    :goto_1
    return-void

    #@3b
    .line 204
    .end local v2    # "responseBytes":[B
    .end local v5    # "success":Z
    :cond_2
    const/16 v8, 0x91

    #@3d
    if-eq v6, v8, :cond_0

    #@3f
    .line 207
    const/16 v8, 0x93

    #@41
    if-ne v6, v8, :cond_3

    #@43
    if-nez v7, :cond_3

    #@45
    .line 208
    const-string/jumbo v8, "UsimDataDownloadHandler"

    #@48
    const-string/jumbo v9, "USIM data download failed: Toolkit busy"

    #@4b
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 209
    const/16 v8, 0xd4

    #@50
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    #@53
    .line 210
    return-void

    #@54
    .line 211
    :cond_3
    const/16 v8, 0x62

    #@56
    if-eq v6, v8, :cond_4

    #@58
    const/16 v8, 0x63

    #@5a
    if-ne v6, v8, :cond_5

    #@5c
    .line 212
    :cond_4
    const-string/jumbo v8, "UsimDataDownloadHandler"

    #@5f
    new-instance v9, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v10, "USIM data download failed: "

    #@67
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 213
    const/4 v5, 0x0

    #@7b
    .line 211
    .restart local v5    # "success":Z
    goto :goto_0

    #@7c
    .line 215
    .end local v5    # "success":Z
    :cond_5
    const-string/jumbo v8, "UsimDataDownloadHandler"

    #@7f
    new-instance v9, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v10, "Unexpected SW1/SW2 response from UICC: "

    #@87
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    #@8e
    move-result-object v10

    #@8f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v9

    #@97
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    .line 216
    const/4 v5, 0x0

    #@9b
    .restart local v5    # "success":Z
    goto :goto_0

    #@9c
    .line 225
    .restart local v2    # "responseBytes":[B
    :cond_6
    const/16 v8, 0xd5

    #@9e
    .line 224
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    #@a1
    goto :goto_1

    #@a2
    .line 232
    :cond_7
    if-eqz v5, :cond_8

    #@a4
    .line 233
    array-length v8, v2

    #@a5
    add-int/lit8 v8, v8, 0x5

    #@a7
    new-array v4, v8, [B

    #@a9
    .line 231
    .local v4, "smsAckPdu":[B
    const/4 v8, 0x0

    #@aa
    .line 234
    const/4 v0, 0x1

    #@ab
    .local v0, "index":I
    const/4 v9, 0x0

    #@ac
    aput-byte v9, v4, v8

    #@ae
    .line 235
    add-int/lit8 v1, v0, 0x1

    #@b0
    .end local v0    # "index":I
    .local v1, "index":I
    const/4 v8, 0x7

    #@b1
    aput-byte v8, v4, v0

    #@b3
    move v0, v1

    #@b4
    .line 244
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :goto_2
    add-int/lit8 v1, v0, 0x1

    #@b6
    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v8, p3

    #@b7
    aput-byte v8, v4, v0

    #@b9
    .line 245
    add-int/lit8 v0, v1, 0x1

    #@bb
    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v8, p2

    #@bc
    aput-byte v8, v4, v1

    #@be
    .line 247
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    #@c1
    move-result v8

    #@c2
    if-eqz v8, :cond_9

    #@c4
    .line 248
    array-length v8, v2

    #@c5
    mul-int/lit8 v8, v8, 0x8

    #@c7
    div-int/lit8 v3, v8, 0x7

    #@c9
    .line 249
    .local v3, "septetCount":I
    add-int/lit8 v1, v0, 0x1

    #@cb
    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v8, v3

    #@cc
    aput-byte v8, v4, v0

    #@ce
    move v0, v1

    #@cf
    .line 254
    .end local v1    # "index":I
    .end local v3    # "septetCount":I
    .restart local v0    # "index":I
    :goto_3
    array-length v8, v2

    #@d0
    const/4 v9, 0x0

    #@d1
    invoke-static {v2, v9, v4, v0, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d4
    .line 256
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@d6
    .line 257
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@d9
    move-result-object v9

    #@da
    const/4 v10, 0x0

    #@db
    .line 256
    invoke-interface {v8, v5, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    #@de
    .line 199
    return-void

    #@df
    .line 237
    .end local v0    # "index":I
    .end local v4    # "smsAckPdu":[B
    :cond_8
    array-length v8, v2

    #@e0
    add-int/lit8 v8, v8, 0x6

    #@e2
    new-array v4, v8, [B

    #@e4
    .line 231
    .restart local v4    # "smsAckPdu":[B
    const/4 v8, 0x0

    #@e5
    .line 238
    const/4 v0, 0x1

    #@e6
    .restart local v0    # "index":I
    const/4 v9, 0x0

    #@e7
    aput-byte v9, v4, v8

    #@e9
    .line 239
    add-int/lit8 v1, v0, 0x1

    #@eb
    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v8, -0x2b

    #@ed
    aput-byte v8, v4, v0

    #@ef
    .line 241
    add-int/lit8 v0, v1, 0x1

    #@f1
    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/4 v8, 0x7

    #@f2
    aput-byte v8, v4, v1

    #@f4
    goto :goto_2

    #@f5
    .line 251
    :cond_9
    add-int/lit8 v1, v0, 0x1

    #@f7
    .end local v0    # "index":I
    .restart local v1    # "index":I
    array-length v8, v2

    #@f8
    int-to-byte v8, v8

    #@f9
    aput-byte v8, v4, v0

    #@fb
    move v0, v1

    #@fc
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 284
    iget v2, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v2, :pswitch_data_0

    #@8
    .line 316
    const-string/jumbo v2, "UsimDataDownloadHandler"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Ignoring unexpected message, what="

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    iget v4, p1, Landroid/os/Message;->what:I

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 281
    :goto_0
    return-void

    #@25
    .line 286
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@27
    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    #@29
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V

    #@2c
    goto :goto_0

    #@2d
    .line 290
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f
    check-cast v0, Landroid/os/AsyncResult;

    #@31
    .line 292
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@33
    if-eqz v2, :cond_0

    #@35
    .line 293
    const-string/jumbo v2, "UsimDataDownloadHandler"

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "UICC Send Envelope failure, exception: "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 295
    const/16 v2, 0xd5

    #@53
    .line 294
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    #@56
    .line 296
    return-void

    #@57
    .line 299
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@59
    check-cast v1, [I

    #@5b
    .line 300
    .local v1, "dcsPid":[I
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5d
    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@5f
    aget v3, v1, v6

    #@61
    aget v4, v1, v4

    #@63
    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V

    #@66
    goto :goto_0

    #@67
    .line 304
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "dcsPid":[I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@69
    check-cast v0, Landroid/os/AsyncResult;

    #@6b
    .line 305
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6d
    if-nez v2, :cond_1

    #@6f
    .line 306
    const-string/jumbo v2, "UsimDataDownloadHandler"

    #@72
    const-string/jumbo v3, "Successfully wrote SMS-PP message to UICC"

    #@75
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7a
    invoke-interface {v2, v4, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    #@7d
    goto :goto_0

    #@7e
    .line 309
    :cond_1
    const-string/jumbo v2, "UsimDataDownloadHandler"

    #@81
    const-string/jumbo v3, "Failed to write SMS-PP message to UICC"

    #@84
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@86
    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@89
    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8b
    .line 311
    const/16 v3, 0xff

    #@8d
    .line 310
    invoke-interface {v2, v6, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    #@90
    goto :goto_0

    #@91
    .line 284
    nop

    #@92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 5
    .param p1, "ust"    # Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .param p2, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 80
    if-eqz p1, :cond_0

    #@3
    .line 81
    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    #@5
    .line 80
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 82
    const-string/jumbo v1, "UsimDataDownloadHandler"

    #@e
    const-string/jumbo v2, "Received SMS-PP data download, sending to UICC."

    #@11
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 83
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 85
    :cond_0
    const-string/jumbo v1, "UsimDataDownloadHandler"

    #@1c
    const-string/jumbo v2, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    #@1f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 88
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 87
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    #@29
    move-result-object v1

    #@2a
    .line 86
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 89
    .local v0, "smsc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@30
    .line 90
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    #@33
    move-result-object v2

    #@34
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 91
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(I)Landroid/os/Message;

    #@3b
    move-result-object v3

    #@3c
    .line 89
    invoke-interface {v1, v4, v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@3f
    .line 92
    const/4 v1, -0x1

    #@40
    return v1
.end method

.method public startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 2
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    #@0
    .prologue
    .line 105
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendMessage(Landroid/os/Message;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 106
    const/4 v0, -0x1

    #@c
    return v0

    #@d
    .line 108
    :cond_0
    const-string/jumbo v0, "UsimDataDownloadHandler"

    #@10
    const-string/jumbo v1, "startDataDownload failed to send message to start data download."

    #@13
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 109
    const/4 v0, 0x2

    #@17
    return v0
.end method
