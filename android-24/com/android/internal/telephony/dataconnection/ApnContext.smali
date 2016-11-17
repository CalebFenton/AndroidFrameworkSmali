.class public Lcom/android/internal/telephony/dataconnection/ApnContext;
.super Ljava/lang/Object;
.source "ApnContext.java"


# static fields
.field protected static final DBG:Z = false

.field private static final MAX_HISTORY_LOG_COUNT:I = 0x4

.field private static final SLOG_TAG:Ljava/lang/String; = "ApnContext"


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private final mApnType:Ljava/lang/String;

.field private mConcurrentVoiceAndDataAllowed:Z

.field private final mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHistoryLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field mReason:Ljava/lang/String;

.field mReconnectAlarmIntent:Landroid/app/PendingIntent;

.field private mRefCount:I

.field private final mRefCountLock:Ljava/lang/Object;

.field private final mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

.field private final mRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mState:Lcom/android/internal/telephony/DctConstants$State;

.field public final priority:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "config"    # Landroid/net/NetworkConfig;
    .param p5, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 75
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@b
    .line 76
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@d
    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    #@14
    .line 391
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@1b
    .line 392
    new-instance v0, Ljava/util/ArrayDeque;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@22
    .line 438
    new-instance v0, Landroid/util/SparseIntArray;

    #@24
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@29
    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2b
    .line 113
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@2d
    .line 114
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@2f
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@31
    .line 115
    const-string/jumbo v0, "dataEnabled"

    #@34
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@37
    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@39
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@3c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3e
    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@40
    iget-boolean v1, p4, Landroid/net/NetworkConfig;->dependencyMet:Z

    #@42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@45
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@47
    .line 118
    iget v0, p4, Landroid/net/NetworkConfig;->priority:I

    #@49
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    #@4b
    .line 119
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    #@4d
    .line 120
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@4f
    .line 121
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    #@51
    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/RetryManager;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    #@54
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@56
    .line 111
    return-void
.end method

.method public static apnIdForApnName(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 609
    const-string/jumbo v0, "default"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 611
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 609
    :cond_0
    const-string/jumbo v0, "mms"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 613
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 609
    :cond_1
    const-string/jumbo v0, "supl"

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 615
    const/4 v0, 0x2

    #@20
    return v0

    #@21
    .line 609
    :cond_2
    const-string/jumbo v0, "dun"

    #@24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 617
    const/4 v0, 0x3

    #@2b
    return v0

    #@2c
    .line 609
    :cond_3
    const-string/jumbo v0, "hipri"

    #@2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 619
    const/4 v0, 0x4

    #@36
    return v0

    #@37
    .line 609
    :cond_4
    const-string/jumbo v0, "ims"

    #@3a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 621
    const/4 v0, 0x5

    #@41
    return v0

    #@42
    .line 609
    :cond_5
    const-string/jumbo v0, "fota"

    #@45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 623
    const/4 v0, 0x6

    #@4c
    return v0

    #@4d
    .line 609
    :cond_6
    const-string/jumbo v0, "cbs"

    #@50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_7

    #@56
    .line 625
    const/4 v0, 0x7

    #@57
    return v0

    #@58
    .line 609
    :cond_7
    const-string/jumbo v0, "ia"

    #@5b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_8

    #@61
    .line 627
    const/16 v0, 0x8

    #@63
    return v0

    #@64
    .line 609
    :cond_8
    const-string/jumbo v0, "emergency"

    #@67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v0

    #@6b
    if-eqz v0, :cond_9

    #@6d
    .line 629
    const/16 v0, 0x9

    #@6f
    return v0

    #@70
    .line 631
    :cond_9
    const/4 v0, -0x1

    #@71
    return v0
.end method

.method public static apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 6
    .param p0, "nr"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 537
    iget-object v2, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@4
    .line 539
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@7
    move-result-object v3

    #@8
    array-length v3, v3

    #@9
    if-lez v3, :cond_0

    #@b
    .line 540
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 541
    return v5

    #@12
    .line 546
    :cond_0
    const/4 v0, -0x1

    #@13
    .line 547
    .local v0, "apnId":I
    const/4 v1, 0x0

    #@14
    .line 549
    .local v1, "error":Z
    const/16 v3, 0xc

    #@16
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 550
    const/4 v0, 0x0

    #@1d
    .line 552
    :cond_1
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 553
    if-eq v0, v5, :cond_2

    #@25
    const/4 v1, 0x1

    #@26
    .line 554
    :cond_2
    const/4 v0, 0x1

    #@27
    .line 556
    :cond_3
    const/4 v3, 0x1

    #@28
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_5

    #@2e
    .line 557
    if-eq v0, v5, :cond_4

    #@30
    const/4 v1, 0x1

    #@31
    .line 558
    :cond_4
    const/4 v0, 0x2

    #@32
    .line 560
    :cond_5
    const/4 v3, 0x2

    #@33
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_7

    #@39
    .line 561
    if-eq v0, v5, :cond_6

    #@3b
    const/4 v1, 0x1

    #@3c
    .line 562
    :cond_6
    const/4 v0, 0x3

    #@3d
    .line 564
    :cond_7
    const/4 v3, 0x3

    #@3e
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_9

    #@44
    .line 565
    if-eq v0, v5, :cond_8

    #@46
    const/4 v1, 0x1

    #@47
    .line 566
    :cond_8
    const/4 v0, 0x6

    #@48
    .line 568
    :cond_9
    const/4 v3, 0x4

    #@49
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_b

    #@4f
    .line 569
    if-eq v0, v5, :cond_a

    #@51
    const/4 v1, 0x1

    #@52
    .line 570
    :cond_a
    const/4 v0, 0x5

    #@53
    .line 572
    :cond_b
    const/4 v3, 0x5

    #@54
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_d

    #@5a
    .line 573
    if-eq v0, v5, :cond_c

    #@5c
    const/4 v1, 0x1

    #@5d
    .line 574
    :cond_c
    const/4 v0, 0x7

    #@5e
    .line 576
    :cond_d
    const/4 v3, 0x7

    #@5f
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_f

    #@65
    .line 577
    if-eq v0, v5, :cond_e

    #@67
    const/4 v1, 0x1

    #@68
    .line 578
    :cond_e
    const/16 v0, 0x8

    #@6a
    .line 580
    :cond_f
    const/16 v3, 0x8

    #@6c
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_11

    #@72
    .line 581
    if-eq v0, v5, :cond_10

    #@74
    const/4 v1, 0x1

    #@75
    .line 583
    :cond_10
    const-string/jumbo v3, "ApnContext"

    #@78
    const-string/jumbo v4, "RCS APN type not yet supported"

    #@7b
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 585
    :cond_11
    const/16 v3, 0x9

    #@80
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_13

    #@86
    .line 586
    if-eq v0, v5, :cond_12

    #@88
    const/4 v1, 0x1

    #@89
    .line 588
    :cond_12
    const-string/jumbo v3, "ApnContext"

    #@8c
    const-string/jumbo v4, "XCAP APN type not yet supported"

    #@8f
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 590
    :cond_13
    const/16 v3, 0xa

    #@94
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@97
    move-result v3

    #@98
    if-eqz v3, :cond_15

    #@9a
    .line 591
    if-eq v0, v5, :cond_14

    #@9c
    const/4 v1, 0x1

    #@9d
    .line 592
    :cond_14
    const/4 v0, 0x1

    #@9e
    .line 594
    :cond_15
    if-eqz v1, :cond_16

    #@a0
    .line 599
    const-string/jumbo v3, "ApnContext"

    #@a3
    const-string/jumbo v4, "Multiple apn types specified in request - result is unspecified!"

    #@a6
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 601
    :cond_16
    if-ne v0, v5, :cond_17

    #@ab
    .line 602
    const-string/jumbo v3, "ApnContext"

    #@ae
    new-instance v4, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v5, "Unsupported NetworkRequest in Telephony: nr="

    #@b6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v4

    #@be
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v4

    #@c2
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    .line 604
    :cond_17
    return v0
.end method

.method public static apnIdForType(I)I
    .locals 1
    .param p0, "networkType"    # I

    #@0
    .prologue
    .line 512
    packed-switch p0, :pswitch_data_0

    #@3
    .line 532
    :pswitch_0
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 514
    :pswitch_1
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 516
    :pswitch_2
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 518
    :pswitch_3
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 520
    :pswitch_4
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 522
    :pswitch_5
    const/4 v0, 0x6

    #@e
    return v0

    #@f
    .line 524
    :pswitch_6
    const/4 v0, 0x5

    #@10
    return v0

    #@11
    .line 526
    :pswitch_7
    const/4 v0, 0x7

    #@12
    return v0

    #@13
    .line 528
    :pswitch_8
    const/16 v0, 0x8

    #@15
    return v0

    #@16
    .line 530
    :pswitch_9
    const/16 v0, 0x9

    #@18
    return v0

    #@19
    .line 512
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static apnNameForApnId(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    #@0
    .prologue
    .line 636
    packed-switch p0, :pswitch_data_0

    #@3
    .line 658
    const-string/jumbo v0, "ApnContext"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unknown id ("

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ") in apnIdToType"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 659
    const-string/jumbo v0, "default"

    #@27
    return-object v0

    #@28
    .line 638
    :pswitch_0
    const-string/jumbo v0, "default"

    #@2b
    return-object v0

    #@2c
    .line 640
    :pswitch_1
    const-string/jumbo v0, "mms"

    #@2f
    return-object v0

    #@30
    .line 642
    :pswitch_2
    const-string/jumbo v0, "supl"

    #@33
    return-object v0

    #@34
    .line 644
    :pswitch_3
    const-string/jumbo v0, "dun"

    #@37
    return-object v0

    #@38
    .line 646
    :pswitch_4
    const-string/jumbo v0, "hipri"

    #@3b
    return-object v0

    #@3c
    .line 648
    :pswitch_5
    const-string/jumbo v0, "ims"

    #@3f
    return-object v0

    #@40
    .line 650
    :pswitch_6
    const-string/jumbo v0, "fota"

    #@43
    return-object v0

    #@44
    .line 652
    :pswitch_7
    const-string/jumbo v0, "cbs"

    #@47
    return-object v0

    #@48
    .line 654
    :pswitch_8
    const-string/jumbo v0, "ia"

    #@4b
    return-object v0

    #@4c
    .line 656
    :pswitch_9
    const-string/jumbo v0, "emergency"

    #@4f
    return-object v0

    #@50
    .line 636
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
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "[ApnContext:"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "] "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 672
    return-void
.end method


# virtual methods
.method public decRefCount(Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "ApnContext.decRefCount - "

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@24
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@26
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    #@29
    .line 422
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@2b
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    #@2e
    move-result v0

    #@2f
    const/4 v2, 0x4

    #@30
    if-le v0, v2, :cond_1

    #@32
    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@34
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 418
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    throw v0

    #@3b
    .line 426
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "ApnContext.decRefCount didn\'t find log - "

    #@43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@54
    .line 428
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@56
    add-int/lit8 v2, v0, -0x1

    #@58
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@5a
    const/4 v2, 0x1

    #@5b
    if-ne v0, v2, :cond_2

    #@5d
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@5f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@61
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForApnName(Ljava/lang/String;)I

    #@64
    move-result v2

    #@65
    const/4 v3, 0x0

    #@66
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setEnabled(IZ)V

    #@69
    .line 431
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@6b
    if-gez v0, :cond_3

    #@6d
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v2, "ApnContext.decRefCount went to "

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@7b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@86
    .line 433
    const/4 v0, 0x0

    #@87
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@89
    :cond_3
    monitor-exit v1

    #@8a
    .line 417
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 677
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v3, "  "

    #@5
    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 678
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@a
    monitor-enter v4

    #@b
    .line 679
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 680
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@15
    .line 681
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/util/LocalLog;

    #@27
    .line 682
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1, v2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 678
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@2c
    monitor-exit v4

    #@2d
    throw v3

    #@2e
    .line 684
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@30
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    #@33
    move-result v3

    #@34
    if-lez v3, :cond_1

    #@36
    const-string/jumbo v3, "Historical Logs:"

    #@39
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 685
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@3e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v1

    #@42
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid/util/LocalLog;

    #@4e
    .line 686
    .restart local v0    # "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1, v2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@51
    goto :goto_1

    #@52
    .line 688
    .end local v0    # "l":Landroid/util/LocalLog;
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@55
    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "mRetryManager={"

    #@5d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@63
    invoke-virtual {v5}, Lcom/android/internal/telephony/RetryManager;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    const-string/jumbo v5, "}"

    #@6e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    monitor-exit v4

    #@7a
    .line 676
    return-void
.end method

.method public declared-synchronized getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getConnectionGeneration()I
    .locals 1

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getDelayForNextApn(Z)J
    .locals 2
    .param p1, "failFastEnabled"    # Z

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->getDelayForNextApn(Z)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDependencyMet()Z
    .locals 1

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInterApnDelay(Z)J
    .locals 2
    .param p1, "failFastEnabled"    # Z

    #@0
    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->getInterApnDelay(Z)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public declared-synchronized getReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getReconnectIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public incAndGetConnectionGeneration()I
    .locals 1

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public incRefCount(Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "ApnContext.incRefCount has duplicate add - "

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@24
    .line 411
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@26
    add-int/lit8 v2, v0, 0x1

    #@28
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@2a
    if-nez v0, :cond_0

    #@2c
    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@30
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForApnName(Ljava/lang/String;)I

    #@33
    move-result v2

    #@34
    const/4 v3, 0x1

    #@35
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setEnabled(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    :cond_0
    monitor-exit v1

    #@39
    .line 403
    return-void

    #@3a
    .line 408
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v2, "ApnContext.incRefCount - "

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@4d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    goto :goto_0

    #@59
    .line 404
    :catchall_0
    move-exception v0

    #@5a
    monitor-exit v1

    #@5b
    throw v0
.end method

.method public declared-synchronized isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 263
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isConnectable()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@a
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 335
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 334
    :cond_0
    :goto_0
    return v0

    #@15
    .line 336
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@17
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@1d
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@1f
    if-eq v2, v3, :cond_0

    #@21
    move v0, v1

    #@22
    goto :goto_0

    #@23
    :cond_2
    move v0, v1

    #@24
    .line 334
    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 344
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@a
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 345
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 344
    :cond_0
    :goto_0
    return v0

    #@15
    .line 346
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@17
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    .line 347
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@1d
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@1f
    if-eq v2, v3, :cond_0

    #@21
    move v0, v1

    #@22
    goto :goto_0

    #@23
    :cond_2
    move v0, v1

    #@24
    .line 344
    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@4
    move-result-object v0

    #@5
    .line 298
    .local v0, "currentState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 299
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 298
    :cond_0
    :goto_0
    return v1

    #@e
    .line 299
    :cond_1
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isProvisioningApn()Z
    .locals 3

    #@0
    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    .line 382
    const v2, 0x1040049

    #@d
    .line 381
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 383
    .local v0, "provisioningApn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 384
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@19
    if-eqz v1, :cond_0

    #@1b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1d
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@23
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    return v1

    #@2a
    .line 387
    :cond_0
    const/4 v1, 0x0

    #@2b
    return v1
.end method

.method public isReady()Z
    .locals 1

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@5
    .line 238
    return-void
.end method

.method public declared-synchronized releaseDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@b
    .line 159
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@e
    .line 161
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 156
    return-void

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public requestLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 396
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/util/LocalLog;

    #@15
    .line 398
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 396
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@1d
    .line 395
    return-void
.end method

.method public resetErrorCodeRetries()V
    .locals 11

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 441
    const-string/jumbo v7, "ApnContext.resetErrorCodeRetries"

    #@4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@7
    .line 444
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    #@9
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v7

    #@11
    .line 445
    const v8, 0x1070048

    #@14
    .line 444
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 446
    .local v1, "config":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@1a
    monitor-enter v7

    #@1b
    .line 447
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@1d
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    #@20
    .line 449
    array-length v8, v1

    #@21
    :goto_0
    if-ge v6, v8, :cond_2

    #@23
    aget-object v0, v1, v6

    #@25
    .line 450
    .local v0, "c":Ljava/lang/String;
    const-string/jumbo v9, ","

    #@28
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 451
    .local v5, "errorValue":[Ljava/lang/String;
    if-eqz v5, :cond_1

    #@2e
    array-length v9, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    const/4 v10, 0x2

    #@30
    if-ne v9, v10, :cond_1

    #@32
    .line 452
    const/4 v2, 0x0

    #@33
    .line 453
    .local v2, "count":I
    const/4 v4, 0x0

    #@34
    .line 455
    .local v4, "errorCode":I
    const/4 v9, 0x0

    #@35
    :try_start_1
    aget-object v9, v5, v9

    #@37
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3a
    move-result v4

    #@3b
    .line 456
    const/4 v9, 0x1

    #@3c
    aget-object v9, v5, v9

    #@3e
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    move-result v2

    #@42
    .line 461
    if-lez v2, :cond_0

    #@44
    if-lez v4, :cond_0

    #@46
    .line 462
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@48
    invoke-virtual {v9, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@4b
    .line 449
    .end local v2    # "count":I
    .end local v4    # "errorCode":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 457
    .restart local v2    # "count":I
    .restart local v4    # "errorCode":I
    :catch_0
    move-exception v3

    #@4f
    .line 458
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v10, "Exception parsing config_retries_per_error_code: "

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    goto :goto_1

    #@67
    .line 446
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "errorCode":I
    .end local v5    # "errorValue":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@68
    monitor-exit v7

    #@69
    throw v6

    #@6a
    .line 465
    .restart local v0    # "c":Ljava/lang/String;
    .restart local v5    # "errorValue":[Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v10, "Exception parsing config_retries_per_error_code: "

    #@72
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v9

    #@7e
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@81
    goto :goto_1

    #@82
    .end local v0    # "c":Ljava/lang/String;
    .end local v5    # "errorValue":[Ljava/lang/String;
    :cond_2
    monitor-exit v7

    #@83
    .line 440
    return-void
.end method

.method public restartOnError(I)Z
    .locals 6
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 472
    const/4 v0, 0x0

    #@1
    .line 473
    .local v0, "result":Z
    const/4 v1, 0x0

    #@2
    .line 474
    .local v1, "retriesLeft":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@4
    monitor-enter v4

    #@5
    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@7
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@a
    move-result v1

    #@b
    .line 476
    packed-switch v1, :pswitch_data_0

    #@e
    .line 487
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@10
    add-int/lit8 v5, v1, -0x1

    #@12
    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 488
    const/4 v0, 0x0

    #@16
    :goto_0
    :pswitch_0
    monitor-exit v4

    #@17
    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "ApnContext.restartOnError("

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, ") found "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 493
    const-string/jumbo v4, " and returned "

    #@35
    .line 492
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 495
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@44
    .line 496
    return v0

    #@45
    .line 482
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 483
    const/4 v0, 0x1

    #@49
    .line 484
    goto :goto_0

    #@4a
    .line 474
    :catchall_0
    move-exception v3

    #@4b
    monitor-exit v4

    #@4c
    throw v3

    #@4d
    .line 476
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 195
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 193
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setConcurrentVoiceAndDataAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 255
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 254
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V
    .locals 1
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 144
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setDependencyMet(Z)V
    .locals 1
    .param p1, "met"    # Z

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 369
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 354
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/RetryManager;->setModemSuggestedDelay(J)V

    #@5
    .line 220
    return-void
.end method

.method public declared-synchronized setReason(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 310
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 306
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 177
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 176
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/DctConstants$State;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 275
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@3
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit p0

    #@1b
    .line 270
    return-void

    #@1c
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method public declared-synchronized setWaitingApns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    monitor-enter p0

    #@1
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@3
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->setWaitingApns(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 202
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 666
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "{mApnType="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, " mState="

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v1, " mWaitingApns={"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    #@2e
    move-result-object v1

    #@2f
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 667
    const-string/jumbo v1, "}"

    #@36
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 667
    const-string/jumbo v1, " mApnSetting={"

    #@3d
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@43
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 668
    const-string/jumbo v1, "} mReason="

    #@4a
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    #@50
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 668
    const-string/jumbo v1, " mDataEnabled="

    #@57
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5d
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 668
    const-string/jumbo v1, " mDependencyMet="

    #@64
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    .line 669
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6a
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 669
    const-string/jumbo v1, "}"

    #@71
    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@78
    move-result-object v0

    #@79
    monitor-exit p0

    #@7a
    return-object v0

    #@7b
    :catchall_0
    move-exception v0

    #@7c
    monitor-exit p0

    #@7d
    throw v0
.end method
