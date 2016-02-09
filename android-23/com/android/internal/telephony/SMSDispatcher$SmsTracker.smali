.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SmsTracker"
.end annotation


# instance fields
.field private mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mAppInfo:Landroid/content/pm/PackageInfo;

.field public final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeliveryIntent:Landroid/app/PendingIntent;

.field public final mDestAddress:Ljava/lang/String;

.field public mExpectMore:Z

.field mFormat:Ljava/lang/String;

.field private mFullMessageText:Ljava/lang/String;

.field public mImsRetry:I

.field private mIsText:Z

.field public mMessageRef:I

.field public mMessageUri:Landroid/net/Uri;

.field private mPersistMessage:Z

.field public mRetryCount:I

.field public final mSentIntent:Landroid/app/PendingIntent;

.field public final mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

.field private mSubId:I

.field private mTimestamp:J

.field private mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    #@2
    return p1
.end method

.method private constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZ)V
    .locals 4
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "appInfo"    # Landroid/content/pm/PackageInfo;
    .param p5, "destAddr"    # Ljava/lang/String;
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p9, "messageUri"    # Landroid/net/Uri;
    .param p10, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p11, "isExpectMore"    # Z
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "subId"    # I
    .param p14, "isText"    # Z
    .param p15, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1326
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v2

    #@7
    iput-wide v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    #@9
    .line 1331
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@b
    .line 1332
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    #@d
    .line 1333
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@f
    .line 1334
    const/4 v2, 0x0

    #@10
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    #@12
    .line 1335
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    #@14
    .line 1336
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@16
    .line 1337
    iput-object p6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    #@18
    .line 1338
    iput-boolean p11, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    #@1a
    .line 1339
    const/4 v2, 0x0

    #@1b
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    #@1d
    .line 1340
    const/4 v2, 0x0

    #@1e
    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    #@20
    .line 1341
    iput-object p7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    .line 1342
    iput-object p8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@24
    .line 1343
    iput-object p9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@26
    .line 1344
    iput-object p10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    #@28
    .line 1345
    move-object/from16 v0, p12

    #@2a
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    #@2c
    .line 1346
    move/from16 v0, p13

    #@2e
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    #@30
    .line 1347
    move/from16 v0, p14

    #@32
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    #@34
    .line 1348
    move/from16 v0, p15

    #@36
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    #@38
    .line 1330
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "data"    # Ljava/util/HashMap;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "appInfo"    # Landroid/content/pm/PackageInfo;
    .param p5, "destAddr"    # Ljava/lang/String;
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p9, "messageUri"    # Landroid/net/Uri;
    .param p10, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p11, "isExpectMore"    # Z
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "subId"    # I
    .param p14, "isText"    # Z
    .param p15, "persistMessage"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p15}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZ)V

    #@3
    return-void
.end method

.method private persistOrUpdateMessage(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    #@0
    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1464
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateMessageState(Landroid/content/Context;II)V

    #@7
    .line 1462
    :goto_0
    return-void

    #@8
    .line 1466
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@e
    goto :goto_0
.end method

.method private persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    #@0
    .prologue
    .line 1409
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    #@2
    if-eqz v8, :cond_4

    #@4
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    #@6
    if-eqz v8, :cond_4

    #@8
    .line 1410
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    #@a
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@c
    invoke-static {v8, p1}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    #@f
    move-result v8

    #@10
    if-eqz v8, :cond_4

    #@12
    .line 1413
    const-string/jumbo v9, "SMSDispatcher"

    #@15
    new-instance v8, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v10, "Persist SMS into "

    #@1d
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v10

    #@21
    .line 1414
    const/4 v8, 0x5

    #@22
    if-ne p2, v8, :cond_5

    #@24
    const-string/jumbo v8, "FAILED"

    #@27
    .line 1413
    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 1415
    new-instance v7, Landroid/content/ContentValues;

    #@34
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    #@37
    .line 1416
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "sub_id"

    #@3a
    iget v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    #@3c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@43
    .line 1417
    const-string/jumbo v8, "address"

    #@46
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    #@48
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    .line 1418
    const-string/jumbo v8, "body"

    #@4e
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    #@50
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    .line 1419
    const-string/jumbo v8, "date"

    #@56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@59
    move-result-wide v10

    #@5a
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@61
    .line 1420
    const-string/jumbo v8, "seen"

    #@64
    const/4 v9, 0x1

    #@65
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@6c
    .line 1421
    const-string/jumbo v8, "read"

    #@6f
    const/4 v9, 0x1

    #@70
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@77
    .line 1422
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    #@79
    if-eqz v8, :cond_6

    #@7b
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    #@7d
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@7f
    .line 1423
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@82
    move-result v8

    #@83
    if-nez v8, :cond_0

    #@85
    .line 1424
    const-string/jumbo v8, "creator"

    #@88
    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    .line 1426
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    #@8d
    if-eqz v8, :cond_1

    #@8f
    .line 1427
    const-string/jumbo v8, "status"

    #@92
    const/16 v9, 0x20

    #@94
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@9b
    .line 1429
    :cond_1
    if-eqz p3, :cond_2

    #@9d
    .line 1430
    const-string/jumbo v8, "error_code"

    #@a0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v9

    #@a4
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@a7
    .line 1432
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@aa
    move-result-wide v2

    #@ab
    .line 1433
    .local v2, "identity":J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ae
    move-result-object v4

    #@af
    .line 1435
    .local v4, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v8, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    #@b1
    invoke-virtual {v4, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@b4
    move-result-object v6

    #@b5
    .line 1436
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_3

    #@b7
    const/4 v8, 0x5

    #@b8
    if-ne p2, v8, :cond_3

    #@ba
    .line 1442
    new-instance v5, Landroid/content/ContentValues;

    #@bc
    const/4 v8, 0x1

    #@bd
    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(I)V

    #@c0
    .line 1443
    .local v5, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "type"

    #@c3
    const/4 v9, 0x5

    #@c4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v9

    #@c8
    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@cb
    .line 1444
    const/4 v8, 0x0

    #@cc
    const/4 v9, 0x0

    #@cd
    invoke-virtual {v4, v6, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d0
    .line 1451
    .end local v5    # "updateValues":Landroid/content/ContentValues;
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d3
    .line 1446
    return-object v6

    #@d4
    .line 1411
    .end local v2    # "identity":J
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v8, 0x0

    #@d5
    return-object v8

    #@d6
    .line 1414
    :cond_5
    const-string/jumbo v8, "SENT"

    #@d9
    goto/16 :goto_0

    #@db
    .line 1422
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    const/4 v0, 0x0

    #@dc
    .local v0, "creator":Ljava/lang/String;
    goto :goto_1

    #@dd
    .line 1447
    .end local v0    # "creator":Ljava/lang/String;
    .restart local v2    # "identity":J
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    #@de
    .line 1448
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "SMSDispatcher"

    #@e1
    const-string/jumbo v9, "writeOutboxMessage: Failed to persist outbox message"

    #@e4
    invoke-static {v8, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e7
    .line 1449
    const/4 v8, 0x0

    #@e8
    .line 1451
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@eb
    .line 1449
    return-object v8

    #@ec
    .line 1450
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@ed
    .line 1451
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f0
    .line 1450
    throw v8
.end method

.method private updateMessageState(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    #@0
    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1381
    return-void

    #@5
    .line 1383
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    #@7
    const/4 v0, 0x2

    #@8
    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    #@b
    .line 1384
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "type"

    #@e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@15
    .line 1385
    const-string/jumbo v0, "error_code"

    #@18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@1f
    .line 1386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v6

    #@23
    .line 1388
    .local v6, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@29
    .line 1389
    const/4 v4, 0x0

    #@2a
    const/4 v5, 0x0

    #@2b
    move-object v0, p1

    #@2c
    .line 1388
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@2f
    move-result v0

    #@30
    .line 1389
    const/4 v1, 0x1

    #@31
    .line 1388
    if-eq v0, v1, :cond_1

    #@33
    .line 1390
    const-string/jumbo v0, "SMSDispatcher"

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Failed to move message to "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 1393
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@50
    .line 1379
    return-void

    #@51
    .line 1392
    :catchall_0
    move-exception v0

    #@52
    .line 1393
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 1392
    throw v0
.end method


# virtual methods
.method isMultipart()Z
    .locals 2

    #@0
    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "parts"

    #@5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public onFailed(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # I
    .param p3, "errorCode"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1478
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 1479
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@a
    .line 1482
    :cond_0
    const/4 v2, 0x1

    #@b
    .line 1483
    .local v2, "isSinglePartOrLastPart":Z
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 1484
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_7

    #@17
    const/4 v2, 0x1

    #@18
    .line 1486
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    #@1a
    .line 1487
    const/4 v3, 0x5

    #@1b
    invoke-direct {p0, p1, v3, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    #@1e
    .line 1489
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    #@20
    if-eqz v3, :cond_6

    #@22
    .line 1492
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    #@24
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@27
    .line 1493
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 1495
    const-string/jumbo v3, "uri"

    #@2e
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@30
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@37
    .line 1497
    :cond_3
    if-eqz p3, :cond_4

    #@39
    .line 1498
    const-string/jumbo v3, "errorCode"

    #@3c
    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3f
    .line 1500
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@41
    if-eqz v3, :cond_5

    #@43
    if-eqz v2, :cond_5

    #@45
    .line 1502
    const-string/jumbo v3, "SendNextMsg"

    #@48
    const/4 v4, 0x1

    #@49
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@4c
    .line 1504
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    #@4e
    invoke-virtual {v3, p1, p2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    .line 1477
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_6
    :goto_1
    return-void

    #@52
    .line 1484
    :cond_7
    const/4 v2, 0x0

    #@53
    goto :goto_0

    #@54
    .line 1505
    :catch_0
    move-exception v0

    #@55
    .line 1506
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v3, "SMSDispatcher"

    #@58
    const-string/jumbo v4, "Failed to send result"

    #@5b
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    goto :goto_1
.end method

.method public onSent(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1518
    const/4 v2, 0x1

    #@2
    .line 1519
    .local v2, "isSinglePartOrLastPart":Z
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1520
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_6

    #@e
    const/4 v2, 0x1

    #@f
    .line 1522
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    #@11
    .line 1523
    const/4 v3, 0x2

    #@12
    .line 1524
    .local v3, "messageType":I
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    if-eqz v4, :cond_1

    #@16
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 1525
    const/4 v3, 0x5

    #@1f
    .line 1527
    :cond_1
    invoke-direct {p0, p1, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    #@22
    .line 1529
    .end local v3    # "messageType":I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    #@24
    if-eqz v4, :cond_5

    #@26
    .line 1532
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    #@28
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@2b
    .line 1533
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@2d
    if-eqz v4, :cond_3

    #@2f
    .line 1535
    const-string/jumbo v4, "uri"

    #@32
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@34
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3b
    .line 1537
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3d
    if-eqz v4, :cond_4

    #@3f
    if-eqz v2, :cond_4

    #@41
    .line 1539
    const-string/jumbo v4, "SendNextMsg"

    #@44
    const/4 v5, 0x1

    #@45
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@48
    .line 1541
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    #@4a
    const/4 v5, -0x1

    #@4b
    invoke-virtual {v4, p1, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 1516
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_5
    :goto_1
    return-void

    #@4f
    .line 1520
    :cond_6
    const/4 v2, 0x0

    #@50
    goto :goto_0

    #@51
    .line 1542
    :catch_0
    move-exception v0

    #@52
    .line 1543
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v4, "SMSDispatcher"

    #@55
    const-string/jumbo v5, "Failed to send result"

    #@58
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    goto :goto_1
.end method

.method public updateSentMessageStatus(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1365
    new-instance v3, Landroid/content/ContentValues;

    #@7
    const/4 v0, 0x1

    #@8
    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    #@b
    .line 1366
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    #@e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@15
    .line 1367
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@18
    move-result-object v1

    #@19
    .line 1368
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    #@1b
    move-object v0, p1

    #@1c
    move-object v5, v4

    #@1d
    .line 1367
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@20
    .line 1362
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
