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
.field private static final blacklist INVALID_VALIDITY_PERIOD:I = -0x1

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final blacklist VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final blacklist VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final blacklist VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final blacklist VALIDITY_PERIOD_MIN:I = 0x5

.field private static final blacklist VDBG:Z = false


# instance fields
.field private blacklist mDataCodingScheme:I

.field private blacklist mIsStatusReportMessage:Z

.field private blacklist mMti:I

.field private blacklist mProtocolIdentifier:I

.field private blacklist mReplyPathPresent:Z

.field private blacklist mStatus:I

.field private blacklist mVoiceMailCount:I

.field private blacklist messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 93
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 115
    return-void
.end method

.method public static greylist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 6
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 1148
    const/4 v0, 0x0

    .line 1149
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1150
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1110250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1151
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 1153
    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1154
    move-object v0, p0

    .line 1156
    :cond_1a
    invoke-static {v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 1157
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v2, :cond_25

    .line 1158
    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    .line 1160
    :cond_25
    return-object v2
.end method

.method public static greylist-max-q createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 9
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 156
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 158
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    .line 163
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_17

    .line 164
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v1

    .line 168
    :cond_17
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    .line 171
    array-length v4, p1

    sub-int/2addr v4, v5

    .line 175
    .local v4, "size":I
    new-array v6, v4, [B

    .line 176
    .local v6, "pdu":[B
    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-direct {v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_27} :catch_28

    .line 178
    return-object v2

    .line 179
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4    # "size":I
    .end local v6    # "pdu":[B
    :catch_28
    move-exception v2

    .line 180
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    return-object v1
.end method

.method public static greylist createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .param p0, "pdu"    # [B

    .line 123
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 124
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_b} :catch_c

    .line 125
    return-object v2

    .line 129
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :catch_c
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    return-object v1

    .line 126
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_13
    move-exception v2

    .line 127
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return-object v1
.end method

.method private static greylist encodeUCS2(Ljava/lang/String;[B)[B
    .registers 9
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 467
    const-string/jumbo v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 469
    .local v0, "textPart":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_20

    .line 471
    array-length v3, p1

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v3, v3, [B

    .line 473
    .local v3, "userData":[B
    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 474
    array-length v4, p1

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    array-length v4, p1

    add-int/2addr v4, v2

    array-length v5, v0

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 478
    .end local v3    # "userData":[B
    :cond_20
    move-object v3, v0

    .line 480
    .restart local v3    # "userData":[B
    :goto_21
    array-length v4, v3

    const/16 v5, 0xff

    if-gt v4, v5, :cond_34

    .line 484
    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [B

    .line 485
    .local v4, "ret":[B
    array-length v6, v3

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 486
    array-length v5, v3

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    return-object v4

    .line 481
    .end local v4    # "ret":[B
    :cond_34
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    const-string v4, "Payload cannot exceed 255 bytes"

    invoke-direct {v1, v4, v2}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static blacklist getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 33
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originatingAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # J

    .line 700
    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz p1, :cond_1e5

    if-nez v1, :cond_b

    move-object/from16 v17, v2

    goto/16 :goto_1e7

    .line 705
    :cond_b
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 706
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 707
    .local v5, "encoding":I
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 708
    .local v6, "languageTable":I
    iget v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 709
    .local v7, "languageShiftTable":I
    const/4 v0, 0x0

    .line 711
    .local v0, "header":[B
    const/4 v8, 0x1

    if-ne v5, v8, :cond_2d

    if-nez v6, :cond_1e

    if-eqz v7, :cond_2d

    .line 712
    :cond_1e
    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 713
    .local v9, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput v6, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 714
    iput v7, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 715
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    move-object v9, v0

    goto :goto_2e

    .line 718
    .end local v9    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_2d
    move-object v9, v0

    .end local v0    # "header":[B
    .local v9, "header":[B
    :goto_2e
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v10, v0

    .line 720
    .local v10, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0xb4

    invoke-direct {v0, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v11, v0

    .line 723
    .local v11, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_41

    .line 724
    iput-object v2, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_48

    .line 726
    :cond_41
    nop

    .line 727
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 731
    :goto_48
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 735
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v12

    .line 738
    .local v12, "oaBytes":[B
    if-nez v12, :cond_52

    return-object v2

    .line 742
    :cond_52
    array-length v0, v12

    sub-int/2addr v0, v8

    const/4 v13, 0x2

    mul-int/2addr v0, v13

    array-length v14, v12

    sub-int/2addr v14, v8

    aget-byte v14, v12, v14

    const/16 v15, 0xf0

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_61

    move v14, v8

    goto :goto_62

    :cond_61
    move v14, v3

    :goto_62
    sub-int/2addr v0, v14

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 745
    array-length v0, v12

    invoke-virtual {v11, v12, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 748
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 753
    const-string v14, "Implausible UnsupportedEncodingException "

    const-string v15, "SmsMessage"

    if-ne v5, v8, :cond_78

    .line 754
    :try_start_73
    invoke-static {v1, v9, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_77
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_73 .. :try_end_77} :catch_80

    .local v0, "userData":[B
    goto :goto_7d

    .line 758
    .end local v0    # "userData":[B
    :cond_78
    :try_start_78
    invoke-static {v1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_7c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_78 .. :try_end_7c} :catch_82
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_78 .. :try_end_7c} :catch_80

    .line 762
    .restart local v0    # "userData":[B
    nop

    .line 782
    :goto_7d
    move-object/from16 v17, v2

    goto :goto_9f

    .line 764
    .end local v0    # "userData":[B
    :catch_80
    move-exception v0

    goto :goto_87

    .line 759
    :catch_82
    move-exception v0

    .line 760
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_83
    invoke-static {v15, v14, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_83 .. :try_end_86} :catch_80

    .line 761
    return-object v2

    .line 764
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_87
    move-object/from16 v16, v0

    .line 765
    .local v16, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v0

    move-object/from16 v17, v2

    const-string v2, "Exceed size limitation EncodeException"

    if-ne v0, v8, :cond_99

    .line 766
    move-object/from16 v3, v16

    .end local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    .local v3, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v15, v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    return-object v17

    .line 772
    .end local v3    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_99
    :try_start_99
    invoke-static {v1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_9d
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_99 .. :try_end_9d} :catch_1e0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_99 .. :try_end_9d} :catch_1db

    .line 773
    .local v0, "userData":[B
    const/4 v5, 0x3

    .line 780
    nop

    .line 784
    .end local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_9f
    const-string v2, "Message too long ("

    const/16 v14, 0x8

    if-ne v5, v8, :cond_d4

    .line 785
    move/from16 v18, v8

    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    move/from16 v19, v13

    const/16 v13, 0xa0

    if-le v8, v13, :cond_d0

    .line 787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " septets)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-object v17

    .line 792
    :cond_d0
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_102

    .line 794
    :cond_d4
    move/from16 v18, v8

    move/from16 v19, v13

    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    const/16 v13, 0x8c

    if-le v8, v13, :cond_ff

    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-object v17

    .line 801
    :cond_ff
    invoke-virtual {v11, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 805
    :goto_102
    const/4 v2, 0x7

    new-array v2, v2, [B

    .line 807
    .local v2, "scts":[B
    invoke-static/range {p3 .. p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v8

    .line 808
    .local v8, "zoneDateTime":Ljava/time/ZonedDateTime;
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v13

    .line 812
    .local v13, "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v15

    invoke-virtual {v15}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v15

    div-int/lit8 v15, v15, 0x3c

    div-int/lit8 v15, v15, 0xf

    .line 813
    .local v15, "timezoneOffset":I
    if-gez v15, :cond_126

    move/from16 v16, v18

    goto :goto_128

    :cond_126
    move/from16 v16, v3

    .line 814
    .local v16, "negativeOffset":Z
    :goto_128
    if-eqz v16, :cond_12b

    .line 815
    neg-int v15, v15

    .line 817
    :cond_12b
    move/from16 v20, v14

    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getYear()I

    move-result v14

    .line 818
    .local v14, "year":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v17

    .line 819
    .local v17, "month":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v21

    .line 820
    .local v21, "day":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getHour()I

    move-result v22

    .line 821
    .local v22, "hour":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v23

    .line 822
    .local v23, "minute":I
    invoke-virtual {v13}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v24

    .line 824
    .local v24, "second":I
    move/from16 v25, v3

    const/16 v3, 0x7d0

    if-le v14, v3, :cond_14e

    add-int/lit16 v3, v14, -0x7d0

    goto :goto_150

    :cond_14e
    add-int/lit16 v3, v14, -0x76c

    .line 825
    .end local v14    # "year":I
    .local v3, "year":I
    :goto_150
    rem-int/lit8 v14, v3, 0xa

    and-int/lit8 v14, v14, 0xf

    const/16 v26, 0x4

    shl-int/lit8 v14, v14, 0x4

    div-int/lit8 v27, v3, 0xa

    and-int/lit8 v27, v27, 0xf

    or-int v14, v14, v27

    int-to-byte v14, v14

    aput-byte v14, v2, v25

    .line 826
    rem-int/lit8 v14, v17, 0xa

    and-int/lit8 v14, v14, 0xf

    shl-int/lit8 v14, v14, 0x4

    div-int/lit8 v27, v17, 0xa

    and-int/lit8 v27, v27, 0xf

    or-int v14, v14, v27

    int-to-byte v14, v14

    aput-byte v14, v2, v18

    .line 827
    rem-int/lit8 v14, v21, 0xa

    and-int/lit8 v14, v14, 0xf

    shl-int/lit8 v14, v14, 0x4

    div-int/lit8 v18, v21, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v14, v14, v18

    int-to-byte v14, v14

    aput-byte v14, v2, v19

    .line 828
    rem-int/lit8 v14, v22, 0xa

    and-int/lit8 v14, v14, 0xf

    shl-int/lit8 v14, v14, 0x4

    div-int/lit8 v18, v22, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v14, v14, v18

    int-to-byte v14, v14

    const/16 v18, 0x3

    aput-byte v14, v2, v18

    .line 829
    rem-int/lit8 v14, v23, 0xa

    and-int/lit8 v14, v14, 0xf

    shl-int/lit8 v14, v14, 0x4

    div-int/lit8 v18, v23, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v14, v14, v18

    int-to-byte v14, v14

    aput-byte v14, v2, v26

    .line 830
    rem-int/lit8 v14, v24, 0xa

    and-int/lit8 v14, v14, 0xf

    shl-int/lit8 v14, v14, 0x4

    div-int/lit8 v18, v24, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v14, v14, v18

    int-to-byte v14, v14

    const/16 v18, 0x5

    aput-byte v14, v2, v18

    .line 831
    rem-int/lit8 v14, v15, 0xa

    and-int/lit8 v14, v14, 0xf

    shl-int/lit8 v14, v14, 0x4

    div-int/lit8 v18, v15, 0xa

    and-int/lit8 v18, v18, 0xf

    or-int v14, v14, v18

    int-to-byte v14, v14

    const/16 v18, 0x6

    aput-byte v14, v2, v18

    .line 832
    if-eqz v16, :cond_1ca

    .line 833
    aget-byte v14, v2, v25

    or-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    aput-byte v14, v2, v25

    .line 835
    :cond_1ca
    array-length v14, v2

    move/from16 v1, v25

    invoke-virtual {v11, v2, v1, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 837
    array-length v14, v0

    invoke-virtual {v11, v0, v1, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 838
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 839
    return-object v10

    .line 777
    .end local v0    # "userData":[B
    .end local v2    # "scts":[B
    .end local v3    # "year":I
    .end local v8    # "zoneDateTime":Ljava/time/ZonedDateTime;
    .end local v13    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v15    # "timezoneOffset":I
    .end local v17    # "month":I
    .end local v21    # "day":I
    .end local v22    # "hour":I
    .end local v23    # "minute":I
    .end local v24    # "second":I
    .local v16, "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1db
    move-exception v0

    .line 778
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v15, v14, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    return-object v17

    .line 774
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1e0
    move-exception v0

    .line 775
    .local v0, "ex1":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v15, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    return-object v17

    .line 700
    .end local v0    # "ex1":Lcom/android/internal/telephony/EncodeException;
    .end local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v5    # "encoding":I
    .end local v6    # "languageTable":I
    .end local v7    # "languageShiftTable":I
    .end local v9    # "header":[B
    .end local v10    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "oaBytes":[B
    .end local v16    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_1e5
    move-object/from16 v17, v2

    .line 701
    :goto_1e7
    return-object v17
.end method

.method public static blacklist getRelativeValidityPeriod(I)I
    .registers 3
    .param p0, "validityPeriod"    # I

    .line 216
    const/4 v0, -0x1

    .line 218
    .local v0, "relValidityPeriod":I
    const/4 v1, 0x5

    if-lt p0, v1, :cond_2b

    .line 219
    const/16 v1, 0x2d0

    if-gt p0, v1, :cond_d

    .line 220
    div-int/lit8 v1, p0, 0x5

    add-int/lit8 v0, v1, -0x1

    goto :goto_2b

    .line 221
    :cond_d
    const/16 v1, 0x5a0

    if-gt p0, v1, :cond_18

    .line 222
    add-int/lit16 v1, p0, -0x2d0

    div-int/lit8 v1, v1, 0x1e

    add-int/lit16 v0, v1, 0x8f

    goto :goto_2b

    .line 223
    :cond_18
    const v1, 0xa8c0

    if-gt p0, v1, :cond_22

    .line 224
    div-int/lit16 v1, p0, 0x5a0

    add-int/lit16 v0, v1, 0xa6

    goto :goto_2b

    .line 225
    :cond_22
    const v1, 0x9b0a0

    if-gt p0, v1, :cond_2b

    .line 226
    div-int/lit16 v1, p0, 0x2760

    add-int/lit16 v0, v1, 0xc0

    .line 229
    :cond_2b
    :goto_2b
    return v0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 601
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p0    # "scAddress":Ljava/lang/String;
    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "destinationPort":I
    .end local p3    # "data":[B
    .end local p4    # "statusReportRequested":Z
    .local v0, "scAddress":Ljava/lang/String;
    .local v1, "destinationAddress":Ljava/lang/String;
    .local v2, "destinationPort":I
    .local v3, "data":[B
    .local v4, "statusReportRequested":Z
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 17
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z
    .param p5, "messageRef"    # I

    .line 543
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 544
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 545
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 546
    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 548
    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 549
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 551
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    .line 553
    .local v3, "smsHeaderData":[B
    array-length v4, p3

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8c

    if-le v4, v5, :cond_44

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS data message may only contain "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v3

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SmsMessage"

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    return-object v1

    .line 559
    :cond_44
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v9, v4

    .line 560
    .local v9, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v7, 0x41

    move-object v5, p0

    move-object v6, p1

    move v8, p4

    move/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 565
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v4, :cond_58

    return-object v9

    .line 569
    :cond_58
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 574
    array-length v5, p3

    array-length v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 577
    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 578
    array-length v5, v3

    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 581
    array-length v5, p3

    invoke-virtual {v4, p3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 583
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 584
    return-object v9
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 5
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .line 505
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 15
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "validityPeriod"    # I

    .line 523
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    .end local p0    # "scAddress":Ljava/lang/String;
    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "statusReportRequested":Z
    .end local p4    # "validityPeriod":I
    .local v0, "scAddress":Ljava/lang/String;
    .local v1, "destinationAddress":Ljava/lang/String;
    .local v2, "message":Ljava/lang/String;
    .local v3, "statusReportRequested":Z
    .local v8, "validityPeriod":I
    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 13
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .line 248
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .end local p0    # "scAddress":Ljava/lang/String;
    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "statusReportRequested":Z
    .end local p4    # "header":[B
    .local v0, "scAddress":Ljava/lang/String;
    .local v1, "destinationAddress":Ljava/lang/String;
    .local v2, "message":Ljava/lang/String;
    .local v3, "statusReportRequested":Z
    .local v4, "header":[B
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 18
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I

    .line 273
    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    return-object v8
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 19
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .line 299
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v9

    return-object v9
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 28
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I
    .param p9, "messageRef"    # I

    .line 327
    move-object/from16 v1, p2

    if-eqz v1, :cond_153

    if-nez p1, :cond_a

    const/16 v17, 0x0

    goto/16 :goto_155

    .line 331
    :cond_a
    const/4 v3, 0x1

    const-string v4, "SmsMessage"

    const/4 v5, 0x0

    if-nez p5, :cond_82

    .line 333
    invoke-static {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 334
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 335
    .end local p5    # "encoding":I
    .local v6, "encoding":I
    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 336
    .end local p6    # "languageTable":I
    .local v7, "languageTable":I
    iget v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 338
    .end local p7    # "languageShiftTable":I
    .local v8, "languageShiftTable":I
    if-ne v6, v3, :cond_7f

    if-nez v7, :cond_20

    if-eqz v8, :cond_7f

    .line 340
    :cond_20
    if-eqz p4, :cond_71

    .line 341
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    .line 342
    .local v9, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v10, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v10, v7, :cond_32

    iget v10, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v10, v8, :cond_2f

    goto :goto_32

    :cond_2f
    move-object/from16 v10, p4

    goto :goto_70

    .line 344
    :cond_32
    :goto_32
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating language table in SMS header: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput v7, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 348
    iput v8, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 349
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v10

    .line 351
    .end local v9    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local p4    # "header":[B
    .local v10, "header":[B
    :goto_70
    goto :goto_8a

    .line 352
    .end local v10    # "header":[B
    .restart local p4    # "header":[B
    :cond_71
    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 353
    .restart local v9    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput v7, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 354
    iput v8, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 355
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v10

    .end local p4    # "header":[B
    .restart local v10    # "header":[B
    goto :goto_8a

    .line 360
    .end local v0    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v9    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v10    # "header":[B
    .restart local p4    # "header":[B
    :cond_7f
    move-object/from16 v10, p4

    goto :goto_8a

    .line 331
    .end local v6    # "encoding":I
    .end local v7    # "languageTable":I
    .end local v8    # "languageShiftTable":I
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_82
    move-object/from16 v10, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 360
    .end local p4    # "header":[B
    .end local p5    # "encoding":I
    .end local p6    # "languageTable":I
    .end local p7    # "languageShiftTable":I
    .restart local v6    # "encoding":I
    .restart local v7    # "languageTable":I
    .restart local v8    # "languageShiftTable":I
    .restart local v10    # "header":[B
    :goto_8a
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v15, v0

    .line 362
    .local v15, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v9

    .line 364
    .local v9, "relativeValidityPeriod":I
    const/4 v0, 0x1

    .line 366
    .local v0, "mtiByte":B
    if-eqz v10, :cond_9a

    .line 368
    or-int/lit8 v11, v0, 0x40

    int-to-byte v0, v11

    .line 371
    :cond_9a
    const/4 v11, -0x1

    if-eq v9, v11, :cond_a2

    .line 373
    or-int/lit8 v12, v0, 0x10

    int-to-byte v0, v12

    move v13, v0

    goto :goto_a3

    .line 371
    :cond_a2
    move v13, v0

    .line 376
    .end local v0    # "mtiByte":B
    .local v13, "mtiByte":B
    :goto_a3
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v14, p3

    move/from16 v16, p9

    const/16 v17, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 382
    .local v2, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v2, :cond_b4

    return-object v15

    .line 387
    :cond_b4
    const-string v11, "Implausible UnsupportedEncodingException "

    if-ne v6, v3, :cond_bd

    .line 388
    :try_start_b8
    invoke-static {v1, v10, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_bc
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b8 .. :try_end_bc} :catch_c3

    .local v0, "userData":[B
    goto :goto_c2

    .line 392
    .end local v0    # "userData":[B
    :cond_bd
    :try_start_bd
    invoke-static {v1, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_c1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bd .. :try_end_c1} :catch_c5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_bd .. :try_end_c1} :catch_c3

    .line 398
    .restart local v0    # "userData":[B
    nop

    .line 418
    :goto_c2
    goto :goto_dd

    .line 400
    .end local v0    # "userData":[B
    :catch_c3
    move-exception v0

    goto :goto_ca

    .line 393
    :catch_c5
    move-exception v0

    .line 394
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_c6
    invoke-static {v4, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_c6 .. :try_end_c9} :catch_c3

    .line 397
    return-object v17

    .line 400
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_ca
    move-object v12, v0

    .line 401
    .local v12, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {v12}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v0

    const-string v14, "Exceed size limitation EncodeException"

    if-ne v0, v3, :cond_d7

    .line 402
    invoke-static {v4, v14, v12}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    return-object v17

    .line 408
    :cond_d7
    :try_start_d7
    invoke-static {v1, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_db
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_d7 .. :try_end_db} :catch_14e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d7 .. :try_end_db} :catch_149

    .line 409
    .local v0, "userData":[B
    const/4 v6, 0x3

    .line 416
    nop

    .line 420
    .end local v12    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_dd
    const-string v11, "Message too long ("

    if-ne v6, v3, :cond_10c

    .line 421
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v12, 0xa0

    if-le v3, v12, :cond_108

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " septets)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v17

    .line 434
    :cond_108
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_138

    .line 436
    :cond_10c
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v12, 0x8c

    if-le v3, v12, :cond_133

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bytes)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v17

    .line 443
    :cond_133
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 447
    :goto_138
    const/4 v3, -0x1

    if-eq v9, v3, :cond_13e

    .line 448
    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    :cond_13e
    array-length v3, v0

    invoke-virtual {v2, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 452
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v15, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 453
    return-object v15

    .line 413
    .end local v0    # "userData":[B
    .restart local v12    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_149
    move-exception v0

    .line 414
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v4, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    return-object v17

    .line 410
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_14e
    move-exception v0

    .line 411
    .local v0, "ex1":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v4, v14, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    return-object v17

    .line 327
    .end local v0    # "ex1":Lcom/android/internal/telephony/EncodeException;
    .end local v2    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "encoding":I
    .end local v7    # "languageTable":I
    .end local v8    # "languageShiftTable":I
    .end local v9    # "relativeValidityPeriod":I
    .end local v10    # "header":[B
    .end local v12    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v13    # "mtiByte":B
    .end local v15    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local p4    # "header":[B
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_153
    const/16 v17, 0x0

    .line 328
    :goto_155
    return-object v17
.end method

.method private static greylist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .line 623
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p0    # "scAddress":Ljava/lang/String;
    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "mtiByte":B
    .end local p3    # "statusReportRequested":Z
    .end local p4    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .local v0, "scAddress":Ljava/lang/String;
    .local v1, "destinationAddress":Ljava/lang/String;
    .local v2, "mtiByte":B
    .local v3, "statusReportRequested":Z
    .local v4, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;
    .registers 13
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .param p5, "messageRef"    # I

    .line 645
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 649
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 650
    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_13

    .line 652
    :cond_d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 657
    :goto_13
    if-eqz p3, :cond_18

    .line 659
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 662
    :cond_18
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 665
    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 669
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 672
    .local v2, "daBytes":[B
    if-nez v2, :cond_25

    return-object v1

    .line 676
    :cond_25
    array-length v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    .line 677
    array-length v4, v2

    sub-int/2addr v4, v3

    aget-byte v4, v2, v4

    const/16 v5, 0xf0

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_35

    goto :goto_36

    :cond_35
    move v3, v6

    :goto_36
    sub-int/2addr v1, v3

    .line 676
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 680
    array-length v1, v2

    invoke-virtual {v0, v2, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 683
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 684
    return-object v0
.end method

.method public static blacklist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 4
    .param p0, "pdu"    # Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 191
    .local v0, "len":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, "smscLen":I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private blacklist parsePdu([B)V
    .registers 6
    .param p1, "pdu"    # [B

    .line 1265
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1269
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1271
    .local v0, "p":Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1273
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1281
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    .line 1283
    .local v1, "firstByte":I
    and-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 1284
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v2, :pswitch_data_32

    .line 1300
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1296
    :pswitch_24
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1297
    goto :goto_30

    .line 1293
    :pswitch_28
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1294
    goto :goto_30

    .line 1290
    :pswitch_2c
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1291
    nop

    .line 1302
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method private blacklist parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 1356
    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1358
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1367
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1371
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1379
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1383
    and-int/lit8 v0, p2, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 1385
    .local v1, "hasUserDataHeader":Z
    :goto_2f
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1386
    return-void
.end method

.method private blacklist parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1314
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1316
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1318
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1320
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 1322
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 1325
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1327
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    .line 1328
    .local v1, "extraParams":I
    move v2, v1

    .line 1329
    .local v2, "moreExtraParams":I
    :goto_29
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_32

    .line 1333
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_29

    .line 1337
    :cond_32
    and-int/lit8 v3, v1, 0x78

    if-nez v3, :cond_59

    .line 1339
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_40

    .line 1340
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1343
    :cond_40
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_4a

    .line 1344
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1347
    :cond_4a
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_59

    .line 1348
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_55

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    .line 1349
    .local v0, "hasUserDataHeader":Z
    :goto_56
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1353
    .end local v0    # "hasUserDataHeader":Z
    .end local v1    # "extraParams":I
    .end local v2    # "moreExtraParams":I
    :cond_59
    return-void
.end method

.method private blacklist parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 9
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 1395
    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1398
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1400
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1402
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1408
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1412
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1420
    const/4 v0, 0x0

    .line 1421
    .local v0, "validityPeriodLength":I
    shr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x3

    .line 1422
    .local v3, "validityPeriodFormat":I
    if-nez v3, :cond_30

    .line 1423
    const/4 v0, 0x0

    goto :goto_36

    .line 1424
    :cond_30
    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    .line 1425
    const/4 v0, 0x1

    goto :goto_36

    .line 1427
    :cond_35
    const/4 v0, 0x7

    .line 1431
    :goto_36
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "validityPeriodLength":I
    .local v4, "validityPeriodLength":I
    if-lez v0, :cond_3f

    .line 1432
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v0, v4

    goto :goto_36

    .line 1435
    :cond_3f
    and-int/lit8 v0, p2, 0x40

    const/16 v5, 0x40

    if-ne v0, v5, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    .line 1437
    .local v1, "hasUserDataHeader":Z
    :goto_47
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1438
    return-void
.end method

.method private blacklist parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .registers 19
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1449
    .local v3, "hasMessageClass":Z
    const/4 v4, 0x0

    .line 1451
    .local v4, "userDataCompressed":Z
    const/4 v5, 0x0

    .line 1453
    .local v5, "encodingType":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 1455
    .local v6, "r":Landroid/content/res/Resources;
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v8, 0x80

    and-int/2addr v7, v8

    const-string v9, " Dont store = "

    const v10, 0x111024f

    const/16 v11, 0xd0

    const/16 v12, 0xe0

    const-string v13, "SmsMessage"

    const/16 v14, 0xf0

    if-nez v7, :cond_8d

    .line 1456
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_29

    const/4 v7, 0x1

    goto :goto_2a

    :cond_29
    const/4 v7, 0x0

    :goto_2a
    move v4, v7

    .line 1457
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    goto :goto_34

    :cond_33
    const/4 v7, 0x0

    :goto_34
    move v3, v7

    .line 1459
    if-eqz v4, :cond_53

    .line 1460
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    .line 1463
    :cond_53
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_2ba

    goto :goto_8b

    .line 1469
    :pswitch_5d
    const/4 v5, 0x3

    .line 1470
    goto :goto_8b

    .line 1475
    :pswitch_5f
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1477
    const/4 v5, 0x2

    .line 1478
    goto :goto_8b

    .line 1482
    :cond_67
    :pswitch_67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const v7, 0x10e016f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    goto :goto_8b

    .line 1465
    :pswitch_89
    const/4 v5, 0x1

    .line 1466
    nop

    .line 1486
    :goto_8b
    goto/16 :goto_179

    .line 1489
    :cond_8d
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v14

    if-ne v7, v14, :cond_a0

    .line 1490
    const/4 v3, 0x1

    .line 1491
    const/4 v4, 0x0

    .line 1493
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_9d

    .line 1495
    const/4 v5, 0x1

    goto/16 :goto_179

    .line 1498
    :cond_9d
    const/4 v5, 0x2

    goto/16 :goto_179

    .line 1500
    :cond_a0
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v14

    const/16 v15, 0xc0

    if-eq v7, v15, :cond_f8

    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v14

    if-eq v7, v11, :cond_f8

    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v14

    if-ne v7, v12, :cond_b2

    goto :goto_f8

    .line 1541
    :cond_b2
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v15

    if-ne v7, v8, :cond_dc

    .line 1544
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v15, 0x84

    if-ne v7, v15, :cond_c0

    .line 1546
    const/4 v5, 0x4

    goto/16 :goto_179

    .line 1548
    :cond_c0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    .line 1552
    :cond_dc
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_179

    .line 1509
    :cond_f8
    :goto_f8
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v14

    if-ne v7, v12, :cond_ff

    .line 1510
    const/4 v5, 0x3

    goto :goto_100

    .line 1512
    :cond_ff
    const/4 v5, 0x1

    .line 1515
    :goto_100
    const/4 v4, 0x0

    .line 1516
    iget v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v10, 0x8

    and-int/2addr v7, v10

    if-ne v7, v10, :cond_10a

    const/4 v7, 0x1

    goto :goto_10b

    :cond_10a
    const/4 v7, 0x0

    .line 1520
    .local v7, "active":Z
    :goto_10b
    iget v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v10, v10, 0x3

    if-nez v10, :cond_15b

    .line 1521
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1522
    iput-boolean v7, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1523
    iget v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v10, v14

    if-ne v10, v15, :cond_11d

    const/4 v10, 0x1

    goto :goto_11e

    :cond_11d
    const/4 v10, 0x0

    :goto_11e
    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1526
    const/4 v10, 0x1

    if-ne v7, v10, :cond_127

    .line 1527
    const/4 v10, -0x1

    iput v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_12a

    .line 1529
    :cond_127
    const/4 v10, 0x0

    iput v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1532
    :goto_12a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " vmail count = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    .line 1537
    :cond_15b
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1538
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for fax/email/other: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    .end local v7    # "active":Z
    :goto_178
    nop

    .line 1557
    :goto_179
    const/4 v10, 0x1

    if-ne v5, v10, :cond_17e

    const/4 v7, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v7, 0x0

    :goto_17f
    invoke-virtual {v1, v2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v7

    .line 1559
    .local v7, "count":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    .line 1560
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1561
    iput v5, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReceivedEncodingType:I

    .line 1571
    if-eqz v2, :cond_24d

    iget-object v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_24d

    .line 1572
    iget-object v10, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1a5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_24d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 1573
    .local v15, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v12, v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v12, v12, 0xff

    .line 1580
    .local v12, "msgInd":I
    if-eqz v12, :cond_1d4

    if-ne v12, v8, :cond_1ba

    goto :goto_1d4

    .line 1626
    :cond_1ba
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0xf0

    goto/16 :goto_245

    .line 1581
    :cond_1d4
    :goto_1d4
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1582
    if-ne v12, v8, :cond_1e1

    .line 1584
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    const/16 v8, 0xe0

    const/16 v14, 0xf0

    goto :goto_206

    .line 1585
    :cond_1e1
    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v11, :cond_202

    .line 1593
    iget v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v14, 0xf0

    and-int/2addr v11, v14

    const/16 v8, 0xd0

    if-eq v11, v8, :cond_1f6

    iget v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v11, v14

    const/16 v8, 0xe0

    if-ne v11, v8, :cond_1fe

    goto :goto_1f8

    :cond_1f6
    const/16 v8, 0xe0

    :goto_1f8
    iget v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v11, v11, 0x3

    if-eqz v11, :cond_206

    .line 1599
    :cond_1fe
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto :goto_206

    .line 1585
    :cond_202
    const/16 v8, 0xe0

    const/16 v14, 0xf0

    .line 1603
    :cond_206
    :goto_206
    iget v11, v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v11, v11, 0xff

    iput v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1611
    iget v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v11, :cond_215

    .line 1612
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    const/4 v8, 0x0

    goto :goto_219

    .line 1614
    :cond_215
    const/4 v11, 0x1

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1616
    :goto_219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " Vmail count = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    .end local v12    # "msgInd":I
    .end local v15    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :goto_245
    const/16 v8, 0x80

    const/16 v11, 0xd0

    const/16 v12, 0xe0

    goto/16 :goto_1a5

    .line 1632
    :cond_24d
    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_2c6

    goto :goto_28e

    .line 1659
    :pswitch_252
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_28e

    .line 1655
    :pswitch_259
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1656
    goto :goto_28e

    .line 1640
    :pswitch_260
    const v9, 0x111024f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_270

    .line 1642
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_28e

    .line 1644
    :cond_270
    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1646
    goto :goto_28e

    .line 1649
    :pswitch_273
    nop

    .line 1650
    if-eqz v2, :cond_27b

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v10, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_27c

    :cond_27b
    const/4 v10, 0x0

    .line 1651
    :goto_27c
    if-eqz v2, :cond_283

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v15, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_284

    :cond_283
    const/4 v15, 0x0

    .line 1649
    :goto_284
    invoke-virtual {v1, v7, v10, v15}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1652
    goto :goto_28e

    .line 1634
    :pswitch_28b
    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1635
    nop

    .line 1665
    :goto_28e
    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v8, :cond_295

    .line 1666
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1669
    :cond_295
    if-nez v3, :cond_29c

    .line 1670
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_2b8

    .line 1672
    :cond_29c
    iget v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v8, v8, 0x3

    packed-switch v8, :pswitch_data_2d4

    goto :goto_2b8

    .line 1683
    :pswitch_2a4
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_2b8

    .line 1680
    :pswitch_2a9
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1681
    goto :goto_2b8

    .line 1677
    :pswitch_2ae
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1678
    goto :goto_2b8

    .line 1674
    :pswitch_2b3
    sget-object v8, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1675
    nop

    .line 1687
    :goto_2b8
    return-void

    nop

    :pswitch_data_2ba
    .packed-switch 0x0
        :pswitch_89
        :pswitch_5f
        :pswitch_5d
        :pswitch_67
    .end packed-switch

    :pswitch_data_2c6
    .packed-switch 0x0
        :pswitch_28b
        :pswitch_273
        :pswitch_260
        :pswitch_259
        :pswitch_252
    .end packed-switch

    :pswitch_data_2d4
    .packed-switch 0x0
        :pswitch_2b3
        :pswitch_2ae
        :pswitch_2a9
        :pswitch_2a4
    .end packed-switch
.end method


# virtual methods
.method blacklist getDataCodingScheme()I
    .registers 2

    .line 1174
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public blacklist getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .registers 2

    .line 1694
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public blacklist getNumOfVoicemails()I
    .registers 3

    .line 1719
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1720
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1721
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1722
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_20

    .line 1724
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1726
    :goto_20
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_27
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0
.end method

.method public blacklist getProtocolIdentifier()I
    .registers 2

    .line 1166
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public greylist-max-r getStatus()I
    .registers 2

    .line 1240
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public blacklist isCphsMwiMessage()Z
    .registers 2

    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1189
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1188
    :goto_18
    return v0
.end method

.method public greylist isMWIClearMessage()Z
    .registers 3

    .line 1196
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_a

    .line 1197
    return v1

    .line 1200
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1201
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1200
    :goto_1a
    return v1
.end method

.method public greylist isMWISetMessage()Z
    .registers 3

    .line 1208
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_a

    .line 1209
    return v1

    .line 1212
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1213
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1212
    :goto_1a
    return v1
.end method

.method public greylist isMwiDontStore()Z
    .registers 4

    .line 1220
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v0, :cond_a

    .line 1221
    return v1

    .line 1224
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1228
    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1229
    return v1

    .line 1233
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isReplace()Z
    .registers 3

    .line 1180
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public blacklist isReplyPathPresent()Z
    .registers 2

    .line 1253
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public greylist-max-r isStatusReportMessage()Z
    .registers 2

    .line 1247
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public blacklist isTypeZero()Z
    .registers 3

    .line 140
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist isUsimDataDownload()Z
    .registers 3

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
