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
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@0
    .prologue
    .line 60
    const-string/jumbo v1, "CdmaInboundSmsHandler"

    #@3
    .line 61
    invoke-static {p1, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/CellBroadcastHandler;

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
    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    #@e
    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@11
    move-result-object v0

    #@12
    .line 53
    const v1, 0x112005f

    #@15
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    #@1b
    .line 62
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@1d
    .line 64
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1f
    .line 63
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@25
    .line 65
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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
    .line 59
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
    .line 339
    add-int/lit8 p1, p1, 0x4

    #@3
    .line 340
    array-length v4, p0

    #@4
    sub-int/2addr v4, p1

    #@5
    new-array v1, v4, [B

    #@7
    .line 341
    .local v1, "omaPdu":[B
    array-length v4, v1

    #@8
    invoke-static {p0, p1, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 343
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    #@d
    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    #@10
    .line 344
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    #@11
    .line 347
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 348
    return v5

    #@18
    .line 351
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@1b
    move-result v4

    #@1c
    add-int/lit8 v3, v4, 0x2

    #@1e
    .line 354
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    #@21
    move-result v4

    #@22
    if-nez v4, :cond_1

    #@24
    .line 355
    return v5

    #@25
    .line 358
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 359
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
    .line 250
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    #@3
    move-result v0

    #@4
    .line 251
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
    .line 254
    if-gez v0, :cond_1

    #@1d
    .line 255
    const/4 v0, -0x1

    #@1e
    .line 262
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@20
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    #@23
    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->storeVoiceMailCount()V

    #@26
    .line 249
    return-void

    #@27
    .line 256
    :cond_1
    const/16 v1, 0x63

    #@29
    if-le v0, v1, :cond_0

    #@2b
    .line 259
    const/16 v0, 0x63

    #@2d
    goto :goto_0
.end method

.method private static isInEmergencyCallMode()Z
    .locals 3

    #@0
    .prologue
    .line 96
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@3
    const-string/jumbo v2, "false"

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 97
    .local v0, "inEcm":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@0
    .prologue
    .line 85
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    #@5
    .line 87
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    #@8
    .line 88
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;J)I
    .locals 18
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    #@0
    .prologue
    .line 279
    const/4 v4, 0x0

    #@1
    .line 281
    const/4 v13, 0x1

    #@2
    .local v13, "index":I
    aget-byte v4, p1, v4

    #@4
    and-int/lit16 v15, v4, 0xff

    #@6
    .line 282
    .local v15, "msgType":I
    if-eqz v15, :cond_0

    #@8
    .line 283
    const-string/jumbo v4, "Received a WAP SMS which is not WDP. Discard."

    #@b
    move-object/from16 v0, p0

    #@d
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@10
    .line 284
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 286
    :cond_0
    add-int/lit8 v14, v13, 0x1

    #@14
    .end local v13    # "index":I
    .local v14, "index":I
    aget-byte v4, p1, v13

    #@16
    and-int/lit16 v11, v4, 0xff

    #@18
    .line 287
    .local v11, "totalSegments":I
    add-int/lit8 v13, v14, 0x1

    #@1a
    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    #@1c
    and-int/lit16 v10, v4, 0xff

    #@1e
    .line 289
    .local v10, "segment":I
    if-lt v10, v11, :cond_1

    #@20
    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "WDP bad segment #"

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, " expecting 0-"

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    add-int/lit8 v5, v11, -0x1

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    move-object/from16 v0, p0

    #@43
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    #@46
    .line 291
    const/4 v4, 0x1

    #@47
    return v4

    #@48
    .line 295
    :cond_1
    const/16 v16, 0x0

    #@4a
    .line 296
    .local v16, "sourcePort":I
    const/4 v6, 0x0

    #@4b
    .line 297
    .local v6, "destinationPort":I
    if-nez v10, :cond_2

    #@4d
    .line 299
    add-int/lit8 v14, v13, 0x1

    #@4f
    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    #@51
    and-int/lit16 v4, v4, 0xff

    #@53
    shl-int/lit8 v16, v4, 0x8

    #@55
    .line 300
    add-int/lit8 v13, v14, 0x1

    #@57
    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    #@59
    and-int/lit16 v4, v4, 0xff

    #@5b
    or-int v16, v16, v4

    #@5d
    .line 301
    add-int/lit8 v14, v13, 0x1

    #@5f
    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    #@61
    and-int/lit16 v4, v4, 0xff

    #@63
    shl-int/lit8 v6, v4, 0x8

    #@65
    .line 302
    add-int/lit8 v13, v14, 0x1

    #@67
    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    #@69
    and-int/lit16 v4, v4, 0xff

    #@6b
    or-int/2addr v6, v4

    #@6c
    .line 305
    move-object/from16 v0, p0

    #@6e
    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    #@70
    if-eqz v4, :cond_2

    #@72
    .line 306
    move-object/from16 v0, p1

    #@74
    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_2

    #@7a
    .line 307
    add-int/lit8 v13, v13, 0x4

    #@7c
    .line 313
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v5, "Received WAP PDU. Type = "

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    const-string/jumbo v5, ", originator = "

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    move-object/from16 v0, p3

    #@95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    .line 314
    const-string/jumbo v5, ", src-port = "

    #@9c
    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    move/from16 v0, v16

    #@a2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    .line 314
    const-string/jumbo v5, ", dst-port = "

    #@a9
    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    .line 315
    const-string/jumbo v5, ", ID = "

    #@b4
    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v4

    #@b8
    move/from16 v0, p2

    #@ba
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v4

    #@be
    .line 315
    const-string/jumbo v5, ", segment# = "

    #@c1
    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v4

    #@c5
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v4

    #@c9
    .line 315
    const/16 v5, 0x2f

    #@cb
    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v4

    #@d7
    move-object/from16 v0, p0

    #@d9
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@dc
    .line 318
    move-object/from16 v0, p1

    #@de
    array-length v4, v0

    #@df
    sub-int/2addr v4, v13

    #@e0
    new-array v3, v4, [B

    #@e2
    .line 319
    .local v3, "userData":[B
    move-object/from16 v0, p1

    #@e4
    array-length v4, v0

    #@e5
    sub-int/2addr v4, v13

    #@e6
    const/4 v5, 0x0

    #@e7
    move-object/from16 v0, p1

    #@e9
    invoke-static {v0, v13, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@ec
    .line 321
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    #@ee
    .line 322
    const/4 v7, 0x1

    #@ef
    const/4 v12, 0x1

    #@f0
    move-wide/from16 v4, p4

    #@f2
    move-object/from16 v8, p3

    #@f4
    move/from16 v9, p2

    #@f6
    .line 321
    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    #@f9
    .line 324
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    #@fb
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    #@fe
    move-result v4

    #@ff
    return v4
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    #@0
    .prologue
    .line 230
    packed-switch p0, :pswitch_data_0

    #@3
    .line 241
    :pswitch_0
    const/16 v0, 0x60

    #@5
    return v0

    #@6
    .line 234
    :pswitch_1
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 236
    :pswitch_2
    const/16 v0, 0x23

    #@a
    return v0

    #@b
    .line 238
    :pswitch_3
    const/4 v0, 0x4

    #@c
    return v0

    #@d
    .line 230
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
    .line 198
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 199
    return-void

    #@7
    .line 202
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    #@a
    move-result v0

    #@b
    .line 203
    .local v0, "causeCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@d
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f
    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    #@12
    .line 205
    if-nez v0, :cond_1

    #@14
    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    #@16
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    #@18
    .line 208
    :cond_1
    const/4 v1, 0x0

    #@19
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    #@1b
    .line 197
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 116
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 117
    const/4 v0, -0x1

    #@8
    return v0

    #@9
    :cond_0
    move-object v8, p1

    #@a
    .line 120
    check-cast v8, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@c
    .line 121
    .local v8, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    #@f
    move-result v0

    #@10
    if-ne v2, v0, :cond_1

    #@12
    const/4 v7, 0x1

    #@13
    .line 124
    .local v7, "isBroadcastType":Z
    :goto_0
    if-eqz v7, :cond_3

    #@15
    .line 125
    const-string/jumbo v0, "Broadcast type message"

    #@18
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@1b
    .line 126
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    #@1e
    move-result-object v6

    #@1f
    .line 127
    .local v6, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v6, :cond_2

    #@21
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@23
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    #@26
    .line 132
    :goto_1
    return v2

    #@27
    .line 121
    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v7    # "isBroadcastType":Z
    :cond_1
    const/4 v7, 0x0

    #@28
    .restart local v7    # "isBroadcastType":Z
    goto :goto_0

    #@29
    .line 130
    .restart local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_2
    const-string/jumbo v0, "error trying to parse broadcast SMS"

    #@2c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    #@2f
    goto :goto_1

    #@30
    .line 136
    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_3
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    #@36
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    #@38
    if-eqz v0, :cond_4

    #@3a
    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    #@3c
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    #@3e
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@41
    move-result v0

    #@42
    .line 137
    if-eqz v0, :cond_4

    #@44
    .line 139
    return v2

    #@45
    .line 143
    :cond_4
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    #@48
    .line 144
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    #@4b
    move-result v9

    #@4c
    .line 146
    .local v9, "teleService":I
    sparse-switch v9, :sswitch_data_0

    #@4f
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v1, "unsupported teleservice 0x"

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    #@6a
    .line 171
    const/4 v0, 0x4

    #@6b
    return v0

    #@6c
    .line 150
    :sswitch_0
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    #@6f
    .line 151
    return v2

    #@70
    .line 155
    :sswitch_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_5

    #@76
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #@78
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    #@7b
    .line 157
    return v2

    #@7c
    .line 162
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@7e
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    #@81
    .line 163
    return v2

    #@82
    .line 174
    :cond_5
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@84
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_6

    #@8a
    .line 175
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@8d
    move-result-object v0

    #@8e
    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@90
    if-eq v0, v1, :cond_6

    #@92
    .line 179
    const/4 v0, 0x3

    #@93
    return v0

    #@94
    .line 182
    :cond_6
    const/16 v0, 0x1004

    #@96
    if-ne v0, v9, :cond_7

    #@98
    .line 183
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    #@9b
    move-result-object v1

    #@9c
    iget v2, v8, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    #@9e
    .line 184
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    #@a5
    move-result-wide v4

    #@a6
    move-object v0, p0

    #@a7
    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    #@aa
    move-result v0

    #@ab
    return v0

    #@ac
    .line 187
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    #@af
    move-result v0

    #@b0
    return v0

    #@b1
    .line 146
    nop

    #@b2
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
    .line 106
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected onQuitting()V
    .locals 2

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    #@b
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@d
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    #@10
    .line 76
    const-string/jumbo v0, "unregistered for 3GPP2 SMS"

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    #@16
    .line 77
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    #@19
    .line 72
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@3
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@8
    .line 219
    return-void
.end method
