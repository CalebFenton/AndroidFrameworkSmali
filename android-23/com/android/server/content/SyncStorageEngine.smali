.class public Lcom/android/server/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$PendingOperation;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x2

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENTS:[Ljava/lang/String;

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field private static final PENDING_FINISH_TO_WRITE:I = 0x4

.field public static final PENDING_OPERATION_VERSION:I = 0x3

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_SERVICE:I = 0x5

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_AUTHORITYID:Ljava/lang/String; = "authority_id"

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_EXPEDITED:Ljava/lang/String; = "expedited"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_REASON:Ljava/lang/String; = "reason"

.field private static final XML_ATTR_SOURCE:Ljava/lang/String; = "source"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private mNumPendingFinished:I

.field private final mPendingFile:Landroid/util/AtomicFile;

.field private final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 108
    new-array v0, v4, [Ljava/lang/String;

    #@5
    const-string/jumbo v1, "START"

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "STOP"

    #@d
    aput-object v1, v0, v3

    #@f
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->EVENTS:[Ljava/lang/String;

    #@11
    .line 131
    const/4 v0, 0x6

    #@12
    new-array v0, v0, [Ljava/lang/String;

    #@14
    const-string/jumbo v1, "SERVER"

    #@17
    aput-object v1, v0, v2

    #@19
    .line 132
    const-string/jumbo v1, "LOCAL"

    #@1c
    aput-object v1, v0, v3

    #@1e
    .line 133
    const-string/jumbo v1, "POLL"

    #@21
    aput-object v1, v0, v4

    #@23
    .line 134
    const-string/jumbo v1, "USER"

    #@26
    const/4 v2, 0x3

    #@27
    aput-object v1, v0, v2

    #@29
    .line 135
    const-string/jumbo v1, "PERIODIC"

    #@2c
    const/4 v2, 0x4

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 136
    const-string/jumbo v1, "SERVICE"

    #@32
    const/4 v2, 0x5

    #@33
    aput-object v1, v0, v2

    #@35
    .line 131
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@37
    .line 158
    new-instance v0, Ljava/util/HashMap;

    #@39
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3c
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    #@3e
    .line 159
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    #@40
    const-string/jumbo v1, "contacts"

    #@43
    const-string/jumbo v2, "com.android.contacts"

    #@46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 160
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    #@4b
    const-string/jumbo v1, "calendar"

    #@4e
    const-string/jumbo v2, "com.android.calendar"

    #@51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 467
    const/4 v0, 0x0

    #@55
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@57
    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 506
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@4
    .line 433
    new-instance v2, Landroid/util/SparseArray;

    #@6
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@9
    .line 432
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@b
    .line 436
    new-instance v2, Ljava/util/HashMap;

    #@d
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@10
    .line 435
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@12
    .line 439
    new-instance v2, Ljava/util/ArrayList;

    #@14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 438
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@19
    .line 442
    new-instance v2, Landroid/util/SparseArray;

    #@1b
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@1e
    .line 441
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    #@20
    .line 445
    new-instance v2, Landroid/util/SparseArray;

    #@22
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@25
    .line 444
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@27
    .line 448
    new-instance v2, Ljava/util/ArrayList;

    #@29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 447
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@2e
    .line 451
    new-instance v2, Landroid/os/RemoteCallbackList;

    #@30
    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    #@33
    .line 450
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@35
    .line 455
    new-instance v2, Landroid/util/ArrayMap;

    #@37
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@3a
    .line 454
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@3c
    .line 457
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@3e
    .line 460
    const/16 v2, 0x1c

    #@40
    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@42
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@44
    .line 498
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    #@46
    .line 500
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@48
    .line 501
    new-instance v2, Landroid/util/SparseArray;

    #@4a
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@4d
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@4f
    .line 507
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    #@51
    .line 508
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@53
    .line 510
    const-string/jumbo v2, "GMT+0"

    #@56
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@5d
    move-result-object v2

    #@5e
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@60
    .line 512
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    #@62
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@65
    move-result-object v2

    #@66
    .line 513
    const v3, 0x112006d

    #@69
    .line 512
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@6c
    move-result v2

    #@6d
    iput-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    #@6f
    .line 515
    new-instance v1, Ljava/io/File;

    #@71
    const-string/jumbo v2, "system"

    #@74
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@77
    .line 516
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@79
    const-string/jumbo v2, "sync"

    #@7c
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7f
    .line 517
    .local v0, "syncDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@82
    .line 519
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    #@85
    .line 521
    new-instance v2, Landroid/util/AtomicFile;

    #@87
    new-instance v3, Ljava/io/File;

    #@89
    const-string/jumbo v4, "accounts.xml"

    #@8c
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8f
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@92
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@94
    .line 522
    new-instance v2, Landroid/util/AtomicFile;

    #@96
    new-instance v3, Ljava/io/File;

    #@98
    const-string/jumbo v4, "status.bin"

    #@9b
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9e
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@a1
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@a3
    .line 523
    new-instance v2, Landroid/util/AtomicFile;

    #@a5
    new-instance v3, Ljava/io/File;

    #@a7
    const-string/jumbo v4, "pending.xml"

    #@aa
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@ad
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@b0
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@b2
    .line 524
    new-instance v2, Landroid/util/AtomicFile;

    #@b4
    new-instance v3, Ljava/io/File;

    #@b6
    const-string/jumbo v4, "stats.bin"

    #@b9
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@bc
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@bf
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@c1
    .line 526
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    #@c4
    .line 527
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    #@c7
    .line 528
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readPendingOperationsLocked()V

    #@ca
    .line 529
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    #@cd
    .line 530
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    #@d0
    .line 531
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@d3
    .line 532
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@d6
    .line 533
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    #@d9
    .line 534
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    #@dc
    .line 506
    return-void
.end method

.method private appendPendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .locals 8
    .param p1, "op"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    .line 2654
    const-string/jumbo v4, "SyncManagerFile"

    #@4
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 2655
    const-string/jumbo v4, "SyncManager"

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "Appending to "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@1b
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2657
    :cond_0
    const/4 v2, 0x0

    #@2b
    .line 2659
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@2d
    invoke-virtual {v4}, Landroid/util/AtomicFile;->openAppend()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v2

    #@31
    .line 2669
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@33
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@36
    .line 2670
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@38
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@3f
    .line 2671
    invoke-direct {p0, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V

    #@42
    .line 2672
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@45
    .line 2673
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@47
    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 2679
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@4d
    .line 2653
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    #@4e
    .line 2660
    .local v2, "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@4f
    .line 2661
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "SyncManagerFile"

    #@52
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_1

    #@58
    .line 2662
    const-string/jumbo v4, "SyncManager"

    #@5b
    const-string/jumbo v5, "Failed append; writing full file"

    #@5e
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 2664
    :cond_1
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    #@64
    .line 2665
    return-void

    #@65
    .line 2680
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    #@66
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    #@67
    .line 2674
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v1

    #@68
    .line 2675
    .local v1, "e1":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "SyncManager"

    #@6b
    const-string/jumbo v5, "Error writing appending operation"

    #@6e
    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@71
    .line 2676
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@73
    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@76
    .line 2679
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@79
    goto :goto_0

    #@7a
    .line 2680
    :catch_3
    move-exception v0

    #@7b
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    #@7c
    .line 2677
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@7d
    .line 2679
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@80
    .line 2677
    :goto_1
    throw v4

    #@81
    .line 2680
    :catch_4
    move-exception v0

    #@82
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static calculateDefaultFlexTime(J)J
    .locals 4
    .param p0, "syncTimeSeconds"    # J

    #@0
    .prologue
    .line 601
    const-wide/16 v0, 0x5

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 605
    const-wide/16 v0, 0x0

    #@8
    return-wide v0

    #@9
    .line 606
    :cond_0
    const-wide/32 v0, 0x15180

    #@c
    cmp-long v0, p0, v0

    #@e
    if-gez v0, :cond_1

    #@10
    .line 607
    long-to-double v0, p0

    #@11
    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    #@16
    mul-double/2addr v0, v2

    #@17
    double-to-long v0, v0

    #@18
    return-wide v0

    #@19
    .line 610
    :cond_1
    const-wide/16 v0, 0xd80

    #@1b
    return-wide v0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    #@0
    .prologue
    .line 1709
    if-gez p2, :cond_0

    #@2
    .line 1710
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@4
    .line 1711
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@a
    .line 1712
    const/4 p3, 0x1

    #@b
    .line 1714
    .end local p3    # "doWrite":Z
    :cond_0
    const-string/jumbo v1, "SyncManager"

    #@e
    const/4 v2, 0x2

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1715
    const-string/jumbo v1, "SyncManager"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "created a new AuthorityInfo for "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1717
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@31
    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    #@34
    .line 1718
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@39
    .line 1719
    if-eqz p3, :cond_2

    #@3b
    .line 1720
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@3e
    .line 1722
    :cond_2
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .locals 3
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1604
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@2
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    #@5
    move-result-object v0

    #@6
    .line 1605
    .local v0, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@8
    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    #@b
    new-instance v2, Landroid/content/SyncStatusInfo;

    #@d
    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    #@10
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method private extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2685
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@4
    move-result-object v3

    #@5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_7

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 2686
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v3, "extra"

    #@18
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 2687
    const-string/jumbo v3, "name"

    #@1e
    invoke-interface {p1, v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21
    .line 2688
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    .line 2689
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 2690
    const-string/jumbo v3, "type"

    #@2c
    const-string/jumbo v4, "long"

    #@2f
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@32
    .line 2691
    const-string/jumbo v3, "value1"

    #@35
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3c
    .line 2712
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    const-string/jumbo v3, "extra"

    #@3f
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    goto :goto_0

    #@43
    .line 2692
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    #@45
    if-eqz v3, :cond_2

    #@47
    .line 2693
    const-string/jumbo v3, "type"

    #@4a
    const-string/jumbo v4, "integer"

    #@4d
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@50
    .line 2694
    const-string/jumbo v3, "value1"

    #@53
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5a
    goto :goto_1

    #@5b
    .line 2695
    :cond_2
    instance-of v3, v2, Ljava/lang/Boolean;

    #@5d
    if-eqz v3, :cond_3

    #@5f
    .line 2696
    const-string/jumbo v3, "type"

    #@62
    const-string/jumbo v4, "boolean"

    #@65
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@68
    .line 2697
    const-string/jumbo v3, "value1"

    #@6b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@72
    goto :goto_1

    #@73
    .line 2698
    :cond_3
    instance-of v3, v2, Ljava/lang/Float;

    #@75
    if-eqz v3, :cond_4

    #@77
    .line 2699
    const-string/jumbo v3, "type"

    #@7a
    const-string/jumbo v4, "float"

    #@7d
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@80
    .line 2700
    const-string/jumbo v3, "value1"

    #@83
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@8a
    goto :goto_1

    #@8b
    .line 2701
    :cond_4
    instance-of v3, v2, Ljava/lang/Double;

    #@8d
    if-eqz v3, :cond_5

    #@8f
    .line 2702
    const-string/jumbo v3, "type"

    #@92
    const-string/jumbo v4, "double"

    #@95
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@98
    .line 2703
    const-string/jumbo v3, "value1"

    #@9b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a2
    goto :goto_1

    #@a3
    .line 2704
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    #@a5
    if-eqz v3, :cond_6

    #@a7
    .line 2705
    const-string/jumbo v3, "type"

    #@aa
    const-string/jumbo v4, "string"

    #@ad
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b0
    .line 2706
    const-string/jumbo v3, "value1"

    #@b3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b6
    move-result-object v4

    #@b7
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ba
    goto :goto_1

    #@bb
    .line 2707
    :cond_6
    instance-of v3, v2, Landroid/accounts/Account;

    #@bd
    if-eqz v3, :cond_0

    #@bf
    .line 2708
    const-string/jumbo v3, "type"

    #@c2
    const-string/jumbo v4, "account"

    #@c5
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c8
    .line 2709
    const-string/jumbo v4, "value1"

    #@cb
    move-object v3, v2

    #@cc
    check-cast v3, Landroid/accounts/Account;

    #@ce
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@d0
    invoke-interface {p1, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d3
    .line 2710
    const-string/jumbo v3, "value2"

    #@d6
    check-cast v2, Landroid/accounts/Account;

    #@d8
    .end local v2    # "value":Ljava/lang/Object;
    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@da
    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@dd
    goto/16 :goto_1

    #@df
    .line 2684
    .end local v0    # "key":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static flattenBundle(Landroid/os/Bundle;)[B
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2564
    const/4 v0, 0x0

    #@1
    .line 2565
    .local v0, "flatData":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v1

    #@5
    .line 2567
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    #@6
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .line 2570
    .local v0, "flatData":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@10
    .line 2572
    return-object v0

    #@11
    .line 2569
    .local v0, "flatData":[B
    :catchall_0
    move-exception v2

    #@12
    .line 2570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 2569
    throw v2
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 1628
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@4
    if-eqz v4, :cond_3

    #@6
    .line 1629
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@8
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@a
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/util/SparseArray;

    #@10
    .line 1630
    .local v0, "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v3, 0x0

    #@11
    .line 1631
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    #@13
    .line 1632
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@15
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@1b
    .line 1634
    :cond_0
    if-nez v3, :cond_2

    #@1d
    .line 1635
    if-eqz p2, :cond_1

    #@1f
    .line 1636
    const-string/jumbo v4, "SyncManager"

    #@22
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 1637
    const-string/jumbo v4, "SyncManager"

    #@2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    const-string/jumbo v6, " No authority info found for "

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v6, " for"

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 1638
    const-string/jumbo v6, " user "

    #@4b
    .line 1637
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 1638
    iget v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@51
    .line 1637
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 1641
    :cond_1
    return-object v7

    #@5d
    .line 1643
    :cond_2
    return-object v3

    #@5e
    .line 1644
    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_3
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@60
    if-eqz v4, :cond_8

    #@62
    .line 1645
    new-instance v2, Landroid/accounts/AccountAndUser;

    #@64
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@66
    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@68
    invoke-direct {v2, v4, v5}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@6b
    .line 1646
    .local v2, "au":Landroid/accounts/AccountAndUser;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@6d
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    move-result-object v1

    #@71
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@73
    .line 1647
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v1, :cond_5

    #@75
    .line 1648
    if-eqz p2, :cond_4

    #@77
    .line 1649
    const-string/jumbo v4, "SyncManager"

    #@7a
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7d
    move-result v4

    #@7e
    if-eqz v4, :cond_4

    #@80
    .line 1650
    const-string/jumbo v4, "SyncManager"

    #@83
    new-instance v5, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    const-string/jumbo v6, ": unknown account "

    #@8f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 1653
    :cond_4
    return-object v7

    #@9f
    .line 1655
    :cond_5
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@a1
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@a3
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    move-result-object v3

    #@a7
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@a9
    .line 1656
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_7

    #@ab
    .line 1657
    if-eqz p2, :cond_6

    #@ad
    .line 1658
    const-string/jumbo v4, "SyncManager"

    #@b0
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b3
    move-result v4

    #@b4
    if-eqz v4, :cond_6

    #@b6
    .line 1659
    const-string/jumbo v4, "SyncManager"

    #@b9
    new-instance v5, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v5

    #@c2
    const-string/jumbo v6, ": unknown provider "

    #@c5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@cb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    .line 1662
    :cond_6
    return-object v7

    #@d7
    .line 1664
    :cond_7
    return-object v3

    #@d8
    .line 1666
    .end local v1    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v2    # "au":Landroid/accounts/AccountAndUser;
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_8
    const-string/jumbo v4, "SyncManager"

    #@db
    new-instance v5, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v5

    #@e4
    const-string/jumbo v6, " Authority : "

    #@e7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v5

    #@eb
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    const-string/jumbo v6, ", invalid target"

    #@f2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v5

    #@f6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v5

    #@fa
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fd
    .line 1667
    return-object v7
.end method

.method private getCurrentDayLocked()I
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1609
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v2

    #@7
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@a
    .line 1610
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@c
    const/4 v2, 0x6

    #@d
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@10
    move-result v0

    #@11
    .line 1611
    .local v0, "dayOfYear":I
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    #@13
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@15
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    #@18
    move-result v2

    #@19
    if-eq v1, v2, :cond_0

    #@1b
    .line 1612
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@1d
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    #@23
    .line 1613
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@25
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    #@28
    .line 1614
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@2a
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    #@2c
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    #@2f
    .line 1615
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@31
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@34
    move-result-wide v2

    #@35
    const-wide/32 v4, 0x5265c00

    #@38
    div-long/2addr v2, v4

    #@39
    long-to-int v1, v2

    #@3a
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    #@3c
    .line 1617
    :cond_0
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    #@3e
    add-int/2addr v1, v0

    #@3f
    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v0

    #@3
    .line 1456
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    .line 1455
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1476
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    .line 1477
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_0

    #@a
    .line 1478
    new-instance v0, Ljava/util/ArrayList;

    #@c
    .end local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1479
    .restart local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1481
    :cond_0
    return-object v0
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2252
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2256
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    #@0
    .prologue
    .line 1679
    const/4 v3, 0x0

    #@1
    .line 1680
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@3
    if-eqz v4, :cond_2

    #@5
    .line 1681
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@7
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@9
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/util/SparseArray;

    #@f
    .line 1682
    .local v0, "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    if-nez v0, :cond_0

    #@11
    .line 1683
    new-instance v0, Landroid/util/SparseArray;

    #@13
    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    .line 1684
    .restart local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@18
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@1a
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 1686
    :cond_0
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@1f
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@25
    .line 1687
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_1

    #@27
    .line 1688
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@2a
    move-result-object v3

    #@2b
    .line 1689
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@2d
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@30
    .line 1704
    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :goto_0
    return-object v3

    #@31
    .line 1691
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 1692
    new-instance v2, Landroid/accounts/AccountAndUser;

    #@37
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@39
    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@3b
    invoke-direct {v2, v4, v5}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@3e
    .line 1693
    .local v2, "au":Landroid/accounts/AccountAndUser;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@40
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@46
    .line 1694
    .local v1, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v1, :cond_3

    #@48
    .line 1695
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@4a
    .end local v1    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v1, v2}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    #@4d
    .line 1696
    .restart local v1    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@4f
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 1698
    :cond_3
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@54
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@56
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@5c
    .line 1699
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_1

    #@5e
    .line 1700
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@61
    move-result-object v3

    #@62
    .line 1701
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@64
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@66
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    goto :goto_0
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 2
    .param p1, "authorityId"    # I

    #@0
    .prologue
    .line 1787
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/SyncStatusInfo;

    #@8
    .line 1788
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_0

    #@a
    .line 1789
    new-instance v0, Landroid/content/SyncStatusInfo;

    #@c
    .end local v0    # "status":Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    #@f
    .line 1790
    .restart local v0    # "status":Landroid/content/SyncStatusInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1792
    :cond_0
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .locals 2

    #@0
    .prologue
    .line 552
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 555
    :cond_0
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@f
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 542
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 543
    return-void

    #@5
    .line 547
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    .line 548
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    #@b
    invoke-direct {v1, p0, v0}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    #@e
    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@10
    .line 541
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .locals 2
    .param p1, "syncDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 1940
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "pending.bin"

    #@5
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    .line 1941
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1942
    return-void

    #@f
    .line 1944
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@12
    .line 1939
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1953
    const/4 v9, 0x0

    #@2
    .line 1955
    .local v9, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1956
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v0

    #@d
    .line 1957
    .local v0, "N":I
    const/4 v5, 0x0

    #@e
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    #@10
    .line 1958
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@18
    .line 1960
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1a
    iget-boolean v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@1c
    if-eqz v10, :cond_1

    #@1e
    .line 1957
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1964
    :cond_1
    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    #@23
    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@25
    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@27
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v7

    #@2b
    check-cast v7, Ljava/lang/String;

    #@2d
    .line 1965
    .local v7, "newAuthorityName":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@2f
    .line 1971
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 1975
    iget-boolean v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@34
    if-eqz v10, :cond_0

    #@36
    .line 1981
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@38
    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3a
    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@3c
    .line 1983
    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3e
    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@40
    .line 1981
    invoke-direct {v8, v10, v7, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@43
    .line 1984
    .local v8, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string/jumbo v10, "cleanup"

    #@46
    invoke-direct {p0, v8, v10}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@49
    move-result-object v10

    #@4a
    if-nez v10, :cond_0

    #@4c
    .line 1989
    const/4 v10, -0x1

    #@4d
    invoke-direct {p0, v8, v10, v13}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@50
    move-result-object v6

    #@51
    .line 1990
    .local v6, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v10, 0x1

    #@52
    iput-boolean v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@54
    .line 1991
    const/4 v9, 0x1

    #@55
    goto :goto_1

    #@56
    .line 1994
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "newAuthorityName":Ljava/lang/String;
    .end local v8    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@59
    move-result-object v4

    #@5a
    .local v4, "authorityInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@5d
    move-result v10

    #@5e
    if-eqz v10, :cond_3

    #@60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@66
    .line 1996
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@68
    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@6a
    .line 1997
    iget-object v11, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6c
    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@6e
    .line 1998
    iget-object v12, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@70
    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@72
    .line 1995
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    #@75
    .line 2000
    const/4 v9, 0x1

    #@76
    goto :goto_2

    #@77
    .line 2003
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    return v9
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 538
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    #@2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    #@9
    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "version"    # I

    #@0
    .prologue
    .line 2022
    const/4 v5, 0x0

    #@1
    .line 2023
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v11, -0x1

    #@2
    .line 2025
    .local v11, "id":I
    :try_start_0
    const-string/jumbo v17, "id"

    #@5
    const/16 v18, 0x0

    #@7
    move-object/from16 v0, p1

    #@9
    move-object/from16 v1, v18

    #@b
    move-object/from16 v2, v17

    #@d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v17

    #@11
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v11

    #@15
    .line 2031
    :goto_0
    if-ltz v11, :cond_4

    #@17
    .line 2032
    const-string/jumbo v17, "authority"

    #@1a
    const/16 v18, 0x0

    #@1c
    move-object/from16 v0, p1

    #@1e
    move-object/from16 v1, v18

    #@20
    move-object/from16 v2, v17

    #@22
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    .line 2033
    .local v6, "authorityName":Ljava/lang/String;
    const-string/jumbo v17, "enabled"

    #@29
    const/16 v18, 0x0

    #@2b
    move-object/from16 v0, p1

    #@2d
    move-object/from16 v1, v18

    #@2f
    move-object/from16 v2, v17

    #@31
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v10

    #@35
    .line 2034
    .local v10, "enabled":Ljava/lang/String;
    const-string/jumbo v17, "syncable"

    #@38
    const/16 v18, 0x0

    #@3a
    move-object/from16 v0, p1

    #@3c
    move-object/from16 v1, v18

    #@3e
    move-object/from16 v2, v17

    #@40
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v14

    #@44
    .line 2035
    .local v14, "syncable":Ljava/lang/String;
    const-string/jumbo v17, "account"

    #@47
    const/16 v18, 0x0

    #@49
    move-object/from16 v0, p1

    #@4b
    move-object/from16 v1, v18

    #@4d
    move-object/from16 v2, v17

    #@4f
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 2036
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v17, "type"

    #@56
    const/16 v18, 0x0

    #@58
    move-object/from16 v0, p1

    #@5a
    move-object/from16 v1, v18

    #@5c
    move-object/from16 v2, v17

    #@5e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    .line 2037
    .local v4, "accountType":Ljava/lang/String;
    const-string/jumbo v17, "user"

    #@65
    const/16 v18, 0x0

    #@67
    move-object/from16 v0, p1

    #@69
    move-object/from16 v1, v18

    #@6b
    move-object/from16 v2, v17

    #@6d
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v15

    #@71
    .line 2038
    .local v15, "user":Ljava/lang/String;
    const-string/jumbo v17, "package"

    #@74
    const/16 v18, 0x0

    #@76
    move-object/from16 v0, p1

    #@78
    move-object/from16 v1, v18

    #@7a
    move-object/from16 v2, v17

    #@7c
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v13

    #@80
    .line 2039
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v17, "class"

    #@83
    const/16 v18, 0x0

    #@85
    move-object/from16 v0, p1

    #@87
    move-object/from16 v1, v18

    #@89
    move-object/from16 v2, v17

    #@8b
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v7

    #@8f
    .line 2040
    .local v7, "className":Ljava/lang/String;
    if-nez v15, :cond_5

    #@91
    const/16 v16, 0x0

    #@93
    .line 2041
    .local v16, "userId":I
    :goto_1
    if-nez v4, :cond_0

    #@95
    if-nez v13, :cond_0

    #@97
    .line 2042
    const-string/jumbo v4, "com.google"

    #@9a
    .line 2043
    const/16 v17, -0x1

    #@9c
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9f
    move-result-object v14

    #@a0
    .line 2045
    :cond_0
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@a4
    move-object/from16 v17, v0

    #@a6
    move-object/from16 v0, v17

    #@a8
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ab
    move-result-object v5

    #@ac
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@ae
    .line 2046
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string/jumbo v17, "SyncManagerFile"

    #@b1
    const/16 v18, 0x2

    #@b3
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b6
    move-result v17

    #@b7
    if-eqz v17, :cond_1

    #@b9
    .line 2047
    const-string/jumbo v17, "SyncManagerFile"

    #@bc
    new-instance v18, Ljava/lang/StringBuilder;

    #@be
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v19, "Adding authority: account="

    #@c4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v18

    #@c8
    move-object/from16 v0, v18

    #@ca
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v18

    #@ce
    .line 2049
    const-string/jumbo v19, " accountType="

    #@d1
    .line 2047
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v18

    #@d5
    move-object/from16 v0, v18

    #@d7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v18

    #@db
    .line 2050
    const-string/jumbo v19, " auth="

    #@de
    .line 2047
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v18

    #@e2
    move-object/from16 v0, v18

    #@e4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v18

    #@e8
    .line 2051
    const-string/jumbo v19, " package="

    #@eb
    .line 2047
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v18

    #@ef
    move-object/from16 v0, v18

    #@f1
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v18

    #@f5
    .line 2052
    const-string/jumbo v19, " class="

    #@f8
    .line 2047
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v18

    #@fc
    move-object/from16 v0, v18

    #@fe
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v18

    #@102
    .line 2053
    const-string/jumbo v19, " user="

    #@105
    .line 2047
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v18

    #@109
    move-object/from16 v0, v18

    #@10b
    move/from16 v1, v16

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@110
    move-result-object v18

    #@111
    .line 2054
    const-string/jumbo v19, " enabled="

    #@114
    .line 2047
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v18

    #@118
    move-object/from16 v0, v18

    #@11a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v18

    #@11e
    .line 2055
    const-string/jumbo v19, " syncable="

    #@121
    .line 2047
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v18

    #@125
    move-object/from16 v0, v18

    #@127
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v18

    #@12b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v18

    #@12f
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@132
    .line 2057
    :cond_1
    if-nez v5, :cond_3

    #@134
    .line 2058
    const-string/jumbo v17, "SyncManagerFile"

    #@137
    const/16 v18, 0x2

    #@139
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@13c
    move-result v17

    #@13d
    if-eqz v17, :cond_2

    #@13f
    .line 2059
    const-string/jumbo v17, "SyncManagerFile"

    #@142
    const-string/jumbo v18, "Creating authority entry"

    #@145
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@148
    .line 2062
    :cond_2
    if-eqz v3, :cond_6

    #@14a
    if-eqz v6, :cond_6

    #@14c
    .line 2063
    new-instance v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@14e
    .line 2064
    new-instance v17, Landroid/accounts/Account;

    #@150
    move-object/from16 v0, v17

    #@152
    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@155
    .line 2063
    move-object/from16 v0, v17

    #@157
    move/from16 v1, v16

    #@159
    invoke-direct {v12, v0, v6, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@15c
    .line 2071
    .local v12, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_2
    const/16 v17, 0x0

    #@15e
    move-object/from16 v0, p0

    #@160
    move/from16 v1, v17

    #@162
    invoke-direct {v0, v12, v11, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@165
    move-result-object v5

    #@166
    .line 2077
    if-lez p2, :cond_3

    #@168
    .line 2078
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@16a
    move-object/from16 v17, v0

    #@16c
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    #@16f
    .line 2081
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_3
    if-eqz v5, :cond_b

    #@171
    .line 2082
    if-eqz v10, :cond_7

    #@173
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@176
    move-result v17

    #@177
    :goto_3
    move/from16 v0, v17

    #@179
    iput-boolean v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@17b
    .line 2084
    if-nez v14, :cond_8

    #@17d
    .line 2085
    const/16 v17, -0x1

    #@17f
    .line 2084
    :goto_4
    :try_start_1
    move/from16 v0, v17

    #@181
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@183
    .line 2104
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "authorityName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v10    # "enabled":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "syncable":Ljava/lang/String;
    .end local v15    # "user":Ljava/lang/String;
    .end local v16    # "userId":I
    :cond_4
    :goto_5
    return-object v5

    #@184
    .line 2028
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catch_0
    move-exception v8

    #@185
    .line 2029
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v17, "SyncManager"

    #@188
    const-string/jumbo v18, "the id of the authority is null"

    #@18b
    move-object/from16 v0, v17

    #@18d
    move-object/from16 v1, v18

    #@18f
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@192
    goto/16 :goto_0

    #@194
    .line 2026
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    #@195
    .line 2027
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "SyncManager"

    #@198
    const-string/jumbo v18, "error parsing the id of the authority"

    #@19b
    move-object/from16 v0, v17

    #@19d
    move-object/from16 v1, v18

    #@19f
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a2
    goto/16 :goto_0

    #@1a4
    .line 2040
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v6    # "authorityName":Ljava/lang/String;
    .restart local v7    # "className":Ljava/lang/String;
    .restart local v10    # "enabled":Ljava/lang/String;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "syncable":Ljava/lang/String;
    .restart local v15    # "user":Ljava/lang/String;
    :cond_5
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a7
    move-result v16

    #@1a8
    .restart local v16    # "userId":I
    goto/16 :goto_1

    #@1aa
    .line 2067
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_6
    new-instance v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1ac
    .line 2068
    new-instance v17, Landroid/content/ComponentName;

    #@1ae
    move-object/from16 v0, v17

    #@1b0
    invoke-direct {v0, v13, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b3
    .line 2067
    move-object/from16 v0, v17

    #@1b5
    move/from16 v1, v16

    #@1b7
    invoke-direct {v12, v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    #@1ba
    .restart local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    goto :goto_2

    #@1bb
    .line 2082
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_7
    const/16 v17, 0x1

    #@1bd
    goto :goto_3

    #@1be
    .line 2085
    :cond_8
    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@1c1
    move-result v17

    #@1c2
    goto :goto_4

    #@1c3
    .line 2086
    :catch_2
    move-exception v9

    #@1c4
    .line 2089
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "unknown"

    #@1c7
    move-object/from16 v0, v17

    #@1c9
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1cc
    move-result v17

    #@1cd
    if-eqz v17, :cond_9

    #@1cf
    .line 2090
    const/16 v17, -0x1

    #@1d1
    move/from16 v0, v17

    #@1d3
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@1d5
    goto :goto_5

    #@1d6
    .line 2092
    :cond_9
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1d9
    move-result v17

    #@1da
    if-eqz v17, :cond_a

    #@1dc
    .line 2093
    const/16 v17, 0x1

    #@1de
    .line 2092
    :goto_6
    move/from16 v0, v17

    #@1e0
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@1e2
    goto :goto_5

    #@1e3
    .line 2093
    :cond_a
    const/16 v17, 0x0

    #@1e5
    goto :goto_6

    #@1e6
    .line 2098
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string/jumbo v17, "SyncManager"

    #@1e9
    new-instance v18, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1ee
    const-string/jumbo v19, "Failure adding authority: account="

    #@1f1
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v18

    #@1f5
    move-object/from16 v0, v18

    #@1f7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v18

    #@1fb
    .line 2099
    const-string/jumbo v19, " auth="

    #@1fe
    .line 2098
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v18

    #@202
    move-object/from16 v0, v18

    #@204
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v18

    #@208
    .line 2100
    const-string/jumbo v19, " enabled="

    #@20b
    .line 2098
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v18

    #@20f
    move-object/from16 v0, v18

    #@211
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v18

    #@215
    .line 2101
    const-string/jumbo v19, " syncable="

    #@218
    .line 2098
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v18

    #@21c
    move-object/from16 v0, v18

    #@21e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v18

    #@222
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@225
    move-result-object v18

    #@226
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@229
    goto/16 :goto_5
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2153
    const-string/jumbo v6, "name"

    #@4
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 2154
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "type"

    #@b
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 2155
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v6, "value1"

    #@12
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 2156
    .local v4, "value1":Ljava/lang/String;
    const-string/jumbo v6, "value2"

    #@19
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    .line 2159
    .local v5, "value2":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "long"

    #@20
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_1

    #@26
    .line 2160
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@29
    move-result-wide v6

    #@2a
    invoke-virtual {p2, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@2d
    .line 2152
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 2161
    :cond_1
    const-string/jumbo v6, "integer"

    #@31
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_2

    #@37
    .line 2162
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3a
    move-result v6

    #@3b
    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    #@3e
    goto :goto_0

    #@3f
    .line 2174
    :catch_0
    move-exception v1

    #@40
    .line 2175
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "SyncManager"

    #@43
    const-string/jumbo v7, "error parsing bundle value"

    #@46
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    goto :goto_0

    #@4a
    .line 2163
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "double"

    #@4d
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v6

    #@51
    if-eqz v6, :cond_3

    #@53
    .line 2164
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@56
    move-result-wide v6

    #@57
    invoke-virtual {p2, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    #@5a
    goto :goto_0

    #@5b
    .line 2176
    :catch_1
    move-exception v0

    #@5c
    .line 2177
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SyncManager"

    #@5f
    const-string/jumbo v7, "error parsing bundle value"

    #@62
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@65
    goto :goto_0

    #@66
    .line 2165
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "float"

    #@69
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v6

    #@6d
    if-eqz v6, :cond_4

    #@6f
    .line 2166
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@72
    move-result v6

    #@73
    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@76
    goto :goto_0

    #@77
    .line 2167
    :cond_4
    const-string/jumbo v6, "boolean"

    #@7a
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v6

    #@7e
    if-eqz v6, :cond_5

    #@80
    .line 2168
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@83
    move-result v6

    #@84
    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@87
    goto :goto_0

    #@88
    .line 2169
    :cond_5
    const-string/jumbo v6, "string"

    #@8b
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v6

    #@8f
    if-eqz v6, :cond_6

    #@91
    .line 2170
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@94
    goto :goto_0

    #@95
    .line 2171
    :cond_6
    const-string/jumbo v6, "account"

    #@98
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v6

    #@9c
    if-eqz v6, :cond_0

    #@9e
    .line 2172
    new-instance v6, Landroid/accounts/Account;

    #@a0
    invoke-direct {v6, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a3
    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    #@a6
    goto :goto_0
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2007
    const-string/jumbo v6, "user"

    #@4
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    .line 2008
    .local v4, "user":Ljava/lang/String;
    const/4 v5, 0x0

    #@9
    .line 2010
    .local v5, "userId":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v5

    #@d
    .line 2016
    :goto_0
    const-string/jumbo v6, "enabled"

    #@10
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 2017
    .local v2, "enabled":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@16
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    .line 2018
    :goto_1
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@1c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@23
    .line 2006
    return-void

    #@24
    .line 2013
    .end local v2    # "enabled":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@25
    .line 2014
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SyncManager"

    #@28
    const-string/jumbo v7, "the user in listen-for-tickles is null"

    #@2b
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0

    #@2f
    .line 2011
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@30
    .line 2012
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "SyncManager"

    #@33
    const-string/jumbo v7, "error parsing the user for listen-for-tickles"

    #@36
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 2017
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "enabled":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    #@3b
    .local v3, "listen":Z
    goto :goto_1
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@0
    .prologue
    .line 2111
    new-instance v5, Landroid/os/Bundle;

    #@2
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2112
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "period"

    #@8
    const/4 v4, 0x0

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v14

    #@f
    .line 2113
    .local v14, "periodValue":Ljava/lang/String;
    const-string/jumbo v3, "flex"

    #@12
    const/4 v4, 0x0

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v13

    #@19
    .line 2117
    .local v13, "flexValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-wide v6

    #@1d
    .line 2126
    .local v6, "period":J
    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    move-result-wide v8

    #@21
    .line 2138
    .local v8, "flextime":J
    :goto_0
    move-object/from16 v0, p2

    #@23
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@25
    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 2140
    new-instance v2, Landroid/content/PeriodicSync;

    #@2b
    move-object/from16 v0, p2

    #@2d
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2f
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@31
    .line 2141
    move-object/from16 v0, p2

    #@33
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@35
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@37
    .line 2140
    invoke-direct/range {v2 .. v9}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    #@3a
    .line 2148
    .local v2, "periodicSync":Landroid/content/PeriodicSync;
    move-object/from16 v0, p2

    #@3c
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 2149
    return-object v2

    #@42
    .line 2121
    .end local v2    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v6    # "period":J
    .end local v8    # "flextime":J
    :catch_0
    move-exception v10

    #@43
    .line 2122
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SyncManager"

    #@46
    const-string/jumbo v4, "the period of a periodic sync is null"

    #@49
    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 2123
    const/4 v3, 0x0

    #@4d
    return-object v3

    #@4e
    .line 2118
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v11

    #@4f
    .line 2119
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SyncManager"

    #@52
    const-string/jumbo v4, "error parsing the period of a periodic sync"

    #@55
    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    .line 2120
    const/4 v3, 0x0

    #@59
    return-object v3

    #@5a
    .line 2132
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "period":J
    :catch_2
    move-exception v12

    #@5b
    .line 2133
    .local v12, "expected":Ljava/lang/NullPointerException;
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    #@5e
    move-result-wide v8

    #@5f
    .line 2134
    .restart local v8    # "flextime":J
    const-string/jumbo v3, "SyncManager"

    #@62
    new-instance v4, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v15, "No flex time specified for this sync, using a default. period: "

    #@6a
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    .line 2135
    const-string/jumbo v15, " flex: "

    #@75
    .line 2134
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    goto :goto_0

    #@85
    .line 2127
    .end local v8    # "flextime":J
    .end local v12    # "expected":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v11

    #@86
    .line 2128
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    #@89
    move-result-wide v8

    #@8a
    .line 2129
    .restart local v8    # "flextime":J
    const-string/jumbo v3, "SyncManager"

    #@8d
    new-instance v4, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v15, "Error formatting value parsed for periodic sync flex: "

    #@95
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v4

    #@9d
    .line 2130
    const-string/jumbo v15, ", using default: "

    #@a0
    .line 2129
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v4

    #@a4
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    goto/16 :goto_0

    #@b1
    .line 2145
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const-string/jumbo v3, "SyncManager"

    #@b4
    const-string/jumbo v4, "Unknown target."

    #@b7
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    .line 2146
    const/4 v3, 0x0

    #@bb
    return-object v3
.end method

.method private readAccountInfoLocked()V
    .locals 25

    #@0
    .prologue
    .line 1838
    const/4 v11, -0x1

    #@1
    .line 1839
    .local v11, "highestAuthorityId":I
    const/4 v10, 0x0

    #@2
    .line 1841
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@6
    move-object/from16 v22, v0

    #@8
    invoke-virtual/range {v22 .. v22}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@b
    move-result-object v10

    #@c
    .line 1842
    .local v10, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v22, "SyncManagerFile"

    #@f
    const/16 v23, 0x2

    #@11
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@14
    move-result v22

    #@15
    if-eqz v22, :cond_0

    #@17
    .line 1843
    const-string/jumbo v22, "SyncManagerFile"

    #@1a
    new-instance v23, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v24, "Reading "

    #@22
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v23

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@2a
    move-object/from16 v24, v0

    #@2c
    invoke-virtual/range {v24 .. v24}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@2f
    move-result-object v24

    #@30
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v23

    #@34
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v23

    #@38
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1845
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3e
    move-result-object v16

    #@3f
    .line 1846
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v22, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@41
    invoke-virtual/range {v22 .. v22}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@44
    move-result-object v22

    #@45
    move-object/from16 v0, v16

    #@47
    move-object/from16 v1, v22

    #@49
    invoke-interface {v0, v10, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@4c
    .line 1847
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@4f
    move-result v9

    #@50
    .line 1848
    .local v9, "eventType":I
    :goto_0
    const/16 v22, 0x2

    #@52
    move/from16 v0, v22

    #@54
    if-eq v9, v0, :cond_1

    #@56
    .line 1849
    const/16 v22, 0x1

    #@58
    move/from16 v0, v22

    #@5a
    if-eq v9, v0, :cond_1

    #@5c
    .line 1850
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@5f
    move-result v9

    #@60
    goto :goto_0

    #@61
    .line 1852
    :cond_1
    const/16 v22, 0x1

    #@63
    move/from16 v0, v22

    #@65
    if-ne v9, v0, :cond_3

    #@67
    .line 1853
    const-string/jumbo v22, "SyncManager"

    #@6a
    const-string/jumbo v23, "No initial accounts"

    #@6d
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    .line 1922
    const/16 v22, 0x0

    #@72
    move-object/from16 v0, p0

    #@74
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@76
    move/from16 v23, v0

    #@78
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    #@7b
    move-result v22

    #@7c
    move/from16 v0, v22

    #@7e
    move-object/from16 v1, p0

    #@80
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@82
    .line 1923
    if-eqz v10, :cond_2

    #@84
    .line 1925
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@87
    .line 1854
    :cond_2
    :goto_1
    return-void

    #@88
    .line 1926
    :catch_0
    move-exception v8

    #@89
    .local v8, "e1":Ljava/io/IOException;
    goto :goto_1

    #@8a
    .line 1857
    .end local v8    # "e1":Ljava/io/IOException;
    :cond_3
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@8d
    move-result-object v19

    #@8e
    .line 1858
    .local v19, "tagName":Ljava/lang/String;
    const-string/jumbo v22, "accounts"

    #@91
    move-object/from16 v0, v22

    #@93
    move-object/from16 v1, v19

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v22

    #@99
    if-eqz v22, :cond_7

    #@9b
    .line 1859
    const-string/jumbo v22, "listen-for-tickles"

    #@9e
    const/16 v23, 0x0

    #@a0
    move-object/from16 v0, v16

    #@a2
    move-object/from16 v1, v23

    #@a4
    move-object/from16 v2, v22

    #@a6
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a9
    move-result-object v13

    #@aa
    .line 1860
    .local v13, "listen":Ljava/lang/String;
    const-string/jumbo v22, "version"

    #@ad
    const/16 v23, 0x0

    #@af
    move-object/from16 v0, v16

    #@b1
    move-object/from16 v1, v23

    #@b3
    move-object/from16 v2, v22

    #@b5
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b8
    move-result-object v21

    #@b9
    .line 1863
    .local v21, "versionString":Ljava/lang/String;
    if-nez v21, :cond_9

    #@bb
    const/16 v20, 0x0

    #@bd
    .line 1867
    .local v20, "version":I
    :goto_2
    const-string/jumbo v22, "nextAuthorityId"

    #@c0
    const/16 v23, 0x0

    #@c2
    move-object/from16 v0, v16

    #@c4
    move-object/from16 v1, v23

    #@c6
    move-object/from16 v2, v22

    #@c8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cb
    move-result-object v14

    #@cc
    .line 1869
    .local v14, "nextIdString":Ljava/lang/String;
    if-nez v14, :cond_a

    #@ce
    const/4 v12, 0x0

    #@cf
    .line 1870
    .local v12, "id":I
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    #@d1
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@d3
    move/from16 v22, v0

    #@d5
    move/from16 v0, v22

    #@d7
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    #@da
    move-result v22

    #@db
    move/from16 v0, v22

    #@dd
    move-object/from16 v1, p0

    #@df
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e1
    .line 1874
    .end local v12    # "id":I
    :goto_4
    :try_start_4
    const-string/jumbo v22, "offsetInSeconds"

    #@e4
    const/16 v23, 0x0

    #@e6
    move-object/from16 v0, v16

    #@e8
    move-object/from16 v1, v23

    #@ea
    move-object/from16 v2, v22

    #@ec
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ef
    move-result-object v15

    #@f0
    .line 1876
    .local v15, "offsetString":Ljava/lang/String;
    if-nez v15, :cond_b

    #@f2
    const/16 v22, 0x0

    #@f4
    :goto_5
    :try_start_5
    move/from16 v0, v22

    #@f6
    move-object/from16 v1, p0

    #@f8
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@fa
    .line 1880
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    #@fc
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    #@fe
    move/from16 v22, v0

    #@100
    if-nez v22, :cond_4

    #@102
    .line 1881
    new-instance v18, Ljava/util/Random;

    #@104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@107
    move-result-wide v22

    #@108
    move-object/from16 v0, v18

    #@10a
    move-wide/from16 v1, v22

    #@10c
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    #@10f
    .line 1882
    .local v18, "random":Ljava/util/Random;
    const v22, 0x15180

    #@112
    move-object/from16 v0, v18

    #@114
    move/from16 v1, v22

    #@116
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    #@119
    move-result v22

    #@11a
    move/from16 v0, v22

    #@11c
    move-object/from16 v1, p0

    #@11e
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    #@120
    .line 1884
    .end local v18    # "random":Ljava/util/Random;
    :cond_4
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@124
    move-object/from16 v23, v0

    #@126
    if-eqz v13, :cond_d

    #@128
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@12b
    move-result v22

    #@12c
    :goto_7
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12f
    move-result-object v22

    #@130
    const/16 v24, 0x0

    #@132
    move-object/from16 v0, v23

    #@134
    move/from16 v1, v24

    #@136
    move-object/from16 v2, v22

    #@138
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@13b
    .line 1885
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@13e
    move-result v9

    #@13f
    .line 1886
    const/4 v4, 0x0

    #@140
    .line 1887
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/16 v17, 0x0

    #@142
    .line 1889
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_5
    const/16 v22, 0x2

    #@144
    move/from16 v0, v22

    #@146
    if-ne v9, v0, :cond_6

    #@148
    .line 1890
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@14b
    move-result-object v19

    #@14c
    .line 1891
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@14f
    move-result v22

    #@150
    const/16 v23, 0x2

    #@152
    move/from16 v0, v22

    #@154
    move/from16 v1, v23

    #@156
    if-ne v0, v1, :cond_10

    #@158
    .line 1892
    const-string/jumbo v22, "authority"

    #@15b
    move-object/from16 v0, v22

    #@15d
    move-object/from16 v1, v19

    #@15f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@162
    move-result v22

    #@163
    if-eqz v22, :cond_e

    #@165
    .line 1893
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, v16

    #@169
    move/from16 v2, v20

    #@16b
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@16e
    move-result-object v4

    #@16f
    .line 1894
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/16 v17, 0x0

    #@171
    .line 1895
    .local v17, "periodicSync":Landroid/content/PeriodicSync;
    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@173
    move/from16 v22, v0

    #@175
    move/from16 v0, v22

    #@177
    if-le v0, v11, :cond_6

    #@179
    .line 1896
    iget v11, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@17b
    .line 1911
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_6
    :goto_8
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@17e
    move-result v9

    #@17f
    .line 1912
    const/16 v22, 0x1

    #@181
    move/from16 v0, v22

    #@183
    if-ne v9, v0, :cond_5

    #@185
    .line 1922
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v20    # "version":I
    .end local v21    # "versionString":Ljava/lang/String;
    :cond_7
    add-int/lit8 v22, v11, 0x1

    #@187
    move-object/from16 v0, p0

    #@189
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@18b
    move/from16 v23, v0

    #@18d
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    #@190
    move-result v22

    #@191
    move/from16 v0, v22

    #@193
    move-object/from16 v1, p0

    #@195
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@197
    .line 1923
    if-eqz v10, :cond_8

    #@199
    .line 1925
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@19c
    .line 1931
    :cond_8
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    #@19f
    .line 1837
    return-void

    #@1a0
    .line 1863
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v21    # "versionString":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1a3
    move-result v20

    #@1a4
    .restart local v20    # "version":I
    goto/16 :goto_2

    #@1a6
    .line 1864
    .end local v20    # "version":I
    :catch_1
    move-exception v6

    #@1a7
    .line 1865
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/16 v20, 0x0

    #@1a9
    .restart local v20    # "version":I
    goto/16 :goto_2

    #@1ab
    .line 1869
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    :cond_a
    :try_start_9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1ae
    move-result v12

    #@1af
    .restart local v12    # "id":I
    goto/16 :goto_3

    #@1b1
    .line 1876
    .end local v12    # "id":I
    .restart local v15    # "offsetString":Ljava/lang/String;
    :cond_b
    :try_start_a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@1b4
    move-result v22

    #@1b5
    goto/16 :goto_5

    #@1b7
    .line 1877
    :catch_2
    move-exception v6

    #@1b8
    .line 1878
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const/16 v22, 0x0

    #@1ba
    :try_start_b
    move/from16 v0, v22

    #@1bc
    move-object/from16 v1, p0

    #@1be
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@1c0
    goto/16 :goto_6

    #@1c2
    .line 1914
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "version":I
    .end local v21    # "versionString":Ljava/lang/String;
    :catch_3
    move-exception v7

    #@1c3
    .line 1915
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c
    const-string/jumbo v22, "SyncManager"

    #@1c6
    const-string/jumbo v23, "Error reading accounts"

    #@1c9
    move-object/from16 v0, v22

    #@1cb
    move-object/from16 v1, v23

    #@1cd
    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@1d0
    .line 1922
    add-int/lit8 v22, v11, 0x1

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@1d6
    move/from16 v23, v0

    #@1d8
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    #@1db
    move-result v22

    #@1dc
    move/from16 v0, v22

    #@1de
    move-object/from16 v1, p0

    #@1e0
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@1e2
    .line 1923
    if-eqz v10, :cond_c

    #@1e4
    .line 1925
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    #@1e7
    .line 1916
    :cond_c
    :goto_a
    return-void

    #@1e8
    .line 1884
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "version":I
    .restart local v21    # "versionString":Ljava/lang/String;
    :cond_d
    const/16 v22, 0x1

    #@1ea
    goto/16 :goto_7

    #@1ec
    .line 1898
    :cond_e
    :try_start_e
    const-string/jumbo v22, "listenForTickles"

    #@1ef
    move-object/from16 v0, v22

    #@1f1
    move-object/from16 v1, v19

    #@1f3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f6
    move-result v22

    #@1f7
    if-eqz v22, :cond_6

    #@1f9
    .line 1899
    move-object/from16 v0, p0

    #@1fb
    move-object/from16 v1, v16

    #@1fd
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@200
    goto/16 :goto_8

    #@202
    .line 1917
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "version":I
    .end local v21    # "versionString":Ljava/lang/String;
    :catch_4
    move-exception v5

    #@203
    .line 1918
    .local v5, "e":Ljava/io/IOException;
    if-nez v10, :cond_13

    #@205
    :try_start_f
    const-string/jumbo v22, "SyncManager"

    #@208
    const-string/jumbo v23, "No initial accounts"

    #@20b
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@20e
    .line 1922
    :goto_b
    add-int/lit8 v22, v11, 0x1

    #@210
    move-object/from16 v0, p0

    #@212
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@214
    move/from16 v23, v0

    #@216
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    #@219
    move-result v22

    #@21a
    move/from16 v0, v22

    #@21c
    move-object/from16 v1, p0

    #@21e
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@220
    .line 1923
    if-eqz v10, :cond_f

    #@222
    .line 1925
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    #@225
    .line 1920
    :cond_f
    :goto_c
    return-void

    #@226
    .line 1901
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "version":I
    .restart local v21    # "versionString":Ljava/lang/String;
    :cond_10
    :try_start_11
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@229
    move-result v22

    #@22a
    const/16 v23, 0x3

    #@22c
    move/from16 v0, v22

    #@22e
    move/from16 v1, v23

    #@230
    if-ne v0, v1, :cond_11

    #@232
    .line 1902
    const-string/jumbo v22, "periodicSync"

    #@235
    move-object/from16 v0, v22

    #@237
    move-object/from16 v1, v19

    #@239
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23c
    move-result v22

    #@23d
    if-eqz v22, :cond_6

    #@23f
    if-eqz v4, :cond_6

    #@241
    .line 1903
    move-object/from16 v0, p0

    #@243
    move-object/from16 v1, v16

    #@245
    invoke-direct {v0, v1, v4}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    #@248
    move-result-object v17

    #@249
    .local v17, "periodicSync":Landroid/content/PeriodicSync;
    goto/16 :goto_8

    #@24b
    .line 1905
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_11
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@24e
    move-result v22

    #@24f
    const/16 v23, 0x4

    #@251
    move/from16 v0, v22

    #@253
    move/from16 v1, v23

    #@255
    if-ne v0, v1, :cond_6

    #@257
    if-eqz v17, :cond_6

    #@259
    .line 1906
    const-string/jumbo v22, "extra"

    #@25c
    move-object/from16 v0, v22

    #@25e
    move-object/from16 v1, v19

    #@260
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@263
    move-result v22

    #@264
    if-eqz v22, :cond_6

    #@266
    .line 1907
    move-object/from16 v0, v17

    #@268
    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@26a
    move-object/from16 v22, v0

    #@26c
    move-object/from16 v0, p0

    #@26e
    move-object/from16 v1, v16

    #@270
    move-object/from16 v2, v22

    #@272
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@275
    goto/16 :goto_8

    #@277
    .line 1921
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "version":I
    .end local v21    # "versionString":Ljava/lang/String;
    :catchall_0
    move-exception v22

    #@278
    .line 1922
    add-int/lit8 v23, v11, 0x1

    #@27a
    move-object/from16 v0, p0

    #@27c
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@27e
    move/from16 v24, v0

    #@280
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    #@283
    move-result v23

    #@284
    move/from16 v0, v23

    #@286
    move-object/from16 v1, p0

    #@288
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@28a
    .line 1923
    if-eqz v10, :cond_12

    #@28c
    .line 1925
    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    #@28f
    .line 1921
    :cond_12
    :goto_d
    throw v22

    #@290
    .line 1926
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    :catch_5
    move-exception v8

    #@291
    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_9

    #@293
    .line 1919
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_13
    :try_start_13
    const-string/jumbo v22, "SyncManager"

    #@296
    const-string/jumbo v23, "Error reading accounts"

    #@299
    move-object/from16 v0, v22

    #@29b
    move-object/from16 v1, v23

    #@29d
    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@2a0
    goto/16 :goto_b

    #@2a2
    .line 1926
    :catch_6
    move-exception v8

    #@2a3
    .restart local v8    # "e1":Ljava/io/IOException;
    goto :goto_c

    #@2a4
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v8

    #@2a5
    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_a

    #@2a7
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_8
    move-exception v8

    #@2a8
    .restart local v8    # "e1":Ljava/io/IOException;
    goto :goto_d

    #@2a9
    .line 1871
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "version":I
    .restart local v21    # "versionString":Ljava/lang/String;
    :catch_9
    move-exception v6

    #@2aa
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .locals 26

    #@0
    .prologue
    .line 2266
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v5, "syncmanager.db"

    #@7
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@a
    move-result-object v16

    #@b
    .line 2267
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    .line 2268
    return-void

    #@12
    .line 2270
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@15
    move-result-object v22

    #@16
    .line 2271
    .local v22, "path":Ljava/lang/String;
    const/4 v3, 0x0

    #@17
    .line 2273
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    #@18
    .line 2274
    const/4 v5, 0x1

    #@19
    .line 2273
    :try_start_0
    move-object/from16 v0, v22

    #@1b
    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v3

    #@1f
    .line 2278
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-eqz v3, :cond_12

    #@21
    .line 2279
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    #@24
    move-result v4

    #@25
    const/16 v5, 0xb

    #@27
    if-lt v4, v5, :cond_8

    #@29
    const/16 v18, 0x1

    #@2b
    .line 2282
    .local v18, "hasType":Z
    :goto_1
    const-string/jumbo v4, "SyncManagerFile"

    #@2e
    const/4 v5, 0x2

    #@2f
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 2283
    const-string/jumbo v4, "SyncManagerFile"

    #@38
    const-string/jumbo v5, "Reading legacy sync accounts db"

    #@3b
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 2285
    :cond_1
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    #@40
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    #@43
    .line 2286
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "stats, status"

    #@46
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    #@49
    .line 2287
    new-instance v20, Ljava/util/HashMap;

    #@4b
    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    #@4e
    .line 2288
    .local v20, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "_id"

    #@51
    const-string/jumbo v5, "status._id as _id"

    #@54
    move-object/from16 v0, v20

    #@56
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 2289
    const-string/jumbo v4, "account"

    #@5c
    const-string/jumbo v5, "stats.account as account"

    #@5f
    move-object/from16 v0, v20

    #@61
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    .line 2290
    if-eqz v18, :cond_2

    #@66
    .line 2291
    const-string/jumbo v4, "account_type"

    #@69
    const-string/jumbo v5, "stats.account_type as account_type"

    #@6c
    move-object/from16 v0, v20

    #@6e
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 2293
    :cond_2
    const-string/jumbo v4, "authority"

    #@74
    const-string/jumbo v5, "stats.authority as authority"

    #@77
    move-object/from16 v0, v20

    #@79
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 2294
    const-string/jumbo v4, "totalElapsedTime"

    #@7f
    const-string/jumbo v5, "totalElapsedTime"

    #@82
    move-object/from16 v0, v20

    #@84
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 2295
    const-string/jumbo v4, "numSyncs"

    #@8a
    const-string/jumbo v5, "numSyncs"

    #@8d
    move-object/from16 v0, v20

    #@8f
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 2296
    const-string/jumbo v4, "numSourceLocal"

    #@95
    const-string/jumbo v5, "numSourceLocal"

    #@98
    move-object/from16 v0, v20

    #@9a
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    .line 2297
    const-string/jumbo v4, "numSourcePoll"

    #@a0
    const-string/jumbo v5, "numSourcePoll"

    #@a3
    move-object/from16 v0, v20

    #@a5
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 2298
    const-string/jumbo v4, "numSourceServer"

    #@ab
    const-string/jumbo v5, "numSourceServer"

    #@ae
    move-object/from16 v0, v20

    #@b0
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    .line 2299
    const-string/jumbo v4, "numSourceUser"

    #@b6
    const-string/jumbo v5, "numSourceUser"

    #@b9
    move-object/from16 v0, v20

    #@bb
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 2300
    const-string/jumbo v4, "lastSuccessSource"

    #@c1
    const-string/jumbo v5, "lastSuccessSource"

    #@c4
    move-object/from16 v0, v20

    #@c6
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 2301
    const-string/jumbo v4, "lastSuccessTime"

    #@cc
    const-string/jumbo v5, "lastSuccessTime"

    #@cf
    move-object/from16 v0, v20

    #@d1
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    .line 2302
    const-string/jumbo v4, "lastFailureSource"

    #@d7
    const-string/jumbo v5, "lastFailureSource"

    #@da
    move-object/from16 v0, v20

    #@dc
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    .line 2303
    const-string/jumbo v4, "lastFailureTime"

    #@e2
    const-string/jumbo v5, "lastFailureTime"

    #@e5
    move-object/from16 v0, v20

    #@e7
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 2304
    const-string/jumbo v4, "lastFailureMesg"

    #@ed
    const-string/jumbo v5, "lastFailureMesg"

    #@f0
    move-object/from16 v0, v20

    #@f2
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 2305
    const-string/jumbo v4, "pending"

    #@f8
    const-string/jumbo v5, "pending"

    #@fb
    move-object/from16 v0, v20

    #@fd
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    .line 2306
    move-object/from16 v0, v20

    #@102
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    #@105
    .line 2307
    const-string/jumbo v4, "stats._id = status.stats_id"

    #@108
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    #@10b
    .line 2308
    const/4 v4, 0x0

    #@10c
    const/4 v5, 0x0

    #@10d
    const/4 v6, 0x0

    #@10e
    const/4 v7, 0x0

    #@10f
    const/4 v8, 0x0

    #@110
    const/4 v9, 0x0

    #@111
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@114
    move-result-object v14

    #@115
    .line 2309
    .local v14, "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@118
    move-result v4

    #@119
    if-eqz v4, :cond_b

    #@11b
    .line 2310
    const-string/jumbo v4, "account"

    #@11e
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@121
    move-result v4

    #@122
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@125
    move-result-object v10

    #@126
    .line 2311
    .local v10, "accountName":Ljava/lang/String;
    if-eqz v18, :cond_9

    #@128
    .line 2312
    const-string/jumbo v4, "account_type"

    #@12b
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@12e
    move-result v4

    #@12f
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@132
    move-result-object v11

    #@133
    .line 2313
    :goto_3
    if-nez v11, :cond_4

    #@135
    .line 2314
    const-string/jumbo v11, "com.google"

    #@138
    .line 2316
    :cond_4
    const-string/jumbo v4, "authority"

    #@13b
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@13e
    move-result v4

    #@13f
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@142
    move-result-object v13

    #@143
    .line 2319
    .local v13, "authorityName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@145
    new-instance v5, Landroid/accounts/Account;

    #@147
    invoke-direct {v5, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14a
    .line 2321
    const/4 v6, 0x0

    #@14b
    .line 2319
    invoke-direct {v4, v5, v13, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@14e
    .line 2322
    const/4 v5, -0x1

    #@14f
    .line 2323
    const/4 v6, 0x0

    #@150
    .line 2318
    move-object/from16 v0, p0

    #@152
    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@155
    move-result-object v12

    #@156
    .line 2324
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v12, :cond_3

    #@158
    .line 2325
    move-object/from16 v0, p0

    #@15a
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@15c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@15f
    move-result v19

    #@160
    .line 2326
    .local v19, "i":I
    const/16 v17, 0x0

    #@162
    .line 2327
    .local v17, "found":Z
    const/16 v24, 0x0

    #@164
    .line 2328
    :cond_5
    if-lez v19, :cond_6

    #@166
    .line 2329
    add-int/lit8 v19, v19, -0x1

    #@168
    .line 2330
    move-object/from16 v0, p0

    #@16a
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@16c
    move/from16 v0, v19

    #@16e
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@171
    move-result-object v24

    #@172
    check-cast v24, Landroid/content/SyncStatusInfo;

    #@174
    .line 2331
    .local v24, "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v24

    #@176
    iget v4, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    #@178
    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@17a
    if-ne v4, v5, :cond_5

    #@17c
    .line 2332
    const/16 v17, 0x1

    #@17e
    .line 2336
    .end local v24    # "st":Landroid/content/SyncStatusInfo;
    :cond_6
    if-nez v17, :cond_7

    #@180
    .line 2337
    new-instance v24, Landroid/content/SyncStatusInfo;

    #@182
    iget v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@184
    move-object/from16 v0, v24

    #@186
    invoke-direct {v0, v4}, Landroid/content/SyncStatusInfo;-><init>(I)V

    #@189
    .line 2338
    .restart local v24    # "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    #@18b
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@18d
    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@18f
    move-object/from16 v0, v24

    #@191
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@194
    .line 2340
    .end local v24    # "st":Landroid/content/SyncStatusInfo;
    :cond_7
    const-string/jumbo v4, "totalElapsedTime"

    #@197
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    #@19a
    move-result-wide v4

    #@19b
    move-object/from16 v0, v24

    #@19d
    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@19f
    .line 2341
    const-string/jumbo v4, "numSyncs"

    #@1a2
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    #@1a5
    move-result v4

    #@1a6
    move-object/from16 v0, v24

    #@1a8
    iput v4, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@1aa
    .line 2342
    const-string/jumbo v4, "numSourceLocal"

    #@1ad
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    #@1b0
    move-result v4

    #@1b1
    move-object/from16 v0, v24

    #@1b3
    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    #@1b5
    .line 2343
    const-string/jumbo v4, "numSourcePoll"

    #@1b8
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    #@1bb
    move-result v4

    #@1bc
    move-object/from16 v0, v24

    #@1be
    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@1c0
    .line 2344
    const-string/jumbo v4, "numSourceServer"

    #@1c3
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    #@1c6
    move-result v4

    #@1c7
    move-object/from16 v0, v24

    #@1c9
    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@1cb
    .line 2345
    const-string/jumbo v4, "numSourceUser"

    #@1ce
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    #@1d1
    move-result v4

    #@1d2
    move-object/from16 v0, v24

    #@1d4
    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@1d6
    .line 2346
    const/4 v4, 0x0

    #@1d7
    move-object/from16 v0, v24

    #@1d9
    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@1db
    .line 2347
    const-string/jumbo v4, "lastSuccessSource"

    #@1de
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    #@1e1
    move-result v4

    #@1e2
    move-object/from16 v0, v24

    #@1e4
    iput v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@1e6
    .line 2348
    const-string/jumbo v4, "lastSuccessTime"

    #@1e9
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    #@1ec
    move-result-wide v4

    #@1ed
    move-object/from16 v0, v24

    #@1ef
    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@1f1
    .line 2349
    const-string/jumbo v4, "lastFailureSource"

    #@1f4
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    #@1f7
    move-result v4

    #@1f8
    move-object/from16 v0, v24

    #@1fa
    iput v4, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@1fc
    .line 2350
    const-string/jumbo v4, "lastFailureTime"

    #@1ff
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    #@202
    move-result-wide v4

    #@203
    move-object/from16 v0, v24

    #@205
    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@207
    .line 2351
    const-string/jumbo v4, "lastFailureMesg"

    #@20a
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@20d
    move-result v4

    #@20e
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@211
    move-result-object v4

    #@212
    move-object/from16 v0, v24

    #@214
    iput-object v4, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@216
    .line 2352
    const-string/jumbo v4, "pending"

    #@219
    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    #@21c
    move-result v4

    #@21d
    if-eqz v4, :cond_a

    #@21f
    const/4 v4, 0x1

    #@220
    :goto_4
    move-object/from16 v0, v24

    #@222
    iput-boolean v4, v0, Landroid/content/SyncStatusInfo;->pending:Z

    #@224
    goto/16 :goto_2

    #@226
    .line 2275
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v17    # "found":Z
    .end local v18    # "hasType":Z
    .end local v19    # "i":I
    .end local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v15

    #@227
    .local v15, "e":Landroid/database/sqlite/SQLiteException;
    goto/16 :goto_0

    #@229
    .line 2279
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_8
    const/16 v18, 0x0

    #@22b
    .restart local v18    # "hasType":Z
    goto/16 :goto_1

    #@22d
    .line 2312
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const/4 v11, 0x0

    #@22e
    .local v11, "accountType":Ljava/lang/String;
    goto/16 :goto_3

    #@230
    .line 2352
    .end local v11    # "accountType":Ljava/lang/String;
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "authorityName":Ljava/lang/String;
    .restart local v17    # "found":Z
    .restart local v19    # "i":I
    :cond_a
    const/4 v4, 0x0

    #@231
    goto :goto_4

    #@232
    .line 2356
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v17    # "found":Z
    .end local v19    # "i":I
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@235
    .line 2359
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    #@237
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    #@23a
    .line 2360
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "settings"

    #@23d
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    #@240
    .line 2361
    const/4 v4, 0x0

    #@241
    const/4 v5, 0x0

    #@242
    const/4 v6, 0x0

    #@243
    const/4 v7, 0x0

    #@244
    const/4 v8, 0x0

    #@245
    const/4 v9, 0x0

    #@246
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@249
    move-result-object v14

    #@24a
    .line 2362
    :cond_c
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@24d
    move-result v4

    #@24e
    if-eqz v4, :cond_11

    #@250
    .line 2363
    const-string/jumbo v4, "name"

    #@253
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@256
    move-result v4

    #@257
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@25a
    move-result-object v21

    #@25b
    .line 2364
    .local v21, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    #@25e
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@261
    move-result v4

    #@262
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@265
    move-result-object v25

    #@266
    .line 2365
    .local v25, "value":Ljava/lang/String;
    if-eqz v21, :cond_c

    #@268
    .line 2366
    const-string/jumbo v4, "listen_for_tickles"

    #@26b
    move-object/from16 v0, v21

    #@26d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@270
    move-result v4

    #@271
    if-eqz v4, :cond_e

    #@273
    .line 2367
    if-eqz v25, :cond_d

    #@275
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@278
    move-result v4

    #@279
    :goto_6
    const/4 v5, 0x0

    #@27a
    move-object/from16 v0, p0

    #@27c
    invoke-virtual {v0, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V

    #@27f
    goto :goto_5

    #@280
    :cond_d
    const/4 v4, 0x1

    #@281
    goto :goto_6

    #@282
    .line 2368
    :cond_e
    const-string/jumbo v4, "sync_provider_"

    #@285
    move-object/from16 v0, v21

    #@287
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28a
    move-result v4

    #@28b
    if-eqz v4, :cond_c

    #@28d
    .line 2369
    const-string/jumbo v4, "sync_provider_"

    #@290
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@293
    move-result v4

    #@294
    .line 2370
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@297
    move-result v5

    #@298
    .line 2369
    move-object/from16 v0, v21

    #@29a
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29d
    move-result-object v23

    #@29e
    .line 2371
    .local v23, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a0
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2a2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@2a5
    move-result v19

    #@2a6
    .line 2372
    .restart local v19    # "i":I
    :cond_f
    :goto_7
    if-lez v19, :cond_c

    #@2a8
    .line 2373
    add-int/lit8 v19, v19, -0x1

    #@2aa
    .line 2374
    move-object/from16 v0, p0

    #@2ac
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2ae
    move/from16 v0, v19

    #@2b0
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2b3
    move-result-object v12

    #@2b4
    check-cast v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@2b6
    .line 2375
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2b8
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@2ba
    move-object/from16 v0, v23

    #@2bc
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2bf
    move-result v4

    #@2c0
    if-eqz v4, :cond_f

    #@2c2
    .line 2376
    if-eqz v25, :cond_10

    #@2c4
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2c7
    move-result v4

    #@2c8
    :goto_8
    iput-boolean v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@2ca
    .line 2377
    const/4 v4, 0x1

    #@2cb
    iput v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@2cd
    goto :goto_7

    #@2ce
    .line 2376
    :cond_10
    const/4 v4, 0x1

    #@2cf
    goto :goto_8

    #@2d0
    .line 2383
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "provider":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_11
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@2d3
    .line 2385
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@2d6
    .line 2387
    new-instance v4, Ljava/io/File;

    #@2d8
    move-object/from16 v0, v22

    #@2da
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2dd
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@2e0
    .line 2264
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v18    # "hasType":Z
    .end local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    return-void
.end method

.method private readPendingOperationsLocked()V
    .locals 21

    #@0
    .prologue
    .line 2467
    const/4 v14, 0x0

    #@1
    .line 2468
    .local v14, "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    #@3
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@5
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@8
    move-result-object v6

    #@9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    #@c
    move-result v6

    #@d
    if-nez v6, :cond_1

    #@f
    .line 2469
    const-string/jumbo v6, "SyncManagerFile"

    #@12
    const/16 v19, 0x2

    #@14
    move/from16 v0, v19

    #@16
    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_0

    #@1c
    .line 2470
    const-string/jumbo v6, "SyncManagerFile"

    #@1f
    const-string/jumbo v19, "No pending operation file."

    #@22
    move-object/from16 v0, v19

    #@24
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 2472
    :cond_0
    return-void

    #@28
    .line 2475
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    #@2a
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@2c
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@2f
    move-result-object v14

    #@30
    .line 2476
    .local v14, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v6, "SyncManagerFile"

    #@33
    const/16 v19, 0x2

    #@35
    move/from16 v0, v19

    #@37
    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_2

    #@3d
    .line 2477
    const-string/jumbo v6, "SyncManagerFile"

    #@40
    new-instance v19, Ljava/lang/StringBuilder;

    #@42
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v20, "Reading "

    #@48
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v19

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@50
    move-object/from16 v20, v0

    #@52
    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@55
    move-result-object v20

    #@56
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v19

    #@5a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v19

    #@5e
    move-object/from16 v0, v19

    #@60
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 2480
    :cond_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@66
    move-result-object v15

    #@67
    .line 2481
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@69
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@6c
    move-result-object v6

    #@6d
    invoke-interface {v15, v14, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@70
    .line 2483
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@73
    move-result v13

    #@74
    .line 2484
    .local v13, "eventType":I
    :goto_0
    const/4 v6, 0x2

    #@75
    if-eq v13, v6, :cond_3

    #@77
    .line 2485
    const/4 v6, 0x1

    #@78
    if-eq v13, v6, :cond_3

    #@7a
    .line 2486
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7d
    move-result v13

    #@7e
    goto :goto_0

    #@7f
    .line 2488
    :cond_3
    const/4 v6, 0x1

    #@80
    if-ne v13, v6, :cond_8

    #@82
    .line 2555
    if-eqz v14, :cond_4

    #@84
    .line 2557
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@87
    .line 2488
    :cond_4
    :goto_1
    return-void

    #@88
    .line 2558
    :catch_0
    move-exception v12

    #@89
    .local v12, "e1":Ljava/io/IOException;
    goto :goto_1

    #@8a
    .line 2505
    .end local v12    # "e1":Ljava/io/IOException;
    .local v16, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .local v17, "tagName":Ljava/lang/String;
    .local v18, "versionString":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string/jumbo v6, "authority_id"

    #@8d
    const/16 v19, 0x0

    #@8f
    .line 2504
    move-object/from16 v0, v19

    #@91
    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@94
    move-result-object v6

    #@95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@9c
    move-result v8

    #@9d
    .line 2507
    .local v8, "authorityId":I
    const-string/jumbo v6, "expedited"

    #@a0
    const/16 v19, 0x0

    #@a2
    .line 2506
    move-object/from16 v0, v19

    #@a4
    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@ab
    move-result-object v6

    #@ac
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@af
    move-result v7

    #@b0
    .line 2509
    .local v7, "expedited":Z
    const-string/jumbo v6, "source"

    #@b3
    const/16 v19, 0x0

    #@b5
    .line 2508
    move-object/from16 v0, v19

    #@b7
    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ba
    move-result-object v6

    #@bb
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@be
    move-result-object v6

    #@bf
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@c2
    move-result v5

    #@c3
    .line 2511
    .local v5, "syncSource":I
    const-string/jumbo v6, "reason"

    #@c6
    const/16 v19, 0x0

    #@c8
    .line 2510
    move-object/from16 v0, v19

    #@ca
    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@cd
    move-result-object v6

    #@ce
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@d1
    move-result-object v6

    #@d2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@d5
    move-result v4

    #@d6
    .line 2512
    .local v4, "reason":I
    move-object/from16 v0, p0

    #@d8
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@da
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@dd
    move-result-object v3

    #@de
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@e0
    .line 2513
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string/jumbo v6, "SyncManagerFile"

    #@e3
    const/16 v19, 0x2

    #@e5
    move/from16 v0, v19

    #@e7
    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@ea
    move-result v6

    #@eb
    if-eqz v6, :cond_6

    #@ed
    .line 2514
    const-string/jumbo v6, "SyncManagerFile"

    #@f0
    new-instance v19, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    move-object/from16 v0, v19

    #@f7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v19

    #@fb
    const-string/jumbo v20, " "

    #@fe
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v19

    #@102
    move-object/from16 v0, v19

    #@104
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@107
    move-result-object v19

    #@108
    const-string/jumbo v20, " "

    #@10b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v19

    #@10f
    move-object/from16 v0, v19

    #@111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@114
    move-result-object v19

    #@115
    const-string/jumbo v20, " "

    #@118
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v19

    #@11c
    move-object/from16 v0, v19

    #@11e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    move-result-object v19

    #@122
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v19

    #@126
    move-object/from16 v0, v19

    #@128
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@12b
    .line 2517
    :cond_6
    if-eqz v3, :cond_b

    #@12d
    .line 2518
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@12f
    .line 2519
    new-instance v6, Landroid/os/Bundle;

    #@131
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    #@134
    .line 2518
    invoke-direct/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@137
    .line 2520
    .end local v16    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .local v2, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const/4 v6, 0x0

    #@138
    :try_start_3
    iput-object v6, v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    #@13a
    .line 2521
    move-object/from16 v0, p0

    #@13c
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@13e
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@141
    .line 2522
    const-string/jumbo v6, "SyncManagerFile"

    #@144
    const/16 v19, 0x2

    #@146
    move/from16 v0, v19

    #@148
    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@14b
    move-result v6

    #@14c
    if-eqz v6, :cond_7

    #@14e
    .line 2523
    const-string/jumbo v6, "SyncManagerFile"

    #@151
    new-instance v19, Ljava/lang/StringBuilder;

    #@153
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    const-string/jumbo v20, "Adding pending op: "

    #@159
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v19

    #@15d
    .line 2524
    iget-object v0, v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@15f
    move-object/from16 v20, v0

    #@161
    .line 2523
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v19

    #@165
    .line 2525
    const-string/jumbo v20, " src="

    #@168
    .line 2523
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v19

    #@16c
    .line 2525
    iget v0, v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    #@16e
    move/from16 v20, v0

    #@170
    .line 2523
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@173
    move-result-object v19

    #@174
    .line 2526
    const-string/jumbo v20, " reason="

    #@177
    .line 2523
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v19

    #@17b
    .line 2526
    iget v0, v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    #@17d
    move/from16 v20, v0

    #@17f
    .line 2523
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@182
    move-result-object v19

    #@183
    .line 2527
    const-string/jumbo v20, " expedited="

    #@186
    .line 2523
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v19

    #@18a
    .line 2527
    iget-boolean v0, v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    #@18c
    move/from16 v20, v0

    #@18e
    .line 2523
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@191
    move-result-object v19

    #@192
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@195
    move-result-object v19

    #@196
    move-object/from16 v0, v19

    #@198
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@19b
    .line 2546
    .end local v2    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v4    # "reason":I
    .end local v5    # "syncSource":I
    .end local v7    # "expedited":Z
    .end local v8    # "authorityId":I
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "versionString":Ljava/lang/String;
    :cond_7
    :goto_2
    :try_start_4
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@19e
    move-result v13

    #@19f
    .line 2547
    const/4 v6, 0x1

    #@1a0
    if-eq v13, v6, :cond_e

    #@1a2
    .line 2491
    :cond_8
    const/16 v16, 0x0

    #@1a4
    .line 2492
    .restart local v16    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const/4 v6, 0x2

    #@1a5
    if-ne v13, v6, :cond_11

    #@1a7
    .line 2494
    :try_start_5
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1aa
    move-result-object v17

    #@1ab
    .line 2495
    .restart local v17    # "tagName":Ljava/lang/String;
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1ae
    move-result v6

    #@1af
    const/16 v19, 0x1

    #@1b1
    move/from16 v0, v19

    #@1b3
    if-ne v6, v0, :cond_c

    #@1b5
    const-string/jumbo v6, "op"

    #@1b8
    move-object/from16 v0, v17

    #@1ba
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bd
    move-result v6

    #@1be
    if-eqz v6, :cond_c

    #@1c0
    .line 2498
    const-string/jumbo v6, "version"

    #@1c3
    const/16 v19, 0x0

    #@1c5
    move-object/from16 v0, v19

    #@1c7
    invoke-interface {v15, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1ca
    move-result-object v18

    #@1cb
    .line 2499
    .restart local v18    # "versionString":Ljava/lang/String;
    if-eqz v18, :cond_9

    #@1cd
    .line 2500
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1d0
    move-result v6

    #@1d1
    const/16 v19, 0x3

    #@1d3
    move/from16 v0, v19

    #@1d5
    if-eq v6, v0, :cond_5

    #@1d7
    .line 2501
    :cond_9
    const-string/jumbo v6, "SyncManager"

    #@1da
    new-instance v19, Ljava/lang/StringBuilder;

    #@1dc
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1df
    const-string/jumbo v20, "Unknown pending operation version "

    #@1e2
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v19

    #@1e6
    move-object/from16 v0, v19

    #@1e8
    move-object/from16 v1, v18

    #@1ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    move-result-object v19

    #@1ee
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f1
    move-result-object v19

    #@1f2
    move-object/from16 v0, v19

    #@1f4
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f7
    .line 2502
    new-instance v6, Ljava/io/IOException;

    #@1f9
    const-string/jumbo v19, "Unknown version."

    #@1fc
    move-object/from16 v0, v19

    #@1fe
    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@201
    throw v6
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@202
    .line 2542
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "versionString":Ljava/lang/String;
    :catch_1
    move-exception v10

    #@203
    .local v10, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v2, v16

    #@205
    .line 2543
    .end local v16    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :goto_3
    :try_start_6
    const-string/jumbo v6, "SyncManager"

    #@208
    const-string/jumbo v19, "Invalid data in xml file."

    #@20b
    move-object/from16 v0, v19

    #@20d
    invoke-static {v6, v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@210
    goto :goto_2

    #@211
    .line 2548
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "eventType":I
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v9

    #@212
    .line 2549
    .local v9, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v6, "SyncManagerFile"

    #@215
    const-string/jumbo v19, "Error reading pending data."

    #@218
    move-object/from16 v0, v19

    #@21a
    invoke-static {v6, v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@21d
    .line 2555
    if-eqz v14, :cond_a

    #@21f
    .line 2557
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    #@222
    .line 2466
    .end local v9    # "e":Ljava/io/IOException;
    :cond_a
    :goto_4
    return-void

    #@223
    .line 2531
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v4    # "reason":I
    .restart local v5    # "syncSource":I
    .restart local v7    # "expedited":Z
    .restart local v8    # "authorityId":I
    .restart local v13    # "eventType":I
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v17    # "tagName":Ljava/lang/String;
    .restart local v18    # "versionString":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    #@224
    .line 2532
    .end local v16    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .local v2, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :try_start_9
    const-string/jumbo v6, "SyncManagerFile"

    #@227
    const/16 v19, 0x2

    #@229
    move/from16 v0, v19

    #@22b
    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@22e
    move-result v6

    #@22f
    if-eqz v6, :cond_7

    #@231
    .line 2533
    const-string/jumbo v6, "SyncManagerFile"

    #@234
    new-instance v19, Ljava/lang/StringBuilder;

    #@236
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@239
    const-string/jumbo v20, "No authority found for "

    #@23c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v19

    #@240
    move-object/from16 v0, v19

    #@242
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@245
    move-result-object v19

    #@246
    .line 2534
    const-string/jumbo v20, ", skipping"

    #@249
    .line 2533
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v19

    #@24d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@250
    move-result-object v19

    #@251
    move-object/from16 v0, v19

    #@253
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@256
    goto/16 :goto_2

    #@258
    .line 2542
    .end local v2    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :catch_3
    move-exception v10

    #@259
    .restart local v10    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    #@25a
    .line 2537
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v4    # "reason":I
    .end local v5    # "syncSource":I
    .end local v7    # "expedited":Z
    .end local v8    # "authorityId":I
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v18    # "versionString":Ljava/lang/String;
    .restart local v16    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_c
    :try_start_a
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@25d
    move-result v6

    #@25e
    const/16 v19, 0x2

    #@260
    move/from16 v0, v19

    #@262
    if-ne v6, v0, :cond_d

    #@264
    :cond_d
    move-object/from16 v2, v16

    #@266
    .line 2539
    .local v2, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    goto/16 :goto_2

    #@268
    .line 2555
    .end local v2    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v16    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_e
    if-eqz v14, :cond_a

    #@26a
    .line 2557
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    #@26d
    goto :goto_4

    #@26e
    .line 2558
    :catch_4
    move-exception v12

    #@26f
    .restart local v12    # "e1":Ljava/io/IOException;
    goto :goto_4

    #@270
    .line 2550
    .end local v12    # "e1":Ljava/io/IOException;
    .end local v13    # "eventType":I
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v11

    #@271
    .line 2551
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c
    const-string/jumbo v6, "SyncManagerFile"

    #@274
    const/16 v19, 0x2

    #@276
    move/from16 v0, v19

    #@278
    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@27b
    move-result v6

    #@27c
    if-eqz v6, :cond_f

    #@27e
    .line 2552
    const-string/jumbo v6, "SyncManagerFile"

    #@281
    const-string/jumbo v19, "Error parsing pending ops xml."

    #@284
    move-object/from16 v0, v19

    #@286
    invoke-static {v6, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@289
    .line 2555
    :cond_f
    if-eqz v14, :cond_a

    #@28b
    .line 2557
    :try_start_d
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    #@28e
    goto :goto_4

    #@28f
    .line 2558
    :catch_6
    move-exception v12

    #@290
    .restart local v12    # "e1":Ljava/io/IOException;
    goto :goto_4

    #@291
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v12    # "e1":Ljava/io/IOException;
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    #@292
    .restart local v12    # "e1":Ljava/io/IOException;
    goto :goto_4

    #@293
    .line 2554
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@294
    .line 2555
    if-eqz v14, :cond_10

    #@296
    .line 2557
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    #@299
    .line 2554
    :cond_10
    :goto_5
    throw v6

    #@29a
    .line 2558
    :catch_8
    move-exception v12

    #@29b
    .restart local v12    # "e1":Ljava/io/IOException;
    goto :goto_5

    #@29c
    .end local v12    # "e1":Ljava/io/IOException;
    .restart local v13    # "eventType":I
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_11
    move-object/from16 v2, v16

    #@29e
    .restart local v2    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    goto/16 :goto_2
.end method

.method private readStatisticsLocked()V
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x64

    #@2
    .line 2763
    :try_start_0
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@4
    invoke-virtual {v7}, Landroid/util/AtomicFile;->readFully()[B

    #@7
    move-result-object v0

    #@8
    .line 2764
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@b
    move-result-object v4

    #@c
    .line 2765
    .local v4, "in":Landroid/os/Parcel;
    array-length v7, v0

    #@d
    const/4 v8, 0x0

    #@e
    invoke-virtual {v4, v0, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    #@11
    .line 2766
    const/4 v7, 0x0

    #@12
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    #@15
    .line 2768
    const/4 v5, 0x0

    #@16
    .line 2769
    .local v5, "index":I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v6

    #@1a
    .local v6, "token":I
    if-eqz v6, :cond_4

    #@1c
    .line 2770
    const/16 v7, 0x65

    #@1e
    if-eq v6, v7, :cond_1

    #@20
    .line 2771
    if-ne v6, v10, :cond_3

    #@22
    .line 2772
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    .line 2773
    .local v1, "day":I
    if-ne v6, v10, :cond_2

    #@28
    .line 2774
    add-int/lit16 v7, v1, -0x7d9

    #@2a
    add-int/lit16 v1, v7, 0x37a5

    #@2c
    .line 2776
    :cond_2
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@2e
    invoke-direct {v2, v1}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    #@31
    .line 2777
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v7

    #@35
    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@37
    .line 2778
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    #@3a
    move-result-wide v8

    #@3b
    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@3d
    .line 2779
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v7

    #@41
    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@43
    .line 2780
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    #@46
    move-result-wide v8

    #@47
    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@49
    .line 2781
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@4b
    array-length v7, v7

    #@4c
    if-ge v5, v7, :cond_0

    #@4e
    .line 2782
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@50
    aput-object v2, v7, v5

    #@52
    .line 2783
    add-int/lit8 v5, v5, 0x1

    #@54
    goto :goto_0

    #@55
    .line 2787
    .end local v1    # "day":I
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    const-string/jumbo v7, "SyncManager"

    #@58
    new-instance v8, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v9, "Unknown stats token: "

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 2761
    .end local v0    # "data":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "index":I
    .end local v6    # "token":I
    :cond_4
    :goto_1
    return-void

    #@70
    .line 2791
    :catch_0
    move-exception v3

    #@71
    .line 2792
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "SyncManager"

    #@74
    const-string/jumbo v8, "No initial statistics"

    #@77
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    goto :goto_1
.end method

.method private readStatusLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 2398
    const-string/jumbo v5, "SyncManagerFile"

    #@4
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 2399
    const-string/jumbo v5, "SyncManagerFile"

    #@d
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v7, "Reading "

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@1b
    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2402
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@2c
    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    #@2f
    move-result-object v0

    #@30
    .line 2403
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@33
    move-result-object v2

    #@34
    .line 2404
    .local v2, "in":Landroid/os/Parcel;
    array-length v5, v0

    #@35
    const/4 v6, 0x0

    #@36
    invoke-virtual {v2, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    #@39
    .line 2405
    const/4 v5, 0x0

    #@3a
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    #@3d
    .line 2407
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v4

    #@41
    .local v4, "token":I
    if-eqz v4, :cond_3

    #@43
    .line 2408
    const/16 v5, 0x64

    #@45
    if-ne v4, v5, :cond_4

    #@47
    .line 2409
    new-instance v3, Landroid/content/SyncStatusInfo;

    #@49
    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    #@4c
    .line 2410
    .local v3, "status":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@4e
    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    #@50
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@53
    move-result v5

    #@54
    if-ltz v5, :cond_1

    #@56
    .line 2411
    const/4 v5, 0x0

    #@57
    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    #@59
    .line 2412
    const-string/jumbo v5, "SyncManagerFile"

    #@5c
    const/4 v6, 0x2

    #@5d
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@60
    move-result v5

    #@61
    if-eqz v5, :cond_2

    #@63
    .line 2413
    const-string/jumbo v5, "SyncManagerFile"

    #@66
    new-instance v6, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v7, "Adding status for id "

    #@6e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 2415
    :cond_2
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@81
    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    #@83
    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@86
    goto :goto_0

    #@87
    .line 2423
    .end local v0    # "data":[B
    .end local v2    # "in":Landroid/os/Parcel;
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    .end local v4    # "token":I
    :catch_0
    move-exception v1

    #@88
    .line 2424
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SyncManager"

    #@8b
    const-string/jumbo v6, "No initial status"

    #@8e
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 2397
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void

    #@92
    .line 2419
    .restart local v0    # "data":[B
    .restart local v2    # "in":Landroid/os/Parcel;
    .restart local v4    # "token":I
    :cond_4
    :try_start_1
    const-string/jumbo v5, "SyncManager"

    #@95
    new-instance v6, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v7, "Unknown status token: "

    #@9d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v6

    #@a5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@ac
    goto :goto_1
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    #@0
    .prologue
    .line 1750
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@2
    new-instance v3, Landroid/accounts/AccountAndUser;

    #@4
    invoke-direct {v3, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@7
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@d
    .line 1751
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_0

    #@f
    .line 1752
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@11
    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@17
    .line 1753
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_0

    #@19
    .line 1754
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@1b
    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@1d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    #@20
    .line 1755
    if-eqz p4, :cond_0

    #@22
    .line 1756
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@25
    .line 1749
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    return-void
.end method

.method private reportChange(I)V
    .locals 8
    .param p1, "which"    # I

    #@0
    .prologue
    .line 615
    const/4 v3, 0x0

    #@1
    .line 616
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v6

    #@4
    .line 617
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@6
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    .local v1, "i":I
    move-object v4, v3

    #@b
    .line 618
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v4, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    #@d
    .line 619
    add-int/lit8 v1, v1, -0x1

    #@f
    .line 620
    :try_start_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@11
    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/Integer;

    #@17
    .line 621
    .local v2, "mask":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v5

    #@1b
    and-int/2addr v5, p1

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 624
    if-nez v4, :cond_4

    #@20
    .line 625
    new-instance v3, Ljava/util/ArrayList;

    #@22
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 627
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@27
    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Landroid/content/ISyncStatusObserver;

    #@2d
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    move-object v4, v3

    #@31
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_0

    #@32
    .line 629
    .end local v2    # "mask":Ljava/lang/Integer;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@34
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@37
    monitor-exit v6

    #@38
    .line 632
    const-string/jumbo v5, "SyncManager"

    #@3b
    const/4 v6, 0x2

    #@3c
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_2

    #@42
    .line 633
    const-string/jumbo v5, "SyncManager"

    #@45
    new-instance v6, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v7, "reportChange "

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    const-string/jumbo v7, " to: "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 636
    :cond_2
    if-eqz v4, :cond_3

    #@69
    .line 637
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6c
    move-result v1

    #@6d
    .line 638
    :goto_2
    if-lez v1, :cond_3

    #@6f
    .line 639
    add-int/lit8 v1, v1, -0x1

    #@71
    .line 641
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v5

    #@75
    check-cast v5, Landroid/content/ISyncStatusObserver;

    #@77
    invoke-interface {v5, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@7a
    goto :goto_2

    #@7b
    .line 642
    :catch_0
    move-exception v0

    #@7c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@7d
    .line 616
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :catchall_0
    move-exception v5

    #@7e
    :goto_3
    monitor-exit v6

    #@7f
    throw v5

    #@80
    .line 614
    .restart local v1    # "i":I
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_3
    return-void

    #@81
    .line 616
    :catchall_1
    move-exception v5

    #@82
    move-object v3, v4

    #@83
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_3

    #@84
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "mask":Ljava/lang/Integer;
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_4
    move-object v3, v4

    #@85
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_1
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2743
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 2744
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2745
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@e
    .line 2746
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@10
    invoke-direct {v1, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@13
    .line 2745
    invoke-interface {v0, v1, p3, p5}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    #@16
    .line 2738
    :goto_0
    return-void

    #@17
    .line 2750
    :cond_0
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@1a
    goto :goto_0
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2717
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x3e8

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 2718
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2719
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@e
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@10
    invoke-interface {v1, v2, p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    #@13
    .line 2716
    :goto_0
    return-void

    #@14
    .line 2722
    :cond_0
    new-instance v1, Landroid/content/SyncRequest$Builder;

    #@16
    invoke-direct {v1}, Landroid/content/SyncRequest$Builder;-><init>()V

    #@19
    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    #@20
    move-result-object v0

    #@21
    .line 2725
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@23
    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 2726
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@29
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@2b
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2d
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@2f
    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    #@32
    .line 2733
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    #@35
    move-result-object v1

    #@36
    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    #@39
    goto :goto_0

    #@3a
    .line 2728
    :cond_1
    const-string/jumbo v1, "SyncManager"

    #@3d
    const/4 v2, 0x3

    #@3e
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_2

    #@44
    .line 2729
    const-string/jumbo v1, "SyncManager"

    #@47
    const-string/jumbo v2, "Unknown target, skipping sync request."

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 2731
    :cond_2
    return-void
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "nextSyncTime"    # J
    .param p6, "nextDelay"    # J

    #@0
    .prologue
    .line 846
    const/4 v4, 0x0

    #@1
    .line 847
    .local v4, "changed":Z
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@3
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v5

    #@7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "accountInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_6

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@17
    .line 848
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_1

    #@19
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@1b
    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@1d
    invoke-virtual {p1, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_5

    #@23
    .line 852
    :cond_1
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@25
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@28
    move-result-object v5

    #@29
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v3

    #@2d
    .local v3, "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_0

    #@33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@39
    .line 853
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_3

    #@3b
    .line 854
    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3d
    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@3f
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v5

    #@43
    if-eqz v5, :cond_2

    #@45
    .line 857
    :cond_3
    iget-wide v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@47
    cmp-long v5, v6, p4

    #@49
    if-nez v5, :cond_4

    #@4b
    .line 858
    iget-wide v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@4d
    cmp-long v5, v6, p6

    #@4f
    if-eqz v5, :cond_2

    #@51
    .line 859
    :cond_4
    iput-wide p4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@53
    .line 860
    iput-wide p6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@55
    .line 861
    const/4 v4, 0x1

    #@56
    goto :goto_1

    #@57
    .line 849
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@59
    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    #@5b
    if-eq p2, v5, :cond_1

    #@5d
    goto :goto_0

    #@5e
    .line 865
    .end local v0    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_6
    return v4
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V
    .locals 6
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    .line 764
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@4
    monitor-enter v2

    #@5
    .line 765
    const/4 v1, -0x1

    #@6
    const/4 v3, 0x0

    #@7
    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@a
    move-result-object v0

    #@b
    .line 766
    .local v0, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-ge p2, v4, :cond_0

    #@d
    .line 767
    const/4 p2, -0x1

    #@e
    .line 769
    :cond_0
    const-string/jumbo v1, "SyncManager"

    #@11
    const/4 v3, 0x2

    #@12
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 770
    const-string/jumbo v1, "SyncManager"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "setIsSyncable: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    const-string/jumbo v4, " -> "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 772
    :cond_1
    iget v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@43
    if-ne v1, p2, :cond_3

    #@45
    .line 773
    const-string/jumbo v1, "SyncManager"

    #@48
    const/4 v3, 0x2

    #@49
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_2

    #@4f
    .line 774
    const-string/jumbo v1, "SyncManager"

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "setIsSyncable: already set to "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    const-string/jumbo v4, ", doing nothing"

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    :cond_2
    monitor-exit v2

    #@71
    .line 776
    return-void

    #@72
    .line 778
    :cond_3
    :try_start_1
    iput p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@74
    .line 779
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    monitor-exit v2

    #@78
    .line 781
    if-ne p2, v5, :cond_4

    #@7a
    .line 782
    new-instance v1, Landroid/os/Bundle;

    #@7c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@7f
    const/4 v2, -0x5

    #@80
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V

    #@83
    .line 784
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@86
    .line 762
    return-void

    #@87
    .line 764
    .end local v0    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    #@88
    monitor-exit v2

    #@89
    throw v1
.end method

.method private static unflattenBundle([B)Landroid/os/Bundle;
    .locals 5
    .param p0, "flatData"    # [B

    #@0
    .prologue
    .line 2577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v2

    #@4
    .line 2579
    .local v2, "parcel":Landroid/os/Parcel;
    :try_start_0
    array-length v3, p0

    #@5
    const/4 v4, 0x0

    #@6
    invoke-virtual {v2, p0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    #@9
    .line 2580
    const/4 v3, 0x0

    #@a
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    #@d
    .line 2581
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v0

    #@11
    .line 2587
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@14
    .line 2589
    :goto_0
    return-object v0

    #@15
    .line 2582
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    #@16
    .line 2585
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    #@18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 2587
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@1e
    goto :goto_0

    #@1f
    .line 2586
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    #@20
    .line 2587
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 2586
    throw v3
.end method

.method private writeAccountInfoLocked()V
    .locals 22

    #@0
    .prologue
    .line 2185
    const-string/jumbo v18, "SyncManagerFile"

    #@3
    const/16 v19, 0x2

    #@5
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v18

    #@9
    if-eqz v18, :cond_0

    #@b
    .line 2186
    const-string/jumbo v18, "SyncManagerFile"

    #@e
    new-instance v19, Ljava/lang/StringBuilder;

    #@10
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v20, "Writing new "

    #@16
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v19

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@1e
    move-object/from16 v20, v0

    #@20
    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@23
    move-result-object v20

    #@24
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v19

    #@28
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v19

    #@2c
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 2188
    :cond_0
    const/4 v9, 0x0

    #@30
    .line 2191
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@34
    move-object/from16 v18, v0

    #@36
    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@39
    move-result-object v9

    #@3a
    .line 2192
    .local v9, "fos":Ljava/io/FileOutputStream;
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    #@3c
    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@3f
    .line 2193
    .local v14, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@41
    invoke-virtual/range {v18 .. v18}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@44
    move-result-object v18

    #@45
    move-object/from16 v0, v18

    #@47
    invoke-interface {v14, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@4a
    .line 2194
    const/16 v18, 0x1

    #@4c
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4f
    move-result-object v18

    #@50
    const/16 v19, 0x0

    #@52
    move-object/from16 v0, v19

    #@54
    move-object/from16 v1, v18

    #@56
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@59
    .line 2195
    const-string/jumbo v18, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@5c
    const/16 v19, 0x1

    #@5e
    move-object/from16 v0, v18

    #@60
    move/from16 v1, v19

    #@62
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@65
    .line 2197
    const-string/jumbo v18, "accounts"

    #@68
    const/16 v19, 0x0

    #@6a
    move-object/from16 v0, v19

    #@6c
    move-object/from16 v1, v18

    #@6e
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@71
    .line 2198
    const-string/jumbo v18, "version"

    #@74
    const/16 v19, 0x2

    #@76
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@79
    move-result-object v19

    #@7a
    const/16 v20, 0x0

    #@7c
    move-object/from16 v0, v20

    #@7e
    move-object/from16 v1, v18

    #@80
    move-object/from16 v2, v19

    #@82
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@85
    .line 2199
    const-string/jumbo v18, "nextAuthorityId"

    #@88
    move-object/from16 v0, p0

    #@8a
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@8c
    move/from16 v19, v0

    #@8e
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@91
    move-result-object v19

    #@92
    const/16 v20, 0x0

    #@94
    move-object/from16 v0, v20

    #@96
    move-object/from16 v1, v18

    #@98
    move-object/from16 v2, v19

    #@9a
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9d
    .line 2200
    const-string/jumbo v18, "offsetInSeconds"

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    #@a4
    move/from16 v19, v0

    #@a6
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a9
    move-result-object v19

    #@aa
    const/16 v20, 0x0

    #@ac
    move-object/from16 v0, v20

    #@ae
    move-object/from16 v1, v18

    #@b0
    move-object/from16 v2, v19

    #@b2
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b5
    .line 2203
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@b9
    move-object/from16 v18, v0

    #@bb
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    #@be
    move-result v4

    #@bf
    .line 2204
    .local v4, "M":I
    const/4 v13, 0x0

    #@c0
    .local v13, "m":I
    :goto_0
    if-ge v13, v4, :cond_1

    #@c2
    .line 2205
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@c6
    move-object/from16 v18, v0

    #@c8
    move-object/from16 v0, v18

    #@ca
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    #@cd
    move-result v17

    #@ce
    .line 2206
    .local v17, "userId":I
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@d2
    move-object/from16 v18, v0

    #@d4
    move-object/from16 v0, v18

    #@d6
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@d9
    move-result-object v12

    #@da
    check-cast v12, Ljava/lang/Boolean;

    #@dc
    .line 2207
    .local v12, "listen":Ljava/lang/Boolean;
    const-string/jumbo v18, "listenForTickles"

    #@df
    const/16 v19, 0x0

    #@e1
    move-object/from16 v0, v19

    #@e3
    move-object/from16 v1, v18

    #@e5
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e8
    .line 2208
    const-string/jumbo v18, "user"

    #@eb
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ee
    move-result-object v19

    #@ef
    const/16 v20, 0x0

    #@f1
    move-object/from16 v0, v20

    #@f3
    move-object/from16 v1, v18

    #@f5
    move-object/from16 v2, v19

    #@f7
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@fa
    .line 2209
    const-string/jumbo v18, "enabled"

    #@fd
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    #@100
    move-result v19

    #@101
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@104
    move-result-object v19

    #@105
    const/16 v20, 0x0

    #@107
    move-object/from16 v0, v20

    #@109
    move-object/from16 v1, v18

    #@10b
    move-object/from16 v2, v19

    #@10d
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@110
    .line 2210
    const-string/jumbo v18, "listenForTickles"

    #@113
    const/16 v19, 0x0

    #@115
    move-object/from16 v0, v19

    #@117
    move-object/from16 v1, v18

    #@119
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11c
    .line 2204
    add-int/lit8 v13, v13, 0x1

    #@11e
    goto :goto_0

    #@11f
    .line 2213
    .end local v12    # "listen":Ljava/lang/Boolean;
    .end local v17    # "userId":I
    :cond_1
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@123
    move-object/from16 v18, v0

    #@125
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    #@128
    move-result v5

    #@129
    .line 2214
    .local v5, "N":I
    const/4 v10, 0x0

    #@12a
    .local v10, "i":I
    :goto_1
    if-ge v10, v5, :cond_5

    #@12c
    .line 2215
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@130
    move-object/from16 v18, v0

    #@132
    move-object/from16 v0, v18

    #@134
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@137
    move-result-object v6

    #@138
    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@13a
    .line 2216
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@13c
    .line 2217
    .local v11, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string/jumbo v18, "authority"

    #@13f
    const/16 v19, 0x0

    #@141
    move-object/from16 v0, v19

    #@143
    move-object/from16 v1, v18

    #@145
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@148
    .line 2218
    const-string/jumbo v18, "id"

    #@14b
    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@14d
    move/from16 v19, v0

    #@14f
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@152
    move-result-object v19

    #@153
    const/16 v20, 0x0

    #@155
    move-object/from16 v0, v20

    #@157
    move-object/from16 v1, v18

    #@159
    move-object/from16 v2, v19

    #@15b
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15e
    .line 2219
    const-string/jumbo v18, "user"

    #@161
    iget v0, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@163
    move/from16 v19, v0

    #@165
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@168
    move-result-object v19

    #@169
    const/16 v20, 0x0

    #@16b
    move-object/from16 v0, v20

    #@16d
    move-object/from16 v1, v18

    #@16f
    move-object/from16 v2, v19

    #@171
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@174
    .line 2220
    const-string/jumbo v18, "enabled"

    #@177
    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@179
    move/from16 v19, v0

    #@17b
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@17e
    move-result-object v19

    #@17f
    const/16 v20, 0x0

    #@181
    move-object/from16 v0, v20

    #@183
    move-object/from16 v1, v18

    #@185
    move-object/from16 v2, v19

    #@187
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18a
    .line 2221
    iget-object v0, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@18c
    move-object/from16 v18, v0

    #@18e
    if-nez v18, :cond_3

    #@190
    .line 2222
    const-string/jumbo v18, "account"

    #@193
    iget-object v0, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@195
    move-object/from16 v19, v0

    #@197
    move-object/from16 v0, v19

    #@199
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@19b
    move-object/from16 v19, v0

    #@19d
    const/16 v20, 0x0

    #@19f
    move-object/from16 v0, v20

    #@1a1
    move-object/from16 v1, v18

    #@1a3
    move-object/from16 v2, v19

    #@1a5
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1a8
    .line 2223
    const-string/jumbo v18, "type"

    #@1ab
    iget-object v0, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@1ad
    move-object/from16 v19, v0

    #@1af
    move-object/from16 v0, v19

    #@1b1
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@1b3
    move-object/from16 v19, v0

    #@1b5
    const/16 v20, 0x0

    #@1b7
    move-object/from16 v0, v20

    #@1b9
    move-object/from16 v1, v18

    #@1bb
    move-object/from16 v2, v19

    #@1bd
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c0
    .line 2224
    const-string/jumbo v18, "authority"

    #@1c3
    iget-object v0, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1c5
    move-object/from16 v19, v0

    #@1c7
    const/16 v20, 0x0

    #@1c9
    move-object/from16 v0, v20

    #@1cb
    move-object/from16 v1, v18

    #@1cd
    move-object/from16 v2, v19

    #@1cf
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d2
    .line 2229
    :goto_2
    const-string/jumbo v18, "syncable"

    #@1d5
    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@1d7
    move/from16 v19, v0

    #@1d9
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1dc
    move-result-object v19

    #@1dd
    const/16 v20, 0x0

    #@1df
    move-object/from16 v0, v20

    #@1e1
    move-object/from16 v1, v18

    #@1e3
    move-object/from16 v2, v19

    #@1e5
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e8
    .line 2230
    iget-object v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@1ea
    move-object/from16 v18, v0

    #@1ec
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1ef
    move-result-object v16

    #@1f0
    .local v16, "periodicSync$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@1f3
    move-result v18

    #@1f4
    if-eqz v18, :cond_4

    #@1f6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f9
    move-result-object v15

    #@1fa
    check-cast v15, Landroid/content/PeriodicSync;

    #@1fc
    .line 2231
    .local v15, "periodicSync":Landroid/content/PeriodicSync;
    const-string/jumbo v18, "periodicSync"

    #@1ff
    const/16 v19, 0x0

    #@201
    move-object/from16 v0, v19

    #@203
    move-object/from16 v1, v18

    #@205
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@208
    .line 2232
    const-string/jumbo v18, "period"

    #@20b
    iget-wide v0, v15, Landroid/content/PeriodicSync;->period:J

    #@20d
    move-wide/from16 v20, v0

    #@20f
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@212
    move-result-object v19

    #@213
    const/16 v20, 0x0

    #@215
    move-object/from16 v0, v20

    #@217
    move-object/from16 v1, v18

    #@219
    move-object/from16 v2, v19

    #@21b
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@21e
    .line 2233
    const-string/jumbo v18, "flex"

    #@221
    iget-wide v0, v15, Landroid/content/PeriodicSync;->flexTime:J

    #@223
    move-wide/from16 v20, v0

    #@225
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@228
    move-result-object v19

    #@229
    const/16 v20, 0x0

    #@22b
    move-object/from16 v0, v20

    #@22d
    move-object/from16 v1, v18

    #@22f
    move-object/from16 v2, v19

    #@231
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@234
    .line 2234
    iget-object v8, v15, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@236
    .line 2235
    .local v8, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@238
    invoke-direct {v0, v14, v8}, Lcom/android/server/content/SyncStorageEngine;->extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    #@23b
    .line 2236
    const-string/jumbo v18, "periodicSync"

    #@23e
    const/16 v19, 0x0

    #@240
    move-object/from16 v0, v19

    #@242
    move-object/from16 v1, v18

    #@244
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@247
    goto :goto_3

    #@248
    .line 2243
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "i":I
    .end local v11    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v13    # "m":I
    .end local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v15    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v16    # "periodicSync$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    #@249
    .line 2244
    .local v7, "e1":Ljava/io/IOException;
    const-string/jumbo v18, "SyncManager"

    #@24c
    const-string/jumbo v19, "Error writing accounts"

    #@24f
    move-object/from16 v0, v18

    #@251
    move-object/from16 v1, v19

    #@253
    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@256
    .line 2245
    if-eqz v9, :cond_2

    #@258
    .line 2246
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@25c
    move-object/from16 v18, v0

    #@25e
    move-object/from16 v0, v18

    #@260
    invoke-virtual {v0, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@263
    .line 2184
    .end local v7    # "e1":Ljava/io/IOException;
    :cond_2
    :goto_4
    return-void

    #@264
    .line 2226
    .restart local v4    # "M":I
    .restart local v5    # "N":I
    .restart local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "i":I
    .restart local v11    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v13    # "m":I
    .restart local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    :try_start_1
    const-string/jumbo v18, "package"

    #@267
    iget-object v0, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@269
    move-object/from16 v19, v0

    #@26b
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@26e
    move-result-object v19

    #@26f
    const/16 v20, 0x0

    #@271
    move-object/from16 v0, v20

    #@273
    move-object/from16 v1, v18

    #@275
    move-object/from16 v2, v19

    #@277
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27a
    .line 2227
    const-string/jumbo v18, "class"

    #@27d
    iget-object v0, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@27f
    move-object/from16 v19, v0

    #@281
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@284
    move-result-object v19

    #@285
    const/16 v20, 0x0

    #@287
    move-object/from16 v0, v20

    #@289
    move-object/from16 v1, v18

    #@28b
    move-object/from16 v2, v19

    #@28d
    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@290
    goto/16 :goto_2

    #@292
    .line 2238
    .restart local v16    # "periodicSync$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v18, "authority"

    #@295
    const/16 v19, 0x0

    #@297
    move-object/from16 v0, v19

    #@299
    move-object/from16 v1, v18

    #@29b
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29e
    .line 2214
    add-int/lit8 v10, v10, 0x1

    #@2a0
    goto/16 :goto_1

    #@2a2
    .line 2240
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v16    # "periodicSync$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v18, "accounts"

    #@2a5
    const/16 v19, 0x0

    #@2a7
    move-object/from16 v0, v19

    #@2a9
    move-object/from16 v1, v18

    #@2ab
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2ae
    .line 2241
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@2b1
    .line 2242
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@2b5
    move-object/from16 v18, v0

    #@2b7
    move-object/from16 v0, v18

    #@2b9
    invoke-virtual {v0, v9}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@2bc
    goto :goto_4
.end method

.method private writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "pop"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2637
    const-string/jumbo v0, "op"

    #@4
    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 2639
    const-string/jumbo v0, "version"

    #@a
    const/4 v1, 0x3

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 2640
    const-string/jumbo v0, "authority_id"

    #@15
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 2641
    const-string/jumbo v0, "source"

    #@21
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2a
    .line 2642
    const-string/jumbo v0, "expedited"

    #@2d
    iget-boolean v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    #@2f
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 2643
    const-string/jumbo v0, "reason"

    #@39
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    #@3b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 2644
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    #@44
    invoke-direct {p0, p2, v0}, Lcom/android/server/content/SyncStorageEngine;->extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    #@47
    .line 2646
    const-string/jumbo v0, "op"

    #@4a
    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 2635
    return-void
.end method

.method private writePendingOperationsLocked()V
    .locals 9

    #@0
    .prologue
    .line 2602
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 2603
    .local v0, "N":I
    const/4 v2, 0x0

    #@7
    .line 2605
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-nez v0, :cond_1

    #@9
    .line 2606
    :try_start_0
    const-string/jumbo v6, "SyncManagerFile"

    #@c
    const/4 v7, 0x2

    #@d
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 2607
    const-string/jumbo v6, "SyncManager"

    #@16
    new-instance v7, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v8, "Truncating "

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@24
    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 2609
    :cond_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@35
    invoke-virtual {v6}, Landroid/util/AtomicFile;->truncate()V

    #@38
    .line 2610
    return-void

    #@39
    .line 2612
    :cond_1
    const-string/jumbo v6, "SyncManagerFile"

    #@3c
    const/4 v7, 0x2

    #@3d
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_2

    #@43
    .line 2613
    const-string/jumbo v6, "SyncManager"

    #@46
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v8, "Writing new "

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@54
    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 2615
    :cond_2
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@65
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@68
    move-result-object v2

    #@69
    .line 2616
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    #@6b
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@6e
    .line 2617
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@70
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@77
    .line 2619
    const/4 v3, 0x0

    #@78
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@7a
    .line 2620
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v5

    #@80
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@82
    .line 2621
    .local v5, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    invoke-direct {p0, v5, v4}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V

    #@85
    .line 2619
    add-int/lit8 v3, v3, 0x1

    #@87
    goto :goto_0

    #@88
    .line 2623
    .end local v5    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@8b
    .line 2624
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@8d
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    .line 2601
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    :goto_1
    return-void

    #@91
    .line 2625
    :catch_0
    move-exception v1

    #@92
    .line 2626
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    #@95
    const-string/jumbo v7, "Error writing pending operations"

    #@98
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9b
    .line 2627
    if-eqz v2, :cond_4

    #@9d
    .line 2628
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    #@9f
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@a2
    goto :goto_1
.end method

.method private writeStatisticsLocked()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 2800
    const-string/jumbo v6, "SyncManagerFile"

    #@4
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_0

    #@a
    .line 2801
    const-string/jumbo v6, "SyncManager"

    #@d
    new-instance v7, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v8, "Writing new "

    #@15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@1b
    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2806
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    #@2d
    .line 2808
    const/4 v3, 0x0

    #@2e
    .line 2810
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@30
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@33
    move-result-object v3

    #@34
    .line 2811
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@37
    move-result-object v5

    #@38
    .line 2812
    .local v5, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@3a
    array-length v0, v6

    #@3b
    .line 2813
    .local v0, "N":I
    const/4 v4, 0x0

    #@3c
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@3e
    .line 2814
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@40
    aget-object v1, v6, v4

    #@42
    .line 2815
    .local v1, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_3

    #@44
    .line 2825
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_1
    const/4 v6, 0x0

    #@45
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 2826
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    #@4f
    .line 2827
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 2829
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@54
    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@57
    .line 2799
    .end local v0    # "N":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    #@58
    .line 2818
    .restart local v0    # "N":I
    .restart local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "out":Landroid/os/Parcel;
    :cond_3
    const/16 v6, 0x65

    #@5a
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 2819
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@5f
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    .line 2820
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@64
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    .line 2821
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@69
    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@6c
    .line 2822
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@6e
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    .line 2823
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@73
    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@76
    .line 2813
    add-int/lit8 v4, v4, 0x1

    #@78
    goto :goto_0

    #@79
    .line 2830
    .end local v0    # "N":I
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :catch_0
    move-exception v2

    #@7a
    .line 2831
    .local v2, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    #@7d
    const-string/jumbo v7, "Error writing stats"

    #@80
    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@83
    .line 2832
    if-eqz v3, :cond_2

    #@85
    .line 2833
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@87
    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@8a
    goto :goto_1
.end method

.method private writeStatusLocked()V
    .locals 9

    #@0
    .prologue
    .line 2432
    const-string/jumbo v6, "SyncManagerFile"

    #@3
    const/4 v7, 0x2

    #@4
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_0

    #@a
    .line 2433
    const-string/jumbo v6, "SyncManagerFile"

    #@d
    new-instance v7, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v8, "Writing new "

    #@15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@1b
    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2438
    :cond_0
    const/4 v6, 0x1

    #@2b
    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    #@2e
    .line 2440
    const/4 v2, 0x0

    #@2f
    .line 2442
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@31
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@34
    move-result-object v2

    #@35
    .line 2443
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@38
    move-result-object v4

    #@39
    .line 2444
    .local v4, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@3b
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@3e
    move-result v0

    #@3f
    .line 2445
    .local v0, "N":I
    const/4 v3, 0x0

    #@40
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@42
    .line 2446
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@44
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    check-cast v5, Landroid/content/SyncStatusInfo;

    #@4a
    .line 2447
    .local v5, "status":Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    #@4c
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 2448
    const/4 v6, 0x0

    #@50
    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@53
    .line 2445
    add-int/lit8 v3, v3, 0x1

    #@55
    goto :goto_0

    #@56
    .line 2450
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    :cond_1
    const/4 v6, 0x0

    #@57
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 2451
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    #@61
    .line 2452
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@64
    .line 2454
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@66
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    .line 2431
    .end local v0    # "N":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    #@6a
    .line 2455
    :catch_0
    move-exception v1

    #@6b
    .line 2456
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    #@6e
    const-string/jumbo v7, "Error writing status"

    #@71
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@74
    .line 2457
    if-eqz v2, :cond_2

    #@76
    .line 2458
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@78
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@7b
    goto :goto_1
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .locals 9
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    #@0
    .prologue
    .line 1260
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v8

    #@3
    .line 1261
    :try_start_0
    const-string/jumbo v1, "SyncManager"

    #@6
    const/4 v2, 0x2

    #@7
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1262
    const-string/jumbo v1, "SyncManager"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "setActiveSync: account= auth="

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 1263
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@1e
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@20
    .line 1262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 1264
    const-string/jumbo v3, " src="

    #@27
    .line 1262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 1264
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2d
    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@2f
    .line 1262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 1265
    const-string/jumbo v3, " extras="

    #@36
    .line 1262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 1265
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@3c
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@3e
    .line 1262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 1267
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@4b
    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4d
    .line 1270
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v1, -0x1

    #@4e
    .line 1271
    const/4 v2, 0x1

    #@4f
    .line 1268
    invoke-direct {p0, v7, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@52
    move-result-object v6

    #@53
    .line 1272
    .local v6, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Landroid/content/SyncInfo;

    #@55
    .line 1273
    iget v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@57
    .line 1274
    iget-object v2, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@59
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@5b
    .line 1275
    iget-object v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5d
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@5f
    .line 1276
    iget-wide v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@61
    .line 1272
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    #@64
    .line 1277
    .local v0, "syncInfo":Landroid/content/SyncInfo;
    iget-object v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@66
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@68
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    #@6b
    move-result-object v1

    #@6c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6f
    monitor-exit v8

    #@70
    .line 1279
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    #@73
    .line 1280
    return-object v0

    #@74
    .line 1260
    .end local v0    # "syncInfo":Landroid/content/SyncInfo;
    .end local v6    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_0
    move-exception v1

    #@75
    monitor-exit v8

    #@76
    throw v1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    #@0
    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 580
    return-void

    #@e
    .line 581
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public clearAllBackoffsLocked(Lcom/android/server/content/SyncQueue;)V
    .locals 18
    .param p1, "syncQueue"    # Lcom/android/server/content/SyncQueue;

    #@0
    .prologue
    .line 869
    const/4 v7, 0x0

    #@1
    .line 870
    .local v7, "changed":Z
    move-object/from16 v0, p0

    #@3
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@5
    monitor-enter v12

    #@6
    .line 872
    :try_start_0
    move-object/from16 v0, p0

    #@8
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@a
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@d
    move-result-object v11

    #@e
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v4

    #@12
    .local v4, "accountInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v11

    #@16
    if-eqz v11, :cond_4

    #@18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@1e
    .line 873
    .local v3, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v11, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@20
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@23
    move-result-object v11

    #@24
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v6

    #@28
    .local v6, "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v11

    #@2c
    if-eqz v11, :cond_0

    #@2e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@34
    .line 874
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@36
    const-wide/16 v16, -0x1

    #@38
    cmp-long v11, v14, v16

    #@3a
    if-nez v11, :cond_2

    #@3c
    .line 875
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@3e
    const-wide/16 v16, -0x1

    #@40
    cmp-long v11, v14, v16

    #@42
    if-eqz v11, :cond_1

    #@44
    .line 876
    :cond_2
    const-string/jumbo v11, "SyncManager"

    #@47
    const/4 v13, 0x2

    #@48
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@4b
    move-result v11

    #@4c
    if-eqz v11, :cond_3

    #@4e
    .line 877
    const-string/jumbo v11, "SyncManager"

    #@51
    new-instance v13, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v14, "clearAllBackoffsLocked: authority:"

    #@59
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v13

    #@5d
    .line 878
    iget-object v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5f
    .line 877
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v13

    #@63
    .line 879
    const-string/jumbo v14, " account:"

    #@66
    .line 877
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v13

    #@6a
    .line 879
    iget-object v14, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@6c
    iget-object v14, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@6e
    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@70
    .line 877
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v13

    #@74
    .line 880
    const-string/jumbo v14, " user:"

    #@77
    .line 877
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v13

    #@7b
    .line 880
    iget-object v14, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@7d
    iget v14, v14, Landroid/accounts/AccountAndUser;->userId:I

    #@7f
    .line 877
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v13

    #@83
    .line 881
    const-string/jumbo v14, " backoffTime was: "

    #@86
    .line 877
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v13

    #@8a
    .line 881
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@8c
    .line 877
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v13

    #@90
    .line 882
    const-string/jumbo v14, " backoffDelay was: "

    #@93
    .line 877
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v13

    #@97
    .line 882
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@99
    .line 877
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v13

    #@9d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v13

    #@a1
    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 884
    :cond_3
    const-wide/16 v14, -0x1

    #@a6
    iput-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@a8
    .line 885
    const-wide/16 v14, -0x1

    #@aa
    iput-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@ac
    .line 886
    const/4 v7, 0x1

    #@ad
    goto/16 :goto_0

    #@af
    .line 891
    .end local v3    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    #@b1
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@b3
    invoke-virtual {v11}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@b6
    move-result-object v11

    #@b7
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ba
    move-result-object v10

    #@bb
    .local v10, "service$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@be
    move-result v11

    #@bf
    if-eqz v11, :cond_8

    #@c1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c4
    move-result-object v9

    #@c5
    check-cast v9, Landroid/content/ComponentName;

    #@c7
    .line 892
    .local v9, "service":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@c9
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@cb
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    move-result-object v2

    #@cf
    check-cast v2, Landroid/util/SparseArray;

    #@d1
    .line 893
    .local v2, "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v8, 0x0

    #@d2
    .local v8, "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@d5
    move-result v11

    #@d6
    if-ge v8, v11, :cond_7

    #@d8
    .line 894
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@db
    move-result-object v5

    #@dc
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@de
    .line 895
    .restart local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@e0
    const-wide/16 v16, -0x1

    #@e2
    cmp-long v11, v14, v16

    #@e4
    if-nez v11, :cond_5

    #@e6
    .line 896
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@e8
    const-wide/16 v16, -0x1

    #@ea
    cmp-long v11, v14, v16

    #@ec
    if-eqz v11, :cond_6

    #@ee
    .line 897
    :cond_5
    const-wide/16 v14, -0x1

    #@f0
    iput-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@f2
    .line 898
    const-wide/16 v14, -0x1

    #@f4
    iput-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@f6
    .line 893
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@f8
    goto :goto_2

    #@f9
    .line 901
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncQueue;->clearBackoffs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@fc
    goto :goto_1

    #@fd
    .line 870
    .end local v2    # "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v4    # "accountInfo$iterator":Ljava/util/Iterator;
    .end local v8    # "i":I
    .end local v9    # "service":Landroid/content/ComponentName;
    .end local v10    # "service$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    #@fe
    monitor-exit v12

    #@ff
    throw v11

    #@100
    .restart local v4    # "accountInfo$iterator":Ljava/util/Iterator;
    .restart local v10    # "service$iterator":Ljava/util/Iterator;
    :cond_8
    monitor-exit v12

    #@101
    .line 905
    if-eqz v7, :cond_9

    #@103
    .line 906
    const/4 v11, 0x1

    #@104
    move-object/from16 v0, p0

    #@106
    invoke-direct {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@109
    .line 868
    :cond_9
    return-void
.end method

.method public clearAndReadState()V
    .locals 2

    #@0
    .prologue
    .line 1814
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1815
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@8
    .line 1816
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@d
    .line 1817
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@12
    .line 1818
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@17
    .line 1819
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@1c
    .line 1820
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@21
    .line 1822
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    #@24
    .line 1823
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    #@27
    .line 1824
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readPendingOperationsLocked()V

    #@2a
    .line 1825
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    #@2d
    .line 1826
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    #@30
    .line 1827
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@33
    .line 1828
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@36
    .line 1829
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    #@39
    .line 1830
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v1

    #@3d
    .line 1813
    return-void

    #@3e
    .line 1814
    :catchall_0
    move-exception v0

    #@3f
    monitor-exit v1

    #@40
    throw v0
.end method

.method public deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .locals 12
    .param p1, "op"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    .line 1136
    const/4 v5, 0x0

    #@2
    .line 1137
    .local v5, "res":Z
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@4
    monitor-enter v8

    #@5
    .line 1138
    :try_start_0
    const-string/jumbo v7, "SyncManager"

    #@8
    const/4 v9, 0x2

    #@9
    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v7

    #@d
    if-eqz v7, :cond_0

    #@f
    .line 1139
    const-string/jumbo v7, "SyncManager"

    #@12
    new-instance v9, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v10, "deleteFromPending: account="

    #@1a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {p1}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->toString()Ljava/lang/String;

    #@21
    move-result-object v10

    #@22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v9

    #@26
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v9

    #@2a
    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1141
    :cond_0
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_6

    #@35
    .line 1142
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_1

    #@3d
    .line 1143
    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    #@3f
    const/4 v9, 0x4

    #@40
    if-lt v7, v9, :cond_7

    #@42
    .line 1144
    :cond_1
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    #@45
    .line 1145
    const/4 v7, 0x0

    #@46
    iput v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    #@48
    .line 1149
    :goto_0
    iget-object v7, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4a
    const-string/jumbo v9, "deleteFromPending"

    #@4d
    invoke-direct {p0, v7, v9}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@50
    move-result-object v1

    #@51
    .line 1150
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_5

    #@53
    .line 1151
    const-string/jumbo v7, "SyncManager"

    #@56
    const/4 v9, 0x2

    #@57
    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_2

    #@5d
    .line 1152
    const-string/jumbo v7, "SyncManager"

    #@60
    new-instance v9, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v10, "removing - "

    #@68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    #@6f
    move-result-object v10

    #@70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 1154
    :cond_2
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@7d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@80
    move-result v0

    #@81
    .line 1155
    .local v0, "N":I
    const/4 v4, 0x0

    #@82
    .line 1156
    .local v4, "morePending":Z
    const/4 v3, 0x0

    #@83
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    #@85
    .line 1157
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@87
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v2

    #@8b
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@8d
    .line 1158
    .local v2, "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->equals(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    #@90
    move-result v7

    #@91
    if-eqz v7, :cond_8

    #@93
    .line 1159
    const/4 v4, 0x1

    #@94
    .line 1164
    .end local v2    # "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_3
    if-nez v4, :cond_5

    #@96
    .line 1165
    const-string/jumbo v7, "SyncManager"

    #@99
    const/4 v9, 0x2

    #@9a
    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@9d
    move-result v7

    #@9e
    if-eqz v7, :cond_4

    #@a0
    const-string/jumbo v7, "SyncManager"

    #@a3
    const-string/jumbo v9, "no more pending!"

    #@a6
    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 1166
    :cond_4
    iget v7, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@ab
    invoke-direct {p0, v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    #@ae
    move-result-object v6

    #@af
    .line 1167
    .local v6, "status":Landroid/content/SyncStatusInfo;
    const/4 v7, 0x0

    #@b0
    iput-boolean v7, v6, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b2
    .line 1170
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "morePending":Z
    .end local v6    # "status":Landroid/content/SyncStatusInfo;
    :cond_5
    const/4 v5, 0x1

    #@b3
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_6
    monitor-exit v8

    #@b4
    .line 1174
    invoke-direct {p0, v11}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@b7
    .line 1175
    return v5

    #@b8
    .line 1147
    :cond_7
    :try_start_1
    iget v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    #@ba
    add-int/lit8 v7, v7, 0x1

    #@bc
    iput v7, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@be
    goto :goto_0

    #@bf
    .line 1137
    :catchall_0
    move-exception v7

    #@c0
    monitor-exit v8

    #@c1
    throw v7

    #@c2
    .line 1156
    .restart local v0    # "N":I
    .restart local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2    # "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v3    # "i":I
    .restart local v4    # "morePending":Z
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@c4
    goto :goto_1
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .locals 12
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1203
    iget-object v9, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v9

    #@3
    .line 1204
    :try_start_0
    const-string/jumbo v8, "SyncManager"

    #@6
    const/4 v10, 0x2

    #@7
    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_0

    #@d
    .line 1205
    const-string/jumbo v8, "SyncManager"

    #@10
    const-string/jumbo v10, "Updating for new accounts..."

    #@13
    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1207
    :cond_0
    new-instance v7, Landroid/util/SparseArray;

    #@18
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    #@1b
    .line 1208
    .local v7, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@20
    move-result-object v8

    #@21
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .line 1209
    .local v1, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_4

    #@2b
    .line 1210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@31
    .line 1211
    .local v0, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@33
    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@35
    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@38
    move-result v8

    #@39
    if-nez v8, :cond_1

    #@3b
    .line 1212
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@3d
    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    #@3f
    if-ne v8, p2, :cond_1

    #@41
    .line 1214
    const-string/jumbo v8, "SyncManager"

    #@44
    const/4 v10, 0x2

    #@45
    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@48
    move-result v8

    #@49
    if-eqz v8, :cond_2

    #@4b
    .line 1215
    const-string/jumbo v8, "SyncManager"

    #@4e
    new-instance v10, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v11, "Account removed: "

    #@56
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@5c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 1217
    :cond_2
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@69
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6c
    move-result-object v8

    #@6d
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@70
    move-result-object v3

    #@71
    .local v3, "auth$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@74
    move-result v8

    #@75
    if-eqz v8, :cond_3

    #@77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7a
    move-result-object v2

    #@7b
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@7d
    .line 1218
    .local v2, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@7f
    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    goto :goto_1

    #@83
    .line 1203
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "auth$iterator":Ljava/util/Iterator;
    .end local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_0
    move-exception v8

    #@84
    monitor-exit v9

    #@85
    throw v8

    #@86
    .line 1220
    .restart local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .restart local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v3    # "auth$iterator":Ljava/util/Iterator;
    .restart local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@89
    goto :goto_0

    #@8a
    .line 1225
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v3    # "auth$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@8d
    move-result v4

    #@8e
    .line 1226
    .local v4, "i":I
    if-lez v4, :cond_a

    #@90
    .line 1227
    :cond_5
    if-lez v4, :cond_9

    #@92
    .line 1228
    add-int/lit8 v4, v4, -0x1

    #@94
    .line 1229
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    #@97
    move-result v5

    #@98
    .line 1230
    .local v5, "ident":I
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@9a
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    #@9d
    .line 1231
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@9f
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@a2
    move-result v6

    #@a3
    .line 1232
    .local v6, "j":I
    :cond_6
    :goto_2
    if-lez v6, :cond_7

    #@a5
    .line 1233
    add-int/lit8 v6, v6, -0x1

    #@a7
    .line 1234
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@a9
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@ac
    move-result v8

    #@ad
    if-ne v8, v5, :cond_6

    #@af
    .line 1235
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@b1
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@b3
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@b6
    move-result v10

    #@b7
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    #@ba
    goto :goto_2

    #@bb
    .line 1238
    :cond_7
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@bd
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@c0
    move-result v6

    #@c1
    .line 1239
    :cond_8
    :goto_3
    if-lez v6, :cond_5

    #@c3
    .line 1240
    add-int/lit8 v6, v6, -0x1

    #@c5
    .line 1241
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@c7
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ca
    move-result-object v8

    #@cb
    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@cd
    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@cf
    if-ne v8, v5, :cond_8

    #@d1
    .line 1242
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@d3
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@d6
    goto :goto_3

    #@d7
    .line 1246
    .end local v5    # "ident":I
    .end local v6    # "j":I
    :cond_9
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@da
    .line 1247
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@dd
    .line 1248
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    #@e0
    .line 1249
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e3
    :cond_a
    monitor-exit v9

    #@e4
    .line 1202
    return-void
.end method

.method public dumpPendingOperations(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 2842
    const-string/jumbo v2, "Pending Ops: "

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v2

    #@7
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v3

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, " operation(s)\n"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 2843
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "pop$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@29
    .line 2844
    .local v0, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const-string/jumbo v2, "(info: "

    #@2c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@32
    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 2845
    const-string/jumbo v3, ", extras: "

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    .line 2846
    const-string/jumbo v3, ")\n"

    #@4a
    .line 2844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_0

    #@4e
    .line 2841
    .end local v0    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_0
    return-void
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 2
    .param p1, "authorityId"    # I

    #@0
    .prologue
    .line 1080
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 1080
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 788
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v2

    #@4
    .line 789
    :try_start_0
    const-string/jumbo v1, "getBackoff"

    #@7
    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@a
    move-result-object v0

    #@b
    .line 790
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    #@d
    .line 791
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v1

    #@13
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v3

    #@19
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v1

    #@1d
    monitor-exit v2

    #@1e
    return-object v1

    #@1f
    :cond_0
    monitor-exit v2

    #@20
    .line 793
    return-object v3

    #@21
    .line 788
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method public getCopyOfAllAuthoritiesWithSyncStatus()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1516
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v3

    #@3
    .line 1518
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    #@5
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v2

    #@b
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 1519
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@14
    move-result v2

    #@15
    if-ge v0, v2, :cond_0

    #@17
    .line 1520
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@1f
    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 1519
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    :cond_0
    monitor-exit v3

    #@2a
    .line 1522
    return-object v1

    #@2b
    .line 1516
    .end local v0    # "i":I
    .end local v1    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1504
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 1506
    const/4 v1, -0x1

    #@4
    .line 1507
    const/4 v3, 0x1

    #@5
    .line 1505
    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@8
    move-result-object v0

    #@9
    .line 1508
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    monitor-exit v2

    #@e
    return-object v1

    #@f
    .line 1504
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method public getCurrentSyncsCopy(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1465
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v5

    #@3
    .line 1466
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 1467
    .local v2, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 1468
    .local v3, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "sync$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/content/SyncInfo;

    #@1c
    .line 1469
    .local v0, "sync":Landroid/content/SyncInfo;
    new-instance v4, Landroid/content/SyncInfo;

    #@1e
    invoke-direct {v4, v0}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    #@21
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 1465
    .end local v0    # "sync":Landroid/content/SyncInfo;
    .end local v1    # "sync$iterator":Ljava/util/Iterator;
    .end local v2    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v3    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4

    #@28
    .restart local v1    # "sync$iterator":Ljava/util/Iterator;
    .restart local v2    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .restart local v3    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_0
    monitor-exit v5

    #@29
    .line 1471
    return-object v3
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .locals 6

    #@0
    .prologue
    .line 1595
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 1596
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@5
    array-length v1, v1

    #@6
    new-array v0, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@8
    .line 1597
    .local v0, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@a
    array-length v3, v0

    #@b
    const/4 v4, 0x0

    #@c
    const/4 v5, 0x0

    #@d
    invoke-static {v1, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 1598
    return-object v0

    #@12
    .line 1595
    .end local v0    # "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 911
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 912
    :try_start_0
    const-string/jumbo v1, "getDelayUntil"

    #@6
    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    .line 913
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    #@c
    .line 914
    const-wide/16 v4, 0x0

    #@e
    monitor-exit v2

    #@f
    return-wide v4

    #@10
    .line 916
    :cond_0
    :try_start_1
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit v2

    #@13
    return-wide v4

    #@14
    .line 911
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 708
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v4

    #@4
    .line 709
    if-eqz p1, :cond_1

    #@6
    .line 711
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@8
    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@b
    .line 712
    const-string/jumbo v5, "get authority syncable"

    #@e
    .line 710
    invoke-direct {p0, v3, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v0

    #@12
    .line 713
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    #@14
    monitor-exit v4

    #@15
    .line 714
    return v6

    #@16
    .line 716
    :cond_0
    :try_start_1
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v4

    #@19
    return v3

    #@1a
    .line 719
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@1f
    move-result v2

    #@20
    .line 720
    .local v2, "i":I
    :cond_2
    if-lez v2, :cond_3

    #@22
    .line 721
    add-int/lit8 v2, v2, -0x1

    #@24
    .line 722
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@2c
    .line 723
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 724
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@32
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@34
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v3

    #@38
    .line 723
    if-eqz v3, :cond_2

    #@3a
    .line 725
    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    monitor-exit v4

    #@3d
    return v3

    #@3e
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v4

    #@3f
    .line 728
    return v6

    #@40
    .line 708
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    #@41
    monitor-exit v4

    #@42
    throw v3
.end method

.method public getIsTargetServiceActive(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 737
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@4
    monitor-enter v3

    #@5
    .line 738
    if-eqz p1, :cond_2

    #@7
    .line 740
    :try_start_0
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@9
    invoke-direct {v4, p1, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    #@c
    .line 741
    const-string/jumbo v5, "get service active"

    #@f
    .line 739
    invoke-direct {p0, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v0

    #@13
    .line 742
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    #@15
    monitor-exit v3

    #@16
    .line 743
    return v2

    #@17
    .line 745
    :cond_0
    :try_start_1
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    if-ne v4, v1, :cond_1

    #@1b
    :goto_0
    monitor-exit v3

    #@1c
    return v1

    #@1d
    :cond_1
    move v1, v2

    #@1e
    goto :goto_0

    #@1f
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    monitor-exit v3

    #@20
    .line 747
    return v2

    #@21
    .line 737
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v3

    #@23
    throw v1
.end method

.method public getMasterSyncAutomatically(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1073
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 1075
    .local v0, "auto":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    #@d
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :goto_0
    monitor-exit v2

    #@10
    return v1

    #@11
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v1

    #@15
    goto :goto_0

    #@16
    .line 1073
    .end local v0    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public getPendingOperationCount()I
    .locals 2

    #@0
    .prologue
    .line 1193
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 1193
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public getPendingOperations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1184
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1185
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@5
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 1184
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1041
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v5

    #@3
    .line 1042
    :try_start_0
    const-string/jumbo v4, "getPeriodicSyncs"

    #@6
    invoke-direct {p0, p1, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@9
    move-result-object v0

    #@a
    .line 1043
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v3, Ljava/util/ArrayList;

    #@c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1044
    .local v3, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    if-eqz v0, :cond_0

    #@11
    .line 1045
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/PeriodicSync;

    #@23
    .line 1047
    .local v1, "item":Landroid/content/PeriodicSync;
    new-instance v4, Landroid/content/PeriodicSync;

    #@25
    invoke-direct {v4, v1}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    #@28
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 1041
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "item":Landroid/content/PeriodicSync;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    .end local v3    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4

    #@2f
    .restart local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v3    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    :cond_0
    monitor-exit v5

    #@30
    .line 1050
    return-object v3
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1533
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@3
    if-eqz v4, :cond_1

    #@5
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@7
    if-eqz v4, :cond_0

    #@9
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@b
    if-nez v4, :cond_1

    #@d
    .line 1534
    :cond_0
    return-object v7

    #@e
    .line 1535
    :cond_1
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    #@10
    if-eqz v4, :cond_2

    #@12
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@14
    if-nez v4, :cond_2

    #@16
    .line 1536
    return-object v7

    #@17
    .line 1538
    :cond_2
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@19
    monitor-enter v5

    #@1a
    .line 1539
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@1f
    move-result v0

    #@20
    .line 1540
    .local v0, "N":I
    const/4 v3, 0x0

    #@21
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    #@23
    .line 1541
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/content/SyncStatusInfo;

    #@2b
    .line 1542
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2d
    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    #@2f
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@35
    .line 1543
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_3

    #@37
    .line 1544
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@39
    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    move-result v4

    #@3d
    .line 1543
    if-eqz v4, :cond_3

    #@3f
    monitor-exit v5

    #@40
    .line 1545
    return-object v2

    #@41
    .line 1540
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0

    #@44
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_4
    monitor-exit v5

    #@45
    .line 1548
    return-object v7

    #@46
    .line 1538
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@47
    monitor-exit v5

    #@48
    throw v4
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 650
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v4

    #@4
    .line 651
    if-eqz p1, :cond_1

    #@6
    .line 653
    :try_start_0
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@8
    invoke-direct {v5, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@b
    .line 654
    const-string/jumbo v6, "getSyncAutomatically"

    #@e
    .line 652
    invoke-direct {p0, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@11
    move-result-object v0

    #@12
    .line 655
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    #@14
    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v4

    #@17
    return v3

    #@18
    .line 658
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v2

    #@1e
    .line 659
    .local v2, "i":I
    :cond_2
    if-lez v2, :cond_3

    #@20
    .line 660
    add-int/lit8 v2, v2, -0x1

    #@22
    .line 661
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@2a
    .line 662
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2c
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2e
    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@31
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_2

    #@37
    .line 663
    iget-boolean v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 662
    if-eqz v5, :cond_2

    #@3b
    .line 664
    const/4 v3, 0x1

    #@3c
    monitor-exit v4

    #@3d
    return v3

    #@3e
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v4

    #@3f
    .line 667
    return v3

    #@40
    .line 650
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    #@41
    monitor-exit v4

    #@42
    throw v3
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1579
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 1580
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 1581
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    #@b
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 1582
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@11
    .line 1583
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@19
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1582
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_0
    monitor-exit v4

    #@20
    .line 1585
    return-object v2

    #@21
    .line 1579
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3
.end method

.method public getSyncRandomOffset()I
    .locals 1

    #@0
    .prologue
    .line 577
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    #@2
    return v0
.end method

.method public getSyncStatus()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1490
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 1491
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 1492
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    #@b
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 1493
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@11
    .line 1494
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/content/SyncStatusInfo;

    #@19
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1493
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_0
    monitor-exit v4

    #@20
    .line 1496
    return-object v2

    #@21
    .line 1490
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 565
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 566
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@7
    monitor-enter v0

    #@8
    .line 567
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :goto_0
    monitor-exit v0

    #@c
    .line 564
    :cond_0
    return-void

    #@d
    .line 566
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v0

    #@f
    throw v1

    #@10
    .line 569
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    #@12
    const/4 v1, 0x2

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 570
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@17
    monitor-enter v0

    #@18
    .line 571
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    goto :goto_0

    #@1c
    .line 570
    :catchall_1
    move-exception v1

    #@1d
    monitor-exit v0

    #@1e
    throw v1
.end method

.method public insertIntoPending(Lcom/android/server/content/SyncOperation;)Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .locals 10
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v9, 0x2

    #@2
    .line 1103
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@4
    monitor-enter v8

    #@5
    .line 1104
    :try_start_0
    const-string/jumbo v2, "SyncManager"

    #@8
    const/4 v3, 0x2

    #@9
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1105
    const-string/jumbo v2, "SyncManager"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "insertIntoPending: authority="

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    .line 1106
    const-string/jumbo v4, " extras="

    #@27
    .line 1105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    .line 1106
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@2d
    .line 1105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 1108
    :cond_0
    iget-object v6, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3a
    .line 1111
    .local v6, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v2, -0x1

    #@3b
    .line 1112
    const/4 v3, 0x1

    #@3c
    .line 1110
    invoke-direct {p0, v6, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result-object v1

    #@40
    .line 1113
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    #@42
    monitor-exit v8

    #@43
    .line 1114
    return-object v5

    #@44
    .line 1117
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    #@46
    iget v2, p1, Lcom/android/server/content/SyncOperation;->reason:I

    #@48
    iget v3, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@4a
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@4c
    .line 1118
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    #@4f
    move-result v5

    #@50
    .line 1117
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V

    #@53
    .line 1119
    .local v0, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 1120
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->appendPendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V

    #@5b
    .line 1122
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@5d
    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    #@60
    move-result-object v7

    #@61
    .line 1123
    .local v7, "status":Landroid/content/SyncStatusInfo;
    const/4 v2, 0x1

    #@62
    iput-boolean v2, v7, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@64
    monitor-exit v8

    #@65
    .line 1125
    invoke-direct {p0, v9}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@68
    .line 1126
    return-object v0

    #@69
    .line 1103
    .end local v0    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v7    # "status":Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v2

    #@6a
    monitor-exit v8

    #@6b
    throw v2
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .locals 8
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 1311
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v5

    #@3
    .line 1312
    :try_start_0
    const-string/jumbo v4, "SyncManager"

    #@6
    const/4 v6, 0x2

    #@7
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 1313
    const-string/jumbo v4, "SyncManager"

    #@10
    new-instance v6, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v7, "insertStartSyncEvent: "

    #@18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1315
    :cond_0
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@29
    const-string/jumbo v6, "insertStartSyncEvent"

    #@2c
    invoke-direct {p0, v4, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v0

    #@30
    .line 1316
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_1

    #@32
    .line 1317
    const-wide/16 v6, -0x1

    #@34
    monitor-exit v5

    #@35
    return-wide v6

    #@36
    .line 1319
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@38
    invoke-direct {v1}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    #@3b
    .line 1320
    .local v1, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@3e
    move-result v4

    #@3f
    iput-boolean v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    #@41
    .line 1321
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@43
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@45
    .line 1322
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@47
    add-int/lit8 v6, v4, 0x1

    #@49
    iput v6, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@4b
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    #@4d
    .line 1323
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@4f
    if-gez v4, :cond_2

    #@51
    const/4 v4, 0x0

    #@52
    iput v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@54
    .line 1324
    :cond_2
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    #@56
    .line 1325
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@58
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@5a
    .line 1326
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    #@5c
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    #@5e
    .line 1327
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@60
    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    #@62
    .line 1328
    const/4 v4, 0x0

    #@63
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    #@65
    .line 1329
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@67
    const/4 v6, 0x0

    #@68
    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@6b
    .line 1330
    :goto_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@70
    move-result v4

    #@71
    const/16 v6, 0x64

    #@73
    if-le v4, v6, :cond_3

    #@75
    .line 1331
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@77
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@7c
    move-result v6

    #@7d
    add-int/lit8 v6, v6, -0x1

    #@7f
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@82
    goto :goto_0

    #@83
    .line 1311
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_0
    move-exception v4

    #@84
    monitor-exit v5

    #@85
    throw v4

    #@86
    .line 1333
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_2
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    #@88
    int-to-long v2, v4

    #@89
    .line 1334
    .local v2, "id":J
    const-string/jumbo v4, "SyncManager"

    #@8c
    const/4 v6, 0x2

    #@8d
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@90
    move-result v4

    #@91
    if-eqz v4, :cond_4

    #@93
    const-string/jumbo v4, "SyncManager"

    #@96
    new-instance v6, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v7, "returning historyId "

    #@9e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v6

    #@aa
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ad
    :cond_4
    monitor-exit v5

    #@ae
    .line 1337
    const/16 v4, 0x8

    #@b0
    invoke-direct {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@b3
    .line 1338
    return-wide v2
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 1090
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 1091
    :try_start_0
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@5
    invoke-direct {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "syncInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/content/SyncInfo;

    #@19
    .line 1092
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v1, Landroid/content/SyncInfo;->authorityId:I

    #@1b
    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@1e
    move-result-object v0

    #@1f
    .line 1093
    .local v0, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    #@21
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@23
    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 1094
    const/4 v3, 0x1

    #@2a
    monitor-exit v4

    #@2b
    return v3

    #@2c
    .end local v0    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "syncInfo":Landroid/content/SyncInfo;
    :cond_1
    monitor-exit v4

    #@2d
    .line 1098
    const/4 v3, 0x0

    #@2e
    return v3

    #@2f
    .line 1090
    .end local v2    # "syncInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@30
    monitor-exit v4

    #@31
    throw v3
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 1554
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v5

    #@3
    .line 1555
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 1556
    .local v0, "N":I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@c
    .line 1557
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/content/SyncStatusInfo;

    #@14
    .line 1558
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@16
    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    #@18
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@1e
    .line 1559
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    #@20
    .line 1556
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1562
    :cond_1
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@25
    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 1565
    iget-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    if-eqz v4, :cond_0

    #@2f
    .line 1566
    const/4 v4, 0x1

    #@30
    monitor-exit v5

    #@31
    return v4

    #@32
    .line 1569
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_2
    const/4 v4, 0x0

    #@33
    monitor-exit v5

    #@34
    return v4

    #@35
    .line 1554
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v5

    #@37
    throw v4
.end method

.method public queueBackup()V
    .locals 1

    #@0
    .prologue
    .line 2855
    const-string/jumbo v0, "android"

    #@3
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    #@6
    .line 2854
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .locals 4
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1287
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1288
    :try_start_0
    const-string/jumbo v0, "SyncManager"

    #@6
    const/4 v2, 0x2

    #@7
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1289
    const-string/jumbo v0, "SyncManager"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "removeActiveSync: account="

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1290
    const-string/jumbo v3, " user="

    #@25
    .line 1289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 1291
    const-string/jumbo v3, " auth="

    #@30
    .line 1289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 1291
    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@36
    .line 1289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 1293
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    #@44
    move-result-object v0

    #@45
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    monitor-exit v1

    #@49
    .line 1296
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    #@4c
    .line 1286
    return-void

    #@4d
    .line 1287
    :catchall_0
    move-exception v0

    #@4e
    monitor-exit v1

    #@4f
    throw v0
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 1726
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v3

    #@3
    .line 1727
    :try_start_0
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 1728
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@9
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@b
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@d
    const/4 v6, 0x1

    #@e
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    :goto_0
    monitor-exit v3

    #@12
    .line 1725
    return-void

    #@13
    .line 1730
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@15
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    #@17
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/util/SparseArray;

    #@1d
    .line 1731
    .local v0, "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    if-eqz v0, :cond_0

    #@1f
    .line 1732
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@21
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@27
    .line 1733
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_0

    #@29
    .line 1734
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2b
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@2d
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    #@30
    .line 1735
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@32
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    #@35
    .line 1736
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1726
    .end local v0    # "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 997
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v7

    #@4
    .line 1000
    const/4 v6, -0x1

    #@5
    const/4 v8, 0x0

    #@6
    :try_start_0
    invoke-direct {p0, p1, v6, v8}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@9
    move-result-object v0

    #@a
    .line 1002
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@c
    iget v8, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@e
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Landroid/content/SyncStatusInfo;

    #@14
    .line 1003
    .local v4, "status":Landroid/content/SyncStatusInfo;
    const/4 v1, 0x0

    #@15
    .line 1004
    .local v1, "changed":Z
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v3

    #@1b
    .line 1005
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    const/4 v2, 0x0

    #@1c
    .line 1006
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 1007
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Landroid/content/PeriodicSync;

    #@28
    .line 1008
    .local v5, "syncInfo":Landroid/content/PeriodicSync;
    iget-object v6, v5, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@2a
    .line 1010
    const/4 v8, 0x1

    #@2b
    .line 1008
    invoke-static {v6, p2, v8}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_1

    #@31
    .line 1011
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    #@34
    .line 1012
    const/4 v1, 0x1

    #@35
    .line 1015
    if-eqz v4, :cond_0

    #@37
    .line 1016
    invoke-virtual {v4, v2}, Landroid/content/SyncStatusInfo;->removePeriodicSyncTime(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 1028
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "changed":Z
    .end local v2    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    .end local v4    # "status":Landroid/content/SyncStatusInfo;
    .end local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :catchall_0
    move-exception v6

    #@3c
    .line 1029
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@3f
    .line 1030
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@42
    .line 1028
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@43
    .line 997
    :catchall_1
    move-exception v6

    #@44
    monitor-exit v7

    #@45
    throw v6

    #@46
    .line 1018
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "changed":Z
    .restart local v2    # "i":I
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    .restart local v4    # "status":Landroid/content/SyncStatusInfo;
    .restart local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_0
    :try_start_2
    const-string/jumbo v6, "SyncManager"

    #@49
    const-string/jumbo v8, "Tried removing sync status on remove periodic sync but did not find it."

    #@4c
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 1022
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1025
    .end local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_2
    if-nez v1, :cond_3

    #@55
    .line 1029
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@58
    .line 1030
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5b
    monitor-exit v7

    #@5c
    .line 1026
    return-void

    #@5d
    .line 1029
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@60
    .line 1030
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@63
    monitor-exit v7

    #@64
    .line 1033
    invoke-direct {p0, v9}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@67
    .line 996
    return-void
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    #@0
    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 586
    return-void

    #@a
    .line 587
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public reportActiveChange()V
    .locals 1

    #@0
    .prologue
    .line 1303
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@4
    .line 1302
    return-void
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    #@0
    .prologue
    .line 802
    const-string/jumbo v2, "SyncManager"

    #@3
    const/4 v3, 0x2

    #@4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 803
    const-string/jumbo v2, "SyncManager"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "setBackoff: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 804
    const-string/jumbo v4, " -> nextSyncTime "

    #@20
    .line 803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    move-wide/from16 v0, p2

    #@26
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 804
    const-string/jumbo v4, ", nextDelay "

    #@2d
    .line 803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    move-wide/from16 v0, p4

    #@33
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 807
    :cond_0
    iget-object v12, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@40
    monitor-enter v12

    #@41
    .line 808
    :try_start_0
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@43
    if-eqz v2, :cond_3

    #@45
    .line 809
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@47
    if-eqz v2, :cond_1

    #@49
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@4b
    if-nez v2, :cond_3

    #@4d
    .line 813
    :cond_1
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@4f
    .line 814
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@51
    .line 815
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@53
    move-object v2, p0

    #@54
    move-wide/from16 v6, p2

    #@56
    move-wide/from16 v8, p4

    #@58
    .line 812
    invoke-direct/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5b
    move-result v11

    #@5c
    :goto_0
    monitor-exit v12

    #@5d
    .line 830
    if-eqz v11, :cond_2

    #@5f
    .line 831
    const/4 v2, 0x1

    #@60
    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@63
    .line 801
    :cond_2
    return-void

    #@64
    .line 819
    :cond_3
    const/4 v2, -0x1

    #@65
    const/4 v3, 0x1

    #@66
    :try_start_1
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@69
    move-result-object v10

    #@6a
    .line 820
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@6c
    cmp-long v2, v2, p2

    #@6e
    if-nez v2, :cond_4

    #@70
    .line 821
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@72
    cmp-long v2, v2, p4

    #@74
    if-nez v2, :cond_4

    #@76
    .line 822
    const/4 v11, 0x0

    #@77
    .line 821
    .local v11, "changed":Z
    goto :goto_0

    #@78
    .line 824
    .end local v11    # "changed":Z
    :cond_4
    move-wide/from16 v0, p2

    #@7a
    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@7c
    .line 825
    move-wide/from16 v0, p4

    #@7e
    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    .line 826
    const/4 v11, 0x1

    #@81
    .restart local v11    # "changed":Z
    goto :goto_0

    #@82
    .line 807
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "changed":Z
    :catchall_0
    move-exception v2

    #@83
    monitor-exit v12

    #@84
    throw v2
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 921
    const-string/jumbo v1, "SyncManager"

    #@4
    const/4 v2, 0x2

    #@5
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 922
    const-string/jumbo v1, "SyncManager"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "setDelayUntil: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 923
    const-string/jumbo v3, " -> delayUntil "

    #@21
    .line 922
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 925
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@32
    monitor-enter v2

    #@33
    .line 926
    const/4 v1, -0x1

    #@34
    const/4 v3, 0x1

    #@35
    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@38
    move-result-object v0

    #@39
    .line 927
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    cmp-long v1, v4, p2

    #@3d
    if-nez v1, :cond_1

    #@3f
    monitor-exit v2

    #@40
    .line 928
    return-void

    #@41
    .line 930
    :cond_1
    :try_start_1
    iput-wide p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v2

    #@44
    .line 932
    invoke-direct {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@47
    .line 920
    return-void

    #@48
    .line 925
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    #@49
    monitor-exit v2

    #@4a
    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "syncable"    # I

    #@0
    .prologue
    .line 733
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@5
    invoke-direct {p0, v0, p4}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    #@8
    .line 732
    return-void
.end method

.method public setIsTargetServiceActive(Landroid/content/ComponentName;IZ)V
    .locals 2
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "active"    # Z

    #@0
    .prologue
    .line 752
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    invoke-direct {v1, p1, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    #@5
    if-eqz p3, :cond_0

    #@7
    .line 753
    const/4 v0, 0x1

    #@8
    .line 752
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    #@b
    .line 751
    return-void

    #@c
    .line 753
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public setMasterSyncAutomatically(ZI)V
    .locals 7
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1055
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v2

    #@4
    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v6

    #@a
    check-cast v6, Ljava/lang/Boolean;

    #@c
    .line 1057
    .local v6, "auto":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    #@e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    monitor-exit v2

    #@19
    .line 1058
    return-void

    #@1a
    .line 1060
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@1c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@23
    .line 1061
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v2

    #@27
    .line 1063
    if-eqz p1, :cond_1

    #@29
    .line 1065
    new-instance v5, Landroid/os/Bundle;

    #@2b
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@2e
    .line 1064
    const/4 v3, -0x7

    #@2f
    move-object v0, p0

    #@30
    move v2, p2

    #@31
    move-object v4, v1

    #@32
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    #@35
    .line 1067
    :cond_1
    const/4 v0, 0x1

    #@36
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@39
    .line 1068
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    #@3b
    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@40
    .line 1069
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    #@43
    .line 1054
    return-void

    #@44
    .line 1055
    .end local v6    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    #@45
    monitor-exit v2

    #@46
    throw v0
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 560
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@6
    .line 558
    :cond_0
    return-void
.end method

.method public setPeriodicSyncTime(ILandroid/content/PeriodicSync;J)V
    .locals 7
    .param p1, "authorityId"    # I
    .param p2, "targetPeriodicSync"    # Landroid/content/PeriodicSync;
    .param p3, "when"    # J

    #@0
    .prologue
    .line 1767
    const/4 v1, 0x0

    #@1
    .line 1769
    .local v1, "found":Z
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v5

    #@4
    .line 1770
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@c
    .line 1771
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v4

    #@13
    if-ge v2, v4, :cond_0

    #@15
    .line 1772
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/content/PeriodicSync;

    #@1d
    .line 1773
    .local v3, "periodicSync":Landroid/content/PeriodicSync;
    invoke-virtual {p2, v3}, Landroid/content/PeriodicSync;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2

    #@23
    .line 1774
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid/content/SyncStatusInfo;

    #@2b
    invoke-virtual {v4, v2, p3, p4}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 1775
    const/4 v1, 0x1

    #@2f
    .end local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_0
    monitor-exit v5

    #@30
    .line 1780
    if-nez v1, :cond_1

    #@32
    .line 1781
    const-string/jumbo v4, "SyncManager"

    #@35
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "Ignoring setPeriodicSyncTime request for a sync that does not exist. Authority: "

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    .line 1782
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@43
    .line 1781
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1766
    :cond_1
    return-void

    #@4f
    .line 1771
    .restart local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_0

    #@52
    .line 1769
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "i":I
    .end local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :catchall_0
    move-exception v4

    #@53
    monitor-exit v5

    #@54
    throw v4
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "sync"    # Z

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 673
    const-string/jumbo v0, "SyncManager"

    #@4
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 674
    const-string/jumbo v0, "SyncManager"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "setSyncAutomatically:  provider "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 675
    const-string/jumbo v2, ", user "

    #@20
    .line 674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 675
    const-string/jumbo v2, " -> "

    #@2b
    .line 674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 677
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3c
    monitor-enter v1

    #@3d
    .line 680
    :try_start_0
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3f
    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@42
    .line 681
    const/4 v2, -0x1

    #@43
    .line 682
    const/4 v3, 0x0

    #@44
    .line 679
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@47
    move-result-object v6

    #@48
    .line 683
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@4a
    if-ne v0, p4, :cond_2

    #@4c
    .line 684
    const-string/jumbo v0, "SyncManager"

    #@4f
    const/4 v2, 0x2

    #@50
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_1

    #@56
    .line 685
    const-string/jumbo v0, "SyncManager"

    #@59
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "setSyncAutomatically: already set to "

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    const-string/jumbo v3, ", doing nothing"

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v2

    #@74
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    :cond_1
    monitor-exit v1

    #@78
    .line 687
    return-void

    #@79
    .line 692
    :cond_2
    if-eqz p4, :cond_3

    #@7b
    :try_start_1
    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@7d
    if-ne v0, v4, :cond_3

    #@7f
    .line 693
    const/4 v0, -0x1

    #@80
    iput v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@82
    .line 695
    :cond_3
    iput-boolean p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@84
    .line 696
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    monitor-exit v1

    #@88
    .line 699
    if-eqz p4, :cond_4

    #@8a
    .line 701
    new-instance v5, Landroid/os/Bundle;

    #@8c
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@8f
    .line 700
    const/4 v3, -0x6

    #@90
    move-object v0, p0

    #@91
    move-object v1, p1

    #@92
    move v2, p2

    #@93
    move-object v4, p3

    #@94
    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    #@97
    .line 703
    :cond_4
    const/4 v0, 0x1

    #@98
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@9b
    .line 704
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    #@9e
    .line 672
    return-void

    #@9f
    .line 677
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v0

    #@a0
    monitor-exit v1

    #@a1
    throw v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .locals 19
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J

    #@0
    .prologue
    .line 1343
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@4
    monitor-enter v12

    #@5
    .line 1344
    :try_start_0
    const-string/jumbo v11, "SyncManager"

    #@8
    const/4 v13, 0x2

    #@9
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v11

    #@d
    if-eqz v11, :cond_0

    #@f
    .line 1345
    const-string/jumbo v11, "SyncManager"

    #@12
    new-instance v13, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v14, "stopSyncEvent: historyId="

    #@1a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v13

    #@1e
    move-wide/from16 v0, p1

    #@20
    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@23
    move-result-object v13

    #@24
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v13

    #@28
    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 1347
    :cond_0
    const/4 v5, 0x0

    #@2c
    .line 1348
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    #@2e
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v4

    #@34
    .line 1349
    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_1

    #@36
    .line 1350
    add-int/lit8 v4, v4, -0x1

    #@38
    .line 1351
    move-object/from16 v0, p0

    #@3a
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@42
    .line 1352
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    #@44
    int-to-long v14, v11

    #@45
    cmp-long v11, v14, p1

    #@47
    if-nez v11, :cond_2

    #@49
    .line 1358
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_1
    if-nez v5, :cond_3

    #@4b
    .line 1359
    const-string/jumbo v11, "SyncManager"

    #@4e
    new-instance v13, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v14, "stopSyncEvent: no history for id "

    #@56
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v13

    #@5a
    move-wide/from16 v0, p1

    #@5c
    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v13

    #@60
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v13

    #@64
    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    monitor-exit v12

    #@68
    .line 1360
    return-void

    #@69
    .line 1355
    .restart local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_2
    const/4 v5, 0x0

    #@6a
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    goto :goto_0

    #@6b
    .line 1363
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_1
    move-wide/from16 v0, p3

    #@6d
    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    #@6f
    .line 1364
    const/4 v11, 0x1

    #@70
    iput v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    #@72
    .line 1365
    move-object/from16 v0, p5

    #@74
    iput-object v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    #@76
    .line 1366
    move-wide/from16 v0, p6

    #@78
    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    #@7a
    .line 1367
    move-wide/from16 v0, p8

    #@7c
    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    #@7e
    .line 1369
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-direct {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    #@85
    move-result-object v8

    #@86
    .line 1371
    .local v8, "status":Landroid/content/SyncStatusInfo;
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@88
    add-int/lit8 v11, v11, 0x1

    #@8a
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@8c
    .line 1372
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@8e
    add-long v14, v14, p3

    #@90
    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@92
    .line 1373
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@94
    packed-switch v11, :pswitch_data_0

    #@97
    .line 1391
    :goto_1
    const/4 v9, 0x0

    #@98
    .line 1392
    .local v9, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    #@9b
    move-result v2

    #@9c
    .line 1393
    .local v2, "day":I
    move-object/from16 v0, p0

    #@9e
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@a0
    const/4 v13, 0x0

    #@a1
    aget-object v11, v11, v13

    #@a3
    if-nez v11, :cond_a

    #@a5
    .line 1394
    move-object/from16 v0, p0

    #@a7
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@a9
    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@ab
    invoke-direct {v13, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    #@ae
    const/4 v14, 0x0

    #@af
    aput-object v13, v11, v14

    #@b1
    .line 1401
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@b3
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@b5
    const/4 v13, 0x0

    #@b6
    aget-object v3, v11, v13

    #@b8
    .line 1403
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    #@ba
    add-long v6, v14, p3

    #@bc
    .line 1404
    .local v6, "lastSyncTime":J
    const/4 v10, 0x0

    #@bd
    .line 1405
    .local v10, "writeStatusNow":Z
    const-string/jumbo v11, "success"

    #@c0
    move-object/from16 v0, p5

    #@c2
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v11

    #@c6
    if-eqz v11, :cond_c

    #@c8
    .line 1407
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@ca
    const-wide/16 v16, 0x0

    #@cc
    cmp-long v11, v14, v16

    #@ce
    if-eqz v11, :cond_5

    #@d0
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@d2
    const-wide/16 v16, 0x0

    #@d4
    cmp-long v11, v14, v16

    #@d6
    if-eqz v11, :cond_6

    #@d8
    .line 1408
    :cond_5
    const/4 v10, 0x1

    #@d9
    .line 1410
    :cond_6
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@db
    .line 1411
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@dd
    iput v11, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@df
    .line 1412
    const-wide/16 v14, 0x0

    #@e1
    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@e3
    .line 1413
    const/4 v11, -0x1

    #@e4
    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@e6
    .line 1414
    const/4 v11, 0x0

    #@e7
    iput-object v11, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@e9
    .line 1415
    const-wide/16 v14, 0x0

    #@eb
    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@ed
    .line 1416
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@ef
    add-int/lit8 v11, v11, 0x1

    #@f1
    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@f3
    .line 1417
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@f5
    add-long v14, v14, p3

    #@f7
    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@f9
    .line 1432
    :cond_7
    :goto_3
    if-eqz v10, :cond_f

    #@fb
    .line 1433
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@fe
    .line 1438
    :cond_8
    :goto_4
    if-eqz v9, :cond_10

    #@100
    .line 1439
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@103
    :cond_9
    :goto_5
    monitor-exit v12

    #@104
    .line 1446
    const/16 v11, 0x8

    #@106
    move-object/from16 v0, p0

    #@108
    invoke-direct {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@10b
    .line 1342
    return-void

    #@10c
    .line 1375
    .end local v2    # "day":I
    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v6    # "lastSyncTime":J
    .end local v9    # "writeStatisticsNow":Z
    .end local v10    # "writeStatusNow":Z
    :pswitch_0
    :try_start_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    #@10e
    add-int/lit8 v11, v11, 0x1

    #@110
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@112
    goto :goto_1

    #@113
    .line 1343
    .end local v4    # "i":I
    .end local v8    # "status":Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v11

    #@114
    monitor-exit v12

    #@115
    throw v11

    #@116
    .line 1378
    .restart local v4    # "i":I
    .restart local v8    # "status":Landroid/content/SyncStatusInfo;
    :pswitch_1
    :try_start_3
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@118
    add-int/lit8 v11, v11, 0x1

    #@11a
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    #@11c
    goto/16 :goto_1

    #@11e
    .line 1381
    :pswitch_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@120
    add-int/lit8 v11, v11, 0x1

    #@122
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@124
    goto/16 :goto_1

    #@126
    .line 1384
    :pswitch_3
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@128
    add-int/lit8 v11, v11, 0x1

    #@12a
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@12c
    goto/16 :goto_1

    #@12e
    .line 1387
    :pswitch_4
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@130
    add-int/lit8 v11, v11, 0x1

    #@132
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@134
    goto/16 :goto_1

    #@136
    .line 1395
    .restart local v2    # "day":I
    .restart local v9    # "writeStatisticsNow":Z
    :cond_a
    move-object/from16 v0, p0

    #@138
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@13a
    const/4 v13, 0x0

    #@13b
    aget-object v11, v11, v13

    #@13d
    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@13f
    if-eq v2, v11, :cond_b

    #@141
    .line 1396
    move-object/from16 v0, p0

    #@143
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@145
    move-object/from16 v0, p0

    #@147
    iget-object v13, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@149
    move-object/from16 v0, p0

    #@14b
    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@14d
    array-length v14, v14

    #@14e
    add-int/lit8 v14, v14, -0x1

    #@150
    const/4 v15, 0x0

    #@151
    const/16 v16, 0x1

    #@153
    move/from16 v0, v16

    #@155
    invoke-static {v11, v15, v13, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@158
    .line 1397
    move-object/from16 v0, p0

    #@15a
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@15c
    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@15e
    invoke-direct {v13, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    #@161
    const/4 v14, 0x0

    #@162
    aput-object v13, v11, v14

    #@164
    .line 1398
    const/4 v9, 0x1

    #@165
    goto/16 :goto_2

    #@167
    .line 1399
    :cond_b
    move-object/from16 v0, p0

    #@169
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@16b
    const/4 v13, 0x0

    #@16c
    aget-object v11, v11, v13

    #@16e
    if-nez v11, :cond_4

    #@170
    goto/16 :goto_2

    #@172
    .line 1418
    .restart local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v6    # "lastSyncTime":J
    .restart local v10    # "writeStatusNow":Z
    :cond_c
    const-string/jumbo v11, "canceled"

    #@175
    move-object/from16 v0, p5

    #@177
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17a
    move-result v11

    #@17b
    if-nez v11, :cond_7

    #@17d
    .line 1419
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@17f
    const-wide/16 v16, 0x0

    #@181
    cmp-long v11, v14, v16

    #@183
    if-nez v11, :cond_d

    #@185
    .line 1420
    const/4 v10, 0x1

    #@186
    .line 1422
    :cond_d
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@188
    .line 1423
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@18a
    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@18c
    .line 1424
    move-object/from16 v0, p5

    #@18e
    iput-object v0, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@190
    .line 1425
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@192
    const-wide/16 v16, 0x0

    #@194
    cmp-long v11, v14, v16

    #@196
    if-nez v11, :cond_e

    #@198
    .line 1426
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@19a
    .line 1428
    :cond_e
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@19c
    add-int/lit8 v11, v11, 0x1

    #@19e
    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@1a0
    .line 1429
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@1a2
    add-long v14, v14, p3

    #@1a4
    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@1a6
    goto/16 :goto_3

    #@1a8
    .line 1434
    :cond_f
    const/4 v11, 0x1

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->hasMessages(I)Z

    #@1ae
    move-result v11

    #@1af
    if-nez v11, :cond_8

    #@1b1
    .line 1435
    const/4 v11, 0x1

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    #@1b7
    move-result-object v11

    #@1b8
    .line 1436
    const-wide/32 v14, 0x927c0

    #@1bb
    .line 1435
    move-object/from16 v0, p0

    #@1bd
    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1c0
    goto/16 :goto_4

    #@1c2
    .line 1440
    :cond_10
    const/4 v11, 0x2

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->hasMessages(I)Z

    #@1c8
    move-result v11

    #@1c9
    if-nez v11, :cond_9

    #@1cb
    .line 1441
    const/4 v11, 0x2

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    #@1d1
    move-result-object v11

    #@1d2
    .line 1442
    const-wide/32 v14, 0x1b7740

    #@1d5
    .line 1441
    move-object/from16 v0, p0

    #@1d7
    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1da
    goto/16 :goto_5

    #@1dc
    .line 1373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 18
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "period"    # J
    .param p4, "flextime"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 936
    const-string/jumbo v3, "SyncManager"

    #@3
    const/4 v4, 0x2

    #@4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 937
    const-string/jumbo v3, "SyncManager"

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "addPeriodicSync: "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 938
    const-string/jumbo v5, " -> period "

    #@22
    .line 937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    move-wide/from16 v0, p2

    #@28
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 938
    const-string/jumbo v5, ", flex "

    #@2f
    .line 937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    move-wide/from16 v0, p4

    #@35
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 938
    const-string/jumbo v5, ", extras "

    #@3c
    .line 937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 939
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    .line 937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 941
    :cond_0
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@53
    move-object/from16 v16, v0

    #@55
    monitor-enter v16

    #@56
    .line 942
    const-wide/16 v4, 0x0

    #@58
    cmp-long v3, p2, v4

    #@5a
    if-gtz v3, :cond_1

    #@5c
    .line 943
    :try_start_0
    const-string/jumbo v3, "SyncManager"

    #@5f
    const-string/jumbo v4, "period < 0, should never happen in updateOrAddPeriodicSync"

    #@62
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 945
    :cond_1
    if-nez p6, :cond_2

    #@67
    .line 946
    const-string/jumbo v3, "SyncManager"

    #@6a
    const-string/jumbo v4, "null extras, should never happen in updateOrAddPeriodicSync:"

    #@6d
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@70
    .line 950
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    #@72
    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    #@74
    if-eqz v3, :cond_3

    #@76
    .line 951
    new-instance v2, Landroid/content/PeriodicSync;

    #@78
    move-object/from16 v0, p1

    #@7a
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@7c
    .line 952
    move-object/from16 v0, p1

    #@7e
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@80
    move-object/from16 v5, p6

    #@82
    move-wide/from16 v6, p2

    #@84
    move-wide/from16 v8, p4

    #@86
    .line 951
    invoke-direct/range {v2 .. v9}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    #@89
    .line 960
    .local v2, "toUpdate":Landroid/content/PeriodicSync;
    const/4 v3, -0x1

    #@8a
    const/4 v4, 0x0

    #@8b
    move-object/from16 v0, p0

    #@8d
    move-object/from16 v1, p1

    #@8f
    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@92
    move-result-object v12

    #@93
    .line 962
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v11, 0x0

    #@94
    .line 963
    .local v11, "alreadyPresent":Z
    const/4 v13, 0x0

    #@95
    .local v13, "i":I
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@97
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9a
    move-result v10

    #@9b
    .local v10, "N":I
    :goto_0
    if-ge v13, v10, :cond_5

    #@9d
    .line 964
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@9f
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a2
    move-result-object v15

    #@a3
    check-cast v15, Landroid/content/PeriodicSync;

    #@a5
    .line 965
    .local v15, "syncInfo":Landroid/content/PeriodicSync;
    iget-object v3, v15, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@a7
    .line 967
    const/4 v4, 0x1

    #@a8
    .line 965
    move-object/from16 v0, p6

    #@aa
    invoke-static {v3, v0, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    #@ad
    move-result v3

    #@ae
    if-eqz v3, :cond_7

    #@b0
    .line 968
    iget-wide v4, v15, Landroid/content/PeriodicSync;->period:J

    #@b2
    cmp-long v3, p2, v4

    #@b4
    if-nez v3, :cond_4

    #@b6
    .line 969
    iget-wide v4, v15, Landroid/content/PeriodicSync;->flexTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b8
    cmp-long v3, p4, v4

    #@ba
    if-nez v3, :cond_4

    #@bc
    .line 989
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@bf
    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c2
    monitor-exit v16

    #@c3
    .line 971
    return-void

    #@c4
    .line 989
    .end local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .end local v10    # "N":I
    .end local v11    # "alreadyPresent":Z
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "i":I
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_3
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@c7
    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ca
    monitor-exit v16

    #@cb
    .line 957
    return-void

    #@cc
    .line 973
    .restart local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .restart local v10    # "N":I
    .restart local v11    # "alreadyPresent":Z
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "i":I
    .restart local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_4
    :try_start_4
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v3, v13, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@d1
    .line 974
    const/4 v11, 0x1

    #@d2
    .line 980
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_5
    if-nez v11, :cond_6

    #@d4
    .line 981
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@d6
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d9
    .line 982
    iget v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@db
    move-object/from16 v0, p0

    #@dd
    invoke-direct {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    #@e0
    move-result-object v14

    #@e1
    .line 985
    .local v14, "status":Landroid/content/SyncStatusInfo;
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@e3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e6
    move-result v3

    #@e7
    add-int/lit8 v3, v3, -0x1

    #@e9
    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@ec
    move-result-wide v4

    #@ed
    .line 984
    invoke-virtual {v14, v3, v4, v5}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@f0
    .line 989
    .end local v14    # "status":Landroid/content/SyncStatusInfo;
    :cond_6
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@f3
    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@f6
    monitor-exit v16

    #@f7
    .line 993
    const/4 v3, 0x1

    #@f8
    move-object/from16 v0, p0

    #@fa
    invoke-direct {v0, v3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@fd
    .line 935
    return-void

    #@fe
    .line 963
    .restart local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    #@100
    goto :goto_0

    #@101
    .line 988
    .end local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .end local v10    # "N":I
    .end local v11    # "alreadyPresent":Z
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "i":I
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :catchall_0
    move-exception v3

    #@102
    .line 989
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@105
    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@108
    .line 988
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@109
    .line 941
    :catchall_1
    move-exception v3

    #@10a
    monitor-exit v16

    #@10b
    throw v3
.end method

.method public writeAllState()V
    .locals 2

    #@0
    .prologue
    .line 1796
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1799
    :try_start_0
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNumPendingFinished:I

    #@5
    if-lez v0, :cond_0

    #@7
    .line 1801
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writePendingOperationsLocked()V

    #@a
    .line 1805
    :cond_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@d
    .line 1806
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 1795
    return-void

    #@12
    .line 1796
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
