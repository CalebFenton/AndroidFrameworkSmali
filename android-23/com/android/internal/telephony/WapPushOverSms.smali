.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = false

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushManagerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@5
    .line 91
    const-string/jumbo v2, "deviceidle"

    #@8
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v2

    #@c
    .line 90
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@12
    .line 92
    new-instance v1, Landroid/content/Intent;

    #@14
    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    #@16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d
    .line 93
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@20
    move-result-object v2

    #@21
    const/4 v3, 0x0

    #@22
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@25
    move-result-object v0

    #@26
    .line 94
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@29
    .line 95
    if-eqz v0, :cond_0

    #@2b
    const/4 v2, 0x1

    #@2c
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_0

    #@32
    .line 98
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    #@38
    .line 88
    :goto_0
    return-void

    #@39
    .line 96
    :cond_0
    const-string/jumbo v2, "WAP PUSH"

    #@3c
    const-string/jumbo v3, "bindService() for wappush manager failed"

    #@3f
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
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
    .line 425
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 426
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
    .line 434
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    #@12
    .line 438
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v1

    #@16
    .line 439
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@18
    .line 440
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
    .line 441
    const-string/jumbo v4, "m_id=? AND m_type=?"

    #@24
    .line 442
    const/4 v0, 0x2

    #@25
    new-array v5, v0, [Ljava/lang/String;

    #@27
    .line 443
    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    const/4 v6, 0x0

    #@2c
    aput-object v0, v5, v6

    #@2e
    .line 444
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
    .line 446
    const/4 v6, 0x0

    #@38
    move-object v0, p0

    #@39
    .line 436
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3c
    move-result-object v7

    #@3d
    .line 447
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    #@3f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 448
    const/4 v0, 0x0

    #@46
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result-wide v0

    #@4a
    .line 453
    if-eqz v7, :cond_0

    #@4c
    .line 454
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4f
    .line 448
    :cond_0
    return-wide v0

    #@50
    .line 427
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    #@52
    if-eqz v0, :cond_2

    #@54
    .line 428
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
    .line 430
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
    .line 431
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getClass()Ljava/lang/Class;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    .line 430
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
    .line 432
    return-wide v10

    #@83
    .line 453
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    #@85
    .line 454
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@88
    .line 457
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    return-wide v10

    #@89
    .line 450
    :catch_0
    move-exception v8

    #@8a
    .line 451
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
    .line 453
    if-eqz v7, :cond_4

    #@95
    .line 454
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@98
    goto :goto_1

    #@99
    .line 452
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    #@9a
    .line 453
    if-eqz v7, :cond_5

    #@9c
    .line 454
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@9f
    .line 452
    :cond_5
    throw v0
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
    .line 464
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    #@5
    move-result-object v10

    #@6
    .line 465
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    #@8
    .line 466
    new-instance v9, Ljava/lang/String;

    #@a
    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    #@d
    .line 467
    .local v9, "location":Ljava/lang/String;
    new-array v11, v13, [Ljava/lang/String;

    #@f
    aput-object v9, v11, v12

    #@11
    .line 468
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    #@12
    .line 472
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v1

    #@16
    .line 473
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@18
    .line 474
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
    .line 475
    const-string/jumbo v4, "m_type=? AND ct_l =?"

    #@24
    .line 476
    const/4 v0, 0x2

    #@25
    new-array v5, v0, [Ljava/lang/String;

    #@27
    .line 477
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
    .line 478
    new-instance v0, Ljava/lang/String;

    #@32
    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    #@35
    const/4 v6, 0x1

    #@36
    aput-object v0, v5, v6

    #@38
    .line 480
    const/4 v6, 0x0

    #@39
    move-object v0, p0

    #@3a
    .line 470
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3d
    move-result-object v7

    #@3e
    .line 481
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
    .line 488
    if-eqz v7, :cond_0

    #@48
    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4b
    .line 483
    :cond_0
    return v13

    #@4c
    .line 488
    :cond_1
    if-eqz v7, :cond_2

    #@4e
    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@51
    .line 493
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_0
    return v12

    #@52
    .line 485
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    #@53
    .line 486
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
    .line 488
    if-eqz v7, :cond_2

    #@5e
    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@61
    goto :goto_0

    #@62
    .line 487
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    #@63
    .line 488
    if-eqz v7, :cond_3

    #@65
    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@68
    .line 487
    :cond_3
    throw v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    #@0
    .prologue
    .line 325
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    .line 328
    const-string/jumbo v1, "supportMmsContentDisposition"

    #@b
    const/4 v2, 0x1

    #@c
    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method private writeInboxMessage(I[B)V
    .locals 24
    .param p1, "subId"    # I
    .param p2, "pushData"    # [B

    #@0
    .prologue
    .line 333
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    #@2
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    #@5
    move-result v5

    #@6
    move-object/from16 v0, p2

    #@8
    invoke-direct {v4, v0, v5}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    #@b
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    #@e
    move-result-object v3

    #@f
    .line 334
    .local v3, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_0

    #@11
    .line 335
    const-string/jumbo v4, "WAP PUSH"

    #@14
    const-string/jumbo v5, "Invalid PUSH PDU"

    #@17
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 337
    :cond_0
    move-object/from16 v0, p0

    #@1c
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@1e
    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    #@21
    move-result-object v2

    #@22
    .line 338
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    #@25
    move-result v23

    #@26
    .line 340
    .local v23, "type":I
    sparse-switch v23, :sswitch_data_0

    #@29
    .line 410
    :try_start_0
    const-string/jumbo v4, "WAP PUSH"

    #@2c
    const-string/jumbo v5, "Received unrecognized WAP Push PDU."

    #@2f
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 331
    :cond_1
    :goto_0
    return-void

    #@33
    .line 343
    :sswitch_0
    move-object/from16 v0, p0

    #@35
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@37
    invoke-static {v4, v3}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    #@3a
    move-result-wide v20

    #@3b
    .line 344
    .local v20, "threadId":J
    const-wide/16 v4, -0x1

    #@3d
    cmp-long v4, v20, v4

    #@3f
    if-nez v4, :cond_2

    #@41
    .line 347
    const-string/jumbo v4, "WAP PUSH"

    #@44
    const-string/jumbo v5, "Failed to find delivery or read report\'s thread id"

    #@47
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@4a
    goto :goto_0

    #@4b
    .line 412
    .end local v20    # "threadId":J
    :catch_0
    move-exception v17

    #@4c
    .line 413
    .local v17, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v4, "WAP PUSH"

    #@4f
    new-instance v5, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v8, "Failed to save MMS WAP push data: type="

    #@57
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    move/from16 v0, v23

    #@5d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    move-object/from16 v0, v17

    #@67
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    goto :goto_0

    #@6b
    .line 352
    .end local v17    # "e":Lcom/google/android/mms/MmsException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    #@6d
    .line 353
    const/4 v5, 0x1

    #@6e
    .line 354
    const/4 v6, 0x1

    #@6f
    .line 355
    const/4 v7, 0x0

    #@70
    .line 350
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    #@73
    move-result-object v6

    #@74
    .line 356
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    #@76
    .line 357
    const-string/jumbo v4, "WAP PUSH"

    #@79
    const-string/jumbo v5, "Failed to persist delivery or read report"

    #@7c
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@7f
    goto :goto_0

    #@80
    .line 414
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v20    # "threadId":J
    :catch_1
    move-exception v18

    #@81
    .line 415
    .local v18, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "WAP PUSH"

    #@84
    const-string/jumbo v5, "Unexpected RuntimeException in persisting MMS WAP push data"

    #@87
    move-object/from16 v0, v18

    #@89
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8c
    goto :goto_0

    #@8d
    .line 361
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v20    # "threadId":J
    :cond_3
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    #@8f
    const/4 v4, 0x1

    #@90
    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    #@93
    .line 362
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "thread_id"

    #@96
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@9d
    .line 364
    move-object/from16 v0, p0

    #@9f
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@a1
    .line 365
    move-object/from16 v0, p0

    #@a3
    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@a5
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a8
    move-result-object v5

    #@a9
    .line 368
    const/4 v8, 0x0

    #@aa
    .line 369
    const/4 v9, 0x0

    #@ab
    .line 363
    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@ae
    move-result v4

    #@af
    .line 369
    const/4 v5, 0x1

    #@b0
    .line 363
    if-eq v4, v5, :cond_1

    #@b2
    .line 370
    const-string/jumbo v4, "WAP PUSH"

    #@b5
    const-string/jumbo v5, "Failed to update delivery or read report thread id"

    #@b8
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    goto/16 :goto_0

    #@bd
    .line 375
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object v0, v3

    #@be
    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    #@c0
    move-object/from16 v19, v0

    #@c2
    .line 377
    .local v19, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    #@c9
    move-result-object v14

    #@ca
    .line 379
    .local v14, "configs":Landroid/os/Bundle;
    if-eqz v14, :cond_4

    #@cc
    .line 380
    const-string/jumbo v4, "enabledTransID"

    #@cf
    const/4 v5, 0x0

    #@d0
    .line 379
    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@d3
    move-result v4

    #@d4
    if-eqz v4, :cond_4

    #@d6
    .line 381
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    #@d9
    move-result-object v15

    #@da
    .line 382
    .local v15, "contentLocation":[B
    array-length v4, v15

    #@db
    add-int/lit8 v4, v4, -0x1

    #@dd
    aget-byte v4, v15, v4

    #@df
    const/16 v5, 0x3d

    #@e1
    if-ne v5, v4, :cond_4

    #@e3
    .line 383
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    #@e6
    move-result-object v22

    #@e7
    .line 384
    .local v22, "transactionId":[B
    array-length v4, v15

    #@e8
    .line 385
    move-object/from16 v0, v22

    #@ea
    array-length v5, v0

    #@eb
    .line 384
    add-int/2addr v4, v5

    #@ec
    new-array v0, v4, [B

    #@ee
    move-object/from16 v16, v0

    #@f0
    .line 387
    .local v16, "contentLocationWithId":[B
    array-length v4, v15

    #@f1
    .line 386
    const/4 v5, 0x0

    #@f2
    .line 387
    const/4 v8, 0x0

    #@f3
    .line 386
    move-object/from16 v0, v16

    #@f5
    invoke-static {v15, v5, v0, v8, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f8
    .line 389
    array-length v4, v15

    #@f9
    move-object/from16 v0, v22

    #@fb
    array-length v5, v0

    #@fc
    .line 388
    const/4 v8, 0x0

    #@fd
    move-object/from16 v0, v22

    #@ff
    move-object/from16 v1, v16

    #@101
    invoke-static {v0, v8, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@104
    .line 390
    move-object/from16 v0, v19

    #@106
    move-object/from16 v1, v16

    #@108
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    #@10b
    .line 393
    .end local v15    # "contentLocation":[B
    .end local v16    # "contentLocationWithId":[B
    .end local v22    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    #@10d
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@10f
    move-object/from16 v0, v19

    #@111
    invoke-static {v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    #@114
    move-result v4

    #@115
    if-nez v4, :cond_5

    #@117
    .line 396
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    #@119
    .line 397
    const/4 v11, 0x1

    #@11a
    .line 398
    const/4 v12, 0x1

    #@11b
    .line 399
    const/4 v13, 0x0

    #@11c
    move-object v8, v2

    #@11d
    move-object v9, v3

    #@11e
    .line 394
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    #@121
    move-result-object v6

    #@122
    .line 400
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    #@124
    .line 401
    const-string/jumbo v4, "WAP PUSH"

    #@127
    const-string/jumbo v5, "Failed to save MMS WAP push notification ind"

    #@12a
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12d
    goto/16 :goto_0

    #@12f
    .line 404
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v4, "WAP PUSH"

    #@132
    new-instance v5, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string/jumbo v8, "Skip storing duplicate MMS WAP push notification ind: "

    #@13a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v5

    #@13e
    .line 405
    new-instance v8, Ljava/lang/String;

    #@140
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    #@143
    move-result-object v9

    #@144
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    #@147
    .line 404
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v5

    #@14b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v5

    #@14f
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@152
    goto/16 :goto_0

    #@154
    .line 340
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 40
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    #@0
    .prologue
    .line 126
    const/4 v4, 0x0

    #@1
    .line 127
    const/16 v24, 0x1

    #@3
    .local v24, "index":I
    :try_start_0
    aget-byte v4, p1, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    and-int/lit16 v0, v4, 0xff

    #@7
    move/from16 v35, v0

    #@9
    .line 128
    .local v35, "transactionId":I
    add-int/lit8 v25, v24, 0x1

    #@b
    .end local v24    # "index":I
    .local v25, "index":I
    :try_start_1
    aget-byte v4, p1, v24

    #@d
    and-int/lit16 v0, v4, 0xff

    #@f
    move/from16 v29, v0

    #@11
    .line 131
    .local v29, "pduType":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@18
    move-result v30

    #@19
    .line 133
    .local v30, "phoneId":I
    const/4 v4, 0x6

    #@1a
    move/from16 v0, v29

    #@1c
    if-eq v0, v4, :cond_0

    #@1e
    .line 134
    const/4 v4, 0x7

    #@1f
    move/from16 v0, v29

    #@21
    if-eq v0, v4, :cond_0

    #@23
    .line 135
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v4

    #@2b
    .line 136
    const v9, 0x10e008a

    #@2e
    .line 135
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    #@31
    move-result v24

    #@32
    .line 137
    .end local v25    # "index":I
    .restart local v24    # "index":I
    const/4 v4, -0x1

    #@33
    move/from16 v0, v24

    #@35
    if-eq v0, v4, :cond_2

    #@37
    .line 138
    add-int/lit8 v25, v24, 0x1

    #@39
    .end local v24    # "index":I
    .restart local v25    # "index":I
    aget-byte v4, p1, v24
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    #@3b
    and-int/lit16 v0, v4, 0xff

    #@3d
    move/from16 v35, v0

    #@3f
    .line 139
    add-int/lit8 v24, v25, 0x1

    #@41
    .end local v25    # "index":I
    .restart local v24    # "index":I
    :try_start_2
    aget-byte v4, p1, v25

    #@43
    and-int/lit16 v0, v4, 0xff

    #@45
    move/from16 v29, v0

    #@47
    .line 145
    const/4 v4, 0x6

    #@48
    move/from16 v0, v29

    #@4a
    if-eq v0, v4, :cond_1

    #@4c
    .line 146
    const/4 v4, 0x7

    #@4d
    move/from16 v0, v29

    #@4f
    if-eq v0, v4, :cond_1

    #@51
    .line 148
    const/4 v4, 0x1

    #@52
    return v4

    #@53
    .end local v24    # "index":I
    .restart local v25    # "index":I
    :cond_0
    move/from16 v24, v25

    #@55
    .line 156
    .end local v25    # "index":I
    .restart local v24    # "index":I
    :cond_1
    new-instance v28, Lcom/android/internal/telephony/WspTypeDecoder;

    #@57
    move-object/from16 v0, v28

    #@59
    move-object/from16 v1, p1

    #@5b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    #@5e
    .line 164
    .local v28, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v28

    #@60
    move/from16 v1, v24

    #@62
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    #@65
    move-result v4

    #@66
    if-nez v4, :cond_3

    #@68
    .line 166
    const/4 v4, 0x2

    #@69
    return v4

    #@6a
    .line 152
    .end local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_2
    const/4 v4, 0x1

    #@6b
    return v4

    #@6c
    .line 168
    .restart local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_3
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@6f
    move-result-wide v38

    #@70
    move-wide/from16 v0, v38

    #@72
    long-to-int v0, v0

    #@73
    move/from16 v22, v0

    #@75
    .line 169
    .local v22, "headerLength":I
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@78
    move-result v4

    #@79
    add-int v24, v24, v4

    #@7b
    .line 171
    move/from16 v23, v24

    #@7d
    .line 185
    .local v23, "headerStartIndex":I
    move-object/from16 v0, v28

    #@7f
    move/from16 v1, v24

    #@81
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    #@84
    move-result v4

    #@85
    if-nez v4, :cond_4

    #@87
    .line 187
    const/4 v4, 0x2

    #@88
    return v4

    #@89
    .line 190
    :cond_4
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    #@8c
    move-result-object v27

    #@8d
    .line 191
    .local v27, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@90
    move-result-wide v12

    #@91
    .line 192
    .local v12, "binaryContentType":J
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    #@94
    move-result v4

    #@95
    add-int v24, v24, v4

    #@97
    .line 194
    move/from16 v0, v22

    #@99
    new-array v0, v0, [B

    #@9b
    move-object/from16 v21, v0

    #@9d
    .line 195
    .local v21, "header":[B
    move-object/from16 v0, v21

    #@9f
    array-length v4, v0

    #@a0
    const/4 v9, 0x0

    #@a1
    move-object/from16 v0, p1

    #@a3
    move/from16 v1, v23

    #@a5
    move-object/from16 v2, v21

    #@a7
    invoke-static {v0, v1, v2, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@aa
    .line 199
    if-eqz v27, :cond_8

    #@ac
    const-string/jumbo v4, "application/vnd.wap.coc"

    #@af
    move-object/from16 v0, v27

    #@b1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v4

    #@b5
    if-eqz v4, :cond_8

    #@b7
    .line 200
    move-object/from16 v26, p1

    #@b9
    .line 207
    .local v26, "intentData":[B
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    #@c0
    move-result v4

    #@c1
    if-eqz v4, :cond_5

    #@c3
    .line 209
    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@c6
    move-result-object v34

    #@c7
    .line 212
    .local v34, "subIds":[I
    if-eqz v34, :cond_9

    #@c9
    move-object/from16 v0, v34

    #@cb
    array-length v4, v0

    #@cc
    if-lez v4, :cond_9

    #@ce
    const/4 v4, 0x0

    #@cf
    aget v33, v34, v4

    #@d1
    .line 214
    .local v33, "subId":I
    :goto_1
    move-object/from16 v0, p0

    #@d3
    move/from16 v1, v33

    #@d5
    move-object/from16 v2, v26

    #@d7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(I[B)V

    #@da
    .line 223
    .end local v33    # "subId":I
    .end local v34    # "subIds":[I
    :cond_5
    add-int v4, v24, v22

    #@dc
    add-int/lit8 v4, v4, -0x1

    #@de
    move-object/from16 v0, v28

    #@e0
    move/from16 v1, v24

    #@e2
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    #@e5
    move-result v4

    #@e6
    if-eqz v4, :cond_c

    #@e8
    .line 224
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@eb
    move-result-wide v38

    #@ec
    move-wide/from16 v0, v38

    #@ee
    long-to-int v0, v0

    #@ef
    move/from16 v24, v0

    #@f1
    .line 225
    move-object/from16 v0, v28

    #@f3
    move/from16 v1, v24

    #@f5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    #@f8
    .line 226
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    #@fb
    move-result-object v36

    #@fc
    .line 227
    .local v36, "wapAppId":Ljava/lang/String;
    if-nez v36, :cond_6

    #@fe
    .line 228
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    #@101
    move-result-wide v38

    #@102
    move-wide/from16 v0, v38

    #@104
    long-to-int v4, v0

    #@105
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@108
    move-result-object v36

    #@109
    .line 231
    :cond_6
    if-nez v27, :cond_a

    #@10b
    .line 232
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    #@10e
    move-result-object v16

    #@10f
    .line 236
    .local v16, "contentType":Ljava/lang/String;
    :goto_2
    const/16 v32, 0x1

    #@111
    .line 237
    .local v32, "processFurther":Z
    :try_start_3
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    #@115
    move-object/from16 v37, v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    #@117
    .line 239
    .local v37, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v37, :cond_b

    #@119
    .line 261
    :cond_7
    :goto_3
    if-nez v32, :cond_c

    #@11b
    .line 262
    const/4 v4, 0x1

    #@11c
    return v4

    #@11d
    .line 202
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v26    # "intentData":[B
    .end local v32    # "processFurther":Z
    .end local v36    # "wapAppId":Ljava/lang/String;
    .end local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    add-int v17, v23, v22

    #@11f
    .line 203
    .local v17, "dataIndex":I
    :try_start_4
    move-object/from16 v0, p1

    #@121
    array-length v4, v0

    #@122
    sub-int v4, v4, v17

    #@124
    new-array v0, v4, [B

    #@126
    move-object/from16 v26, v0

    #@128
    .line 204
    .restart local v26    # "intentData":[B
    move-object/from16 v0, v26

    #@12a
    array-length v4, v0

    #@12b
    const/4 v9, 0x0

    #@12c
    move-object/from16 v0, p1

    #@12e
    move/from16 v1, v17

    #@130
    move-object/from16 v2, v26

    #@132
    invoke-static {v0, v1, v2, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    #@135
    goto :goto_0

    #@136
    .line 316
    .end local v12    # "binaryContentType":J
    .end local v17    # "dataIndex":I
    .end local v21    # "header":[B
    .end local v22    # "headerLength":I
    .end local v23    # "headerStartIndex":I
    .end local v26    # "intentData":[B
    .end local v27    # "mimeType":Ljava/lang/String;
    .end local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v29    # "pduType":I
    .end local v30    # "phoneId":I
    .end local v35    # "transactionId":I
    :catch_0
    move-exception v11

    #@137
    .line 319
    .local v11, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    const-string/jumbo v4, "WAP PUSH"

    #@13a
    new-instance v9, Ljava/lang/StringBuilder;

    #@13c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@13f
    const-string/jumbo v10, "ignoring dispatchWapPdu() array index exception: "

    #@142
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v9

    #@146
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v9

    #@14a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v9

    #@14e
    invoke-static {v4, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@151
    .line 320
    const/4 v4, 0x2

    #@152
    return v4

    #@153
    .line 213
    .end local v11    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v12    # "binaryContentType":J
    .restart local v21    # "header":[B
    .restart local v22    # "headerLength":I
    .restart local v23    # "headerStartIndex":I
    .restart local v26    # "intentData":[B
    .restart local v27    # "mimeType":Ljava/lang/String;
    .restart local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v29    # "pduType":I
    .restart local v30    # "phoneId":I
    .restart local v34    # "subIds":[I
    .restart local v35    # "transactionId":I
    :cond_9
    :try_start_5
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    #@156
    move-result v33

    #@157
    .restart local v33    # "subId":I
    goto/16 :goto_1

    #@159
    .line 232
    .end local v33    # "subId":I
    .end local v34    # "subIds":[I
    .restart local v36    # "wapAppId":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v27

    #@15b
    .restart local v16    # "contentType":Ljava/lang/String;
    goto :goto_2

    #@15c
    .line 242
    .restart local v32    # "processFurther":Z
    .restart local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_b
    :try_start_6
    move-object/from16 v0, p0

    #@15e
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@160
    .line 243
    move-object/from16 v0, p0

    #@162
    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    #@164
    const-string/jumbo v10, "mms-mgr"

    #@167
    const/16 v38, 0x0

    #@169
    .line 242
    move/from16 v0, v38

    #@16b
    invoke-interface {v4, v9, v0, v10}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    #@16e
    .line 245
    new-instance v5, Landroid/content/Intent;

    #@170
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    #@173
    .line 246
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "transactionId"

    #@176
    move/from16 v0, v35

    #@178
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@17b
    .line 247
    const-string/jumbo v4, "pduType"

    #@17e
    move/from16 v0, v29

    #@180
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@183
    .line 248
    const-string/jumbo v4, "header"

    #@186
    move-object/from16 v0, v21

    #@188
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@18b
    .line 249
    const-string/jumbo v4, "data"

    #@18e
    move-object/from16 v0, v26

    #@190
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@193
    .line 250
    const-string/jumbo v4, "contentTypeParameters"

    #@196
    .line 251
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    #@199
    move-result-object v9

    #@19a
    .line 250
    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@19d
    .line 252
    move/from16 v0, v30

    #@19f
    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@1a2
    .line 254
    move-object/from16 v0, v37

    #@1a4
    move-object/from16 v1, v36

    #@1a6
    move-object/from16 v2, v16

    #@1a8
    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    #@1ab
    move-result v31

    #@1ac
    .line 256
    .local v31, "procRet":I
    and-int/lit8 v4, v31, 0x1

    #@1ae
    if-lez v4, :cond_7

    #@1b0
    .line 257
    const v4, 0x8000

    #@1b3
    and-int v4, v4, v31

    #@1b5
    if-nez v4, :cond_7

    #@1b7
    .line 258
    const/16 v32, 0x0

    #@1b9
    goto/16 :goto_3

    #@1bb
    .line 264
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v31    # "procRet":I
    .end local v37    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v20

    #@1bc
    .line 270
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v32    # "processFurther":Z
    .end local v36    # "wapAppId":Ljava/lang/String;
    :cond_c
    if-nez v27, :cond_d

    #@1be
    .line 272
    const/4 v4, 0x2

    #@1bf
    return v4

    #@1c0
    .line 278
    :cond_d
    :try_start_7
    const-string/jumbo v4, "application/vnd.wap.mms-message"

    #@1c3
    move-object/from16 v0, v27

    #@1c5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c8
    move-result v4

    #@1c9
    if-eqz v4, :cond_f

    #@1cb
    .line 279
    const-string/jumbo v6, "android.permission.RECEIVE_MMS"

    #@1ce
    .line 280
    .local v6, "permission":Ljava/lang/String;
    const/16 v7, 0x12

    #@1d0
    .line 286
    .local v7, "appOp":I
    :goto_5
    new-instance v5, Landroid/content/Intent;

    #@1d2
    const-string/jumbo v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@1d5
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1d8
    .line 287
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v27

    #@1da
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@1dd
    .line 288
    const-string/jumbo v4, "transactionId"

    #@1e0
    move/from16 v0, v35

    #@1e2
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1e5
    .line 289
    const-string/jumbo v4, "pduType"

    #@1e8
    move/from16 v0, v29

    #@1ea
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1ed
    .line 290
    const-string/jumbo v4, "header"

    #@1f0
    move-object/from16 v0, v21

    #@1f2
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@1f5
    .line 291
    const-string/jumbo v4, "data"

    #@1f8
    move-object/from16 v0, v26

    #@1fa
    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@1fd
    .line 292
    const-string/jumbo v4, "contentTypeParameters"

    #@200
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    #@203
    move-result-object v9

    #@204
    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@207
    .line 293
    move/from16 v0, v30

    #@209
    invoke-static {v5, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@20c
    .line 297
    move-object/from16 v0, p0

    #@20e
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@210
    const/4 v9, 0x1

    #@211
    invoke-static {v4, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@214
    move-result-object v15

    #@215
    .line 298
    .local v15, "componentName":Landroid/content/ComponentName;
    const/4 v8, 0x0

    #@216
    .line 299
    .local v8, "options":Landroid/os/Bundle;
    if-eqz v15, :cond_e

    #@218
    .line 301
    invoke-virtual {v5, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    #@21b
    .line 305
    :try_start_8
    move-object/from16 v0, p0

    #@21d
    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@21f
    .line 306
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@222
    move-result-object v9

    #@223
    const-string/jumbo v10, "mms-app"

    #@226
    const/16 v38, 0x0

    #@228
    .line 305
    move/from16 v0, v38

    #@22a
    invoke-interface {v4, v9, v0, v10}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    #@22d
    move-result-wide v18

    #@22e
    .line 307
    .local v18, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@231
    move-result-object v14

    #@232
    .line 308
    .local v14, "bopts":Landroid/app/BroadcastOptions;
    move-wide/from16 v0, v18

    #@234
    invoke-virtual {v14, v0, v1}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    #@237
    .line 309
    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    #@23a
    move-result-object v8

    #@23b
    .line 314
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v14    # "bopts":Landroid/app/BroadcastOptions;
    .end local v18    # "duration":J
    :cond_e
    :goto_6
    :try_start_9
    sget-object v10, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@23d
    move-object/from16 v4, p3

    #@23f
    move-object/from16 v9, p2

    #@241
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@244
    .line 315
    const/4 v4, -0x1

    #@245
    return v4

    #@246
    .line 282
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "appOp":I
    .end local v15    # "componentName":Landroid/content/ComponentName;
    :cond_f
    const-string/jumbo v6, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    #@249
    .line 283
    .restart local v6    # "permission":Ljava/lang/String;
    const/16 v7, 0x13

    #@24b
    .restart local v7    # "appOp":I
    goto :goto_5

    #@24c
    .line 316
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "appOp":I
    .end local v12    # "binaryContentType":J
    .end local v21    # "header":[B
    .end local v22    # "headerLength":I
    .end local v23    # "headerStartIndex":I
    .end local v24    # "index":I
    .end local v26    # "intentData":[B
    .end local v27    # "mimeType":Ljava/lang/String;
    .end local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v29    # "pduType":I
    .end local v30    # "phoneId":I
    .restart local v25    # "index":I
    :catch_2
    move-exception v11

    #@24d
    .restart local v11    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    move/from16 v24, v25

    #@24f
    .end local v25    # "index":I
    .restart local v24    # "index":I
    goto/16 :goto_4

    #@251
    .line 310
    .end local v11    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "permission":Ljava/lang/String;
    .restart local v7    # "appOp":I
    .restart local v8    # "options":Landroid/os/Bundle;
    .restart local v12    # "binaryContentType":J
    .restart local v15    # "componentName":Landroid/content/ComponentName;
    .restart local v21    # "header":[B
    .restart local v22    # "headerLength":I
    .restart local v23    # "headerStartIndex":I
    .restart local v26    # "intentData":[B
    .restart local v27    # "mimeType":Ljava/lang/String;
    .restart local v28    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v29    # "pduType":I
    .restart local v30    # "phoneId":I
    :catch_3
    move-exception v20

    #@252
    .local v20, "e":Landroid/os/RemoteException;
    goto :goto_6
.end method

.method dispose()V
    .locals 2

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@9
    .line 103
    :goto_0
    return-void

    #@a
    .line 108
    :cond_0
    const-string/jumbo v0, "WAP PUSH"

    #@d
    const-string/jumbo v1, "dispose: not bound to a wappush manager"

    #@10
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 78
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    #@6
    .line 77
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    #@3
    .line 83
    return-void
.end method
