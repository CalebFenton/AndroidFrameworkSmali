.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final VDBG:Z


# instance fields
.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mMti:I

.field private mProtocolIdentifier:I

.field private mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private mVoiceMailCount:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    #@4
    .line 72
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    #@6
    .line 88
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    #@8
    .line 90
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@a
    .line 51
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    #@0
    .prologue
    .line 789
    const/4 v0, 0x0

    #@1
    .line 790
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    .line 791
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x1120092

    #@8
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 792
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 794
    .end local v0    # "newMsgBody":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 795
    move-object v0, p0

    #@19
    .line 797
    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@1c
    move-result-object v2

    #@1d
    .line 798
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v2, :cond_2

    #@1f
    .line 799
    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@22
    move-result-object v3

    #@23
    return-object v3

    #@24
    .line 801
    :cond_2
    return-object v2
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 164
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    #@3
    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    #@6
    .line 166
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    #@8
    .line 171
    const/4 v4, 0x0

    #@9
    aget-byte v4, p1, v4

    #@b
    and-int/lit8 v4, v4, 0x1

    #@d
    if-nez v4, :cond_0

    #@f
    .line 172
    const-string/jumbo v4, "SmsMessage"

    #@12
    .line 173
    const-string/jumbo v5, "SMS parsing failed: Trying to parse a free record"

    #@15
    .line 172
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 174
    return-object v6

    #@19
    .line 176
    :cond_0
    const/4 v4, 0x0

    #@1a
    aget-byte v4, p1, v4

    #@1c
    and-int/lit8 v4, v4, 0x7

    #@1e
    iput v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    #@20
    .line 179
    array-length v4, p1

    #@21
    add-int/lit8 v3, v4, -0x1

    #@23
    .line 183
    .local v3, "size":I
    new-array v2, v3, [B

    #@25
    .line 184
    .local v2, "pdu":[B
    const/4 v4, 0x1

    #@26
    const/4 v5, 0x0

    #@27
    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2a
    .line 185
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 186
    return-object v1

    #@2e
    .line 187
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2    # "pdu":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    #@2f
    .line 188
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "SmsMessage"

    #@32
    const-string/jumbo v5, "SMS PDU parsing failed: "

    #@35
    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 189
    return-object v6
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 100
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    #@3
    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    #@6
    .line 101
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 102
    return-object v2

    #@a
    .line 106
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :catch_0
    move-exception v0

    #@b
    .line 107
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "SmsMessage"

    #@e
    const-string/jumbo v4, "SMS PDU parsing failed with out of memory: "

    #@11
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 108
    return-object v5

    #@15
    .line 103
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    #@16
    .line 104
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "SmsMessage"

    #@19
    const-string/jumbo v4, "SMS PDU parsing failed: "

    #@1c
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 105
    return-object v5
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 352
    const-string/jumbo v3, "utf-16be"

    #@5
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@8
    move-result-object v1

    #@9
    .line 354
    .local v1, "textPart":[B
    if-eqz p1, :cond_0

    #@b
    .line 356
    array-length v3, p1

    #@c
    array-length v4, v1

    #@d
    add-int/2addr v3, v4

    #@e
    add-int/lit8 v3, v3, 0x1

    #@10
    new-array v2, v3, [B

    #@12
    .line 358
    .local v2, "userData":[B
    array-length v3, p1

    #@13
    int-to-byte v3, v3

    #@14
    aput-byte v3, v2, v5

    #@16
    .line 359
    array-length v3, p1

    #@17
    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 360
    array-length v3, p1

    #@1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    array-length v4, v1

    #@1e
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@21
    .line 365
    :goto_0
    array-length v3, v2

    #@22
    add-int/lit8 v3, v3, 0x1

    #@24
    new-array v0, v3, [B

    #@26
    .line 366
    .local v0, "ret":[B
    array-length v3, v2

    #@27
    and-int/lit16 v3, v3, 0xff

    #@29
    int-to-byte v3, v3

    #@2a
    aput-byte v3, v0, v5

    #@2c
    .line 367
    array-length v3, v2

    #@2d
    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@30
    .line 368
    return-object v0

    #@31
    .line 363
    .end local v0    # "ret":[B
    .end local v2    # "userData":[B
    :cond_0
    move-object v2, v1

    #@32
    .restart local v2    # "userData":[B
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 402
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@3
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    #@6
    .line 403
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@8
    .line 404
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    #@a
    .line 405
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    #@c
    .line 407
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    #@e
    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    #@11
    .line 408
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@13
    .line 410
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    #@16
    move-result-object v4

    #@17
    .line 412
    .local v4, "smsHeaderData":[B
    array-length v5, p3

    #@18
    array-length v6, v4

    #@19
    add-int/2addr v5, v6

    #@1a
    add-int/lit8 v5, v5, 0x1

    #@1c
    const/16 v6, 0x8c

    #@1e
    if-le v5, v6, :cond_0

    #@20
    .line 413
    const-string/jumbo v5, "SmsMessage"

    #@23
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v7, "SMS data message may only contain "

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    .line 414
    array-length v7, v4

    #@30
    rsub-int v7, v7, 0x8c

    #@32
    add-int/lit8 v7, v7, -0x1

    #@34
    .line 413
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 414
    const-string/jumbo v7, " bytes"

    #@3b
    .line 413
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 415
    const/4 v5, 0x0

    #@47
    return-object v5

    #@48
    .line 418
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@4a
    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    #@4d
    .line 420
    .local v2, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    #@4f
    .line 419
    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    #@52
    move-result-object v0

    #@53
    .line 426
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    #@54
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@57
    .line 431
    array-length v5, p3

    #@58
    array-length v6, v4

    #@59
    add-int/2addr v5, v6

    #@5a
    add-int/lit8 v5, v5, 0x1

    #@5c
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5f
    .line 434
    array-length v5, v4

    #@60
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@63
    .line 435
    array-length v5, v4

    #@64
    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@67
    .line 438
    array-length v5, p3

    #@68
    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@6b
    .line 440
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6e
    move-result-object v5

    #@6f
    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    #@71
    .line 441
    return-object v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    #@0
    .prologue
    .line 383
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v6, v5

    #@7
    move v7, v5

    #@8
    .line 216
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I

    #@0
    .prologue
    .line 241
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 242
    :cond_0
    const/4 v12, 0x0

    #@5
    return-object v12

    #@6
    .line 245
    :cond_1
    if-nez p5, :cond_4

    #@8
    .line 247
    const/4 v12, 0x0

    #@9
    move-object/from16 v0, p2

    #@b
    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@e
    move-result-object v9

    #@f
    .line 248
    .local v9, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    #@11
    move/from16 p5, v0

    #@13
    .line 249
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    #@15
    move/from16 p6, v0

    #@17
    .line 250
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    #@19
    move/from16 p7, v0

    #@1b
    .line 252
    const/4 v12, 0x1

    #@1c
    move/from16 v0, p5

    #@1e
    if-ne v0, v12, :cond_4

    #@20
    .line 253
    if-nez p6, :cond_2

    #@22
    if-eqz p7, :cond_4

    #@24
    .line 254
    :cond_2
    if-eqz p4, :cond_5

    #@26
    .line 255
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    #@29
    move-result-object v8

    #@2a
    .line 256
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@2c
    move/from16 v0, p6

    #@2e
    if-ne v12, v0, :cond_3

    #@30
    .line 257
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@32
    move/from16 v0, p7

    #@34
    if-eq v12, v0, :cond_4

    #@36
    .line 258
    :cond_3
    const-string/jumbo v12, "SmsMessage"

    #@39
    new-instance v13, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v14, "Updating language table in SMS header: "

    #@41
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v13

    #@45
    .line 259
    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@47
    .line 258
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v13

    #@4b
    .line 259
    const-string/jumbo v14, " -> "

    #@4e
    .line 258
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v13

    #@52
    move/from16 v0, p6

    #@54
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v13

    #@58
    .line 259
    const-string/jumbo v14, ", "

    #@5b
    .line 258
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v13

    #@5f
    .line 260
    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@61
    .line 258
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v13

    #@65
    .line 260
    const-string/jumbo v14, " -> "

    #@68
    .line 258
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v13

    #@6c
    move/from16 v0, p7

    #@6e
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v13

    #@72
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v13

    #@76
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 261
    move/from16 v0, p6

    #@7b
    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@7d
    .line 262
    move/from16 v0, p7

    #@7f
    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@81
    .line 263
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    #@84
    move-result-object p4

    #@85
    .line 274
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    :goto_0
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@87
    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    #@8a
    .line 276
    .local v7, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    #@8c
    const/16 v12, 0x40

    #@8e
    :goto_1
    or-int/lit8 v12, v12, 0x1

    #@90
    int-to-byte v6, v12

    #@91
    .line 277
    .local v6, "mtiByte":B
    move-object/from16 v0, p1

    #@93
    move/from16 v1, p3

    #@95
    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    #@98
    move-result-object v4

    #@99
    .line 284
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    #@9a
    move/from16 v0, p5

    #@9c
    if-ne v0, v12, :cond_7

    #@9e
    .line 285
    :try_start_0
    move-object/from16 v0, p2

    #@a0
    move-object/from16 v1, p4

    #@a2
    move/from16 v2, p6

    #@a4
    move/from16 v3, p7

    #@a6
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    #@a9
    move-result-object v11

    #@aa
    .line 311
    .local v11, "userData":[B
    :goto_2
    const/4 v12, 0x1

    #@ab
    move/from16 v0, p5

    #@ad
    if-ne v0, v12, :cond_9

    #@af
    .line 312
    const/4 v12, 0x0

    #@b0
    aget-byte v12, v11, v12

    #@b2
    and-int/lit16 v12, v12, 0xff

    #@b4
    const/16 v13, 0xa0

    #@b6
    if-le v12, v13, :cond_8

    #@b8
    .line 314
    const-string/jumbo v12, "SmsMessage"

    #@bb
    new-instance v13, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v14, "Message too long ("

    #@c3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v13

    #@c7
    const/4 v14, 0x0

    #@c8
    aget-byte v14, v11, v14

    #@ca
    and-int/lit16 v14, v14, 0xff

    #@cc
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v13

    #@d0
    const-string/jumbo v14, " septets)"

    #@d3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v13

    #@d7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v13

    #@db
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    .line 315
    const/4 v12, 0x0

    #@df
    return-object v12

    #@e0
    .line 266
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "mtiByte":B
    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11    # "userData":[B
    .restart local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    #@e2
    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    #@e5
    .line 267
    .restart local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    #@e7
    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@e9
    .line 268
    move/from16 v0, p7

    #@eb
    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@ed
    .line 269
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    #@f0
    move-result-object p4

    #@f1
    goto :goto_0

    #@f2
    .line 276
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    #@f3
    goto :goto_1

    #@f4
    .line 289
    .restart local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "mtiByte":B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    #@f6
    move-object/from16 v1, p4

    #@f8
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    #@fb
    move-result-object v11

    #@fc
    .restart local v11    # "userData":[B
    goto :goto_2

    #@fd
    .line 290
    .end local v11    # "userData":[B
    :catch_0
    move-exception v10

    #@fe
    .line 291
    .local v10, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string/jumbo v12, "SmsMessage"

    #@101
    .line 292
    const-string/jumbo v13, "Implausible UnsupportedEncodingException "

    #@104
    .line 291
    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    #@107
    .line 294
    const/4 v12, 0x0

    #@108
    return-object v12

    #@109
    .line 297
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    #@10a
    .line 301
    .local v5, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    #@10c
    move-object/from16 v1, p4

    #@10e
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    #@111
    move-result-object v11

    #@112
    .line 302
    .restart local v11    # "userData":[B
    const/16 p5, 0x3

    #@114
    goto :goto_2

    #@115
    .line 303
    .end local v11    # "userData":[B
    :catch_2
    move-exception v10

    #@116
    .line 304
    .restart local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v12, "SmsMessage"

    #@119
    .line 305
    const-string/jumbo v13, "Implausible UnsupportedEncodingException "

    #@11c
    .line 304
    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11f
    .line 307
    const/4 v12, 0x0

    #@120
    return-object v12

    #@121
    .line 325
    .end local v5    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v11    # "userData":[B
    :cond_8
    const/4 v12, 0x0

    #@122
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@125
    .line 338
    :goto_3
    array-length v12, v11

    #@126
    const/4 v13, 0x0

    #@127
    invoke-virtual {v4, v11, v13, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@12a
    .line 339
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@12d
    move-result-object v12

    #@12e
    iput-object v12, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    #@130
    .line 340
    return-object v7

    #@131
    .line 327
    :cond_9
    const/4 v12, 0x0

    #@132
    aget-byte v12, v11, v12

    #@134
    and-int/lit16 v12, v12, 0xff

    #@136
    const/16 v13, 0x8c

    #@138
    if-le v12, v13, :cond_a

    #@13a
    .line 329
    const-string/jumbo v12, "SmsMessage"

    #@13d
    new-instance v13, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    const-string/jumbo v14, "Message too long ("

    #@145
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v13

    #@149
    const/4 v14, 0x0

    #@14a
    aget-byte v14, v11, v14

    #@14c
    and-int/lit16 v14, v14, 0xff

    #@14e
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v13

    #@152
    const-string/jumbo v14, " bytes)"

    #@155
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v13

    #@159
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v13

    #@15d
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@160
    .line 330
    const/4 v12, 0x0

    #@161
    return-object v12

    #@162
    .line 334
    :cond_a
    const/16 v12, 0x8

    #@164
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@167
    goto :goto_3
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 459
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@4
    .line 460
    const/16 v2, 0xb4

    #@6
    .line 459
    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@9
    .line 463
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    #@b
    .line 464
    iput-object v4, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    #@d
    .line 471
    :goto_0
    if-eqz p3, :cond_0

    #@f
    .line 473
    or-int/lit8 v2, p2, 0x20

    #@11
    int-to-byte p2, v2

    #@12
    .line 476
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@15
    .line 479
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@18
    .line 483
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    #@1b
    move-result-object v1

    #@1c
    .line 487
    .local v1, "daBytes":[B
    array-length v2, v1

    #@1d
    add-int/lit8 v2, v2, -0x1

    #@1f
    mul-int/lit8 v4, v2, 0x2

    #@21
    .line 488
    array-length v2, v1

    #@22
    add-int/lit8 v2, v2, -0x1

    #@24
    aget-byte v2, v1, v2

    #@26
    and-int/lit16 v2, v2, 0xf0

    #@28
    const/16 v5, 0xf0

    #@2a
    if-ne v2, v5, :cond_2

    #@2c
    const/4 v2, 0x1

    #@2d
    .line 487
    :goto_1
    sub-int v2, v4, v2

    #@2f
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@32
    .line 491
    array-length v2, v1

    #@33
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@36
    .line 494
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@39
    .line 495
    return-object v0

    #@3a
    .line 466
    .end local v1    # "daBytes":[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    #@40
    goto :goto_0

    #@41
    .restart local v1    # "daBytes":[B
    :cond_2
    move v2, v3

    #@42
    .line 488
    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .param p0, "pdu"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    div-int/lit8 v0, v2, 0x2

    #@6
    .line 199
    .local v0, "len":I
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x2

    #@8
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/16 v3, 0x10

    #@e
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@11
    move-result v1

    #@12
    .line 201
    .local v1, "smscLen":I
    sub-int v2, v0, v1

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    #@5
    .line 144
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 145
    return-object v1

    #@d
    .line 146
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :catch_0
    move-exception v0

    #@e
    .line 147
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "SmsMessage"

    #@11
    const-string/jumbo v3, "CDS SMS PDU parsing failed: "

    #@14
    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 148
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "lines"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 131
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    #@5
    .line 132
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    #@6
    aget-object v2, p0, v2

    #@8
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 133
    return-object v1

    #@10
    .line 134
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :catch_0
    move-exception v0

    #@11
    .line 135
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "SmsMessage"

    #@14
    const-string/jumbo v3, "SMS PDU parsing failed: "

    #@17
    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 136
    const/4 v2, 0x0

    #@1b
    return-object v2
.end method

.method private parsePdu([B)V
    .locals 4
    .param p1, "pdu"    # [B

    #@0
    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    #@2
    .line 905
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    #@4
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    #@7
    .line 907
    .local v1, "p":Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    #@d
    .line 909
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 917
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@14
    move-result v0

    #@15
    .line 919
    .local v0, "firstByte":I
    and-int/lit8 v2, v0, 0x3

    #@17
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    #@19
    .line 920
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    #@1b
    packed-switch v2, :pswitch_data_0

    #@1e
    .line 936
    new-instance v2, Ljava/lang/RuntimeException;

    #@20
    const-string/jumbo v3, "Unsupported message type"

    #@23
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 926
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    #@2a
    .line 900
    :goto_0
    return-void

    #@2b
    .line 929
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    #@2e
    goto :goto_0

    #@2f
    .line 932
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    #@32
    goto :goto_0

    #@33
    .line 920
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 4
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    #@0
    .prologue
    .line 991
    and-int/lit16 v1, p2, 0x80

    #@2
    const/16 v2, 0x80

    #@4
    if-ne v1, v2, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    #@9
    .line 993
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@f
    .line 995
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 1002
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@16
    move-result v1

    #@17
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@19
    .line 1006
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@1f
    .line 1013
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    #@25
    .line 1017
    and-int/lit8 v1, p2, 0x40

    #@27
    const/16 v2, 0x40

    #@29
    if-ne v1, v2, :cond_2

    #@2b
    const/4 v0, 0x1

    #@2c
    .line 1019
    .local v0, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    #@2f
    .line 990
    return-void

    #@30
    .line 991
    .end local v0    # "hasUserDataHeader":Z
    :cond_1
    const/4 v1, 0x0

    #@31
    goto :goto_0

    #@32
    .line 1017
    :cond_2
    const/4 v0, 0x0

    #@33
    .restart local v0    # "hasUserDataHeader":Z
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    #@0
    .prologue
    .line 947
    const/4 v3, 0x1

    #@1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    #@3
    .line 950
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@6
    move-result v3

    #@7
    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    #@9
    .line 952
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@c
    move-result-object v3

    #@d
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@f
    .line 954
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    #@12
    move-result-wide v4

    #@13
    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    #@15
    .line 955
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    #@18
    .line 957
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@1b
    move-result v3

    #@1c
    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    #@1e
    .line 960
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_3

    #@24
    .line 962
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@27
    move-result v0

    #@28
    .line 963
    .local v0, "extraParams":I
    move v2, v0

    #@29
    .line 964
    .local v2, "moreExtraParams":I
    :goto_0
    and-int/lit16 v3, v2, 0x80

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 968
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@30
    move-result v2

    #@31
    goto :goto_0

    #@32
    .line 972
    :cond_0
    and-int/lit8 v3, v0, 0x78

    #@34
    if-nez v3, :cond_3

    #@36
    .line 974
    and-int/lit8 v3, v0, 0x1

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 975
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@3d
    move-result v3

    #@3e
    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@40
    .line 978
    :cond_1
    and-int/lit8 v3, v0, 0x2

    #@42
    if-eqz v3, :cond_2

    #@44
    .line 979
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@47
    move-result v3

    #@48
    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@4a
    .line 982
    :cond_2
    and-int/lit8 v3, v0, 0x4

    #@4c
    if-eqz v3, :cond_3

    #@4e
    .line 983
    and-int/lit8 v3, p2, 0x40

    #@50
    const/16 v4, 0x40

    #@52
    if-ne v3, v4, :cond_4

    #@54
    const/4 v1, 0x1

    #@55
    .line 984
    .local v1, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    #@58
    .line 946
    .end local v0    # "extraParams":I
    .end local v1    # "hasUserDataHeader":Z
    .end local v2    # "moreExtraParams":I
    :cond_3
    return-void

    #@59
    .line 983
    .restart local v0    # "extraParams":I
    .restart local v2    # "moreExtraParams":I
    :cond_4
    const/4 v1, 0x0

    #@5a
    .restart local v1    # "hasUserDataHeader":Z
    goto :goto_1
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1029
    and-int/lit16 v5, p2, 0x80

    #@3
    const/16 v6, 0x80

    #@5
    if-ne v5, v6, :cond_0

    #@7
    const/4 v4, 0x1

    #@8
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    #@a
    .line 1032
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@d
    move-result v4

    #@e
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    #@10
    .line 1034
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@13
    move-result-object v4

    #@14
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@16
    .line 1036
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 1042
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@1d
    move-result v4

    #@1e
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@20
    .line 1046
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@23
    move-result v4

    #@24
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@26
    .line 1054
    const/4 v2, 0x0

    #@27
    .line 1055
    .local v2, "validityPeriodLength":I
    shr-int/lit8 v4, p2, 0x3

    #@29
    and-int/lit8 v1, v4, 0x3

    #@2b
    .line 1056
    .local v1, "validityPeriodFormat":I
    if-nez v1, :cond_2

    #@2d
    .line 1058
    const/4 v2, 0x0

    #@2e
    move v3, v2

    #@2f
    .line 1070
    .end local v2    # "validityPeriodLength":I
    .local v3, "validityPeriodLength":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    #@31
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    if-lez v3, :cond_4

    #@33
    .line 1072
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    #@36
    move v3, v2

    #@37
    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_0

    #@38
    .line 1060
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_2
    const/4 v4, 0x2

    #@39
    if-ne v4, v1, :cond_3

    #@3b
    .line 1062
    const/4 v2, 0x1

    #@3c
    move v3, v2

    #@3d
    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_0

    #@3e
    .line 1066
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_3
    const/4 v2, 0x7

    #@3f
    move v3, v2

    #@40
    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_0

    #@41
    .line 1075
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_4
    and-int/lit8 v4, p2, 0x40

    #@43
    const/16 v5, 0x40

    #@45
    if-ne v4, v5, :cond_5

    #@47
    const/4 v0, 0x1

    #@48
    .line 1077
    .local v0, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    #@4b
    .line 1028
    return-void

    #@4c
    .line 1075
    .end local v0    # "hasUserDataHeader":Z
    :cond_5
    const/4 v0, 0x0

    #@4d
    .restart local v0    # "hasUserDataHeader":Z
    goto :goto_1
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    #@0
    .prologue
    .line 1088
    const/4 v3, 0x0

    #@1
    .line 1089
    .local v3, "hasMessageClass":Z
    const/4 v8, 0x0

    #@2
    .line 1091
    .local v8, "userDataCompressed":Z
    const/4 v2, 0x0

    #@3
    .line 1094
    .local v2, "encodingType":I
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@5
    and-int/lit16 v9, v9, 0x80

    #@7
    if-nez v9, :cond_6

    #@9
    .line 1095
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@b
    and-int/lit8 v9, v9, 0x20

    #@d
    if-eqz v9, :cond_2

    #@f
    const/4 v8, 0x1

    #@10
    .line 1096
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@12
    and-int/lit8 v9, v9, 0x10

    #@14
    if-eqz v9, :cond_3

    #@16
    const/4 v3, 0x1

    #@17
    .line 1098
    :goto_1
    if-eqz v8, :cond_4

    #@19
    .line 1099
    const-string/jumbo v9, "SmsMessage"

    #@1c
    new-instance v10, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v11, "4 - Unsupported SMS data coding scheme (compression) "

    #@24
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v10

    #@28
    .line 1100
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@2a
    and-int/lit16 v11, v11, 0xff

    #@2c
    .line 1099
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v10

    #@30
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v10

    #@34
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 1197
    :goto_2
    const/4 v9, 0x1

    #@38
    if-ne v2, v9, :cond_12

    #@3a
    const/4 v9, 0x1

    #@3b
    .line 1196
    :goto_3
    invoke-virtual {p1, p2, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    #@3e
    move-result v1

    #@3f
    .line 1198
    .local v1, "count":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    #@42
    move-result-object v9

    #@43
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    #@45
    .line 1199
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    #@48
    move-result-object v9

    #@49
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@4b
    .line 1209
    if-eqz p2, :cond_17

    #@4d
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@4f
    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_17

    #@57
    .line 1210
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@59
    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    #@5b
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v5

    #@5f
    .local v5, "msg$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v9

    #@63
    if-eqz v9, :cond_17

    #@65
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v4

    #@69
    check-cast v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    #@6b
    .line 1211
    .local v4, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v9, v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    #@6d
    and-int/lit16 v6, v9, 0xff

    #@6f
    .line 1218
    .local v6, "msgInd":I
    if-eqz v6, :cond_0

    #@71
    const/16 v9, 0x80

    #@73
    if-ne v6, v9, :cond_16

    #@75
    .line 1219
    :cond_0
    const/4 v9, 0x1

    #@76
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    #@78
    .line 1220
    const/16 v9, 0x80

    #@7a
    if-ne v6, v9, :cond_13

    #@7c
    .line 1222
    const/4 v9, 0x0

    #@7d
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    #@7f
    .line 1241
    :cond_1
    :goto_5
    iget v9, v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    #@81
    and-int/lit16 v9, v9, 0xff

    #@83
    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@85
    .line 1249
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@87
    if-lez v9, :cond_15

    #@89
    .line 1250
    const/4 v9, 0x1

    #@8a
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    #@8c
    .line 1254
    :goto_6
    const-string/jumbo v9, "SmsMessage"

    #@8f
    new-instance v10, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v11, "MWI in TP-UDH for Vmail. Msg Ind = "

    #@97
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v10

    #@9b
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v10

    #@9f
    .line 1255
    const-string/jumbo v11, " Dont store = "

    #@a2
    .line 1254
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v10

    #@a6
    .line 1255
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    #@a8
    .line 1254
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v10

    #@ac
    .line 1255
    const-string/jumbo v11, " Vmail count = "

    #@af
    .line 1254
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v10

    #@b3
    .line 1256
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@b5
    .line 1254
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v10

    #@b9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v10

    #@bd
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    goto :goto_4

    #@c1
    .line 1095
    .end local v1    # "count":I
    .end local v4    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v5    # "msg$iterator":Ljava/util/Iterator;
    .end local v6    # "msgInd":I
    :cond_2
    const/4 v8, 0x0

    #@c2
    goto/16 :goto_0

    #@c4
    .line 1096
    :cond_3
    const/4 v3, 0x0

    #@c5
    goto/16 :goto_1

    #@c7
    .line 1102
    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@c9
    shr-int/lit8 v9, v9, 0x2

    #@cb
    and-int/lit8 v9, v9, 0x3

    #@cd
    packed-switch v9, :pswitch_data_0

    #@d0
    goto/16 :goto_2

    #@d2
    .line 1104
    :pswitch_0
    const/4 v2, 0x1

    #@d3
    .line 1105
    goto/16 :goto_2

    #@d5
    .line 1108
    :pswitch_1
    const/4 v2, 0x3

    #@d6
    .line 1109
    goto/16 :goto_2

    #@d8
    .line 1114
    :pswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@db
    move-result-object v7

    #@dc
    .line 1115
    .local v7, "r":Landroid/content/res/Resources;
    const v9, 0x112008d

    #@df
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@e2
    move-result v9

    #@e3
    if-eqz v9, :cond_5

    #@e5
    .line 1117
    const/4 v2, 0x2

    #@e6
    .line 1118
    goto/16 :goto_2

    #@e8
    .line 1122
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_5
    :pswitch_3
    const-string/jumbo v9, "SmsMessage"

    #@eb
    new-instance v10, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v11, "1 - Unsupported SMS data coding scheme "

    #@f3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v10

    #@f7
    .line 1123
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@f9
    and-int/lit16 v11, v11, 0xff

    #@fb
    .line 1122
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v10

    #@ff
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v10

    #@103
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 1124
    const/4 v2, 0x2

    #@107
    .line 1125
    goto/16 :goto_2

    #@109
    .line 1128
    :cond_6
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@10b
    and-int/lit16 v9, v9, 0xf0

    #@10d
    const/16 v10, 0xf0

    #@10f
    if-ne v9, v10, :cond_8

    #@111
    .line 1129
    const/4 v3, 0x1

    #@112
    .line 1130
    const/4 v8, 0x0

    #@113
    .line 1132
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@115
    and-int/lit8 v9, v9, 0x4

    #@117
    if-nez v9, :cond_7

    #@119
    .line 1134
    const/4 v2, 0x1

    #@11a
    goto/16 :goto_2

    #@11c
    .line 1137
    :cond_7
    const/4 v2, 0x2

    #@11d
    goto/16 :goto_2

    #@11f
    .line 1139
    :cond_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@121
    and-int/lit16 v9, v9, 0xf0

    #@123
    const/16 v10, 0xc0

    #@125
    if-eq v9, v10, :cond_9

    #@127
    .line 1140
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@129
    and-int/lit16 v9, v9, 0xf0

    #@12b
    const/16 v10, 0xd0

    #@12d
    if-ne v9, v10, :cond_a

    #@12f
    .line 1148
    :cond_9
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@131
    and-int/lit16 v9, v9, 0xf0

    #@133
    const/16 v10, 0xe0

    #@135
    if-ne v9, v10, :cond_b

    #@137
    .line 1149
    const/4 v2, 0x3

    #@138
    .line 1154
    :goto_7
    const/4 v8, 0x0

    #@139
    .line 1155
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@13b
    and-int/lit8 v9, v9, 0x8

    #@13d
    const/16 v10, 0x8

    #@13f
    if-ne v9, v10, :cond_c

    #@141
    const/4 v0, 0x1

    #@142
    .line 1159
    .local v0, "active":Z
    :goto_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@144
    and-int/lit8 v9, v9, 0x3

    #@146
    if-nez v9, :cond_f

    #@148
    .line 1160
    const/4 v9, 0x1

    #@149
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    #@14b
    .line 1161
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    #@14d
    .line 1162
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@14f
    and-int/lit16 v9, v9, 0xf0

    #@151
    const/16 v10, 0xc0

    #@153
    if-ne v9, v10, :cond_d

    #@155
    const/4 v9, 0x1

    #@156
    :goto_9
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    #@158
    .line 1165
    if-eqz v0, :cond_e

    #@15a
    .line 1166
    const/4 v9, -0x1

    #@15b
    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@15d
    .line 1171
    :goto_a
    const-string/jumbo v9, "SmsMessage"

    #@160
    new-instance v10, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v11, "MWI in DCS for Vmail. DCS = "

    #@168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v10

    #@16c
    .line 1172
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@16e
    and-int/lit16 v11, v11, 0xff

    #@170
    .line 1171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@173
    move-result-object v10

    #@174
    .line 1172
    const-string/jumbo v11, " Dont store = "

    #@177
    .line 1171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v10

    #@17b
    .line 1173
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    #@17d
    .line 1171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@180
    move-result-object v10

    #@181
    .line 1173
    const-string/jumbo v11, " vmail count = "

    #@184
    .line 1171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v10

    #@188
    .line 1173
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@18a
    .line 1171
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v10

    #@18e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v10

    #@192
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@195
    goto/16 :goto_2

    #@197
    .line 1141
    .end local v0    # "active":Z
    :cond_a
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@199
    and-int/lit16 v9, v9, 0xf0

    #@19b
    const/16 v10, 0xe0

    #@19d
    if-eq v9, v10, :cond_9

    #@19f
    .line 1180
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@1a1
    and-int/lit16 v9, v9, 0xc0

    #@1a3
    const/16 v10, 0x80

    #@1a5
    if-ne v9, v10, :cond_11

    #@1a7
    .line 1183
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@1a9
    const/16 v10, 0x84

    #@1ab
    if-ne v9, v10, :cond_10

    #@1ad
    .line 1185
    const/4 v2, 0x4

    #@1ae
    goto/16 :goto_2

    #@1b0
    .line 1151
    :cond_b
    const/4 v2, 0x1

    #@1b1
    goto :goto_7

    #@1b2
    .line 1155
    :cond_c
    const/4 v0, 0x0

    #@1b3
    .restart local v0    # "active":Z
    goto :goto_8

    #@1b4
    .line 1162
    :cond_d
    const/4 v9, 0x0

    #@1b5
    goto :goto_9

    #@1b6
    .line 1168
    :cond_e
    const/4 v9, 0x0

    #@1b7
    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@1b9
    goto :goto_a

    #@1ba
    .line 1176
    :cond_f
    const/4 v9, 0x0

    #@1bb
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    #@1bd
    .line 1177
    const-string/jumbo v9, "SmsMessage"

    #@1c0
    new-instance v10, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    const-string/jumbo v11, "MWI in DCS for fax/email/other: "

    #@1c8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v10

    #@1cc
    .line 1178
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@1ce
    and-int/lit16 v11, v11, 0xff

    #@1d0
    .line 1177
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v10

    #@1d4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v10

    #@1d8
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1db
    goto/16 :goto_2

    #@1dd
    .line 1187
    .end local v0    # "active":Z
    :cond_10
    const-string/jumbo v9, "SmsMessage"

    #@1e0
    new-instance v10, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v11, "5 - Unsupported SMS data coding scheme "

    #@1e8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v10

    #@1ec
    .line 1188
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@1ee
    and-int/lit16 v11, v11, 0xff

    #@1f0
    .line 1187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v10

    #@1f4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f7
    move-result-object v10

    #@1f8
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1fb
    goto/16 :goto_2

    #@1fd
    .line 1191
    :cond_11
    const-string/jumbo v9, "SmsMessage"

    #@200
    new-instance v10, Ljava/lang/StringBuilder;

    #@202
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@205
    const-string/jumbo v11, "3 - Unsupported SMS data coding scheme "

    #@208
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v10

    #@20c
    .line 1192
    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@20e
    and-int/lit16 v11, v11, 0xff

    #@210
    .line 1191
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@213
    move-result-object v10

    #@214
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@217
    move-result-object v10

    #@218
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21b
    goto/16 :goto_2

    #@21d
    .line 1197
    :cond_12
    const/4 v9, 0x0

    #@21e
    goto/16 :goto_3

    #@220
    .line 1223
    .restart local v1    # "count":I
    .restart local v4    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .restart local v5    # "msg$iterator":Ljava/util/Iterator;
    .restart local v6    # "msgInd":I
    :cond_13
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    #@222
    if-nez v9, :cond_1

    #@224
    .line 1231
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@226
    and-int/lit16 v9, v9, 0xf0

    #@228
    const/16 v10, 0xd0

    #@22a
    if-eq v9, v10, :cond_14

    #@22c
    .line 1232
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@22e
    and-int/lit16 v9, v9, 0xf0

    #@230
    const/16 v10, 0xe0

    #@232
    if-eq v9, v10, :cond_14

    #@234
    .line 1237
    :goto_b
    const/4 v9, 0x1

    #@235
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    #@237
    goto/16 :goto_5

    #@239
    .line 1233
    :cond_14
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@23b
    and-int/lit8 v9, v9, 0x3

    #@23d
    if-eqz v9, :cond_1

    #@23f
    goto :goto_b

    #@240
    .line 1252
    :cond_15
    const/4 v9, 0x0

    #@241
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    #@243
    goto/16 :goto_6

    #@245
    .line 1264
    :cond_16
    const-string/jumbo v9, "SmsMessage"

    #@248
    new-instance v10, Ljava/lang/StringBuilder;

    #@24a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@24d
    const-string/jumbo v11, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    #@250
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v10

    #@254
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@257
    move-result-object v10

    #@258
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25b
    move-result-object v10

    #@25c
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25f
    goto/16 :goto_4

    #@261
    .line 1270
    .end local v4    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v5    # "msg$iterator":Ljava/util/Iterator;
    .end local v6    # "msgInd":I
    :cond_17
    packed-switch v2, :pswitch_data_1

    #@264
    .line 1304
    :goto_c
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@266
    if-eqz v9, :cond_18

    #@268
    .line 1305
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    #@26b
    .line 1308
    :cond_18
    if-nez v3, :cond_1c

    #@26d
    .line 1309
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@26f
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@271
    .line 1087
    :goto_d
    return-void

    #@272
    .line 1272
    :pswitch_4
    const/4 v9, 0x0

    #@273
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@275
    goto :goto_c

    #@276
    .line 1278
    :pswitch_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@279
    move-result-object v7

    #@27a
    .line 1279
    .restart local v7    # "r":Landroid/content/res/Resources;
    const v9, 0x112008d

    #@27d
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@280
    move-result v9

    #@281
    if-eqz v9, :cond_19

    #@283
    .line 1281
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    #@286
    move-result-object v9

    #@287
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@289
    goto :goto_c

    #@28a
    .line 1283
    :cond_19
    const/4 v9, 0x0

    #@28b
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@28d
    goto :goto_c

    #@28e
    .line 1289
    .end local v7    # "r":Landroid/content/res/Resources;
    :pswitch_6
    if-eqz p2, :cond_1a

    #@290
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@292
    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@294
    move v10, v9

    #@295
    .line 1290
    :goto_e
    if-eqz p2, :cond_1b

    #@297
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@299
    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@29b
    .line 1288
    :goto_f
    invoke-virtual {p1, v1, v10, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    #@29e
    move-result-object v9

    #@29f
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@2a1
    goto :goto_c

    #@2a2
    .line 1289
    :cond_1a
    const/4 v9, 0x0

    #@2a3
    move v10, v9

    #@2a4
    goto :goto_e

    #@2a5
    .line 1290
    :cond_1b
    const/4 v9, 0x0

    #@2a6
    goto :goto_f

    #@2a7
    .line 1294
    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    #@2aa
    move-result-object v9

    #@2ab
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@2ad
    goto :goto_c

    #@2ae
    .line 1298
    :pswitch_8
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    #@2b1
    move-result-object v9

    #@2b2
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@2b4
    goto :goto_c

    #@2b5
    .line 1311
    :cond_1c
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@2b7
    and-int/lit8 v9, v9, 0x3

    #@2b9
    packed-switch v9, :pswitch_data_2

    #@2bc
    goto :goto_d

    #@2bd
    .line 1313
    :pswitch_9
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2bf
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2c1
    goto :goto_d

    #@2c2
    .line 1316
    :pswitch_a
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2c4
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2c6
    goto :goto_d

    #@2c7
    .line 1319
    :pswitch_b
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2c9
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2cb
    goto :goto_d

    #@2cc
    .line 1322
    :pswitch_c
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2ce
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2d0
    goto :goto_d

    #@2d1
    .line 1102
    nop

    #@2d2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    #@2de
    .line 1270
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch

    #@2ec
    .line 1311
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    #@0
    .prologue
    .line 815
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    #@2
    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    #@0
    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@2
    return-object v0
.end method

.method public getNumOfVoicemails()I
    .locals 2

    #@0
    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@10
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    #@15
    move-result v0

    #@16
    .line 1359
    if-eqz v0, :cond_1

    #@18
    .line 1361
    const/16 v0, 0xff

    #@1a
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@1c
    .line 1365
    :goto_0
    const-string/jumbo v0, "SmsMessage"

    #@1f
    const-string/jumbo v1, "CPHS voice mail message"

    #@22
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1367
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@27
    return v0

    #@28
    .line 1363
    :cond_1
    const/4 v0, 0x0

    #@29
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    #@2b
    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    #@0
    .prologue
    .line 807
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@2
    return v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 877
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    #@2
    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@2
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@c
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    #@11
    move-result v0

    #@12
    .line 829
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    #@0
    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@e
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    #@13
    move-result v0

    #@14
    .line 840
    :goto_0
    return v0

    #@15
    .line 837
    :cond_1
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 840
    :cond_2
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    #@0
    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 848
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@10
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    #@15
    move-result v0

    #@16
    .line 851
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 858
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 859
    return v2

    #@a
    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 866
    const-string/jumbo v0, " "

    #@13
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 867
    return v2

    #@1e
    .line 871
    :cond_1
    const/4 v0, 0x0

    #@1f
    return v0
.end method

.method public isReplace()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 821
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@3
    and-int/lit16 v1, v1, 0xc0

    #@5
    const/16 v2, 0x40

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 822
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@b
    and-int/lit8 v1, v1, 0x3f

    #@d
    if-lez v1, :cond_0

    #@f
    .line 823
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@11
    and-int/lit8 v1, v1, 0x3f

    #@13
    const/16 v2, 0x8

    #@15
    if-ge v1, v2, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 821
    :cond_0
    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    #@0
    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    #@2
    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    #@0
    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    #@2
    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    #@0
    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@2
    const/16 v1, 0x40

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1343
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@4
    sget-object v3, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@6
    if-ne v2, v3, :cond_2

    #@8
    .line 1344
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@a
    const/16 v3, 0x7f

    #@c
    if-eq v2, v3, :cond_0

    #@e
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    #@10
    const/16 v3, 0x7c

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 1343
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 1344
    goto :goto_0

    #@17
    :cond_2
    move v0, v1

    #@18
    .line 1343
    goto :goto_0
.end method
