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


# instance fields
.field private final greylist-max-r mContext:Landroid/content/Context;

.field protected final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field blacklist mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field private greylist-max-r mUserManager:Landroid/os/UserManager;

.field private volatile greylist-max-r mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private blacklist mWapPushManagerPackage:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 142
    const-class p2, Landroid/os/PowerWhitelistManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerWhitelistManager;

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 143
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mUserManager:Landroid/os/UserManager;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    return-void
.end method

.method private blacklist bindWapPushManagerService(Landroid/content/Context;)V
    .registers 5

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/WapPushOverSms;->resolveSystemService(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_2c

    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_2c

    .line 93
    :cond_20
    monitor-enter p0

    .line 94
    :try_start_21
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    .line 95
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw p1

    .line 91
    :cond_2c
    :goto_2c
    const-string p0, "WAP PUSH"

    const-string p1, "bindService() for wappush manager failed"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 167
    const-string v2, "WAP PUSH"

    new-instance v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms-IA;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 172
    :try_start_e
    aget-byte v7, v0, v5

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    .line 173
    aget-byte v9, v0, v8

    and-int/lit16 v9, v9, 0xff

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x6

    if-eq v9, v12, :cond_4d

    const/4 v13, 0x7

    if-eq v9, v13, :cond_4d

    .line 180
    iget-object v7, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e0151

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eq v7, v11, :cond_4a

    add-int/lit8 v9, v7, 0x1

    .line 183
    aget-byte v14, v0, v7

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v7, v6

    .line 184
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    if-eq v9, v12, :cond_4f

    if-eq v9, v13, :cond_4f

    .line 193
    iput v8, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    :catch_47
    move-exception v0

    goto/16 :goto_168

    .line 198
    :cond_4a
    iput v8, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    :cond_4d
    move v14, v7

    move v7, v6

    .line 203
    :cond_4f
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v12

    const-class v13, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v12

    .line 204
    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v12

    .line 212
    invoke-virtual {v12, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v13

    if-nez v13, :cond_6a

    .line 214
    iput v6, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    :cond_6a
    move/from16 p2, v9

    .line 217
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v8, v8

    .line 218
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v9

    add-int/2addr v7, v9

    .line 234
    invoke-virtual {v12, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 236
    iput v6, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    .line 240
    :cond_7f
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v9

    .line 241
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v15

    .line 242
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v17

    add-int v13, v7, v17

    .line 244
    new-array v6, v8, [B

    .line 245
    invoke-static {v0, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v9, :cond_9e

    .line 249
    const-string v11, "application/vnd.wap.coc"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9e

    move-object v4, v0

    goto :goto_a6

    :cond_9e
    add-int/2addr v7, v8

    .line 253
    array-length v11, v0

    sub-int/2addr v11, v7

    new-array v4, v11, [B

    .line 254
    invoke-static {v0, v7, v4, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :goto_a6
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 258
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_b4

    .line 259
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0
    :try_end_b4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_b4} :catch_47

    :cond_b4
    move v5, v0

    .line 266
    :try_start_b5
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-static {v5}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v7

    invoke-direct {v0, v4, v7}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c2} :catch_c3

    goto :goto_dd

    :catch_c3
    move-exception v0

    .line 268
    :try_start_c4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to parse PDU: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_dd
    if-eqz v0, :cond_11a

    .line 271
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v7

    const/16 v11, 0x82

    if-ne v7, v11, :cond_11a

    .line 272
    move-object v7, v0

    check-cast v7, Lcom/google/android/mms/pdu/NotificationInd;

    .line 276
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v11

    move-object/from16 p1, v7

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v7

    move/from16 v18, v14

    move-wide/from16 v19, v15

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v14

    .line 275
    invoke-static {v11, v7, v14, v15}, Lcom/android/internal/telephony/WapPushCache;->putWapMessageSize([B[BJ)V

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    if-eqz v7, :cond_11e

    iget-object v1, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v1, v7, v11}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_11e

    const/4 v1, 0x1

    .line 282
    iput v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    goto :goto_17f

    :cond_11a
    move/from16 v18, v14

    move-wide/from16 v19, v15

    :cond_11e
    add-int/2addr v8, v13

    const/4 v1, 0x1

    sub-int/2addr v8, v1

    .line 293
    invoke-virtual {v12, v13, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 294
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v7

    long-to-int v1, v7

    .line 295
    invoke-virtual {v12, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 296
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13e

    .line 298
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v7

    long-to-int v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_13e
    iput-object v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    if-nez v9, :cond_147

    .line 302
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_148

    :cond_147
    move-object v1, v9

    .line 303
    :goto_148
    iput-object v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    .line 307
    :cond_14a
    iput v5, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    .line 308
    iput v10, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    .line 309
    iput-object v0, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 310
    iput-object v9, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    move/from16 v14, v18

    .line 311
    iput v14, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    move/from16 v9, p2

    .line 312
    iput v9, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    .line 313
    iput-object v6, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    .line 314
    iput-object v4, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    .line 315
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 316
    iput v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_167
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c4 .. :try_end_167} :catch_47

    goto :goto_17f

    .line 320
    :goto_168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 321
    iput v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    :goto_17f
    return-object v3
.end method

.method public static blacklist getAppOpsStringPermissionForIntent(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 480
    const-string v0, "application/vnd.wap.mms-message"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 481
    const-string p0, "android:receive_mms"

    return-object p0

    .line 483
    :cond_b
    const-string p0, "android:receive_wap_push"

    return-object p0
.end method

.method public static blacklist getPermissionForType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 465
    const-string v0, "application/vnd.wap.mms-message"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 466
    const-string p0, "android.permission.RECEIVE_MMS"

    return-object p0

    .line 468
    :cond_b
    const-string p0, "android.permission.RECEIVE_WAP_PUSH"

    return-object p0
.end method

.method private static blacklist resolveSystemService(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 7

    const/high16 v0, 0x100000

    .line 108
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    const/4 v1, 0x0

    .line 114
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 115
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 116
    new-instance v3, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2a

    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_b

    .line 119
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple system services handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    return-object v0
.end method

.method private static blacklist shouldParseContentDisposition(I)Z
    .registers 3

    .line 458
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object p0

    .line 459
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "supportMmsContentDisposition"

    const/4 v1, 0x1

    .line 460
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IJ)I
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v0, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p6

    .line 339
    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object v6

    .line 340
    iget v0, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v9, -0x1

    if-eq v0, v9, :cond_14

    return v0

    .line 349
    :cond_14
    iget-object v0, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    const/16 v7, 0x13b

    const/4 v8, 0x1

    const/4 v10, 0x2

    if-eqz v0, :cond_7a

    .line 352
    :try_start_1c
    iget-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-nez v0, :cond_21

    goto :goto_7a

    .line 357
    :cond_21
    monitor-enter p0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_7a

    .line 358
    :try_start_22
    iget-object v11, v1, Lcom/android/internal/telephony/WapPushOverSms;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v12, v1, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const-string v13, "mms-mgr"

    invoke-virtual {v11, v12, v10, v7, v13}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    .line 361
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_77

    .line 363
    :try_start_2c
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 364
    const-string v12, "transactionId"

    iget v13, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v12, "pduType"

    iget v13, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const-string v12, "header"

    iget-object v13, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 367
    const-string v12, "data"

    iget-object v13, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 368
    const-string v12, "contentTypeParameters"

    iget-object v13, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 369
    iget v12, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v11, v12}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 370
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_64

    .line 371
    const-string v12, "address"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    :cond_64
    iget-object v12, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    iget-object v13, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    invoke-interface {v0, v12, v13, v11}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_6c} :catch_7a

    and-int/lit8 v11, v0, 0x1

    if-lez v11, :cond_7a

    const v11, 0x8000

    and-int/2addr v0, v11

    if-nez v0, :cond_7a

    return v8

    :catchall_77
    move-exception v0

    .line 361
    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw v0
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7a} :catch_7a

    .line 391
    :catch_7a
    :cond_7a
    :goto_7a
    iget-object v0, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_7f

    return v10

    .line 396
    :cond_7f
    new-instance v0, Landroid/content/Intent;

    const-string v11, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    iget-object v11, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v11, "transactionId"

    iget v12, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v11, "pduType"

    iget v12, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const-string v11, "header"

    iget-object v12, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 401
    const-string v11, "data"

    iget-object v12, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 402
    const-string v11, "contentTypeParameters"

    iget-object v12, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 403
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b9

    .line 404
    const-string v11, "address"

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b9
    const-wide/16 v11, 0x0

    cmp-long v2, v4, v11

    if-eqz v2, :cond_c4

    .line 407
    const-string v2, "messageId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 412
    :cond_c4
    iget-object v2, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move/from16 v4, p5

    invoke-static {v2, v4}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2

    .line 413
    iget-object v5, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_f4

    .line 419
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 422
    iget-object v8, v1, Lcom/android/internal/telephony/WapPushOverSms;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 423
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v11, "mms-app"

    .line 422
    invoke-virtual {v8, v5, v10, v7, v11}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v13

    .line 425
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v12

    const/16 v16, 0x13b

    .line 426
    const-string v17, ""

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 430
    invoke-virtual {v12}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_f5

    :cond_f4
    const/4 v5, 0x0

    :goto_f5
    if-nez v2, :cond_fd

    .line 435
    iget-object v1, v1, Lcom/android/internal/telephony/WapPushOverSms;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v2

    :cond_fd
    move-object v7, v2

    .line 440
    iget-object v1, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 441
    invoke-static {v2}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsStringPermissionForIntent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move-object/from16 v6, p2

    move v8, v4

    move-object v4, v2

    move-object v2, v0

    .line 440
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return v9
.end method

.method public blacklist dispose()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_a

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    .line 153
    :cond_a
    const-string p0, "WAP PUSH"

    const-string v0, "dispose: not bound to a wappush manager"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist-max-r isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .registers 3

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object p0

    .line 452
    iget p1, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_15

    const-string p1, "application/vnd.wap.mms-message"

    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 453
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 129
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    return-void
.end method
