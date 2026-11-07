.class public Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsTracker"
.end annotation


# instance fields
.field private final blacklist mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

.field private blacklist mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final greylist-max-r mAppInfo:Landroid/content/pm/PackageInfo;

.field private blacklist mCarrierId:I

.field private final greylist mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist mDeliveryIntent:Landroid/app/PendingIntent;

.field public final greylist-max-r mDestAddress:Ljava/lang/String;

.field public blacklist mExpectMore:Z

.field blacklist mFormat:Ljava/lang/String;

.field private blacklist mFullMessageText:Ljava/lang/String;

.field public blacklist mImsRetry:I

.field private final blacklist mIsForVvm:Z

.field private blacklist mIsFromDefaultSmsApplication:Ljava/lang/Boolean;

.field private blacklist mIsText:Z

.field public final blacklist mMessageId:J

.field public greylist mMessageRef:I

.field public greylist-max-r mMessageUri:Landroid/net/Uri;

.field private greylist-max-r mPersistMessage:Z

.field public blacklist mPriority:I

.field public blacklist mResultCodeFromCarrierMessagingService:I

.field public blacklist mRetryCount:I

.field public final greylist mSentIntent:Landroid/app/PendingIntent;

.field private blacklist mSkipShortCodeDestAddrCheck:Z

.field public final blacklist mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

.field private blacklist mSubId:I

.field private greylist-max-r mTimestamp:J

.field public final blacklist mUniqueMessageId:J

.field private blacklist mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mUserId:I

.field public blacklist mUsesImsServiceForIms:Z

.field public blacklist mValidityPeriod:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsForVvm(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsForVvm:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSkipShortCodeDestAddrCheck(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSkipShortCodeDestAddrCheck:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPersistMessage(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    .line 2675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    .line 2633
    const-string v0, "43043600-ea7a-44d2-9ae6-a58567ac7886"

    .line 2634
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 2676
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2677
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2678
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2679
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    .line 2680
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2681
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    .line 2682
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2683
    iput-wide p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 2684
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUserId:I

    .line 2685
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPriority:I

    .line 2686
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mValidityPeriod:I

    .line 2687
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsForVvm:Z

    .line 2688
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCarrierId:I

    .line 2689
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSkipShortCodeDestAddrCheck:Z

    const-wide/16 p2, 0x0

    .line 2690
    iput-wide p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUniqueMessageId:J

    .line 2691
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    .line 2692
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIIZJIIZJ)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
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
            "IZZIIIZJIIZJ)V"
        }
    .end annotation

    .line 2643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    .line 2633
    const-string v0, "43043600-ea7a-44d2-9ae6-a58567ac7886"

    .line 2634
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

    .line 2644
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2645
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2646
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    .line 2647
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 2648
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    .line 2649
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2650
    iput-object p6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 2651
    iput-boolean p11, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 2652
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 2653
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    move/from16 p2, p23

    .line 2654
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 2655
    iput-object p7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2656
    iput-object p8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2657
    iput-object p9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    .line 2658
    iput-object p10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2659
    iput-object p12, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    .line 2660
    iput p13, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    move/from16 p2, p14

    .line 2661
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    move/from16 p2, p15

    .line 2662
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    move/from16 p2, p16

    .line 2663
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUserId:I

    move/from16 p2, p17

    .line 2664
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPriority:I

    move/from16 p2, p18

    .line 2665
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mValidityPeriod:I

    move/from16 p2, p19

    .line 2666
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsForVvm:Z

    move-wide/from16 p2, p20

    .line 2667
    iput-wide p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    move/from16 p2, p22

    .line 2668
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCarrierId:I

    move/from16 p2, p24

    .line 2669
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSkipShortCodeDestAddrCheck:Z

    move-wide/from16 p2, p25

    .line 2670
    iput-wide p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUniqueMessageId:J

    .line 2671
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mResultCodeFromCarrierMessagingService:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIIZJIIZJLcom/android/internal/telephony/SMSDispatcher-IA;)V
    .registers 28

    .line 0
    invoke-direct/range {p0 .. p26}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIIZJIIZJ)V

    return-void
.end method

.method private blacklist generateUUID(II)Ljava/util/UUID;
    .registers 10

    int-to-long v0, p1

    int-to-long p1, p2

    .line 2956
    new-instance v2, Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnomalyUnexpectedErrorFromRilUUID:Ljava/util/UUID;

    .line 2957
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    const/16 p0, 0x20

    shl-long p0, p1, p0

    add-long/2addr p0, v0

    add-long/2addr v5, p0

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2
.end method

.method private blacklist persistOrUpdateMessage(Landroid/content/Context;II)V
    .registers 5

    .line 2876
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 2877
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateMessageState(Landroid/content/Context;II)V

    return-void

    .line 2879
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    return-void
.end method

.method private blacklist persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;
    .registers 11

    .line 2823
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d4

    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    if-eqz v0, :cond_d4

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_d4

    .line 2826
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persist SMS into "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    if-ne p2, v2, :cond_21

    .line 2827
    const-string v3, "FAILED"

    goto :goto_23

    :cond_21
    const-string v3, "SENT"

    :goto_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2826
    const-string v3, "SMSDispatcher"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2829
    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sub_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2830
    const-string v4, "address"

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    const-string v4, "body"

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x1

    .line 2833
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "seen"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2834
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2835
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_74

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_75

    :cond_74
    move-object v5, v1

    .line 2836
    :goto_75
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 2837
    const-string v6, "creator"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    :cond_80
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_8f

    const/16 p0, 0x20

    .line 2840
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v5, "status"

    invoke-virtual {v0, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8f
    const/4 p0, -0x1

    if-eq p3, p0, :cond_9b

    .line 2843
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "error_code"

    invoke-virtual {v0, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2845
    :cond_9b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2846
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2848
    :try_start_a3
    sget-object p1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_c3

    if-ne p2, v2, :cond_c3

    .line 2855
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2856
    const-string p3, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2857
    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_be} :catch_c1
    .catchall {:try_start_a3 .. :try_end_be} :catchall_bf

    goto :goto_c3

    :catchall_bf
    move-exception p0

    goto :goto_d0

    :catch_c1
    move-exception p0

    goto :goto_c7

    .line 2864
    :cond_c3
    :goto_c3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 2861
    :goto_c7
    :try_start_c7
    const-string p1, "writeOutboxMessage: Failed to persist outbox message"

    invoke-static {v3, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_bf

    .line 2864
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :goto_d0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2865
    throw p0

    :cond_d4
    :goto_d4
    return-object v1
.end method

.method private blacklist reportAnomaly(II)V
    .registers 6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_40

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_40

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    const/4 v0, 0x5

    if-eq p1, v0, :cond_40

    const/4 v0, 0x7

    if-eq p1, v0, :cond_40

    const/16 v0, 0x8

    if-eq p1, v0, :cond_40

    .line 2947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SMSDispatcher"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->generateUUID(II)Ljava/util/UUID;

    move-result-object p1

    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCarrierId:I

    .line 2948
    invoke-static {p1, v1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    :cond_40
    return-void
.end method

.method private blacklist updateMessageState(Landroid/content/Context;II)V
    .registers 7

    .line 2769
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    return-void

    .line 2772
    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2773
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2774
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "error_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2777
    :try_start_21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p0, v0, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_48

    .line 2779
    const-string p0, "SMSDispatcher"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to move message to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_46

    goto :goto_48

    :catchall_46
    move-exception p0

    goto :goto_4c

    .line 2782
    :cond_48
    :goto_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2783
    throw p0
.end method


# virtual methods
.method public blacklist getAppInfo()Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 2712
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 1

    .line 2704
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz p0, :cond_7

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getData()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2696
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    return-object p0
.end method

.method protected blacklist getInterval()J
    .registers 5

    .line 2792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected blacklist isAnyPartFailed()Z
    .registers 1

    .line 2808
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isFromDefaultSmsApplication(Landroid/content/Context;)Z
    .registers 5

    .line 2717
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFromDefaultSmsApplication:Ljava/lang/Boolean;

    if-nez v0, :cond_25

    .line 2719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2721
    :try_start_8
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {p1, v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_20

    .line 2723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2727
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2726
    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFromDefaultSmsApplication:Ljava/lang/Boolean;

    goto :goto_25

    :catchall_20
    move-exception p0

    .line 2723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2724
    throw p0

    .line 2729
    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFromDefaultSmsApplication:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist isMtSmsPollingMessage(Landroid/content/Context;)Z
    .registers 3

    .line 2739
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2744
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x104029d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2745
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist isSinglePartOrLastPart()Z
    .registers 2

    .line 2800
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    return v0
.end method

.method public greylist-max-r onFailed(Landroid/content/Context;II)V
    .registers 9

    .line 2892
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2893
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2897
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_15

    .line 2898
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v1

    :goto_16
    if-eqz v0, :cond_1c

    const/4 v2, 0x5

    .line 2901
    invoke-direct {p0, p1, v2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 2903
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_82

    .line 2906
    :try_start_20
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2907
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_32

    .line 2909
    const-string v4, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_32
    const/4 v3, -0x1

    if-eq p3, v3, :cond_3a

    .line 2912
    const-string v3, "errorCode"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2914
    :cond_3a
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_45

    if-eqz v0, :cond_45

    .line 2916
    const-string v0, "SendNextMsg"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2918
    :cond_45
    iget-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_52

    .line 2921
    const-string v3, "MessageId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2923
    :cond_52
    const-string v0, "format"

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2924
    const-string v0, "ims"

    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2925
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_65
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_20 .. :try_end_65} :catch_66

    goto :goto_82

    .line 2927
    :catch_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send result "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    .line 2928
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2927
    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    :cond_82
    :goto_82
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->reportAnomaly(II)V

    return-void
.end method

.method public greylist-max-r onSent(Landroid/content/Context;)V
    .registers 8

    .line 2970
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 2971
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    move v0, v1

    :goto_f
    const/4 v2, -0x1

    if-eqz v0, :cond_22

    .line 2975
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x5

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x2

    .line 2978
    :goto_1f
    invoke-direct {p0, p1, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 2980
    :cond_22
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_5e

    .line 2983
    :try_start_26
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2984
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v4, :cond_38

    .line 2986
    const-string v5, "uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2988
    :cond_38
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v4, :cond_43

    if-eqz v0, :cond_43

    .line 2990
    const-string v0, "SendNextMsg"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2992
    :cond_43
    const-string v0, "format"

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2993
    const-string v0, "ims"

    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2994
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_56
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_26 .. :try_end_56} :catch_57

    return-void

    .line 2996
    :catch_57
    const-string p0, "SMSDispatcher"

    const-string p1, "Failed to send result"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method public greylist-max-r updateSentMessageStatus(Landroid/content/Context;I)V
    .registers 5

    .line 2753
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1d

    .line 2755
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2756
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2757
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1d
    return-void
.end method
