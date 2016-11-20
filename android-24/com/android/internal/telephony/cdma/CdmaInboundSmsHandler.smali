.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private final mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@0
    .prologue
    .line 62
    const-string/jumbo v1, "CdmaInboundSmsHandler"

    #@3
    .line 63
    invoke-static {p1, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CellBroadcastHandler;

    #@6
    move-result-object v5

    #@7
    move-object v0, p0

    #@8
    move-object v2, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p3

    #@b
    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    #@e
    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@11
    move-result-object v0

    #@12
    .line 55
    const v1, 0x1120066

    #@15
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    #@1b
    .line 64
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@1d
    .line 66
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1f
    .line 65
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@25
    .line 67
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@27
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@2a
    move-result-object v1

    #@2b
    const/4 v2, 0x1

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    #@30
    .line 61
    return-void
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 324
    add-int/lit8 p1, p1, 0x4

    #@3
    .line 325
    array-length v4, p0

    #@4
    sub-int/2addr v4, p1

    #@5
    new-array v1, v4, [B

    #@7
    .line 326
    .local v1, "omaPdu":[B
    array-length v4, v1

    #@8
    invoke-static {p0, p1, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 328
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    #@d
    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    #@10
    .line 329
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    #@11
    .line 332
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 333
    return v5

    #@18
    .line 336
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@1b
    move-result v4

    #@1c
    add-int/lit8 v3, v4, 0x2

    #@1e
    .line 339
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    #@21
    move-result v4

    #@22
    if-nez v4, :cond_1

    #@24
    .line 340
    return v5

    #@25
    .line 343
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 344
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v4, "application/vnd.syncml.notification"

    #@2c
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    return v4
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 3
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    #@0
    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    #@3
    move-result v0

    #@4
    .line 236
    .local v0, "voicemailCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Voicemail count="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@1b
    .line 239
    if-gez v0, :cond_1

    #@1d
    .line 240
    const/4 v0, -0x1

    #@1e
    .line 247
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@20
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    #@23
    .line 234
    return-void

    #@24
    .line 241
    :cond_1
    const/16 v1, 0x63

    #@26
    if-le v0, v1, :cond_0

    #@28
    .line 244
    const/16 v0, 0x63

    #@2a
    goto :goto_0
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@0
    .prologue
    .line 87
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    #@5
    .line 89
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    #@8
    .line 90
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;J)I
    .locals 20
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    #@0
    .prologue
    .line 262
    const/4 v2, 0x0

    #@1
    .line 264
    const/4 v14, 0x1

    #@2
    .local v14, "index":I
    aget-byte v2, p1, v2

    #@4
    and-int/lit16 v0, v2, 0xff

    #@6
    move/from16 v16, v0

    #@8
    .line 265
    .local v16, "msgType":I
    if-eqz v16, :cond_0

    #@a
    .line 266
    const-string/jumbo v2, "Received a WAP SMS which is not WDP. Discard."

    #@d
    move-object/from16 v0, p0

    #@f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@12
    .line 267
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 269
    :cond_0
    add-int/lit8 v15, v14, 0x1

    #@16
    .end local v14    # "index":I
    .local v15, "index":I
    aget-byte v2, p1, v14

    #@18
    and-int/lit16 v11, v2, 0xff

    #@1a
    .line 270
    .local v11, "totalSegments":I
    add-int/lit8 v14, v15, 0x1

    #@1c
    .end local v15    # "index":I
    .restart local v14    # "index":I
    aget-byte v2, p1, v15

    #@1e
    and-int/lit16 v10, v2, 0xff

    #@20
    .line 272
    .local v10, "segment":I
    if-lt v10, v11, :cond_1

    #@22
    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "WDP bad segment #"

    #@2a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v4, " expecting 0-"

    #@35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    add-int/lit8 v4, v11, -0x1

    #@3b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    #@48
    .line 274
    const/4 v2, 0x1

    #@49
    return v2

    #@4a
    .line 278
    :cond_1
    const/16 v17, 0x0

    #@4c
    .line 279
    .local v17, "sourcePort":I
    const/4 v6, 0x0

    #@4d
    .line 280
    .local v6, "destinationPort":I
    if-nez v10, :cond_2

    #@4f
    .line 282
    add-int/lit8 v15, v14, 0x1

    #@51
    .end local v14    # "index":I
    .restart local v15    # "index":I
    aget-byte v2, p1, v14

    #@53
    and-int/lit16 v2, v2, 0xff

    #@55
    shl-int/lit8 v17, v2, 0x8

    #@57
    .line 283
    add-int/lit8 v14, v15, 0x1

    #@59
    .end local v15    # "index":I
    .restart local v14    # "index":I
    aget-byte v2, p1, v15

    #@5b
    and-int/lit16 v2, v2, 0xff

    #@5d
    or-int v17, v17, v2

    #@5f
    .line 284
    add-int/lit8 v15, v14, 0x1

    #@61
    .end local v14    # "index":I
    .restart local v15    # "index":I
    aget-byte v2, p1, v14

    #@63
    and-int/lit16 v2, v2, 0xff

    #@65
    shl-int/lit8 v6, v2, 0x8

    #@67
    .line 285
    add-int/lit8 v14, v15, 0x1

    #@69
    .end local v15    # "index":I
    .restart local v14    # "index":I
    aget-byte v2, p1, v15

    #@6b
    and-int/lit16 v2, v2, 0xff

    #@6d
    or-int/2addr v6, v2

    #@6e
    .line 288
    move-object/from16 v0, p0

    #@70
    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    #@72
    if-eqz v2, :cond_2

    #@74
    .line 289
    move-object/from16 v0, p1

    #@76
    invoke-static {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    #@79
    move-result v2

    #@7a
    if-eqz v2, :cond_2

    #@7c
    .line 290
    add-int/lit8 v14, v14, 0x4

    #@7e
    .line 296
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v4, "Received WAP PDU. Type = "

    #@86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    move/from16 v0, v16

    #@8c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    const-string/jumbo v4, ", originator = "

    #@93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    move-object/from16 v0, p3

    #@99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    .line 297
    const-string/jumbo v4, ", src-port = "

    #@a0
    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v2

    #@a4
    move/from16 v0, v17

    #@a6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    .line 297
    const-string/jumbo v4, ", dst-port = "

    #@ad
    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    .line 298
    const-string/jumbo v4, ", ID = "

    #@b8
    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    move/from16 v0, p2

    #@be
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    .line 298
    const-string/jumbo v4, ", segment# = "

    #@c5
    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v2

    #@c9
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v2

    #@cd
    .line 298
    const/16 v4, 0x2f

    #@cf
    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v2

    #@d3
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v2

    #@db
    move-object/from16 v0, p0

    #@dd
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@e0
    .line 301
    move-object/from16 v0, p1

    #@e2
    array-length v2, v0

    #@e3
    sub-int/2addr v2, v14

    #@e4
    new-array v3, v2, [B

    #@e6
    .line 302
    .local v3, "userData":[B
    move-object/from16 v0, p1

    #@e8
    array-length v2, v0

    #@e9
    sub-int/2addr v2, v14

    #@ea
    const/4 v4, 0x0

    #@eb
    move-object/from16 v0, p1

    #@ed
    invoke-static {v0, v14, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f0
    .line 304
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@f3
    move-result-object v2

    #@f4
    .line 306
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@f7
    move-result-object v13

    #@f8
    .line 305
    const/4 v7, 0x1

    #@f9
    .line 306
    const/4 v12, 0x1

    #@fa
    move-wide/from16 v4, p4

    #@fc
    move-object/from16 v8, p3

    #@fe
    move/from16 v9, p2

    #@100
    .line 304
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    #@103
    move-result-object v18

    #@104
    .line 309
    .local v18, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    const/4 v2, 0x0

    #@105
    move-object/from16 v0, p0

    #@107
    move-object/from16 v1, v18

    #@109
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    #@10c
    move-result v2

    #@10d
    return v2
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    #@0
    .prologue
    .line 215
    packed-switch p0, :pswitch_data_0

    #@3
    .line 226
    :pswitch_0
    const/16 v0, 0x27

    #@5
    return v0

    #@6
    .line 219
    :pswitch_1
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 221
    :pswitch_2
    const/16 v0, 0x23

    #@a
    return v0

    #@b
    .line 223
    :pswitch_3
    const/4 v0, 0x4

    #@c
    return v0

    #@d
    .line 215
    nop

    #@e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 187
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    #@3
    move-result v0

    #@4
    .line 188
    .local v0, "causeCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    #@b
    .line 190
    if-nez v0, :cond_0

    #@d
    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    #@f
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    #@11
    .line 193
    :cond_0
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    #@14
    .line 186
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    move-object v8, p1

    #@2
    .line 109
    check-cast v8, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@4
    .line 110
    .local v8, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    move v7, v0

    #@b
    .line 113
    .local v7, "isBroadcastType":Z
    :goto_0
    if-eqz v7, :cond_2

    #@d
    .line 114
    const-string/jumbo v1, "Broadcast type message"

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@13
    .line 115
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    #@16
    move-result-object v6

    #@17
    .line 116
    .local v6, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v6, :cond_1

    #@19
    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@1b
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    #@1e
    .line 121
    :goto_1
    return v0

    #@1f
    .line 110
    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v7    # "isBroadcastType":Z
    :cond_0
    const/4 v7, 0x0

    #@20
    goto :goto_0

    #@21
    .line 119
    .restart local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .restart local v7    # "isBroadcastType":Z
    :cond_1
    const-string/jumbo v1, "error trying to parse broadcast SMS"

    #@24
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    #@27
    goto :goto_1

    #@28
    .line 125
    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    #@2e
    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    #@30
    if-eqz v1, :cond_3

    #@32
    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    #@34
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    #@36
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@39
    move-result v1

    #@3a
    .line 126
    if-eqz v1, :cond_3

    #@3c
    .line 128
    return v0

    #@3d
    .line 132
    :cond_3
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    #@40
    .line 133
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    #@43
    move-result v9

    #@44
    .line 135
    .local v9, "teleService":I
    sparse-switch v9, :sswitch_data_0

    #@47
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v1, "unsupported teleservice 0x"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    #@62
    .line 160
    const/4 v0, 0x4

    #@63
    return v0

    #@64
    .line 139
    :sswitch_0
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    #@67
    .line 140
    return v0

    #@68
    .line 144
    :sswitch_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_4

    #@6e
    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@70
    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    #@73
    .line 146
    return v0

    #@74
    .line 151
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@76
    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    #@79
    .line 152
    return v0

    #@7a
    .line 163
    :cond_4
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@7c
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    #@7f
    move-result v0

    #@80
    if-nez v0, :cond_5

    #@82
    .line 164
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@85
    move-result-object v0

    #@86
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@88
    if-eq v0, v1, :cond_5

    #@8a
    .line 168
    const/4 v0, 0x3

    #@8b
    return v0

    #@8c
    .line 171
    :cond_5
    const/16 v0, 0x1004

    #@8e
    if-ne v0, v9, :cond_6

    #@90
    .line 172
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    #@93
    move-result-object v1

    #@94
    iget v2, v8, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    #@96
    .line 173
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    #@9d
    move-result-wide v4

    #@9e
    move-object v0, p0

    #@9f
    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    #@a2
    move-result v0

    #@a3
    return v0

    #@a4
    .line 176
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    #@a7
    move-result v0

    #@a8
    return v0

    #@a9
    .line 135
    nop

    #@aa
    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_3
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected is3gpp2()Z
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected onQuitting()V
    .locals 2

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    #@b
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    #@10
    .line 78
    const-string/jumbo v0, "unregistered for 3GPP2 SMS"

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@16
    .line 79
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    #@19
    .line 74
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@3
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    #@8
    .line 204
    return-void
.end method
