.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B

.field private static final VDBG:Z


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    #@3
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "isEntireMsg"    # Z

    #@0
    .prologue
    .line 466
    const/4 v0, 0x0

    #@1
    .line 467
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    .line 468
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1120092

    #@8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 469
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 471
    .end local v0    # "newMsgBody":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 472
    move-object v0, p0

    #@19
    .line 474
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    #@1c
    move-result-object v2

    #@1d
    return-object v2
.end method

.method private convertDtmfToAscii(B)B
    .locals 1
    .param p1, "dtmfDigit"    # B

    #@0
    .prologue
    .line 994
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1012
    const/16 v0, 0x20

    #@5
    .line 1016
    .local v0, "asciiDigit":B
    :goto_0
    return v0

    #@6
    .line 995
    .end local v0    # "asciiDigit":B
    :pswitch_0
    const/16 v0, 0x44

    #@8
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@9
    .line 996
    .end local v0    # "asciiDigit":B
    :pswitch_1
    const/16 v0, 0x31

    #@b
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@c
    .line 997
    .end local v0    # "asciiDigit":B
    :pswitch_2
    const/16 v0, 0x32

    #@e
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@f
    .line 998
    .end local v0    # "asciiDigit":B
    :pswitch_3
    const/16 v0, 0x33

    #@11
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@12
    .line 999
    .end local v0    # "asciiDigit":B
    :pswitch_4
    const/16 v0, 0x34

    #@14
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@15
    .line 1000
    .end local v0    # "asciiDigit":B
    :pswitch_5
    const/16 v0, 0x35

    #@17
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@18
    .line 1001
    .end local v0    # "asciiDigit":B
    :pswitch_6
    const/16 v0, 0x36

    #@1a
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@1b
    .line 1002
    .end local v0    # "asciiDigit":B
    :pswitch_7
    const/16 v0, 0x37

    #@1d
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@1e
    .line 1003
    .end local v0    # "asciiDigit":B
    :pswitch_8
    const/16 v0, 0x38

    #@20
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@21
    .line 1004
    .end local v0    # "asciiDigit":B
    :pswitch_9
    const/16 v0, 0x39

    #@23
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@24
    .line 1005
    .end local v0    # "asciiDigit":B
    :pswitch_a
    const/16 v0, 0x30

    #@26
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@27
    .line 1006
    .end local v0    # "asciiDigit":B
    :pswitch_b
    const/16 v0, 0x2a

    #@29
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@2a
    .line 1007
    .end local v0    # "asciiDigit":B
    :pswitch_c
    const/16 v0, 0x23

    #@2c
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@2d
    .line 1008
    .end local v0    # "asciiDigit":B
    :pswitch_d
    const/16 v0, 0x41

    #@2f
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@30
    .line 1009
    .end local v0    # "asciiDigit":B
    :pswitch_e
    const/16 v0, 0x42

    #@32
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@33
    .line 1010
    .end local v0    # "asciiDigit":B
    :pswitch_f
    const/16 v0, 0x43

    #@35
    .restart local v0    # "asciiDigit":B
    goto :goto_0

    #@36
    .line 994
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 240
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@3
    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    #@6
    .line 242
    .local v1, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

    #@8
    .line 247
    const/4 v4, 0x0

    #@9
    aget-byte v4, p1, v4

    #@b
    and-int/lit8 v4, v4, 0x1

    #@d
    if-nez v4, :cond_0

    #@f
    .line 248
    const-string/jumbo v4, "SmsMessage"

    #@12
    const-string/jumbo v5, "SMS parsing failed: Trying to parse a free record"

    #@15
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 249
    return-object v6

    #@19
    .line 251
    :cond_0
    const/4 v4, 0x0

    #@1a
    aget-byte v4, p1, v4

    #@1c
    and-int/lit8 v4, v4, 0x7

    #@1e
    iput v4, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    #@20
    .line 256
    const/4 v4, 0x1

    #@21
    aget-byte v3, p1, v4

    #@23
    .line 260
    .local v3, "size":I
    new-array v2, v3, [B

    #@25
    .line 261
    .local v2, "pdu":[B
    const/4 v4, 0x2

    #@26
    const/4 v5, 0x0

    #@27
    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2a
    .line 264
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 265
    return-object v1

    #@2e
    .line 266
    .end local v1    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2    # "pdu":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    #@2f
    .line 267
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "SmsMessage"

    #@32
    const-string/jumbo v5, "SMS PDU parsing failed: "

    #@35
    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 268
    return-object v6
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 112
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@3
    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    #@6
    .line 115
    .local v2, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 116
    return-object v2

    #@a
    .line 120
    :catch_0
    move-exception v0

    #@b
    .line 121
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "SmsMessage"

    #@e
    const-string/jumbo v4, "SMS PDU parsing failed with out of memory: "

    #@11
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    .line 122
    return-object v5

    #@15
    .line 117
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    #@16
    .line 118
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "SmsMessage"

    #@19
    const-string/jumbo v4, "SMS PDU parsing failed: "

    #@1c
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 119
    return-object v5
.end method

.method private createPdu()V
    .locals 8

    #@0
    .prologue
    .line 947
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@2
    .line 948
    .local v3, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@4
    .line 949
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@6
    const/16 v5, 0x64

    #@8
    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@b
    .line 950
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    #@d
    new-instance v5, Ljava/io/BufferedOutputStream;

    #@f
    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@12
    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@15
    .line 953
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    #@17
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1a
    .line 954
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@1c
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1f
    .line 955
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    #@21
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@24
    .line 957
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@26
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@29
    .line 958
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@2b
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@2e
    .line 959
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@30
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@33
    .line 960
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@35
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@38
    .line 961
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@3a
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@3d
    .line 962
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@3f
    iget-object v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@41
    array-length v6, v6

    #@42
    const/4 v7, 0x0

    #@43
    invoke-virtual {v2, v5, v7, v6}, Ljava/io/DataOutputStream;->write([BII)V

    #@46
    .line 964
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    #@48
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@4b
    .line 966
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    #@4d
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@50
    .line 967
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    #@52
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@55
    .line 968
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    #@57
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@5a
    .line 970
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@5c
    array-length v5, v5

    #@5d
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@60
    .line 971
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@62
    iget-object v6, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@64
    array-length v6, v6

    #@65
    const/4 v7, 0x0

    #@66
    invoke-virtual {v2, v5, v7, v6}, Ljava/io/DataOutputStream;->write([BII)V

    #@69
    .line 972
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    #@6c
    .line 982
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6f
    move-result-object v5

    #@70
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 946
    :goto_0
    return-void

    #@73
    .line 983
    :catch_0
    move-exception v4

    #@74
    .line 984
    .local v4, "ex":Ljava/io/IOException;
    const-string/jumbo v5, "SmsMessage"

    #@77
    new-instance v6, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v7, "createPdu: conversion from object to byte array failed: "

    #@7f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_0
.end method

.method static declared-synchronized getNextMessageId()I
    .locals 6

    #@0
    .prologue
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@2
    monitor-enter v3

    #@3
    .line 838
    :try_start_0
    const-string/jumbo v2, "persist.radio.cdma.msgid"

    #@6
    const/4 v4, 0x1

    #@7
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    .line 839
    .local v0, "msgId":I
    const v2, 0xffff

    #@e
    rem-int v2, v0, v2

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 840
    .local v1, "nextMsgId":Ljava/lang/String;
    const-string/jumbo v2, "persist.radio.cdma.msgid"

    #@19
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 841
    const-string/jumbo v2, "CDMA:SMS"

    #@1f
    const/4 v4, 0x2

    #@20
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_0

    #@26
    .line 842
    const-string/jumbo v2, "SmsMessage"

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "next persist.radio.cdma.msgid = "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 843
    const-string/jumbo v2, "SmsMessage"

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "readback gets "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 844
    const-string/jumbo v5, "persist.radio.cdma.msgid"

    #@52
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    .line 843
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    :cond_0
    monitor-exit v3

    #@62
    .line 846
    return v0

    #@63
    .end local v1    # "nextMsgId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@64
    monitor-exit v3

    #@65
    throw v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z

    #@0
    .prologue
    .line 373
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 344
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@3
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    #@6
    .line 345
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@8
    .line 346
    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    #@a
    .line 347
    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    #@c
    .line 349
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    #@e
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    #@11
    .line 350
    .local v1, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@13
    .line 352
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    #@15
    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    #@18
    .line 353
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@1a
    .line 354
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    #@1c
    .line 355
    const/4 v3, 0x1

    #@1d
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    #@1f
    .line 356
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@21
    .line 358
    invoke-static {p1, p4, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@24
    move-result-object v3

    #@25
    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 312
    if-eqz p2, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 313
    :cond_0
    return-object v1

    #@6
    .line 316
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    #@8
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    #@b
    .line 317
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@d
    .line 318
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@f
    .line 319
    invoke-static {p1, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .param p0, "pdu"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    const-string/jumbo v0, "SmsMessage"

    #@3
    const-string/jumbo v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 278
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 11
    .param p0, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 132
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    #@3
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    #@6
    .line 133
    .local v7, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@8
    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    #@b
    .line 134
    .local v5, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@d
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    #@10
    .line 135
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    #@12
    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    #@15
    .line 142
    .local v8, "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v9

    #@19
    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@1b
    .line 144
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@1e
    move-result v9

    #@1f
    if-eqz v9, :cond_1

    #@21
    .line 145
    const/4 v9, 0x1

    #@22
    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    #@24
    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v9

    #@28
    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    #@2a
    .line 158
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v1

    #@2e
    .line 159
    .local v1, "addressDigitMode":I
    and-int/lit16 v9, v1, 0xff

    #@30
    int-to-byte v9, v9

    #@31
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@33
    .line 160
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v9

    #@37
    and-int/lit16 v9, v9, 0xff

    #@39
    int-to-byte v9, v9

    #@3a
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@3c
    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v9

    #@40
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@42
    .line 162
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v9

    #@46
    and-int/lit16 v9, v9, 0xff

    #@48
    int-to-byte v9, v9

    #@49
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@4b
    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@4e
    move-result v2

    #@4f
    .line 164
    .local v2, "count":B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@51
    .line 165
    new-array v4, v2, [B

    #@53
    .line 167
    .local v4, "data":[B
    const/4 v6, 0x0

    #@54
    .local v6, "index":I
    :goto_1
    if-ge v6, v2, :cond_3

    #@56
    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@59
    move-result v9

    #@5a
    aput-byte v9, v4, v6

    #@5c
    .line 171
    if-nez v1, :cond_0

    #@5e
    .line 172
    aget-byte v9, v4, v6

    #@60
    invoke-direct {v7, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    #@63
    move-result v9

    #@64
    aput-byte v9, v4, v6

    #@66
    .line 167
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@68
    goto :goto_1

    #@69
    .line 148
    .end local v1    # "addressDigitMode":I
    .end local v2    # "count":B
    .end local v4    # "data":[B
    .end local v6    # "index":I
    :cond_1
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@6b
    if-nez v9, :cond_2

    #@6d
    .line 150
    const/4 v9, 0x2

    #@6e
    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    #@70
    goto :goto_0

    #@71
    .line 152
    :cond_2
    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    #@73
    goto :goto_0

    #@74
    .line 176
    .restart local v1    # "addressDigitMode":I
    .restart local v2    # "count":B
    .restart local v4    # "data":[B
    .restart local v6    # "index":I
    :cond_3
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@76
    .line 178
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v9

    #@7a
    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    #@7c
    .line 179
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@7f
    move-result v9

    #@80
    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    #@82
    .line 180
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@85
    move-result v2

    #@86
    .line 182
    if-gez v2, :cond_4

    #@88
    .line 183
    const/4 v2, 0x0

    #@89
    .line 188
    .end local v2    # "count":B
    :cond_4
    new-array v4, v2, [B

    #@8b
    .line 190
    const/4 v6, 0x0

    #@8c
    :goto_2
    if-ge v6, v2, :cond_5

    #@8e
    .line 191
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@91
    move-result v9

    #@92
    aput-byte v9, v4, v6

    #@94
    .line 190
    add-int/lit8 v6, v6, 0x1

    #@96
    goto :goto_2

    #@97
    .line 194
    :cond_5
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    #@99
    .line 204
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v3

    #@9d
    .line 205
    .local v3, "countInt":I
    if-gez v3, :cond_6

    #@9f
    .line 206
    const/4 v3, 0x0

    #@a0
    .line 209
    :cond_6
    new-array v4, v3, [B

    #@a2
    .line 210
    const/4 v6, 0x0

    #@a3
    :goto_3
    if-ge v6, v3, :cond_7

    #@a5
    .line 211
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@a8
    move-result v9

    #@a9
    aput-byte v9, v4, v6

    #@ab
    .line 210
    add-int/lit8 v6, v6, 0x1

    #@ad
    goto :goto_3

    #@ae
    .line 214
    :cond_7
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@b0
    .line 217
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@b2
    .line 218
    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    #@b4
    .line 219
    iput-object v0, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@b6
    .line 220
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@b8
    .line 223
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    #@bb
    .line 225
    return-object v7
.end method

.method private parsePdu([B)V
    .locals 11
    .param p1, "pdu"    # [B

    #@0
    .prologue
    .line 514
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    .line 515
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    #@7
    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 518
    .local v3, "dis":Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@c
    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    #@f
    .line 519
    .local v4, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@11
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    #@14
    .line 522
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@17
    move-result v8

    #@18
    iput v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    #@1a
    .line 523
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@1d
    move-result v8

    #@1e
    iput v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@20
    .line 524
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@23
    move-result v8

    #@24
    iput v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    #@26
    .line 526
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@29
    move-result v8

    #@2a
    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@2c
    .line 527
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@2f
    move-result v8

    #@30
    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@32
    .line 528
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@35
    move-result v8

    #@36
    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@38
    .line 529
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@3b
    move-result v8

    #@3c
    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@3e
    .line 531
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@41
    move-result v7

    #@42
    .line 532
    .local v7, "length":I
    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@44
    .line 535
    array-length v8, p1

    #@45
    if-le v7, v8, :cond_0

    #@47
    .line 536
    new-instance v8, Ljava/lang/RuntimeException;

    #@49
    .line 537
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v10, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    #@51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    .line 538
    const-string/jumbo v10, " > pdu len "

    #@5c
    .line 537
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    .line 538
    array-length v10, p1

    #@61
    .line 537
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v9

    #@69
    .line 536
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@6d
    .line 560
    .end local v7    # "length":I
    :catch_0
    move-exception v5

    #@6e
    .line 561
    .local v5, "ex":Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@70
    .line 562
    new-instance v9, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v10, "createFromPdu: conversion from byte array to object failed: "

    #@78
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v9

    #@80
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v9

    #@84
    .line 561
    invoke-direct {v8, v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@87
    throw v8

    #@88
    .line 540
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v7    # "length":I
    :cond_0
    :try_start_1
    new-array v8, v7, [B

    #@8a
    iput-object v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@8c
    .line 541
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@8e
    const/4 v9, 0x0

    #@8f
    invoke-virtual {v3, v8, v9, v7}, Ljava/io/DataInputStream;->read([BII)I

    #@92
    .line 543
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@95
    move-result v8

    #@96
    iput v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    #@98
    .line 545
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@9b
    move-result v8

    #@9c
    iput-byte v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    #@9e
    .line 546
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@a1
    move-result v8

    #@a2
    iput-byte v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    #@a4
    .line 547
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    #@a7
    move-result v8

    #@a8
    iput-byte v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    #@aa
    .line 550
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    #@ad
    move-result v2

    #@ae
    .line 552
    .local v2, "bearerDataLength":I
    array-length v8, p1

    #@af
    if-le v2, v8, :cond_1

    #@b1
    .line 553
    new-instance v8, Ljava/lang/RuntimeException;

    #@b3
    .line 554
    new-instance v9, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v10, "createFromPdu: Invalid pdu, bearerDataLength "

    #@bb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v9

    #@bf
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v9

    #@c3
    .line 555
    const-string/jumbo v10, " > pdu len "

    #@c6
    .line 554
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v9

    #@ca
    .line 555
    array-length v10, p1

    #@cb
    .line 554
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v9

    #@cf
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v9

    #@d3
    .line 553
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@d7
    .line 563
    .end local v2    # "bearerDataLength":I
    .end local v7    # "length":I
    :catch_1
    move-exception v6

    #@d8
    .line 564
    .local v6, "ex":Ljava/lang/Exception;
    const-string/jumbo v8, "SmsMessage"

    #@db
    new-instance v9, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v10, "createFromPdu: conversion from byte array to object failed: "

    #@e3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v9

    #@eb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v9

    #@ef
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    .line 568
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@f4
    .line 569
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@f6
    .line 570
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@f8
    .line 571
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    #@fa
    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    #@fd
    .line 513
    return-void

    #@fe
    .line 557
    .restart local v2    # "bearerDataLength":I
    .restart local v7    # "length":I
    :cond_1
    :try_start_2
    new-array v8, v2, [B

    #@100
    iput-object v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@102
    .line 558
    iget-object v8, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@104
    const/4 v9, 0x0

    #@105
    invoke-virtual {v3, v8, v9, v2}, Ljava/io/DataInputStream;->read([BII)I

    #@108
    .line 559
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@10b
    goto :goto_0
.end method

.method private parsePduFromEfRecord([B)V
    .locals 24
    .param p1, "pdu"    # [B

    #@0
    .prologue
    .line 580
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    .line 581
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    #@9
    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@c
    .line 582
    .local v8, "dis":Ljava/io/DataInputStream;
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@e
    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    #@11
    .line 583
    .local v9, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@13
    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    #@16
    .line 584
    .local v2, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    #@18
    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    #@1b
    .line 587
    .local v17, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    #@1e
    move-result v21

    #@1f
    move/from16 v0, v21

    #@21
    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    #@23
    .line 589
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    #@26
    move-result v21

    #@27
    if-lez v21, :cond_9

    #@29
    .line 590
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    #@2c
    move-result v14

    #@2d
    .line 591
    .local v14, "parameterId":I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    #@30
    move-result v15

    #@31
    .line 592
    .local v15, "parameterLen":I
    new-array v13, v15, [B

    #@33
    .line 594
    .local v13, "parameterData":[B
    packed-switch v14, :pswitch_data_0

    #@36
    .line 694
    new-instance v21, Ljava/lang/Exception;

    #@38
    new-instance v22, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v23, "unsupported parameterId ("

    #@40
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v22

    #@44
    move-object/from16 v0, v22

    #@46
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v22

    #@4a
    const-string/jumbo v23, ")"

    #@4d
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v22

    #@51
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v22

    #@55
    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@58
    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    .line 699
    .end local v13    # "parameterData":[B
    .end local v14    # "parameterId":I
    .end local v15    # "parameterLen":I
    :catch_0
    move-exception v10

    #@5a
    .line 700
    .local v10, "ex":Ljava/lang/Exception;
    const-string/jumbo v21, "SmsMessage"

    #@5d
    new-instance v22, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v23, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    #@65
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v22

    #@69
    move-object/from16 v0, v22

    #@6b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v22

    #@6f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v22

    #@73
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 704
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    #@78
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@7a
    .line 705
    iput-object v2, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@7c
    .line 706
    move-object/from16 v0, v17

    #@7e
    iput-object v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    #@80
    .line 707
    move-object/from16 v0, p0

    #@82
    iput-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@84
    .line 708
    move-object/from16 v0, p1

    #@86
    move-object/from16 v1, p0

    #@88
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    #@8a
    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    #@8d
    .line 579
    return-void

    #@8e
    .line 601
    .restart local v13    # "parameterData":[B
    .restart local v14    # "parameterId":I
    .restart local v15    # "parameterLen":I
    :pswitch_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@91
    move-result v21

    #@92
    move/from16 v0, v21

    #@94
    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@96
    .line 602
    const-string/jumbo v21, "SmsMessage"

    #@99
    new-instance v22, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v23, "teleservice = "

    #@a1
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v22

    #@a5
    iget v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@a7
    move/from16 v23, v0

    #@a9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v22

    #@ad
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v22

    #@b1
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b4
    goto/16 :goto_0

    #@b6
    .line 609
    :pswitch_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@b9
    move-result v21

    #@ba
    move/from16 v0, v21

    #@bc
    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    #@be
    goto/16 :goto_0

    #@c0
    .line 613
    :pswitch_2
    const/16 v21, 0x0

    #@c2
    move/from16 v0, v21

    #@c4
    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    #@c7
    .line 614
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    #@c9
    invoke-direct {v3, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@cc
    .line 615
    .local v3, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x1

    #@ce
    move/from16 v0, v21

    #@d0
    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@d3
    move-result v21

    #@d4
    move/from16 v0, v21

    #@d6
    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@d8
    .line 616
    const/16 v21, 0x1

    #@da
    move/from16 v0, v21

    #@dc
    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@df
    move-result v21

    #@e0
    move/from16 v0, v21

    #@e2
    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@e4
    .line 617
    const/4 v12, 0x0

    #@e5
    .line 618
    .local v12, "numberType":I
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@e7
    move/from16 v21, v0

    #@e9
    const/16 v22, 0x1

    #@eb
    move/from16 v0, v21

    #@ed
    move/from16 v1, v22

    #@ef
    if-ne v0, v1, :cond_1

    #@f1
    .line 619
    const/16 v21, 0x3

    #@f3
    move/from16 v0, v21

    #@f5
    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@f8
    move-result v12

    #@f9
    .line 620
    iput v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@fb
    .line 622
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@fd
    move/from16 v21, v0

    #@ff
    if-nez v21, :cond_1

    #@101
    .line 623
    const/16 v21, 0x4

    #@103
    move/from16 v0, v21

    #@105
    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@108
    move-result v21

    #@109
    move/from16 v0, v21

    #@10b
    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@10d
    .line 626
    :cond_1
    const/16 v21, 0x8

    #@10f
    move/from16 v0, v21

    #@111
    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@114
    move-result v21

    #@115
    move/from16 v0, v21

    #@117
    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@119
    .line 628
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@11b
    move/from16 v21, v0

    #@11d
    move/from16 v0, v21

    #@11f
    new-array v7, v0, [B

    #@121
    .line 629
    .local v7, "data":[B
    const/4 v4, 0x0

    #@122
    .line 631
    .local v4, "b":B
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@124
    move/from16 v21, v0

    #@126
    if-nez v21, :cond_2

    #@128
    .line 633
    const/4 v11, 0x0

    #@129
    .end local v4    # "b":B
    .local v11, "index":I
    :goto_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@12b
    move/from16 v21, v0

    #@12d
    move/from16 v0, v21

    #@12f
    if-ge v11, v0, :cond_4

    #@131
    .line 634
    const/16 v21, 0x4

    #@133
    move/from16 v0, v21

    #@135
    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@138
    move-result v21

    #@139
    and-int/lit8 v21, v21, 0xf

    #@13b
    move/from16 v0, v21

    #@13d
    int-to-byte v4, v0

    #@13e
    .line 637
    .local v4, "b":B
    move-object/from16 v0, p0

    #@140
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    #@143
    move-result v21

    #@144
    aput-byte v21, v7, v11

    #@146
    .line 633
    add-int/lit8 v11, v11, 0x1

    #@148
    goto :goto_2

    #@149
    .line 639
    .end local v11    # "index":I
    .local v4, "b":B
    :cond_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@14b
    move/from16 v21, v0

    #@14d
    const/16 v22, 0x1

    #@14f
    move/from16 v0, v21

    #@151
    move/from16 v1, v22

    #@153
    if-ne v0, v1, :cond_7

    #@155
    .line 640
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@157
    move/from16 v21, v0

    #@159
    if-nez v21, :cond_3

    #@15b
    .line 641
    const/4 v11, 0x0

    #@15c
    .end local v4    # "b":B
    .restart local v11    # "index":I
    :goto_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@15e
    move/from16 v21, v0

    #@160
    move/from16 v0, v21

    #@162
    if-ge v11, v0, :cond_4

    #@164
    .line 642
    const/16 v21, 0x8

    #@166
    move/from16 v0, v21

    #@168
    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@16b
    move-result v21

    #@16c
    move/from16 v0, v21

    #@16e
    and-int/lit16 v0, v0, 0xff

    #@170
    move/from16 v21, v0

    #@172
    move/from16 v0, v21

    #@174
    int-to-byte v4, v0

    #@175
    .line 643
    .local v4, "b":B
    aput-byte v4, v7, v11

    #@177
    .line 641
    add-int/lit8 v11, v11, 0x1

    #@179
    goto :goto_3

    #@17a
    .line 646
    .end local v11    # "index":I
    .local v4, "b":B
    :cond_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@17c
    move/from16 v21, v0

    #@17e
    const/16 v22, 0x1

    #@180
    move/from16 v0, v21

    #@182
    move/from16 v1, v22

    #@184
    if-ne v0, v1, :cond_6

    #@186
    .line 647
    const/16 v21, 0x2

    #@188
    move/from16 v0, v21

    #@18a
    if-ne v12, v0, :cond_5

    #@18c
    .line 648
    const-string/jumbo v21, "SmsMessage"

    #@18f
    const-string/jumbo v22, "TODO: Originating Addr is email id"

    #@192
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@195
    .line 658
    .end local v4    # "b":B
    :cond_4
    :goto_4
    iput-object v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@197
    .line 659
    const-string/jumbo v21, "SmsMessage"

    #@19a
    new-instance v22, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v23, "Originating Addr="

    #@1a2
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v22

    #@1a6
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v23

    #@1aa
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v22

    #@1ae
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v22

    #@1b2
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b5
    goto/16 :goto_0

    #@1b7
    .line 650
    .restart local v4    # "b":B
    :cond_5
    const-string/jumbo v21, "SmsMessage"

    #@1ba
    .line 651
    const-string/jumbo v22, "TODO: Originating Addr is data network address"

    #@1bd
    .line 650
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c0
    goto :goto_4

    #@1c1
    .line 653
    :cond_6
    const-string/jumbo v21, "SmsMessage"

    #@1c4
    const-string/jumbo v22, "Originating Addr is of incorrect type"

    #@1c7
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ca
    goto :goto_4

    #@1cb
    .line 656
    :cond_7
    const-string/jumbo v21, "SmsMessage"

    #@1ce
    const-string/jumbo v22, "Incorrect Digit mode"

    #@1d1
    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d4
    goto :goto_4

    #@1d5
    .line 663
    .end local v3    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v4    # "b":B
    .end local v7    # "data":[B
    .end local v12    # "numberType":I
    :pswitch_3
    const/16 v21, 0x0

    #@1d7
    move/from16 v0, v21

    #@1d9
    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    #@1dc
    .line 664
    new-instance v18, Lcom/android/internal/util/BitwiseInputStream;

    #@1de
    move-object/from16 v0, v18

    #@1e0
    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@1e3
    .line 665
    .local v18, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x3

    #@1e5
    move-object/from16 v0, v18

    #@1e7
    move/from16 v1, v21

    #@1e9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1ec
    move-result v21

    #@1ed
    move/from16 v0, v21

    #@1ef
    move-object/from16 v1, v17

    #@1f1
    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    #@1f3
    .line 666
    const/16 v21, 0x1

    #@1f5
    move-object/from16 v0, v18

    #@1f7
    move/from16 v1, v21

    #@1f9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@1fc
    move-result-object v21

    #@1fd
    const/16 v22, 0x0

    #@1ff
    aget-byte v21, v21, v22

    #@201
    move/from16 v0, v21

    #@203
    move-object/from16 v1, v17

    #@205
    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    #@207
    .line 667
    const/16 v21, 0x8

    #@209
    move-object/from16 v0, v18

    #@20b
    move/from16 v1, v21

    #@20d
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@210
    move-result v19

    #@211
    .line 668
    .local v19, "subAddrLen":I
    move/from16 v0, v19

    #@213
    new-array v0, v0, [B

    #@215
    move-object/from16 v20, v0

    #@217
    .line 669
    .local v20, "subdata":[B
    const/4 v11, 0x0

    #@218
    .restart local v11    # "index":I
    :goto_5
    move/from16 v0, v19

    #@21a
    if-ge v11, v0, :cond_8

    #@21c
    .line 670
    const/16 v21, 0x4

    #@21e
    move-object/from16 v0, v18

    #@220
    move/from16 v1, v21

    #@222
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@225
    move-result v21

    #@226
    move/from16 v0, v21

    #@228
    and-int/lit16 v0, v0, 0xff

    #@22a
    move/from16 v21, v0

    #@22c
    move/from16 v0, v21

    #@22e
    int-to-byte v4, v0

    #@22f
    .line 672
    .local v4, "b":B
    move-object/from16 v0, p0

    #@231
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    #@234
    move-result v21

    #@235
    aput-byte v21, v20, v11

    #@237
    .line 669
    add-int/lit8 v11, v11, 0x1

    #@239
    goto :goto_5

    #@23a
    .line 674
    .end local v4    # "b":B
    :cond_8
    move-object/from16 v0, v20

    #@23c
    move-object/from16 v1, v17

    #@23e
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    #@240
    goto/16 :goto_0

    #@242
    .line 677
    .end local v11    # "index":I
    .end local v18    # "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v19    # "subAddrLen":I
    .end local v20    # "subdata":[B
    :pswitch_4
    const/16 v21, 0x0

    #@244
    move/from16 v0, v21

    #@246
    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    #@249
    .line 678
    new-instance v16, Lcom/android/internal/util/BitwiseInputStream;

    #@24b
    move-object/from16 v0, v16

    #@24d
    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@250
    .line 679
    .local v16, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    #@252
    move-object/from16 v0, v16

    #@254
    move/from16 v1, v21

    #@256
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@259
    move-result v21

    #@25a
    move/from16 v0, v21

    #@25c
    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    #@25e
    goto/16 :goto_0

    #@260
    .line 682
    .end local v16    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_5
    const/16 v21, 0x0

    #@262
    move/from16 v0, v21

    #@264
    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    #@267
    .line 683
    new-instance v6, Lcom/android/internal/util/BitwiseInputStream;

    #@269
    invoke-direct {v6, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    #@26c
    .line 684
    .local v6, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    #@26e
    move/from16 v0, v21

    #@270
    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@273
    move-result-object v21

    #@274
    const/16 v22, 0x0

    #@276
    aget-byte v21, v21, v22

    #@278
    move/from16 v0, v21

    #@27a
    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    #@27c
    .line 685
    const/16 v21, 0x2

    #@27e
    move/from16 v0, v21

    #@280
    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@283
    move-result-object v21

    #@284
    const/16 v22, 0x0

    #@286
    aget-byte v21, v21, v22

    #@288
    move/from16 v0, v21

    #@28a
    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    #@28c
    .line 686
    iget-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    #@28e
    move/from16 v21, v0

    #@290
    if-eqz v21, :cond_0

    #@292
    .line 687
    const/16 v21, 0x8

    #@294
    move/from16 v0, v21

    #@296
    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    #@299
    move-result-object v21

    #@29a
    const/16 v22, 0x0

    #@29c
    aget-byte v21, v21, v22

    #@29e
    move/from16 v0, v21

    #@2a0
    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    #@2a2
    goto/16 :goto_0

    #@2a4
    .line 690
    .end local v6    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_6
    const/16 v21, 0x0

    #@2a6
    move/from16 v0, v21

    #@2a8
    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    #@2ab
    .line 691
    iput-object v13, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@2ad
    goto/16 :goto_0

    #@2af
    .line 697
    .end local v13    # "parameterData":[B
    .end local v14    # "parameterId":I
    .end local v15    # "parameterLen":I
    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    #@2b2
    .line 698
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@2b5
    goto/16 :goto_1

    #@2b7
    .line 594
    nop

    #@2b8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 12
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    #@0
    .prologue
    .line 871
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 870
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@7
    move-result-object v2

    #@8
    .line 872
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_0

    #@a
    const/4 v9, 0x0

    #@b
    return-object v9

    #@c
    .line 874
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@e
    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    #@11
    .line 875
    .local v1, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v9, 0x2

    #@12
    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@14
    .line 877
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    #@17
    move-result v9

    #@18
    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@1a
    .line 879
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    #@1c
    .line 880
    const/4 v9, 0x0

    #@1d
    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    #@1f
    .line 881
    const/4 v9, 0x0

    #@20
    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    #@22
    .line 882
    const/4 v9, 0x0

    #@23
    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    #@25
    .line 884
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@27
    .line 886
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    #@2a
    move-result-object v4

    #@2b
    .line 887
    .local v4, "encodedBearerData":[B
    const-string/jumbo v9, "CDMA:SMS"

    #@2e
    const/4 v10, 0x2

    #@2f
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@32
    move-result v9

    #@33
    if-eqz v9, :cond_1

    #@35
    .line 888
    const-string/jumbo v9, "SmsMessage"

    #@38
    new-instance v10, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v11, "MO (encoded) BearerData = "

    #@40
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v10

    #@48
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v10

    #@4c
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 889
    const-string/jumbo v9, "SmsMessage"

    #@52
    new-instance v10, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v11, "MO raw BearerData = \'"

    #@5a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v10

    #@5e
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@61
    move-result-object v11

    #@62
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    const-string/jumbo v11, "\'"

    #@69
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v10

    #@6d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v10

    #@71
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 891
    :cond_1
    if-nez v4, :cond_2

    #@76
    const/4 v9, 0x0

    #@77
    return-object v9

    #@78
    .line 893
    :cond_2
    iget-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    #@7a
    if-eqz v9, :cond_3

    #@7c
    .line 894
    const/16 v8, 0x1005

    #@7e
    .line 896
    .local v8, "teleservice":I
    :goto_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@80
    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    #@83
    .line 897
    .local v5, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v9, 0x0

    #@84
    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    #@86
    .line 898
    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@88
    .line 899
    iput-object v2, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@8a
    .line 900
    const/4 v9, 0x1

    #@8b
    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    #@8d
    .line 901
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@8f
    .line 913
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@91
    const/16 v9, 0x64

    #@93
    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@96
    .line 914
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    #@98
    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@9b
    .line 915
    .local v3, "dos":Ljava/io/DataOutputStream;
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@9d
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@a0
    .line 916
    const/4 v9, 0x0

    #@a1
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@a4
    .line 917
    const/4 v9, 0x0

    #@a5
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@a8
    .line 918
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@aa
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@ad
    .line 919
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@af
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@b2
    .line 920
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@b4
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@b7
    .line 921
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@b9
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@bc
    .line 922
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@be
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@c1
    .line 923
    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@c3
    iget-object v10, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@c5
    array-length v10, v10

    #@c6
    const/4 v11, 0x0

    #@c7
    invoke-virtual {v3, v9, v11, v10}, Ljava/io/DataOutputStream;->write([BII)V

    #@ca
    .line 925
    const/4 v9, 0x0

    #@cb
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@ce
    .line 926
    const/4 v9, 0x0

    #@cf
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@d2
    .line 927
    const/4 v9, 0x0

    #@d3
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@d6
    .line 928
    array-length v9, v4

    #@d7
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    #@da
    .line 929
    array-length v9, v4

    #@db
    const/4 v10, 0x0

    #@dc
    invoke-virtual {v3, v4, v10, v9}, Ljava/io/DataOutputStream;->write([BII)V

    #@df
    .line 930
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    #@e2
    .line 932
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    #@e4
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    #@e7
    .line 933
    .local v7, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@ea
    move-result-object v9

    #@eb
    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    #@ed
    .line 934
    const/4 v9, 0x0

    #@ee
    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f0
    .line 935
    return-object v7

    #@f1
    .line 894
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v7    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v8    # "teleservice":I
    :cond_3
    const/16 v8, 0x1002

    #@f3
    .restart local v8    # "teleservice":I
    goto :goto_0

    #@f4
    .line 936
    .restart local v5    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    :catch_0
    move-exception v6

    #@f5
    .line 937
    .local v6, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "SmsMessage"

    #@f8
    new-instance v10, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v11, "creating SubmitPdu failed: "

    #@100
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v10

    #@104
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v10

    #@108
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v10

    #@10c
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 939
    const/4 v9, 0x0

    #@110
    return-object v9
.end method


# virtual methods
.method getIncomingSmsFingerprint()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1034
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@6
    .line 1036
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@8
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    #@a
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@d
    .line 1037
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@f
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@11
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@14
    .line 1038
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@16
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@18
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@1a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@1c
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@1e
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@20
    array-length v2, v2

    #@21
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@24
    .line 1039
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@26
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@28
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@2a
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@2c
    array-length v2, v2

    #@2d
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@30
    .line 1040
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@32
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    #@34
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    #@36
    .line 1041
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@38
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    #@3a
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    #@3c
    array-length v2, v2

    #@3d
    .line 1040
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@40
    .line 1043
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@43
    move-result-object v1

    #@44
    return-object v1
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    #@4
    if-nez v0, :cond_0

    #@6
    .line 819
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@8
    return-object v0

    #@9
    .line 821
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    #@b
    return-object v0
.end method

.method getMessageType()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@3
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 501
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 503
    :cond_0
    return v1
.end method

.method getNumOfVoicemails()I
    .locals 1

    #@0
    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@4
    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    #@0
    .prologue
    .line 381
    const-string/jumbo v0, "SmsMessage"

    #@3
    const-string/jumbo v1, "getProtocolIdentifier: is not supported in CDMA mode."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 383
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    #@4
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 438
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    #@2
    shl-int/lit8 v0, v0, 0x10

    #@4
    return v0
.end method

.method getTeleService()I
    .locals 1

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@4
    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    #@0
    .prologue
    .line 401
    const-string/jumbo v0, "SmsMessage"

    #@3
    const-string/jumbo v1, "isCphsMwiMessage: is not supported in CDMA mode."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 402
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@7
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public isMWISetMessage()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@7
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public isMwiDontStore()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 426
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@7
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@9
    if-lez v1, :cond_0

    #@b
    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@d
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 426
    :cond_0
    return v0
.end method

.method public isReplace()Z
    .locals 2

    #@0
    .prologue
    .line 391
    const-string/jumbo v0, "SmsMessage"

    #@3
    const-string/jumbo v1, "isReplace: is not supported in CDMA mode."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 392
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    #@0
    .prologue
    .line 452
    const-string/jumbo v0, "SmsMessage"

    #@3
    const-string/jumbo v1, "isReplyPathPresent: is not supported in CDMA mode."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 453
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@2
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 13

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@6
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@8
    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    #@a
    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@d
    move-result-object v11

    #@e
    .line 795
    .local v11, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-nez v11, :cond_0

    #@10
    .line 796
    const-string/jumbo v0, "SmsMessage"

    #@13
    const-string/jumbo v1, "BearerData.decode() returned null"

    #@16
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 797
    return-object v9

    #@1a
    .line 800
    :cond_0
    const-string/jumbo v0, "CDMA:SMS"

    #@1d
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 801
    const-string/jumbo v0, "SmsMessage"

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "MT raw BearerData = "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@34
    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@36
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 804
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    #@4c
    move-result-object v12

    #@4d
    .line 805
    .local v12, "plmn":Ljava/lang/String;
    new-instance v4, Landroid/telephony/SmsCbLocation;

    #@4f
    invoke-direct {v4, v12}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    #@52
    .line 807
    .local v4, "location":Landroid/telephony/SmsCbLocation;
    new-instance v0, Landroid/telephony/SmsCbMessage;

    #@54
    .line 808
    iget v3, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@56
    .line 809
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@58
    iget v5, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    #@5a
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    iget-object v2, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@60
    iget-object v7, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@62
    .line 810
    iget v8, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    #@64
    iget-object v10, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    #@66
    .line 808
    const/4 v2, 0x1

    #@67
    .line 807
    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    #@6a
    return-object v0
.end method

.method protected parseSms()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@4
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    #@6
    const/high16 v1, 0x40000

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 720
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@c
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@11
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@13
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@1b
    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@1d
    aget-byte v1, v1, v3

    #@1f
    and-int/lit16 v1, v1, 0xff

    #@21
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    #@23
    .line 728
    :cond_0
    return-void

    #@24
    .line 730
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@26
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@28
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@2e
    .line 731
    const-string/jumbo v0, "CDMA:SMS"

    #@31
    const/4 v1, 0x2

    #@32
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 732
    const-string/jumbo v0, "SmsMessage"

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "MT raw BearerData = \'"

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 733
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    #@49
    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    #@4b
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 732
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 733
    const-string/jumbo v2, "\'"

    #@56
    .line 732
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 734
    const-string/jumbo v0, "SmsMessage"

    #@64
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v2, "MT (decoded) BearerData = "

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 736
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@7f
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@81
    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    #@83
    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@85
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@87
    if-eqz v0, :cond_3

    #@89
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@8b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@8d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    #@8f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    #@91
    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@93
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@95
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@97
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    #@99
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@9b
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    #@9d
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    #@9f
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@a1
    .line 743
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@a3
    if-eqz v0, :cond_4

    #@a5
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@a7
    new-instance v1, Ljava/lang/String;

    #@a9
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@ab
    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    #@ad
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    #@b0
    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    #@b2
    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@b4
    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    #@b6
    if-ne v0, v4, :cond_4

    #@b8
    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@ba
    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    #@bc
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@bf
    move-result v0

    #@c0
    const/16 v1, 0x2b

    #@c2
    if-eq v0, v1, :cond_4

    #@c4
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@c6
    new-instance v1, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v2, "+"

    #@ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    #@d4
    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    #@d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v1

    #@de
    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    #@e0
    .line 754
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@e2
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@e4
    if-eqz v0, :cond_5

    #@e6
    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@e8
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    #@ea
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    #@ed
    move-result-wide v0

    #@ee
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    #@f0
    .line 761
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@f2
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@f4
    const/4 v1, 0x4

    #@f5
    if-ne v0, v1, :cond_a

    #@f7
    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@f9
    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    #@fb
    if-nez v0, :cond_9

    #@fd
    .line 770
    const-string/jumbo v1, "SmsMessage"

    #@100
    new-instance v0, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v2, "DELIVERY_ACK message without msgStatus ("

    #@108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v2

    #@10c
    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    #@10e
    if-nez v0, :cond_8

    #@110
    const-string/jumbo v0, "also missing"

    #@113
    .line 770
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v0

    #@117
    .line 772
    const-string/jumbo v2, " userData)."

    #@11a
    .line 770
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v0

    #@11e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v0

    #@122
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@125
    .line 773
    iput v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    #@127
    .line 782
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    #@129
    if-eqz v0, :cond_b

    #@12b
    .line 784
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    #@12e
    .line 716
    :cond_7
    :goto_2
    return-void

    #@12f
    .line 771
    :cond_8
    const-string/jumbo v0, "does have"

    #@132
    goto :goto_0

    #@133
    .line 775
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@135
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    #@137
    shl-int/lit8 v0, v0, 0x8

    #@139
    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    #@13b
    .line 776
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    #@13d
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@13f
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    #@141
    or-int/2addr v0, v1

    #@142
    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    #@144
    goto :goto_1

    #@145
    .line 778
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@147
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@149
    if-eq v0, v4, :cond_6

    #@14b
    .line 779
    new-instance v0, Ljava/lang/RuntimeException;

    #@14d
    new-instance v1, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v2, "Unsupported message type: "

    #@155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v1

    #@159
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@15b
    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@15d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@160
    move-result-object v1

    #@161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v1

    #@165
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@168
    throw v0

    #@169
    .line 785
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    #@16b
    if-eqz v0, :cond_7

    #@16d
    goto :goto_2
.end method
