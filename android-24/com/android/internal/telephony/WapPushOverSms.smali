.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushManagerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@5
    .line 93
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@f
    .line 94
    new-instance v1, Landroid/content/Intent;

    #@11
    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    #@13
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    .line 95
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@22
    move-result-object v0

    #@23
    .line 96
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@26
    .line 97
    if-eqz v0, :cond_0

    #@28
    const/4 v2, 0x1

    #@29
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 100
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    #@35
    .line 91
    :goto_0
    return-void

    #@36
    .line 98
    :cond_0
    const-string/jumbo v2, "WAP PUSH"

    #@39
    const-string/jumbo v3, "bindService() for wappush manager failed"

    #@3c
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_0
.end method

.method private decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    .locals 30
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 124
    new-instance v22, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    #@2
    const/16 v27, 0x0

    #@4
    move-object/from16 v0, v22

    #@6
    move-object/from16 v1, p0

    #@8
    move-object/from16 v2, v27

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;)V

    #@d
    .line 128
    .local v22, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    const/16 v27, 0x0

    #@f
    .line 129
    const/4 v13, 0x1

    #@10
    .local v13, "index":I
    :try_start_0
    aget-byte v27, p1, v27
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move/from16 v0, v27

    #@14
    and-int/lit16 v0, v0, 0xff

    #@16
    move/from16 v25, v0

    #@18
    .line 130
    .local v25, "transactionId":I
    add-int/lit8 v14, v13, 0x1

    #@1a
    .end local v13    # "index":I
    .local v14, "index":I
    :try_start_1
    aget-byte v27, p1, v13

    #@1c
    move/from16 v0, v27

    #@1e
    and-int/lit16 v0, v0, 0xff

    #@20
    move/from16 v20, v0

    #@22
    .line 133
    .local v20, "pduType":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    #@25
    move-result-object v27

    #@26
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@29
    move-result v21

    #@2a
    .line 135
    .local v21, "phoneId":I
    const/16 v27, 0x6

    #@2c
    move/from16 v0, v20

    #@2e
    move/from16 v1, v27

    #@30
    if-eq v0, v1, :cond_0

    #@32
    .line 136
    const/16 v27, 0x7

    #@34
    move/from16 v0, v20

    #@36
    move/from16 v1, v27

    #@38
    if-eq v0, v1, :cond_0

    #@3a
    .line 137
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@3e
    move-object/from16 v27, v0

    #@40
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@43
    move-result-object v27

    #@44
    .line 138
    const v28, 0x10e008c

    #@47
    .line 137
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    #@4a
    move-result v13

    #@4b
    .line 139
    .end local v14    # "index":I
    .restart local v13    # "index":I
    const/16 v27, -0x1

    #@4d
    move/from16 v0, v27

    #@4f
    if-eq v13, v0, :cond_2

    #@51
    .line 140
    add-int/lit8 v14, v13, 0x1

    #@53
    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v27, p1, v13
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    #@55
    move/from16 v0, v27

    #@57
    and-int/lit16 v0, v0, 0xff

    #@59
    move/from16 v25, v0

    #@5b
    .line 141
    add-int/lit8 v13, v14, 0x1

    #@5d
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :try_start_2
    aget-byte v27, p1, v14

    #@5f
    move/from16 v0, v27

    #@61
    and-int/lit16 v0, v0, 0xff

    #@63
    move/from16 v20, v0

    #@65
    .line 147
    const/16 v27, 0x6

    #@67
    move/from16 v0, v20

    #@69
    move/from16 v1, v27

    #@6b
    if-eq v0, v1, :cond_1

    #@6d
    .line 148
    const/16 v27, 0x7

    #@6f
    move/from16 v0, v20

    #@71
    move/from16 v1, v27

    #@73
    if-eq v0, v1, :cond_1

    #@75
    .line 150
    const/16 v27, 0x1

    #@77
    move/from16 v0, v27

    #@79
    move-object/from16 v1, v22

    #@7b
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@7d
    .line 151
    return-object v22

    #@7e
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_0
    move v13, v14

    #@7f
    .line 161
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@82
    move-result-object v27

    #@83
    move-object/from16 v0, v27

    #@85
    move-object/from16 v1, p1

    #@87
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    #@8a
    move-result-object v19

    #@8b
    .line 169
    .local v19, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v19

    #@8d
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    #@90
    move-result v27

    #@91
    if-nez v27, :cond_3

    #@93
    .line 171
    const/16 v27, 0x2

    #@95
    move/from16 v0, v27

    #@97
    move-object/from16 v1, v22

    #@99
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@9b
    .line 172
    return-object v22

    #@9c
    .line 155
    .end local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_2
    const/16 v27, 0x1

    #@9e
    move/from16 v0, v27

    #@a0
    move-object/from16 v1, v22

    #@a2
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@a4
    .line 156
    return-object v22

    #@a5
    .line 174
    .restart local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@a8
    move-result-wide v28

    #@a9
    move-wide/from16 v0, v28

    #@ab
    long-to-int v11, v0

    #@ac
    .line 175
    .local v11, "headerLength":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@af
    move-result v27

    #@b0
    add-int v13, v13, v27

    #@b2
    .line 177
    move v12, v13

    #@b3
    .line 191
    .local v12, "headerStartIndex":I
    move-object/from16 v0, v19

    #@b5
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    #@b8
    move-result v27

    #@b9
    if-nez v27, :cond_4

    #@bb
    .line 193
    const/16 v27, 0x2

    #@bd
    move/from16 v0, v27

    #@bf
    move-object/from16 v1, v22

    #@c1
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@c3
    .line 194
    return-object v22

    #@c4
    .line 197
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    #@c7
    move-result-object v16

    #@c8
    .line 198
    .local v16, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@cb
    move-result-wide v6

    #@cc
    .line 199
    .local v6, "binaryContentType":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@cf
    move-result v27

    #@d0
    add-int v13, v13, v27

    #@d2
    .line 201
    new-array v10, v11, [B

    #@d4
    .line 202
    .local v10, "header":[B
    array-length v0, v10

    #@d5
    move/from16 v27, v0

    #@d7
    const/16 v28, 0x0

    #@d9
    move-object/from16 v0, p1

    #@db
    move/from16 v1, v28

    #@dd
    move/from16 v2, v27

    #@df
    invoke-static {v0, v12, v10, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e2
    .line 206
    if-eqz v16, :cond_5

    #@e4
    const-string/jumbo v27, "application/vnd.wap.coc"

    #@e7
    move-object/from16 v0, v16

    #@e9
    move-object/from16 v1, v27

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ee
    move-result v27

    #@ef
    if-eqz v27, :cond_5

    #@f1
    .line 207
    move-object/from16 v15, p1

    #@f3
    .line 214
    .local v15, "intentData":[B
    :goto_0
    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@f6
    move-result-object v24

    #@f7
    .line 215
    .local v24, "subIds":[I
    if-eqz v24, :cond_6

    #@f9
    move-object/from16 v0, v24

    #@fb
    array-length v0, v0

    #@fc
    move/from16 v27, v0

    #@fe
    if-lez v27, :cond_6

    #@100
    const/16 v27, 0x0

    #@102
    aget v23, v24, v27
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    #@104
    .line 220
    .local v23, "subId":I
    :goto_1
    const/16 v18, 0x0

    #@106
    .line 222
    .local v18, "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :try_start_3
    new-instance v27, Lcom/google/android/mms/pdu/PduParser;

    #@108
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    #@10b
    move-result v28

    #@10c
    move-object/from16 v0, v27

    #@10e
    move/from16 v1, v28

    #@110
    invoke-direct {v0, v15, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    #@113
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    #@116
    move-result-object v18

    #@117
    .line 227
    .end local v18    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_2
    if-eqz v18, :cond_7

    #@119
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    #@11c
    move-result v27

    #@11d
    const/16 v28, 0x82

    #@11f
    move/from16 v0, v27

    #@121
    move/from16 v1, v28

    #@123
    if-ne v0, v1, :cond_7

    #@125
    .line 228
    move-object/from16 v0, v18

    #@127
    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    #@129
    move-object/from16 v17, v0

    #@12b
    .line 229
    .local v17, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    #@12e
    move-result-object v27

    #@12f
    if-eqz v27, :cond_7

    #@131
    .line 230
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@135
    move-object/from16 v27, v0

    #@137
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    #@13a
    move-result-object v28

    #@13b
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    #@13e
    move-result-object v28

    #@13f
    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    #@142
    move-result v27

    #@143
    .line 229
    if-eqz v27, :cond_7

    #@145
    .line 231
    const/16 v27, 0x1

    #@147
    move/from16 v0, v27

    #@149
    move-object/from16 v1, v22

    #@14b
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@14d
    .line 232
    return-object v22

    #@14e
    .line 209
    .end local v15    # "intentData":[B
    .end local v17    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v23    # "subId":I
    .end local v24    # "subIds":[I
    :cond_5
    add-int v8, v12, v11

    #@150
    .line 210
    .local v8, "dataIndex":I
    move-object/from16 v0, p1

    #@152
    array-length v0, v0

    #@153
    move/from16 v27, v0

    #@155
    sub-int v27, v27, v8

    #@157
    move/from16 v0, v27

    #@159
    new-array v15, v0, [B

    #@15b
    .line 211
    .restart local v15    # "intentData":[B
    array-length v0, v15

    #@15c
    move/from16 v27, v0

    #@15e
    const/16 v28, 0x0

    #@160
    move-object/from16 v0, p1

    #@162
    move/from16 v1, v28

    #@164
    move/from16 v2, v27

    #@166
    invoke-static {v0, v8, v15, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    #@169
    goto :goto_0

    #@16a
    .line 266
    .end local v6    # "binaryContentType":J
    .end local v8    # "dataIndex":I
    .end local v10    # "header":[B
    .end local v11    # "headerLength":I
    .end local v12    # "headerStartIndex":I
    .end local v15    # "intentData":[B
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v20    # "pduType":I
    .end local v21    # "phoneId":I
    .end local v25    # "transactionId":I
    :catch_0
    move-exception v4

    #@16b
    .line 269
    .local v4, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    const-string/jumbo v27, "WAP PUSH"

    #@16e
    new-instance v28, Ljava/lang/StringBuilder;

    #@170
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@173
    const-string/jumbo v29, "ignoring dispatchWapPdu() array index exception: "

    #@176
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v28

    #@17a
    move-object/from16 v0, v28

    #@17c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v28

    #@180
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v28

    #@184
    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@187
    .line 270
    const/16 v27, 0x2

    #@189
    move/from16 v0, v27

    #@18b
    move-object/from16 v1, v22

    #@18d
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@18f
    .line 272
    .end local v4    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    return-object v22

    #@190
    .line 216
    .restart local v6    # "binaryContentType":J
    .restart local v10    # "header":[B
    .restart local v11    # "headerLength":I
    .restart local v12    # "headerStartIndex":I
    .restart local v15    # "intentData":[B
    .restart local v16    # "mimeType":Ljava/lang/String;
    .restart local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v20    # "pduType":I
    .restart local v21    # "phoneId":I
    .restart local v24    # "subIds":[I
    .restart local v25    # "transactionId":I
    :cond_6
    :try_start_5
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    #@193
    move-result v23

    #@194
    .restart local v23    # "subId":I
    goto/16 :goto_1

    #@196
    .line 223
    .restart local v18    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catch_1
    move-exception v9

    #@197
    .line 224
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v27, "WAP PUSH"

    #@19a
    new-instance v28, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    const-string/jumbo v29, "Unable to parse PDU: "

    #@1a2
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v28

    #@1a6
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v29

    #@1aa
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v28

    #@1ae
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b1
    move-result-object v28

    #@1b2
    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b5
    goto/16 :goto_2

    #@1b7
    .line 242
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v18    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_7
    add-int v27, v13, v11

    #@1b9
    add-int/lit8 v27, v27, -0x1

    #@1bb
    move-object/from16 v0, v19

    #@1bd
    move/from16 v1, v27

    #@1bf
    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    #@1c2
    move-result v27

    #@1c3
    if-eqz v27, :cond_9

    #@1c5
    .line 243
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@1c8
    move-result-wide v28

    #@1c9
    move-wide/from16 v0, v28

    #@1cb
    long-to-int v13, v0

    #@1cc
    .line 244
    move-object/from16 v0, v19

    #@1ce
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    #@1d1
    .line 245
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    #@1d4
    move-result-object v26

    #@1d5
    .line 246
    .local v26, "wapAppId":Ljava/lang/String;
    if-nez v26, :cond_8

    #@1d7
    .line 247
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@1da
    move-result-wide v28

    #@1db
    move-wide/from16 v0, v28

    #@1dd
    long-to-int v0, v0

    #@1de
    move/from16 v27, v0

    #@1e0
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e3
    move-result-object v26

    #@1e4
    .line 249
    :cond_8
    move-object/from16 v0, v26

    #@1e6
    move-object/from16 v1, v22

    #@1e8
    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    #@1ea
    .line 250
    if-nez v16, :cond_a

    #@1ec
    .line 251
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1ef
    move-result-object v5

    #@1f0
    .line 252
    .local v5, "contentType":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v22

    #@1f2
    iput-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    #@1f4
    .line 256
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v26    # "wapAppId":Ljava/lang/String;
    :cond_9
    move/from16 v0, v23

    #@1f6
    move-object/from16 v1, v22

    #@1f8
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    #@1fa
    .line 257
    move/from16 v0, v21

    #@1fc
    move-object/from16 v1, v22

    #@1fe
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    #@200
    .line 258
    move-object/from16 v0, v18

    #@202
    move-object/from16 v1, v22

    #@204
    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    #@206
    .line 259
    move-object/from16 v0, v16

    #@208
    move-object/from16 v1, v22

    #@20a
    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    #@20c
    .line 260
    move/from16 v0, v25

    #@20e
    move-object/from16 v1, v22

    #@210
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    #@212
    .line 261
    move/from16 v0, v20

    #@214
    move-object/from16 v1, v22

    #@216
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    #@218
    .line 262
    move-object/from16 v0, v22

    #@21a
    iput-object v10, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    #@21c
    .line 263
    move-object/from16 v0, v22

    #@21e
    iput-object v15, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    #@220
    .line 264
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    #@223
    move-result-object v27

    #@224
    move-object/from16 v0, v27

    #@226
    move-object/from16 v1, v22

    #@228
    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    #@22a
    .line 265
    const/16 v27, -0x1

    #@22c
    move/from16 v0, v27

    #@22e
    move-object/from16 v1, v22

    #@230
    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    #@232
    goto/16 :goto_4

    #@234
    .restart local v26    # "wapAppId":Ljava/lang/String;
    :cond_a
    move-object/from16 v5, v16

    #@236
    .line 251
    goto :goto_5

    #@237
    .line 266
    .end local v6    # "binaryContentType":J
    .end local v10    # "header":[B
    .end local v11    # "headerLength":I
    .end local v12    # "headerStartIndex":I
    .end local v13    # "index":I
    .end local v15    # "intentData":[B
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v20    # "pduType":I
    .end local v21    # "phoneId":I
    .end local v23    # "subId":I
    .end local v24    # "subIds":[I
    .end local v26    # "wapAppId":Ljava/lang/String;
    .restart local v14    # "index":I
    :catch_2
    move-exception v4

    #@238
    .restart local v4    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v13, v14

    #@239
    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_3
.end method

.method public static getAppOpsPermissionForIntent(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 566
    const-string/jumbo v1, "application/vnd.wap.mms-message"

    #@3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 567
    const/16 v0, 0x12

    #@b
    .line 571
    .local v0, "appOp":I
    :goto_0
    return v0

    #@c
    .line 569
    .end local v0    # "appOp":I
    :cond_0
    const/16 v0, 0x13

    #@e
    .restart local v0    # "appOp":I
    goto :goto_0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    .line 483
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 484
    new-instance v9, Ljava/lang/String;

    #@8
    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    #@a
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    #@d
    move-result-object v0

    #@e
    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    #@11
    .line 492
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    #@12
    .line 496
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v1

    #@16
    .line 497
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@18
    .line 498
    const/4 v0, 0x1

    #@19
    new-array v3, v0, [Ljava/lang/String;

    #@1b
    const-string/jumbo v0, "thread_id"

    #@1e
    const/4 v4, 0x0

    #@1f
    aput-object v0, v3, v4

    #@21
    .line 499
    const-string/jumbo v4, "m_id=? AND m_type=?"

    #@24
    .line 500
    const/4 v0, 0x2

    #@25
    new-array v5, v0, [Ljava/lang/String;

    #@27
    .line 501
    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    const/4 v6, 0x0

    #@2c
    aput-object v0, v5, v6

    #@2e
    .line 502
    const/16 v0, 0x80

    #@30
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    const/4 v6, 0x1

    #@35
    aput-object v0, v5, v6

    #@37
    .line 504
    const/4 v6, 0x0

    #@38
    move-object v0, p0

    #@39
    .line 494
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3c
    move-result-object v7

    #@3d
    .line 505
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    #@3f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 506
    const/4 v0, 0x0

    #@46
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result-wide v0

    #@4a
    .line 511
    if-eqz v7, :cond_0

    #@4c
    .line 512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4f
    .line 506
    :cond_0
    return-wide v0

    #@50
    .line 485
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    #@52
    if-eqz v0, :cond_2

    #@54
    .line 486
    new-instance v9, Ljava/lang/String;

    #@56
    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    #@58
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    #@5b
    move-result-object v0

    #@5c
    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    #@5f
    .restart local v9    # "messageId":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 488
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string/jumbo v0, "WAP PUSH"

    #@63
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v2, "WAP Push data is neither delivery or read report type: "

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    .line 489
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getClass()Ljava/lang/Class;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 490
    return-wide v10

    #@83
    .line 511
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    #@85
    .line 512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@88
    .line 515
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    return-wide v10

    #@89
    .line 508
    :catch_0
    move-exception v8

    #@8a
    .line 509
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "WAP PUSH"

    #@8d
    const-string/jumbo v1, "Failed to query delivery or read report thread id"

    #@90
    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    .line 511
    if-eqz v7, :cond_4

    #@95
    .line 512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@98
    goto :goto_1

    #@99
    .line 510
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    #@9a
    .line 511
    if-eqz v7, :cond_5

    #@9c
    .line 512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@9f
    .line 510
    :cond_5
    throw v0
.end method

.method public static getPermissionForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 556
    const-string/jumbo v1, "application/vnd.wap.mms-message"

    #@3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 557
    const-string/jumbo v0, "android.permission.RECEIVE_MMS"

    #@c
    .line 561
    .local v0, "permission":Ljava/lang/String;
    :goto_0
    return-object v0

    #@d
    .line 559
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "android.permission.RECEIVE_WAP_PUSH"

    #@10
    .restart local v0    # "permission":Ljava/lang/String;
    goto :goto_0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 522
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    #@5
    move-result-object v10

    #@6
    .line 523
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    #@8
    .line 524
    new-instance v9, Ljava/lang/String;

    #@a
    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    #@d
    .line 525
    .local v9, "location":Ljava/lang/String;
    new-array v11, v13, [Ljava/lang/String;

    #@f
    aput-object v9, v11, v12

    #@11
    .line 526
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    #@12
    .line 530
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v1

    #@16
    .line 531
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@18
    .line 532
    const/4 v0, 0x1

    #@19
    new-array v3, v0, [Ljava/lang/String;

    #@1b
    const-string/jumbo v0, "_id"

    #@1e
    const/4 v4, 0x0

    #@1f
    aput-object v0, v3, v4

    #@21
    .line 533
    const-string/jumbo v4, "m_type=? AND ct_l =?"

    #@24
    .line 534
    const/4 v0, 0x2

    #@25
    new-array v5, v0, [Ljava/lang/String;

    #@27
    .line 535
    const/16 v0, 0x82

    #@29
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    const/4 v6, 0x0

    #@2e
    aput-object v0, v5, v6

    #@30
    .line 536
    new-instance v0, Ljava/lang/String;

    #@32
    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    #@35
    const/4 v6, 0x1

    #@36
    aput-object v0, v5, v6

    #@38
    .line 538
    const/4 v6, 0x0

    #@39
    move-object v0, p0

    #@3a
    .line 528
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3d
    move-result-object v7

    #@3e
    .line 539
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@40
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    move-result v0

    #@44
    if-lez v0, :cond_1

    #@46
    .line 546
    if-eqz v7, :cond_0

    #@48
    .line 547
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4b
    .line 541
    :cond_0
    return v13

    #@4c
    .line 546
    :cond_1
    if-eqz v7, :cond_2

    #@4e
    .line 547
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@51
    .line 551
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_0
    return v12

    #@52
    .line 543
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    #@53
    .line 544
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "WAP PUSH"

    #@56
    const-string/jumbo v1, "failed to query existing notification ind"

    #@59
    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 546
    if-eqz v7, :cond_2

    #@5e
    .line 547
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@61
    goto :goto_0

    #@62
    .line 545
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    #@63
    .line 546
    if-eqz v7, :cond_3

    #@65
    .line 547
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@68
    .line 545
    :cond_3
    throw v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    #@0
    .prologue
    .line 385
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 388
    const-string/jumbo v1, "supportMmsContentDisposition"

    #@b
    const/4 v2, 0x1

    #@c
    .line 385
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method private writeInboxMessage(ILcom/google/android/mms/pdu/GenericPdu;)V
    .locals 23
    .param p1, "subId"    # I
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    #@0
    .prologue
    .line 392
    if-nez p2, :cond_0

    #@2
    .line 393
    const-string/jumbo v3, "WAP PUSH"

    #@5
    const-string/jumbo v4, "Invalid PUSH PDU"

    #@8
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 395
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    #@12
    move-result-object v2

    #@13
    .line 396
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    #@16
    move-result v22

    #@17
    .line 398
    .local v22, "type":I
    sparse-switch v22, :sswitch_data_0

    #@1a
    .line 468
    :try_start_0
    const-string/jumbo v3, "WAP PUSH"

    #@1d
    const-string/jumbo v4, "Received unrecognized WAP Push PDU."

    #@20
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 391
    :cond_1
    :goto_0
    return-void

    #@24
    .line 401
    :sswitch_0
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@28
    move-object/from16 v0, p2

    #@2a
    invoke-static {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    #@2d
    move-result-wide v20

    #@2e
    .line 402
    .local v20, "threadId":J
    const-wide/16 v8, -0x1

    #@30
    cmp-long v3, v20, v8

    #@32
    if-nez v3, :cond_2

    #@34
    .line 405
    const-string/jumbo v3, "WAP PUSH"

    #@37
    const-string/jumbo v4, "Failed to find delivery or read report\'s thread id"

    #@3a
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@3d
    goto :goto_0

    #@3e
    .line 470
    .end local v20    # "threadId":J
    :catch_0
    move-exception v16

    #@3f
    .line 471
    .local v16, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v3, "WAP PUSH"

    #@42
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v7, "Failed to save MMS WAP push data: type="

    #@4a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    move/from16 v0, v22

    #@50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    move-object/from16 v0, v16

    #@5a
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    goto :goto_0

    #@5e
    .line 410
    .end local v16    # "e":Lcom/google/android/mms/MmsException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    #@60
    .line 411
    const/4 v5, 0x1

    #@61
    .line 412
    const/4 v6, 0x1

    #@62
    .line 413
    const/4 v7, 0x0

    #@63
    move-object/from16 v3, p2

    #@65
    .line 408
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    #@68
    move-result-object v5

    #@69
    .line 414
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_3

    #@6b
    .line 415
    const-string/jumbo v3, "WAP PUSH"

    #@6e
    const-string/jumbo v4, "Failed to persist delivery or read report"

    #@71
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@74
    goto :goto_0

    #@75
    .line 472
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v20    # "threadId":J
    :catch_1
    move-exception v17

    #@76
    .line 473
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "WAP PUSH"

    #@79
    const-string/jumbo v4, "Unexpected RuntimeException in persisting MMS WAP push data"

    #@7c
    move-object/from16 v0, v17

    #@7e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@81
    goto :goto_0

    #@82
    .line 419
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "threadId":J
    :cond_3
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    #@84
    const/4 v3, 0x1

    #@85
    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    #@88
    .line 420
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "thread_id"

    #@8b
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@92
    .line 422
    move-object/from16 v0, p0

    #@94
    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@96
    .line 423
    move-object/from16 v0, p0

    #@98
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@9a
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9d
    move-result-object v4

    #@9e
    .line 426
    const/4 v7, 0x0

    #@9f
    .line 427
    const/4 v8, 0x0

    #@a0
    .line 421
    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@a3
    move-result v3

    #@a4
    .line 427
    const/4 v4, 0x1

    #@a5
    .line 421
    if-eq v3, v4, :cond_1

    #@a7
    .line 428
    const-string/jumbo v3, "WAP PUSH"

    #@aa
    const-string/jumbo v4, "Failed to update delivery or read report thread id"

    #@ad
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    goto/16 :goto_0

    #@b2
    .line 433
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object/from16 v0, p2

    #@b4
    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    #@b6
    move-object/from16 v18, v0

    #@b8
    .line 435
    .local v18, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    #@bf
    move-result-object v13

    #@c0
    .line 437
    .local v13, "configs":Landroid/os/Bundle;
    if-eqz v13, :cond_4

    #@c2
    .line 438
    const-string/jumbo v3, "enabledTransID"

    #@c5
    const/4 v4, 0x0

    #@c6
    .line 437
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@c9
    move-result v3

    #@ca
    if-eqz v3, :cond_4

    #@cc
    .line 439
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    #@cf
    move-result-object v14

    #@d0
    .line 440
    .local v14, "contentLocation":[B
    array-length v3, v14

    #@d1
    add-int/lit8 v3, v3, -0x1

    #@d3
    aget-byte v3, v14, v3

    #@d5
    const/16 v4, 0x3d

    #@d7
    if-ne v4, v3, :cond_4

    #@d9
    .line 441
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    #@dc
    move-result-object v19

    #@dd
    .line 442
    .local v19, "transactionId":[B
    array-length v3, v14

    #@de
    .line 443
    move-object/from16 v0, v19

    #@e0
    array-length v4, v0

    #@e1
    .line 442
    add-int/2addr v3, v4

    #@e2
    new-array v15, v3, [B

    #@e4
    .line 445
    .local v15, "contentLocationWithId":[B
    array-length v3, v14

    #@e5
    .line 444
    const/4 v4, 0x0

    #@e6
    .line 445
    const/4 v7, 0x0

    #@e7
    .line 444
    invoke-static {v14, v4, v15, v7, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@ea
    .line 447
    array-length v3, v14

    #@eb
    move-object/from16 v0, v19

    #@ed
    array-length v4, v0

    #@ee
    .line 446
    const/4 v7, 0x0

    #@ef
    move-object/from16 v0, v19

    #@f1
    invoke-static {v0, v7, v15, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f4
    .line 448
    move-object/from16 v0, v18

    #@f6
    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    #@f9
    .line 451
    .end local v14    # "contentLocation":[B
    .end local v15    # "contentLocationWithId":[B
    .end local v19    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    #@fb
    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@fd
    move-object/from16 v0, v18

    #@ff
    invoke-static {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    #@102
    move-result v3

    #@103
    if-nez v3, :cond_5

    #@105
    .line 454
    sget-object v9, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    #@107
    .line 455
    const/4 v10, 0x1

    #@108
    .line 456
    const/4 v11, 0x1

    #@109
    .line 457
    const/4 v12, 0x0

    #@10a
    move-object v7, v2

    #@10b
    move-object/from16 v8, p2

    #@10d
    .line 452
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    #@110
    move-result-object v5

    #@111
    .line 458
    .restart local v5    # "uri":Landroid/net/Uri;
    if-nez v5, :cond_1

    #@113
    .line 459
    const-string/jumbo v3, "WAP PUSH"

    #@116
    const-string/jumbo v4, "Failed to save MMS WAP push notification ind"

    #@119
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11c
    goto/16 :goto_0

    #@11e
    .line 462
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v3, "WAP PUSH"

    #@121
    new-instance v4, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v7, "Skip storing duplicate MMS WAP push notification ind: "

    #@129
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v4

    #@12d
    .line 463
    new-instance v7, Ljava/lang/String;

    #@12f
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    #@132
    move-result-object v8

    #@133
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    #@136
    .line 462
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v4

    #@13a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v4

    #@13e
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@141
    goto/16 :goto_0

    #@143
    .line 398
    nop

    #@144
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 20
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 285
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v2, p3

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    #@9
    move-result-object v18

    #@a
    .line 286
    .local v18, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    move-object/from16 v0, v18

    #@c
    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@e
    const/4 v6, -0x1

    #@f
    if-eq v4, v6, :cond_0

    #@11
    .line 287
    move-object/from16 v0, v18

    #@13
    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@15
    return v4

    #@16
    .line 290
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 292
    move-object/from16 v0, v18

    #@22
    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    #@24
    move-object/from16 v0, v18

    #@26
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    #@28
    move-object/from16 v0, p0

    #@2a
    invoke-direct {v0, v4, v6}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(ILcom/google/android/mms/pdu/GenericPdu;)V

    #@2d
    .line 300
    :cond_1
    move-object/from16 v0, v18

    #@2f
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    #@31
    if-eqz v4, :cond_4

    #@33
    .line 302
    const/16 v17, 0x1

    #@35
    .line 303
    .local v17, "processFurther":Z
    :try_start_0
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    #@39
    move-object/from16 v19, v0

    #@3b
    .line 305
    .local v19, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v19, :cond_3

    #@3d
    .line 327
    :cond_2
    :goto_0
    if-nez v17, :cond_4

    #@3f
    .line 328
    const/4 v4, 0x1

    #@40
    return v4

    #@41
    .line 308
    :cond_3
    move-object/from16 v0, p0

    #@43
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@45
    .line 309
    move-object/from16 v0, p0

    #@47
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    #@49
    const-string/jumbo v7, "mms-mgr"

    #@4c
    const/4 v9, 0x0

    #@4d
    .line 308
    invoke-interface {v4, v6, v9, v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    #@50
    .line 311
    new-instance v5, Landroid/content/Intent;

    #@52
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    #@55
    .line 312
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "transactionId"

    #@58
    move-object/from16 v0, v18

    #@5a
    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    #@5c
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5f
    .line 313
    const-string/jumbo v4, "pduType"

    #@62
    move-object/from16 v0, v18

    #@64
    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    #@66
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@69
    .line 314
    const-string/jumbo v4, "header"

    #@6c
    move-object/from16 v0, v18

    #@6e
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    #@70
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@73
    .line 315
    const-string/jumbo v4, "data"

    #@76
    move-object/from16 v0, v18

    #@78
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    #@7a
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@7d
    .line 316
    const-string/jumbo v4, "contentTypeParameters"

    #@80
    move-object/from16 v0, v18

    #@82
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    #@84
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@87
    .line 317
    move-object/from16 v0, v18

    #@89
    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    #@8b
    invoke-static {v5, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@8e
    .line 320
    move-object/from16 v0, v18

    #@90
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    #@92
    move-object/from16 v0, v18

    #@94
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    #@96
    .line 319
    move-object/from16 v0, v19

    #@98
    invoke-interface {v0, v4, v6, v5}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9b
    move-result v16

    #@9c
    .line 322
    .local v16, "procRet":I
    and-int/lit8 v4, v16, 0x1

    #@9e
    if-lez v4, :cond_2

    #@a0
    .line 323
    const v4, 0x8000

    #@a3
    and-int v4, v4, v16

    #@a5
    if-nez v4, :cond_2

    #@a7
    .line 324
    const/16 v17, 0x0

    #@a9
    goto :goto_0

    #@aa
    .line 330
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v16    # "procRet":I
    .end local v19    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v13

    #@ab
    .line 336
    .end local v17    # "processFurther":Z
    :cond_4
    move-object/from16 v0, v18

    #@ad
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    #@af
    if-nez v4, :cond_5

    #@b1
    .line 338
    const/4 v4, 0x2

    #@b2
    return v4

    #@b3
    .line 341
    :cond_5
    new-instance v5, Landroid/content/Intent;

    #@b5
    const-string/jumbo v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@b8
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@bb
    .line 342
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    #@bd
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    #@bf
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@c2
    .line 343
    const-string/jumbo v4, "transactionId"

    #@c5
    move-object/from16 v0, v18

    #@c7
    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    #@c9
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@cc
    .line 344
    const-string/jumbo v4, "pduType"

    #@cf
    move-object/from16 v0, v18

    #@d1
    iget v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    #@d3
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@d6
    .line 345
    const-string/jumbo v4, "header"

    #@d9
    move-object/from16 v0, v18

    #@db
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    #@dd
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@e0
    .line 346
    const-string/jumbo v4, "data"

    #@e3
    move-object/from16 v0, v18

    #@e5
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    #@e7
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@ea
    .line 347
    const-string/jumbo v4, "contentTypeParameters"

    #@ed
    move-object/from16 v0, v18

    #@ef
    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    #@f1
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@f4
    .line 348
    move-object/from16 v0, v18

    #@f6
    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    #@f8
    invoke-static {v5, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@fb
    .line 352
    move-object/from16 v0, p0

    #@fd
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@ff
    const/4 v6, 0x1

    #@100
    invoke-static {v4, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@103
    move-result-object v12

    #@104
    .line 353
    .local v12, "componentName":Landroid/content/ComponentName;
    const/4 v8, 0x0

    #@105
    .line 354
    .local v8, "options":Landroid/os/Bundle;
    if-eqz v12, :cond_6

    #@107
    .line 356
    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@10a
    .line 360
    :try_start_1
    move-object/from16 v0, p0

    #@10c
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@10e
    .line 361
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@111
    move-result-object v6

    #@112
    const-string/jumbo v7, "mms-app"

    #@115
    const/4 v9, 0x0

    #@116
    .line 360
    invoke-interface {v4, v6, v9, v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    #@119
    move-result-wide v14

    #@11a
    .line 362
    .local v14, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@11d
    move-result-object v11

    #@11e
    .line 363
    .local v11, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v11, v14, v15}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    #@121
    .line 364
    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@124
    move-result-object v8

    #@125
    .line 369
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v11    # "bopts":Landroid/app/BroadcastOptions;
    .end local v14    # "duration":J
    :cond_6
    :goto_1
    move-object/from16 v0, v18

    #@127
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    #@129
    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    #@12c
    move-result-object v6

    #@12d
    .line 370
    move-object/from16 v0, v18

    #@12f
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    #@131
    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsPermissionForIntent(Ljava/lang/String;)I

    #@134
    move-result v7

    #@135
    .line 371
    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@137
    move-object/from16 v4, p3

    #@139
    move-object/from16 v9, p2

    #@13b
    .line 369
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@13e
    .line 372
    const/4 v4, -0x1

    #@13f
    return v4

    #@140
    .line 365
    .restart local v8    # "options":Landroid/os/Bundle;
    :catch_1
    move-exception v13

    #@141
    .local v13, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@9
    .line 105
    :goto_0
    return-void

    #@a
    .line 110
    :cond_0
    const-string/jumbo v0, "WAP PUSH"

    #@d
    const-string/jumbo v1, "dispose: not bound to a wappush manager"

    #@10
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    #@3
    move-result-object v0

    #@4
    .line 380
    .local v0, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    iget v1, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    #@6
    const/4 v2, -0x1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 381
    const-string/jumbo v1, "application/vnd.wap.mms-message"

    #@c
    iget-object v2, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    .line 380
    :goto_0
    return v1

    #@13
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 81
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    #@6
    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    #@3
    .line 86
    return-void
.end method
