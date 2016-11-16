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

.field private final mNetworkRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkRequest;",
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
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 76
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@b
    .line 77
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@d
    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    #@14
    .line 401
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@1b
    .line 402
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@22
    .line 403
    new-instance v0, Ljava/util/ArrayDeque;

    #@24
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@29
    .line 470
    new-instance v0, Landroid/util/SparseIntArray;

    #@2b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@30
    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    #@32
    .line 114
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@34
    .line 115
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@36
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@38
    .line 116
    const-string/jumbo v0, "dataEnabled"

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@3e
    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@40
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@43
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@45
    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@47
    iget-boolean v1, p4, Landroid/net/NetworkConfig;->dependencyMet:Z

    #@49
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@4c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@4e
    .line 119
    iget v0, p4, Landroid/net/NetworkConfig;->priority:I

    #@50
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    #@52
    .line 120
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    #@54
    .line 121
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@56
    .line 122
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    #@58
    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/RetryManager;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    #@5b
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@5d
    .line 112
    return-void
.end method

.method public static apnIdForApnName(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 641
    const-string/jumbo v0, "default"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 643
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 641
    :cond_0
    const-string/jumbo v0, "mms"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 645
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 641
    :cond_1
    const-string/jumbo v0, "supl"

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 647
    const/4 v0, 0x2

    #@20
    return v0

    #@21
    .line 641
    :cond_2
    const-string/jumbo v0, "dun"

    #@24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 649
    const/4 v0, 0x3

    #@2b
    return v0

    #@2c
    .line 641
    :cond_3
    const-string/jumbo v0, "hipri"

    #@2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 651
    const/4 v0, 0x4

    #@36
    return v0

    #@37
    .line 641
    :cond_4
    const-string/jumbo v0, "ims"

    #@3a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 653
    const/4 v0, 0x5

    #@41
    return v0

    #@42
    .line 641
    :cond_5
    const-string/jumbo v0, "fota"

    #@45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 655
    const/4 v0, 0x6

    #@4c
    return v0

    #@4d
    .line 641
    :cond_6
    const-string/jumbo v0, "cbs"

    #@50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_7

    #@56
    .line 657
    const/4 v0, 0x7

    #@57
    return v0

    #@58
    .line 641
    :cond_7
    const-string/jumbo v0, "ia"

    #@5b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_8

    #@61
    .line 659
    const/16 v0, 0x8

    #@63
    return v0

    #@64
    .line 641
    :cond_8
    const-string/jumbo v0, "emergency"

    #@67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v0

    #@6b
    if-eqz v0, :cond_9

    #@6d
    .line 661
    const/16 v0, 0x9

    #@6f
    return v0

    #@70
    .line 663
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
    .line 569
    iget-object v2, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@4
    .line 571
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@7
    move-result-object v3

    #@8
    array-length v3, v3

    #@9
    if-lez v3, :cond_0

    #@b
    .line 572
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 573
    return v5

    #@12
    .line 578
    :cond_0
    const/4 v0, -0x1

    #@13
    .line 579
    .local v0, "apnId":I
    const/4 v1, 0x0

    #@14
    .line 581
    .local v1, "error":Z
    const/16 v3, 0xc

    #@16
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 582
    const/4 v0, 0x0

    #@1d
    .line 584
    :cond_1
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 585
    if-eq v0, v5, :cond_2

    #@25
    const/4 v1, 0x1

    #@26
    .line 586
    :cond_2
    const/4 v0, 0x1

    #@27
    .line 588
    :cond_3
    const/4 v3, 0x1

    #@28
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_5

    #@2e
    .line 589
    if-eq v0, v5, :cond_4

    #@30
    const/4 v1, 0x1

    #@31
    .line 590
    :cond_4
    const/4 v0, 0x2

    #@32
    .line 592
    :cond_5
    const/4 v3, 0x2

    #@33
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_7

    #@39
    .line 593
    if-eq v0, v5, :cond_6

    #@3b
    const/4 v1, 0x1

    #@3c
    .line 594
    :cond_6
    const/4 v0, 0x3

    #@3d
    .line 596
    :cond_7
    const/4 v3, 0x3

    #@3e
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_9

    #@44
    .line 597
    if-eq v0, v5, :cond_8

    #@46
    const/4 v1, 0x1

    #@47
    .line 598
    :cond_8
    const/4 v0, 0x6

    #@48
    .line 600
    :cond_9
    const/4 v3, 0x4

    #@49
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_b

    #@4f
    .line 601
    if-eq v0, v5, :cond_a

    #@51
    const/4 v1, 0x1

    #@52
    .line 602
    :cond_a
    const/4 v0, 0x5

    #@53
    .line 604
    :cond_b
    const/4 v3, 0x5

    #@54
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_d

    #@5a
    .line 605
    if-eq v0, v5, :cond_c

    #@5c
    const/4 v1, 0x1

    #@5d
    .line 606
    :cond_c
    const/4 v0, 0x7

    #@5e
    .line 608
    :cond_d
    const/4 v3, 0x7

    #@5f
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_f

    #@65
    .line 609
    if-eq v0, v5, :cond_e

    #@67
    const/4 v1, 0x1

    #@68
    .line 610
    :cond_e
    const/16 v0, 0x8

    #@6a
    .line 612
    :cond_f
    const/16 v3, 0x8

    #@6c
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_11

    #@72
    .line 613
    if-eq v0, v5, :cond_10

    #@74
    const/4 v1, 0x1

    #@75
    .line 615
    :cond_10
    const-string/jumbo v3, "ApnContext"

    #@78
    const-string/jumbo v4, "RCS APN type not yet supported"

    #@7b
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 617
    :cond_11
    const/16 v3, 0x9

    #@80
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_13

    #@86
    .line 618
    if-eq v0, v5, :cond_12

    #@88
    const/4 v1, 0x1

    #@89
    .line 620
    :cond_12
    const-string/jumbo v3, "ApnContext"

    #@8c
    const-string/jumbo v4, "XCAP APN type not yet supported"

    #@8f
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 622
    :cond_13
    const/16 v3, 0xa

    #@94
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@97
    move-result v3

    #@98
    if-eqz v3, :cond_15

    #@9a
    .line 623
    if-eq v0, v5, :cond_14

    #@9c
    const/4 v1, 0x1

    #@9d
    .line 624
    :cond_14
    const/16 v0, 0x9

    #@9f
    .line 626
    :cond_15
    if-eqz v1, :cond_16

    #@a1
    .line 631
    const-string/jumbo v3, "ApnContext"

    #@a4
    const-string/jumbo v4, "Multiple apn types specified in request - result is unspecified!"

    #@a7
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 633
    :cond_16
    if-ne v0, v5, :cond_17

    #@ac
    .line 634
    const-string/jumbo v3, "ApnContext"

    #@af
    new-instance v4, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v5, "Unsupported NetworkRequest in Telephony: nr="

    #@b7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v4

    #@bb
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v4

    #@c3
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 636
    :cond_17
    return v0
.end method

.method public static apnIdForType(I)I
    .locals 1
    .param p0, "networkType"    # I

    #@0
    .prologue
    .line 544
    packed-switch p0, :pswitch_data_0

    #@3
    .line 564
    :pswitch_0
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 546
    :pswitch_1
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 548
    :pswitch_2
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 550
    :pswitch_3
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 552
    :pswitch_4
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 554
    :pswitch_5
    const/4 v0, 0x6

    #@e
    return v0

    #@f
    .line 556
    :pswitch_6
    const/4 v0, 0x5

    #@10
    return v0

    #@11
    .line 558
    :pswitch_7
    const/4 v0, 0x7

    #@12
    return v0

    #@13
    .line 560
    :pswitch_8
    const/16 v0, 0x8

    #@15
    return v0

    #@16
    .line 562
    :pswitch_9
    const/16 v0, 0x9

    #@18
    return v0

    #@19
    .line 544
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
    .line 668
    packed-switch p0, :pswitch_data_0

    #@3
    .line 690
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
    .line 691
    const-string/jumbo v0, "default"

    #@27
    return-object v0

    #@28
    .line 670
    :pswitch_0
    const-string/jumbo v0, "default"

    #@2b
    return-object v0

    #@2c
    .line 672
    :pswitch_1
    const-string/jumbo v0, "mms"

    #@2f
    return-object v0

    #@30
    .line 674
    :pswitch_2
    const-string/jumbo v0, "supl"

    #@33
    return-object v0

    #@34
    .line 676
    :pswitch_3
    const-string/jumbo v0, "dun"

    #@37
    return-object v0

    #@38
    .line 678
    :pswitch_4
    const-string/jumbo v0, "hipri"

    #@3b
    return-object v0

    #@3c
    .line 680
    :pswitch_5
    const-string/jumbo v0, "ims"

    #@3f
    return-object v0

    #@40
    .line 682
    :pswitch_6
    const-string/jumbo v0, "fota"

    #@43
    return-object v0

    #@44
    .line 684
    :pswitch_7
    const-string/jumbo v0, "cbs"

    #@47
    return-object v0

    #@48
    .line 686
    :pswitch_8
    const-string/jumbo v0, "ia"

    #@4b
    return-object v0

    #@4c
    .line 688
    :pswitch_9
    const-string/jumbo v0, "emergency"

    #@4f
    return-object v0

    #@50
    .line 668
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

.method private isFastRetryReason()Z
    .locals 2

    #@0
    .prologue
    .line 346
    const-string/jumbo v0, "nwTypeChanged"

    #@3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 347
    const-string/jumbo v0, "apnChanged"

    #@e
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    .line 346
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 705
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
    .line 704
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 709
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v5, "  "

    #@5
    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 710
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@a
    monitor-enter v6

    #@b
    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 712
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v5

    #@18
    if-lez v5, :cond_1

    #@1a
    .line 713
    const-string/jumbo v5, "NetworkRequests:"

    #@1d
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@20
    .line 714
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@23
    .line 715
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@25
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v3

    #@29
    .local v3, "nr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroid/net/NetworkRequest;

    #@35
    .line 716
    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 710
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    .end local v3    # "nr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@3a
    monitor-exit v6

    #@3b
    throw v5

    #@3c
    .line 718
    .restart local v3    # "nr$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@3f
    .line 720
    .end local v3    # "nr$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@42
    .line 721
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@44
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v1

    #@48
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_2

    #@4e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Landroid/util/LocalLog;

    #@54
    .line 722
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1, v4, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@57
    goto :goto_1

    #@58
    .line 724
    .end local v0    # "l":Landroid/util/LocalLog;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@5a
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    #@5d
    move-result v5

    #@5e
    if-lez v5, :cond_3

    #@60
    const-string/jumbo v5, "Historical Logs:"

    #@63
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 725
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    #@68
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v1

    #@6c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_4

    #@72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Landroid/util/LocalLog;

    #@78
    .line 726
    .restart local v0    # "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1, v4, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@7b
    goto :goto_2

    #@7c
    .line 728
    .end local v0    # "l":Landroid/util/LocalLog;
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@7f
    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v7, "mRetryManager={"

    #@87
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@8d
    invoke-virtual {v7}, Lcom/android/internal/telephony/RetryManager;->toString()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    const-string/jumbo v7, "}"

    #@98
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a3
    monitor-exit v6

    #@a4
    .line 708
    return-void
.end method

.method public declared-synchronized getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 187
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
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getConnectionGeneration()I
    .locals 1

    #@0
    .prologue
    .line 536
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
    .line 138
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
    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    if-nez p1, :cond_0

    #@4
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isFastRetryReason()Z

    #@7
    move-result v0

    #@8
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RetryManager;->getDelayForNextApn(Z)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public getDependencyMet()Z
    .locals 1

    #@0
    .prologue
    .line 387
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
    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    if-nez p1, :cond_0

    #@4
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isFastRetryReason()Z

    #@7
    move-result v0

    #@8
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RetryManager;->getInterApnDelay(Z)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public getNetworkRequests()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 449
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@5
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 448
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    #@0
    .prologue
    .line 213
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
    .line 319
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
    .line 170
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
    .line 290
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
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasNoRestrictedRequests(Z)Z
    .locals 5
    .param p1, "excludeDun"    # Z

    #@0
    .prologue
    .line 454
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "nr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/net/NetworkRequest;

    #@15
    .line 456
    .local v0, "nr":Landroid/net/NetworkRequest;
    if-eqz p1, :cond_1

    #@17
    .line 457
    iget-object v2, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@19
    .line 458
    const/4 v4, 0x2

    #@1a
    .line 457
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@1d
    move-result v2

    #@1e
    .line 456
    if-nez v2, :cond_0

    #@20
    .line 461
    :cond_1
    iget-object v2, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@22
    .line 462
    const/16 v4, 0xd

    #@24
    .line 461
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_0

    #@2a
    .line 463
    const/4 v2, 0x0

    #@2b
    monitor-exit v3

    #@2c
    return v2

    #@2d
    .end local v0    # "nr":Landroid/net/NetworkRequest;
    :cond_2
    monitor-exit v3

    #@2e
    .line 467
    const/4 v2, 0x1

    #@2f
    return v2

    #@30
    .line 454
    .end local v1    # "nr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2
.end method

.method public incAndGetConnectionGeneration()I
    .locals 1

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 264
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
    .line 335
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
    .line 336
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 335
    :cond_0
    :goto_0
    return v0

    #@15
    .line 337
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@17
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    .line 338
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
    .line 335
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
    .line 354
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
    .line 355
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 354
    :cond_0
    :goto_0
    return v0

    #@15
    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@17
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    .line 357
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
    .line 354
    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@4
    move-result-object v0

    #@5
    .line 299
    .local v0, "currentState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 300
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 299
    :cond_0
    :goto_0
    return v1

    #@e
    .line 300
    :cond_1
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 376
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
    .line 391
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
    .line 392
    const v2, 0x1040049

    #@d
    .line 391
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 393
    .local v0, "provisioningApn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 394
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
    .line 395
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
    .line 397
    :cond_0
    const/4 v1, 0x0

    #@2b
    return v1
.end method

.method public isReady()Z
    .locals 1

    #@0
    .prologue
    .line 327
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
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    #@5
    .line 239
    return-void
.end method

.method public declared-synchronized releaseDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@b
    .line 160
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@e
    .line 162
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 157
    return-void

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 429
    const-string/jumbo v0, "ApnContext.releaseNetwork can\'t find this log"

    #@e
    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@11
    .line 433
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_2

    #@19
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "ApnContext.releaseNetwork can\'t find this request ("

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 435
    const-string/jumbo v2, ")"

    #@2c
    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    :cond_0
    :goto_1
    monitor-exit v1

    #@38
    .line 426
    return-void

    #@39
    .line 431
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 427
    :catchall_0
    move-exception v0

    #@40
    monitor-exit v1

    #@41
    throw v0

    #@42
    .line 437
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@47
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v2, "ApnContext.releaseNetwork left with "

    #@4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v2

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 439
    const-string/jumbo v2, " requests."

    #@60
    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@6b
    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@70
    move-result v0

    #@71
    if-nez v0, :cond_0

    #@73
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@75
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@77
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForApnName(Ljava/lang/String;)I

    #@7a
    move-result v2

    #@7b
    const/4 v3, 0x0

    #@7c
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setEnabled(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7f
    goto :goto_1
.end method

.method public requestLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 407
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 408
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
    .line 409
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 407
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
    .line 406
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 417
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "ApnContext.requestNetwork has duplicate add - "

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    :goto_0
    monitor-exit v1

    #@31
    .line 414
    return-void

    #@32
    .line 419
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@40
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForApnName(Ljava/lang/String;)I

    #@43
    move-result v2

    #@44
    const/4 v3, 0x1

    #@45
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 415
    :catchall_0
    move-exception v0

    #@4a
    monitor-exit v1

    #@4b
    throw v0
.end method

.method public resetErrorCodeRetries()V
    .locals 11

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 473
    const-string/jumbo v7, "ApnContext.resetErrorCodeRetries"

    #@4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@7
    .line 476
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
    .line 477
    const v8, 0x1070048

    #@14
    .line 476
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 478
    .local v1, "config":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@1a
    monitor-enter v7

    #@1b
    .line 479
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@1d
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    #@20
    .line 481
    array-length v8, v1

    #@21
    :goto_0
    if-ge v6, v8, :cond_2

    #@23
    aget-object v0, v1, v6

    #@25
    .line 482
    .local v0, "c":Ljava/lang/String;
    const-string/jumbo v9, ","

    #@28
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 483
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
    .line 484
    const/4 v2, 0x0

    #@33
    .line 485
    .local v2, "count":I
    const/4 v4, 0x0

    #@34
    .line 487
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
    .line 488
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
    .line 493
    if-lez v2, :cond_0

    #@44
    if-lez v4, :cond_0

    #@46
    .line 494
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@48
    invoke-virtual {v9, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@4b
    .line 481
    .end local v2    # "count":I
    .end local v4    # "errorCode":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 489
    .restart local v2    # "count":I
    .restart local v4    # "errorCode":I
    :catch_0
    move-exception v3

    #@4f
    .line 490
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
    .line 478
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
    .line 497
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
    .line 472
    return-void
.end method

.method public restartOnError(I)Z
    .locals 6
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 504
    const/4 v0, 0x0

    #@1
    .line 505
    .local v0, "result":Z
    const/4 v1, 0x0

    #@2
    .line 506
    .local v1, "retriesLeft":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@4
    monitor-enter v4

    #@5
    .line 507
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@7
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@a
    move-result v1

    #@b
    .line 508
    packed-switch v1, :pswitch_data_0

    #@e
    .line 519
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@10
    add-int/lit8 v5, v1, -0x1

    #@12
    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 520
    const/4 v0, 0x0

    #@16
    :goto_0
    :pswitch_0
    monitor-exit v4

    #@17
    .line 524
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
    .line 525
    const-string/jumbo v4, " and returned "

    #@35
    .line 524
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
    .line 527
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@44
    .line 528
    return v0

    #@45
    .line 514
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 515
    const/4 v0, 0x1

    #@49
    .line 516
    goto :goto_0

    #@4a
    .line 506
    :catchall_0
    move-exception v3

    #@4b
    monitor-exit v4

    #@4c
    throw v3

    #@4d
    .line 508
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
    .line 196
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 194
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
    .line 256
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 255
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
    .line 150
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 145
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
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 379
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 364
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/RetryManager;->setModemSuggestedDelay(J)V

    #@5
    .line 221
    return-void
.end method

.method public declared-synchronized setReason(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 311
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 307
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
    .line 178
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 177
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
    .line 276
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@3
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 280
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
    .line 271
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
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@3
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->setWaitingApns(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 203
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
    .line 698
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
    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    #@2e
    move-result-object v1

    #@2f
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 699
    const-string/jumbo v1, "}"

    #@36
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 699
    const-string/jumbo v1, " mApnSetting={"

    #@3d
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@43
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 700
    const-string/jumbo v1, "} mReason="

    #@4a
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    #@50
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 700
    const-string/jumbo v1, " mDataEnabled="

    #@57
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5d
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 700
    const-string/jumbo v1, " mDependencyMet="

    #@64
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6a
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 701
    const-string/jumbo v1, "}"

    #@71
    .line 698
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
