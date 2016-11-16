.class public Lcom/android/server/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x3

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

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

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

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

.field private mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

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

.field private mGrantSyncAdaptersAccountAccess:Z

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
.method static synthetic -get0()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 118
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "SERVER"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 119
    const-string/jumbo v1, "LOCAL"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 120
    const-string/jumbo v1, "POLL"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 121
    const-string/jumbo v1, "USER"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 122
    const-string/jumbo v1, "PERIODIC"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 123
    const-string/jumbo v1, "SERVICE"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 118
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    #@29
    .line 146
    new-instance v0, Ljava/util/HashMap;

    #@2b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2e
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    #@30
    .line 147
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    #@32
    const-string/jumbo v1, "contacts"

    #@35
    const-string/jumbo v2, "com.android.contacts"

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 148
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    #@3d
    const-string/jumbo v1, "calendar"

    #@40
    const-string/jumbo v2, "com.android.calendar"

    #@43
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 386
    const/4 v0, 0x0

    #@47
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@49
    .line 70
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
    .line 419
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@4
    .line 355
    new-instance v2, Landroid/util/SparseArray;

    #@6
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@9
    .line 354
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@b
    .line 358
    new-instance v2, Ljava/util/HashMap;

    #@d
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@10
    .line 357
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@12
    .line 361
    new-instance v2, Landroid/util/SparseArray;

    #@14
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@17
    .line 360
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    #@19
    .line 364
    new-instance v2, Landroid/util/SparseArray;

    #@1b
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@1e
    .line 363
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@20
    .line 367
    new-instance v2, Ljava/util/ArrayList;

    #@22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 366
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@27
    .line 370
    new-instance v2, Landroid/os/RemoteCallbackList;

    #@29
    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    #@2c
    .line 369
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@2e
    .line 374
    new-instance v2, Landroid/util/ArrayMap;

    #@30
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@33
    .line 373
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@35
    .line 376
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@37
    .line 379
    const/16 v2, 0x1c

    #@39
    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@3b
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@3d
    .line 410
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@3f
    .line 411
    new-instance v2, Landroid/util/SparseArray;

    #@41
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@44
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@46
    .line 420
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    #@48
    .line 421
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@4a
    .line 423
    const-string/jumbo v2, "GMT+0"

    #@4d
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@50
    move-result-object v2

    #@51
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@54
    move-result-object v2

    #@55
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@57
    .line 425
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    #@59
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v2

    #@5d
    .line 426
    const v3, 0x1120074

    #@60
    .line 425
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@63
    move-result v2

    #@64
    iput-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    #@66
    .line 428
    new-instance v1, Ljava/io/File;

    #@68
    const-string/jumbo v2, "system"

    #@6b
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@6e
    .line 429
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@70
    const-string/jumbo v2, "sync"

    #@73
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@76
    .line 430
    .local v0, "syncDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@79
    .line 432
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    #@7c
    .line 434
    new-instance v2, Landroid/util/AtomicFile;

    #@7e
    new-instance v3, Ljava/io/File;

    #@80
    const-string/jumbo v4, "accounts.xml"

    #@83
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@86
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@89
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@8b
    .line 435
    new-instance v2, Landroid/util/AtomicFile;

    #@8d
    new-instance v3, Ljava/io/File;

    #@8f
    const-string/jumbo v4, "status.bin"

    #@92
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@95
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@98
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@9a
    .line 436
    new-instance v2, Landroid/util/AtomicFile;

    #@9c
    new-instance v3, Ljava/io/File;

    #@9e
    const-string/jumbo v4, "stats.bin"

    #@a1
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@a4
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@a7
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@a9
    .line 438
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    #@ac
    .line 439
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    #@af
    .line 440
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    #@b2
    .line 441
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    #@b5
    .line 442
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@b8
    .line 443
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@bb
    .line 444
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    #@be
    .line 419
    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .locals 4
    .param p0, "syncTimeSeconds"    # J

    #@0
    .prologue
    .line 521
    const-wide/16 v0, 0x5

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 525
    const-wide/16 v0, 0x0

    #@8
    return-wide v0

    #@9
    .line 526
    :cond_0
    const-wide/32 v0, 0x15180

    #@c
    cmp-long v0, p0, v0

    #@e
    if-gez v0, :cond_1

    #@10
    .line 527
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
    .line 530
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
    .line 1360
    if-gez p2, :cond_0

    #@2
    .line 1361
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@4
    .line 1362
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@a
    .line 1363
    const/4 p3, 0x1

    #@b
    .line 1365
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
    .line 1366
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
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1368
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@31
    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    #@34
    .line 1369
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@36
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@39
    .line 1370
    if-eqz p3, :cond_2

    #@3b
    .line 1371
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@3e
    .line 1373
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
    .line 1289
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@2
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    #@5
    move-result-object v0

    #@6
    .line 1290
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

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 1313
    new-instance v1, Landroid/accounts/AccountAndUser;

    #@4
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@6
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@8
    invoke-direct {v1, v3, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@b
    .line 1314
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@13
    .line 1315
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_1

    #@15
    .line 1316
    if-eqz p2, :cond_0

    #@17
    .line 1317
    const-string/jumbo v3, "SyncManager"

    #@1a
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 1318
    const-string/jumbo v3, "SyncManager"

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, ": unknown account "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1321
    :cond_0
    return-object v6

    #@3f
    .line 1323
    :cond_1
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@41
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@43
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@49
    .line 1324
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_3

    #@4b
    .line 1325
    if-eqz p2, :cond_2

    #@4d
    .line 1326
    const-string/jumbo v3, "SyncManager"

    #@50
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_2

    #@56
    .line 1327
    const-string/jumbo v3, "SyncManager"

    #@59
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    const-string/jumbo v5, ": unknown provider "

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 1330
    :cond_2
    return-object v6

    #@77
    .line 1332
    :cond_3
    return-object v2
.end method

.method private getCurrentDayLocked()I
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1294
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v2

    #@7
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@a
    .line 1295
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@c
    const/4 v2, 0x6

    #@d
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@10
    move-result v0

    #@11
    .line 1296
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
    .line 1297
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@1d
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    #@23
    .line 1298
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@25
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    #@28
    .line 1299
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    #@2a
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    #@2c
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    #@2f
    .line 1300
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
    .line 1302
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
    .line 1164
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v0

    #@3
    .line 1165
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
    .line 1164
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
    .line 1193
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    .line 1194
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_0

    #@a
    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    #@c
    .end local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1196
    .restart local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1198
    :cond_0
    return-object v0
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1850
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
    .line 1854
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
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    #@0
    .prologue
    .line 1343
    const/4 v2, 0x0

    #@1
    .line 1344
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v1, Landroid/accounts/AccountAndUser;

    #@3
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@5
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@7
    invoke-direct {v1, v3, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    #@a
    .line 1345
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@12
    .line 1346
    .local v0, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_0

    #@14
    .line 1347
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@16
    .end local v0    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    #@19
    .line 1348
    .restart local v0    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 1350
    :cond_0
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@20
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@22
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@28
    .line 1351
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_1

    #@2a
    .line 1352
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@2d
    move-result-object v2

    #@2e
    .line 1353
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@30
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@32
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 1355
    :cond_1
    return-object v2
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 2
    .param p1, "authorityId"    # I

    #@0
    .prologue
    .line 1405
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/SyncStatusInfo;

    #@8
    .line 1406
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_0

    #@a
    .line 1407
    new-instance v0, Landroid/content/SyncStatusInfo;

    #@c
    .end local v0    # "status":Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    #@f
    .line 1408
    .restart local v0    # "status":Landroid/content/SyncStatusInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 1410
    :cond_0
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .locals 2

    #@0
    .prologue
    .line 460
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 461
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 463
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
    .line 452
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 453
    return-void

    #@5
    .line 455
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    .line 456
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    #@b
    invoke-direct {v1, p0, v0}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    #@e
    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    #@10
    .line 451
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .locals 2
    .param p1, "syncDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 1562
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "pending.bin"

    #@5
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    .line 1563
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1564
    return-void

    #@f
    .line 1566
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@12
    .line 1561
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1575
    const/4 v9, 0x0

    #@2
    .line 1577
    .local v9, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 1578
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v0

    #@d
    .line 1579
    .local v0, "N":I
    const/4 v5, 0x0

    #@e
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    #@10
    .line 1580
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@18
    .line 1582
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    #@1a
    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@1c
    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@1e
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v7

    #@22
    check-cast v7, Ljava/lang/String;

    #@24
    .line 1583
    .local v7, "newAuthorityName":Ljava/lang/String;
    if-nez v7, :cond_1

    #@26
    .line 1579
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1589
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1593
    iget-boolean v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@2e
    if-eqz v10, :cond_0

    #@30
    .line 1599
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@32
    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@34
    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@36
    .line 1601
    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@38
    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@3a
    .line 1599
    invoke-direct {v8, v10, v7, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@3d
    .line 1602
    .local v8, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string/jumbo v10, "cleanup"

    #@40
    invoke-direct {p0, v8, v10}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@43
    move-result-object v10

    #@44
    if-nez v10, :cond_0

    #@46
    .line 1607
    const/4 v10, -0x1

    #@47
    invoke-direct {p0, v8, v10, v13}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@4a
    move-result-object v6

    #@4b
    .line 1608
    .local v6, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v10, 0x1

    #@4c
    iput-boolean v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@4e
    .line 1609
    const/4 v9, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 1612
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "newAuthorityName":Ljava/lang/String;
    .end local v8    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v4

    #@54
    .local v4, "authorityInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v10

    #@58
    if-eqz v10, :cond_3

    #@5a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@60
    .line 1614
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@62
    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@64
    .line 1615
    iget-object v11, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@66
    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@68
    .line 1616
    iget-object v12, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@6a
    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@6c
    .line 1613
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    #@6f
    .line 1618
    const/4 v9, 0x1

    #@70
    goto :goto_2

    #@71
    .line 1621
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    return v9
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 448
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
    .line 1640
    const/4 v5, 0x0

    #@1
    .line 1641
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v11, -0x1

    #@2
    .line 1643
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
    .line 1649
    :goto_0
    if-ltz v11, :cond_5

    #@17
    .line 1650
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
    .line 1651
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
    .line 1652
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
    .line 1653
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
    .line 1654
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
    .line 1655
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
    .line 1656
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
    .line 1657
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
    .line 1658
    .local v7, "className":Ljava/lang/String;
    if-nez v15, :cond_6

    #@91
    const/16 v16, 0x0

    #@93
    .line 1659
    .local v16, "userId":I
    :goto_1
    if-nez v4, :cond_0

    #@95
    if-nez v13, :cond_0

    #@97
    .line 1660
    const-string/jumbo v4, "com.google"

    #@9a
    .line 1661
    const/16 v17, -0x1

    #@9c
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9f
    move-result-object v14

    #@a0
    .line 1663
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
    .line 1664
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
    .line 1665
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
    .line 1667
    const-string/jumbo v19, " accountType="

    #@d1
    .line 1665
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
    .line 1668
    const-string/jumbo v19, " auth="

    #@de
    .line 1665
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
    .line 1669
    const-string/jumbo v19, " package="

    #@eb
    .line 1665
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
    .line 1670
    const-string/jumbo v19, " class="

    #@f8
    .line 1665
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
    .line 1671
    const-string/jumbo v19, " user="

    #@105
    .line 1665
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
    .line 1672
    const-string/jumbo v19, " enabled="

    #@114
    .line 1665
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
    .line 1673
    const-string/jumbo v19, " syncable="

    #@121
    .line 1665
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
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@132
    .line 1675
    :cond_1
    if-nez v5, :cond_4

    #@134
    .line 1676
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
    .line 1677
    const-string/jumbo v17, "SyncManagerFile"

    #@142
    const-string/jumbo v18, "Creating authority entry"

    #@145
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@148
    .line 1679
    :cond_2
    const/4 v12, 0x0

    #@149
    .line 1680
    .local v12, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    if-eqz v3, :cond_3

    #@14b
    if-eqz v6, :cond_3

    #@14d
    .line 1681
    new-instance v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@14f
    .line 1682
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    new-instance v17, Landroid/accounts/Account;

    #@151
    move-object/from16 v0, v17

    #@153
    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@156
    .line 1681
    move-object/from16 v0, v17

    #@158
    move/from16 v1, v16

    #@15a
    invoke-direct {v12, v0, v6, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@15d
    .line 1685
    :cond_3
    if-eqz v12, :cond_4

    #@15f
    .line 1686
    const/16 v17, 0x0

    #@161
    move-object/from16 v0, p0

    #@163
    move/from16 v1, v17

    #@165
    invoke-direct {v0, v12, v11, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@168
    move-result-object v5

    #@169
    .line 1692
    if-lez p2, :cond_4

    #@16b
    .line 1693
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@16d
    move-object/from16 v17, v0

    #@16f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    #@172
    .line 1697
    :cond_4
    if-eqz v5, :cond_b

    #@174
    .line 1698
    if-eqz v10, :cond_7

    #@176
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@179
    move-result v17

    #@17a
    :goto_2
    move/from16 v0, v17

    #@17c
    iput-boolean v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@17e
    .line 1700
    if-nez v14, :cond_8

    #@180
    .line 1701
    const/16 v17, -0x1

    #@182
    .line 1700
    :goto_3
    :try_start_1
    move/from16 v0, v17

    #@184
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@186
    .line 1720
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
    :cond_5
    :goto_4
    return-object v5

    #@187
    .line 1646
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catch_0
    move-exception v8

    #@188
    .line 1647
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v17, "SyncManager"

    #@18b
    const-string/jumbo v18, "the id of the authority is null"

    #@18e
    move-object/from16 v0, v17

    #@190
    move-object/from16 v1, v18

    #@192
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@195
    goto/16 :goto_0

    #@197
    .line 1644
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    #@198
    .line 1645
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "SyncManager"

    #@19b
    const-string/jumbo v18, "error parsing the id of the authority"

    #@19e
    move-object/from16 v0, v17

    #@1a0
    move-object/from16 v1, v18

    #@1a2
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a5
    goto/16 :goto_0

    #@1a7
    .line 1658
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v6    # "authorityName":Ljava/lang/String;
    .restart local v7    # "className":Ljava/lang/String;
    .restart local v10    # "enabled":Ljava/lang/String;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "syncable":Ljava/lang/String;
    .restart local v15    # "user":Ljava/lang/String;
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1aa
    move-result v16

    #@1ab
    .restart local v16    # "userId":I
    goto/16 :goto_1

    #@1ad
    .line 1698
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_7
    const/16 v17, 0x1

    #@1af
    goto :goto_2

    #@1b0
    .line 1701
    :cond_8
    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@1b3
    move-result v17

    #@1b4
    goto :goto_3

    #@1b5
    .line 1702
    :catch_2
    move-exception v9

    #@1b6
    .line 1705
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "unknown"

    #@1b9
    move-object/from16 v0, v17

    #@1bb
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1be
    move-result v17

    #@1bf
    if-eqz v17, :cond_9

    #@1c1
    .line 1706
    const/16 v17, -0x1

    #@1c3
    move/from16 v0, v17

    #@1c5
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@1c7
    goto :goto_4

    #@1c8
    .line 1708
    :cond_9
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@1cb
    move-result v17

    #@1cc
    if-eqz v17, :cond_a

    #@1ce
    .line 1709
    const/16 v17, 0x1

    #@1d0
    .line 1708
    :goto_5
    move/from16 v0, v17

    #@1d2
    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@1d4
    goto :goto_4

    #@1d5
    .line 1709
    :cond_a
    const/16 v17, 0x0

    #@1d7
    goto :goto_5

    #@1d8
    .line 1714
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string/jumbo v17, "SyncManager"

    #@1db
    new-instance v18, Ljava/lang/StringBuilder;

    #@1dd
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1e0
    const-string/jumbo v19, "Failure adding authority: account="

    #@1e3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v18

    #@1e7
    move-object/from16 v0, v18

    #@1e9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v18

    #@1ed
    .line 1715
    const-string/jumbo v19, " auth="

    #@1f0
    .line 1714
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v18

    #@1f4
    move-object/from16 v0, v18

    #@1f6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v18

    #@1fa
    .line 1716
    const-string/jumbo v19, " enabled="

    #@1fd
    .line 1714
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v18

    #@201
    move-object/from16 v0, v18

    #@203
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v18

    #@207
    .line 1717
    const-string/jumbo v19, " syncable="

    #@20a
    .line 1714
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v18

    #@20e
    move-object/from16 v0, v18

    #@210
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v18

    #@214
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@217
    move-result-object v18

    #@218
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21b
    goto/16 :goto_4
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1764
    const-string/jumbo v6, "name"

    #@4
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 1765
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "type"

    #@b
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 1766
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v6, "value1"

    #@12
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 1767
    .local v4, "value1":Ljava/lang/String;
    const-string/jumbo v6, "value2"

    #@19
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    .line 1770
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
    .line 1771
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@29
    move-result-wide v6

    #@2a
    invoke-virtual {p2, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@2d
    .line 1763
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 1772
    :cond_1
    const-string/jumbo v6, "integer"

    #@31
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_2

    #@37
    .line 1773
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
    .line 1785
    :catch_0
    move-exception v1

    #@40
    .line 1786
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "SyncManager"

    #@43
    const-string/jumbo v7, "error parsing bundle value"

    #@46
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    goto :goto_0

    #@4a
    .line 1774
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
    .line 1775
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
    .line 1787
    :catch_1
    move-exception v0

    #@5c
    .line 1788
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SyncManager"

    #@5f
    const-string/jumbo v7, "error parsing bundle value"

    #@62
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@65
    goto :goto_0

    #@66
    .line 1776
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
    .line 1777
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@72
    move-result v6

    #@73
    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@76
    goto :goto_0

    #@77
    .line 1778
    :cond_4
    const-string/jumbo v6, "boolean"

    #@7a
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v6

    #@7e
    if-eqz v6, :cond_5

    #@80
    .line 1779
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@83
    move-result v6

    #@84
    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@87
    goto :goto_0

    #@88
    .line 1780
    :cond_5
    const-string/jumbo v6, "string"

    #@8b
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v6

    #@8f
    if-eqz v6, :cond_6

    #@91
    .line 1781
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@94
    goto :goto_0

    #@95
    .line 1782
    :cond_6
    const-string/jumbo v6, "account"

    #@98
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v6

    #@9c
    if-eqz v6, :cond_0

    #@9e
    .line 1783
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
    .line 1625
    const-string/jumbo v6, "user"

    #@4
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    .line 1626
    .local v4, "user":Ljava/lang/String;
    const/4 v5, 0x0

    #@9
    .line 1628
    .local v5, "userId":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v5

    #@d
    .line 1634
    :goto_0
    const-string/jumbo v6, "enabled"

    #@10
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 1635
    .local v2, "enabled":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@16
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    .line 1636
    :goto_1
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@1c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@23
    .line 1624
    return-void

    #@24
    .line 1631
    .end local v2    # "enabled":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@25
    .line 1632
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SyncManager"

    #@28
    const-string/jumbo v7, "the user in listen-for-tickles is null"

    #@2b
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0

    #@2f
    .line 1629
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    #@30
    .line 1630
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "SyncManager"

    #@33
    const-string/jumbo v7, "error parsing the user for listen-for-tickles"

    #@36
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 1635
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
    .line 1727
    new-instance v5, Landroid/os/Bundle;

    #@2
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1728
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
    .line 1729
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
    .line 1733
    .local v13, "flexValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-wide v6

    #@1d
    .line 1742
    .local v6, "period":J
    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    move-result-wide v8

    #@21
    .line 1755
    .local v8, "flextime":J
    :goto_0
    new-instance v2, Landroid/content/PeriodicSync;

    #@23
    move-object/from16 v0, p2

    #@25
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@27
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@29
    .line 1756
    move-object/from16 v0, p2

    #@2b
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2d
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@2f
    .line 1755
    invoke-direct/range {v2 .. v9}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    #@32
    .line 1759
    .local v2, "periodicSync":Landroid/content/PeriodicSync;
    move-object/from16 v0, p2

    #@34
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@39
    .line 1760
    return-object v2

    #@3a
    .line 1737
    .end local v2    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v6    # "period":J
    .end local v8    # "flextime":J
    :catch_0
    move-exception v10

    #@3b
    .line 1738
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SyncManager"

    #@3e
    const-string/jumbo v4, "the period of a periodic sync is null"

    #@41
    invoke-static {v3, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    .line 1739
    const/4 v3, 0x0

    #@45
    return-object v3

    #@46
    .line 1734
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v11

    #@47
    .line 1735
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SyncManager"

    #@4a
    const-string/jumbo v4, "error parsing the period of a periodic sync"

    #@4d
    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    .line 1736
    const/4 v3, 0x0

    #@51
    return-object v3

    #@52
    .line 1748
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "period":J
    :catch_2
    move-exception v12

    #@53
    .line 1749
    .local v12, "expected":Ljava/lang/NullPointerException;
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    #@56
    move-result-wide v8

    #@57
    .line 1750
    .restart local v8    # "flextime":J
    const-string/jumbo v3, "SyncManager"

    #@5a
    new-instance v4, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v15, "No flex time specified for this sync, using a default. period: "

    #@62
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    .line 1751
    const-string/jumbo v15, " flex: "

    #@6d
    .line 1750
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    goto :goto_0

    #@7d
    .line 1743
    .end local v8    # "flextime":J
    .end local v12    # "expected":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v11

    #@7e
    .line 1744
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    #@81
    move-result-wide v8

    #@82
    .line 1745
    .restart local v8    # "flextime":J
    const-string/jumbo v3, "SyncManager"

    #@85
    new-instance v4, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v15, "Error formatting value parsed for periodic sync flex: "

    #@8d
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    .line 1746
    const-string/jumbo v15, ", using default: "

    #@98
    .line 1745
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v4

    #@a4
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    goto/16 :goto_0
.end method

.method private readAccountInfoLocked()V
    .locals 25

    #@0
    .prologue
    .line 1450
    const/4 v11, -0x1

    #@1
    .line 1451
    .local v11, "highestAuthorityId":I
    const/4 v10, 0x0

    #@2
    .line 1453
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
    .line 1454
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
    .line 1455
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
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1457
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@3e
    move-result-object v16

    #@3f
    .line 1458
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
    .line 1459
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@4f
    move-result v9

    #@50
    .line 1460
    .local v9, "eventType":I
    :goto_0
    const/16 v22, 0x2

    #@52
    move/from16 v0, v22

    #@54
    if-eq v9, v0, :cond_1

    #@56
    .line 1461
    const/16 v22, 0x1

    #@58
    move/from16 v0, v22

    #@5a
    if-eq v9, v0, :cond_1

    #@5c
    .line 1462
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@5f
    move-result v9

    #@60
    goto :goto_0

    #@61
    .line 1464
    :cond_1
    const/16 v22, 0x1

    #@63
    move/from16 v0, v22

    #@65
    if-ne v9, v0, :cond_3

    #@67
    .line 1465
    const-string/jumbo v22, "SyncManager"

    #@6a
    const-string/jumbo v23, "No initial accounts"

    #@6d
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    .line 1544
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
    .line 1545
    if-eqz v10, :cond_2

    #@84
    .line 1547
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@87
    .line 1466
    :cond_2
    :goto_1
    return-void

    #@88
    .line 1548
    :catch_0
    move-exception v8

    #@89
    .local v8, "e1":Ljava/io/IOException;
    goto :goto_1

    #@8a
    .line 1469
    .end local v8    # "e1":Ljava/io/IOException;
    :cond_3
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@8d
    move-result-object v19

    #@8e
    .line 1470
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
    if-eqz v22, :cond_8

    #@9b
    .line 1471
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
    .line 1472
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
    .line 1475
    .local v21, "versionString":Ljava/lang/String;
    if-nez v21, :cond_a

    #@bb
    const/16 v20, 0x0

    #@bd
    .line 1480
    .local v20, "version":I
    :goto_2
    const/16 v22, 0x3

    #@bf
    move/from16 v0, v20

    #@c1
    move/from16 v1, v22

    #@c3
    if-ge v0, v1, :cond_4

    #@c5
    .line 1481
    const/16 v22, 0x1

    #@c7
    move/from16 v0, v22

    #@c9
    move-object/from16 v1, p0

    #@cb
    iput-boolean v0, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    #@cd
    .line 1484
    :cond_4
    const-string/jumbo v22, "nextAuthorityId"

    #@d0
    const/16 v23, 0x0

    #@d2
    move-object/from16 v0, v16

    #@d4
    move-object/from16 v1, v23

    #@d6
    move-object/from16 v2, v22

    #@d8
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@db
    move-result-object v14

    #@dc
    .line 1486
    .local v14, "nextIdString":Ljava/lang/String;
    if-nez v14, :cond_b

    #@de
    const/4 v12, 0x0

    #@df
    .line 1487
    .local v12, "id":I
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    #@e1
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@e3
    move/from16 v22, v0

    #@e5
    move/from16 v0, v22

    #@e7
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    #@ea
    move-result v22

    #@eb
    move/from16 v0, v22

    #@ed
    move-object/from16 v1, p0

    #@ef
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@f1
    .line 1491
    .end local v12    # "id":I
    :goto_4
    :try_start_4
    const-string/jumbo v22, "offsetInSeconds"

    #@f4
    const/16 v23, 0x0

    #@f6
    move-object/from16 v0, v16

    #@f8
    move-object/from16 v1, v23

    #@fa
    move-object/from16 v2, v22

    #@fc
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ff
    move-result-object v15

    #@100
    .line 1493
    .local v15, "offsetString":Ljava/lang/String;
    if-nez v15, :cond_c

    #@102
    const/16 v22, 0x0

    #@104
    :goto_5
    :try_start_5
    move/from16 v0, v22

    #@106
    move-object/from16 v1, p0

    #@108
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@10a
    .line 1497
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    #@10c
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    #@10e
    move/from16 v22, v0

    #@110
    if-nez v22, :cond_5

    #@112
    .line 1498
    new-instance v18, Ljava/util/Random;

    #@114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@117
    move-result-wide v22

    #@118
    move-object/from16 v0, v18

    #@11a
    move-wide/from16 v1, v22

    #@11c
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    #@11f
    .line 1499
    .local v18, "random":Ljava/util/Random;
    const v22, 0x15180

    #@122
    move-object/from16 v0, v18

    #@124
    move/from16 v1, v22

    #@126
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    #@129
    move-result v22

    #@12a
    move/from16 v0, v22

    #@12c
    move-object/from16 v1, p0

    #@12e
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    #@130
    .line 1501
    .end local v18    # "random":Ljava/util/Random;
    :cond_5
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@134
    move-object/from16 v23, v0

    #@136
    if-eqz v13, :cond_e

    #@138
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@13b
    move-result v22

    #@13c
    :goto_7
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13f
    move-result-object v22

    #@140
    const/16 v24, 0x0

    #@142
    move-object/from16 v0, v23

    #@144
    move/from16 v1, v24

    #@146
    move-object/from16 v2, v22

    #@148
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14b
    .line 1502
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@14e
    move-result v9

    #@14f
    .line 1503
    const/4 v4, 0x0

    #@150
    .line 1504
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/16 v17, 0x0

    #@152
    .line 1506
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_6
    const/16 v22, 0x2

    #@154
    move/from16 v0, v22

    #@156
    if-ne v9, v0, :cond_7

    #@158
    .line 1507
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@15b
    move-result-object v19

    #@15c
    .line 1508
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@15f
    move-result v22

    #@160
    const/16 v23, 0x2

    #@162
    move/from16 v0, v22

    #@164
    move/from16 v1, v23

    #@166
    if-ne v0, v1, :cond_13

    #@168
    .line 1509
    const-string/jumbo v22, "authority"

    #@16b
    move-object/from16 v0, v22

    #@16d
    move-object/from16 v1, v19

    #@16f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@172
    move-result v22

    #@173
    if-eqz v22, :cond_11

    #@175
    .line 1510
    move-object/from16 v0, p0

    #@177
    move-object/from16 v1, v16

    #@179
    move/from16 v2, v20

    #@17b
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@17e
    move-result-object v4

    #@17f
    .line 1511
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/16 v17, 0x0

    #@181
    .line 1512
    .local v17, "periodicSync":Landroid/content/PeriodicSync;
    if-eqz v4, :cond_f

    #@183
    .line 1513
    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@185
    move/from16 v22, v0

    #@187
    move/from16 v0, v22

    #@189
    if-le v0, v11, :cond_7

    #@18b
    .line 1514
    iget v11, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@18d
    .line 1533
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_7
    :goto_8
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@190
    move-result v9

    #@191
    .line 1534
    const/16 v22, 0x1

    #@193
    move/from16 v0, v22

    #@195
    if-ne v9, v0, :cond_6

    #@197
    .line 1544
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v20    # "version":I
    .end local v21    # "versionString":Ljava/lang/String;
    :cond_8
    add-int/lit8 v22, v11, 0x1

    #@199
    move-object/from16 v0, p0

    #@19b
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@19d
    move/from16 v23, v0

    #@19f
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    #@1a2
    move-result v22

    #@1a3
    move/from16 v0, v22

    #@1a5
    move-object/from16 v1, p0

    #@1a7
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@1a9
    .line 1545
    if-eqz v10, :cond_9

    #@1ab
    .line 1547
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@1ae
    .line 1553
    :cond_9
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    #@1b1
    .line 1449
    return-void

    #@1b2
    .line 1475
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v21    # "versionString":Ljava/lang/String;
    :cond_a
    :try_start_8
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1b5
    move-result v20

    #@1b6
    .restart local v20    # "version":I
    goto/16 :goto_2

    #@1b8
    .line 1476
    .end local v20    # "version":I
    :catch_1
    move-exception v6

    #@1b9
    .line 1477
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/16 v20, 0x0

    #@1bb
    .restart local v20    # "version":I
    goto/16 :goto_2

    #@1bd
    .line 1486
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    :cond_b
    :try_start_9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1c0
    move-result v12

    #@1c1
    .restart local v12    # "id":I
    goto/16 :goto_3

    #@1c3
    .line 1493
    .end local v12    # "id":I
    .restart local v15    # "offsetString":Ljava/lang/String;
    :cond_c
    :try_start_a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@1c6
    move-result v22

    #@1c7
    goto/16 :goto_5

    #@1c9
    .line 1494
    :catch_2
    move-exception v6

    #@1ca
    .line 1495
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const/16 v22, 0x0

    #@1cc
    :try_start_b
    move/from16 v0, v22

    #@1ce
    move-object/from16 v1, p0

    #@1d0
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@1d2
    goto/16 :goto_6

    #@1d4
    .line 1536
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

    #@1d5
    .line 1537
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c
    const-string/jumbo v22, "SyncManager"

    #@1d8
    const-string/jumbo v23, "Error reading accounts"

    #@1db
    move-object/from16 v0, v22

    #@1dd
    move-object/from16 v1, v23

    #@1df
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@1e2
    .line 1544
    add-int/lit8 v22, v11, 0x1

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@1e8
    move/from16 v23, v0

    #@1ea
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    #@1ed
    move-result v22

    #@1ee
    move/from16 v0, v22

    #@1f0
    move-object/from16 v1, p0

    #@1f2
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@1f4
    .line 1545
    if-eqz v10, :cond_d

    #@1f6
    .line 1547
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    #@1f9
    .line 1538
    :cond_d
    :goto_a
    return-void

    #@1fa
    .line 1501
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
    :cond_e
    const/16 v22, 0x1

    #@1fc
    goto/16 :goto_7

    #@1fe
    .line 1517
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_f
    const/16 v22, 0x3

    #@200
    :try_start_e
    move/from16 v0, v22

    #@202
    new-array v0, v0, [Ljava/lang/Object;

    #@204
    move-object/from16 v22, v0

    #@206
    const-string/jumbo v23, "26513719"

    #@209
    const/16 v24, 0x0

    #@20b
    aput-object v23, v22, v24

    #@20d
    const/16 v23, -0x1

    #@20f
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@212
    move-result-object v23

    #@213
    const/16 v24, 0x1

    #@215
    aput-object v23, v22, v24

    #@217
    .line 1518
    const-string/jumbo v23, "Malformed authority"

    #@21a
    const/16 v24, 0x2

    #@21c
    aput-object v23, v22, v24

    #@21e
    .line 1517
    const v23, 0x534e4554

    #@221
    move/from16 v0, v23

    #@223
    move-object/from16 v1, v22

    #@225
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@228
    goto/16 :goto_8

    #@22a
    .line 1539
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "version":I
    .end local v21    # "versionString":Ljava/lang/String;
    :catch_4
    move-exception v5

    #@22b
    .line 1540
    .local v5, "e":Ljava/io/IOException;
    if-nez v10, :cond_15

    #@22d
    :try_start_f
    const-string/jumbo v22, "SyncManager"

    #@230
    const-string/jumbo v23, "No initial accounts"

    #@233
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@236
    .line 1544
    :goto_b
    add-int/lit8 v22, v11, 0x1

    #@238
    move-object/from16 v0, p0

    #@23a
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@23c
    move/from16 v23, v0

    #@23e
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    #@241
    move-result v22

    #@242
    move/from16 v0, v22

    #@244
    move-object/from16 v1, p0

    #@246
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@248
    .line 1545
    if-eqz v10, :cond_10

    #@24a
    .line 1547
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    #@24d
    .line 1542
    :cond_10
    :goto_c
    return-void

    #@24e
    .line 1520
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
    :cond_11
    :try_start_11
    const-string/jumbo v22, "listenForTickles"

    #@251
    move-object/from16 v0, v22

    #@253
    move-object/from16 v1, v19

    #@255
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@258
    move-result v22

    #@259
    if-eqz v22, :cond_7

    #@25b
    .line 1521
    move-object/from16 v0, p0

    #@25d
    move-object/from16 v1, v16

    #@25f
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@262
    goto/16 :goto_8

    #@264
    .line 1543
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

    #@265
    .line 1544
    add-int/lit8 v23, v11, 0x1

    #@267
    move-object/from16 v0, p0

    #@269
    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@26b
    move/from16 v24, v0

    #@26d
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    #@270
    move-result v23

    #@271
    move/from16 v0, v23

    #@273
    move-object/from16 v1, p0

    #@275
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@277
    .line 1545
    if-eqz v10, :cond_12

    #@279
    .line 1547
    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    #@27c
    .line 1543
    :cond_12
    :goto_d
    throw v22

    #@27d
    .line 1523
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "version":I
    .restart local v21    # "versionString":Ljava/lang/String;
    :cond_13
    :try_start_13
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@280
    move-result v22

    #@281
    const/16 v23, 0x3

    #@283
    move/from16 v0, v22

    #@285
    move/from16 v1, v23

    #@287
    if-ne v0, v1, :cond_14

    #@289
    .line 1524
    const-string/jumbo v22, "periodicSync"

    #@28c
    move-object/from16 v0, v22

    #@28e
    move-object/from16 v1, v19

    #@290
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@293
    move-result v22

    #@294
    if-eqz v22, :cond_7

    #@296
    if-eqz v4, :cond_7

    #@298
    .line 1525
    move-object/from16 v0, p0

    #@29a
    move-object/from16 v1, v16

    #@29c
    invoke-direct {v0, v1, v4}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    #@29f
    move-result-object v17

    #@2a0
    .local v17, "periodicSync":Landroid/content/PeriodicSync;
    goto/16 :goto_8

    #@2a2
    .line 1527
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_14
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@2a5
    move-result v22

    #@2a6
    const/16 v23, 0x4

    #@2a8
    move/from16 v0, v22

    #@2aa
    move/from16 v1, v23

    #@2ac
    if-ne v0, v1, :cond_7

    #@2ae
    if-eqz v17, :cond_7

    #@2b0
    .line 1528
    const-string/jumbo v22, "extra"

    #@2b3
    move-object/from16 v0, v22

    #@2b5
    move-object/from16 v1, v19

    #@2b7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2ba
    move-result v22

    #@2bb
    if-eqz v22, :cond_7

    #@2bd
    .line 1529
    move-object/from16 v0, v17

    #@2bf
    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@2c1
    move-object/from16 v22, v0

    #@2c3
    move-object/from16 v0, p0

    #@2c5
    move-object/from16 v1, v16

    #@2c7
    move-object/from16 v2, v22

    #@2c9
    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@2cc
    goto/16 :goto_8

    #@2ce
    .line 1548
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v20    # "version":I
    .end local v21    # "versionString":Ljava/lang/String;
    :catch_5
    move-exception v8

    #@2cf
    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_9

    #@2d1
    .line 1541
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_15
    :try_start_14
    const-string/jumbo v22, "SyncManager"

    #@2d4
    const-string/jumbo v23, "Error reading accounts"

    #@2d7
    move-object/from16 v0, v22

    #@2d9
    move-object/from16 v1, v23

    #@2db
    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@2de
    goto/16 :goto_b

    #@2e0
    .line 1548
    :catch_6
    move-exception v8

    #@2e1
    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_c

    #@2e3
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v8

    #@2e4
    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_a

    #@2e6
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_8
    move-exception v8

    #@2e7
    .restart local v8    # "e1":Ljava/io/IOException;
    goto :goto_d

    #@2e8
    .line 1488
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

    #@2e9
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .locals 26

    #@0
    .prologue
    .line 1864
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
    .line 1865
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    .line 1866
    return-void

    #@12
    .line 1868
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@15
    move-result-object v22

    #@16
    .line 1869
    .local v22, "path":Ljava/lang/String;
    const/4 v3, 0x0

    #@17
    .line 1871
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    #@18
    .line 1872
    const/4 v5, 0x1

    #@19
    .line 1871
    :try_start_0
    move-object/from16 v0, v22

    #@1b
    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v3

    #@1f
    .line 1876
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-eqz v3, :cond_12

    #@21
    .line 1877
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
    .line 1880
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
    .line 1881
    const-string/jumbo v4, "SyncManagerFile"

    #@38
    const-string/jumbo v5, "Reading legacy sync accounts db"

    #@3b
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1883
    :cond_1
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    #@40
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    #@43
    .line 1884
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "stats, status"

    #@46
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    #@49
    .line 1885
    new-instance v20, Ljava/util/HashMap;

    #@4b
    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    #@4e
    .line 1886
    .local v20, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "_id"

    #@51
    const-string/jumbo v5, "status._id as _id"

    #@54
    move-object/from16 v0, v20

    #@56
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 1887
    const-string/jumbo v4, "account"

    #@5c
    const-string/jumbo v5, "stats.account as account"

    #@5f
    move-object/from16 v0, v20

    #@61
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    .line 1888
    if-eqz v18, :cond_2

    #@66
    .line 1889
    const-string/jumbo v4, "account_type"

    #@69
    const-string/jumbo v5, "stats.account_type as account_type"

    #@6c
    move-object/from16 v0, v20

    #@6e
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 1891
    :cond_2
    const-string/jumbo v4, "authority"

    #@74
    const-string/jumbo v5, "stats.authority as authority"

    #@77
    move-object/from16 v0, v20

    #@79
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 1892
    const-string/jumbo v4, "totalElapsedTime"

    #@7f
    const-string/jumbo v5, "totalElapsedTime"

    #@82
    move-object/from16 v0, v20

    #@84
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 1893
    const-string/jumbo v4, "numSyncs"

    #@8a
    const-string/jumbo v5, "numSyncs"

    #@8d
    move-object/from16 v0, v20

    #@8f
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 1894
    const-string/jumbo v4, "numSourceLocal"

    #@95
    const-string/jumbo v5, "numSourceLocal"

    #@98
    move-object/from16 v0, v20

    #@9a
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    .line 1895
    const-string/jumbo v4, "numSourcePoll"

    #@a0
    const-string/jumbo v5, "numSourcePoll"

    #@a3
    move-object/from16 v0, v20

    #@a5
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 1896
    const-string/jumbo v4, "numSourceServer"

    #@ab
    const-string/jumbo v5, "numSourceServer"

    #@ae
    move-object/from16 v0, v20

    #@b0
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    .line 1897
    const-string/jumbo v4, "numSourceUser"

    #@b6
    const-string/jumbo v5, "numSourceUser"

    #@b9
    move-object/from16 v0, v20

    #@bb
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 1898
    const-string/jumbo v4, "lastSuccessSource"

    #@c1
    const-string/jumbo v5, "lastSuccessSource"

    #@c4
    move-object/from16 v0, v20

    #@c6
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 1899
    const-string/jumbo v4, "lastSuccessTime"

    #@cc
    const-string/jumbo v5, "lastSuccessTime"

    #@cf
    move-object/from16 v0, v20

    #@d1
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d4
    .line 1900
    const-string/jumbo v4, "lastFailureSource"

    #@d7
    const-string/jumbo v5, "lastFailureSource"

    #@da
    move-object/from16 v0, v20

    #@dc
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    .line 1901
    const-string/jumbo v4, "lastFailureTime"

    #@e2
    const-string/jumbo v5, "lastFailureTime"

    #@e5
    move-object/from16 v0, v20

    #@e7
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 1902
    const-string/jumbo v4, "lastFailureMesg"

    #@ed
    const-string/jumbo v5, "lastFailureMesg"

    #@f0
    move-object/from16 v0, v20

    #@f2
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 1903
    const-string/jumbo v4, "pending"

    #@f8
    const-string/jumbo v5, "pending"

    #@fb
    move-object/from16 v0, v20

    #@fd
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    .line 1904
    move-object/from16 v0, v20

    #@102
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    #@105
    .line 1905
    const-string/jumbo v4, "stats._id = status.stats_id"

    #@108
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    #@10b
    .line 1906
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
    .line 1907
    .local v14, "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@118
    move-result v4

    #@119
    if-eqz v4, :cond_b

    #@11b
    .line 1908
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
    .line 1909
    .local v10, "accountName":Ljava/lang/String;
    if-eqz v18, :cond_9

    #@128
    .line 1910
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
    .line 1911
    .local v11, "accountType":Ljava/lang/String;
    :goto_3
    if-nez v11, :cond_4

    #@135
    .line 1912
    const-string/jumbo v11, "com.google"

    #@138
    .line 1914
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
    .line 1917
    .local v13, "authorityName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@145
    new-instance v5, Landroid/accounts/Account;

    #@147
    invoke-direct {v5, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14a
    .line 1919
    const/4 v6, 0x0

    #@14b
    .line 1917
    invoke-direct {v4, v5, v13, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@14e
    .line 1920
    const/4 v5, -0x1

    #@14f
    .line 1921
    const/4 v6, 0x0

    #@150
    .line 1916
    move-object/from16 v0, p0

    #@152
    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@155
    move-result-object v12

    #@156
    .line 1922
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v12, :cond_3

    #@158
    .line 1923
    move-object/from16 v0, p0

    #@15a
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@15c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@15f
    move-result v19

    #@160
    .line 1924
    .local v19, "i":I
    const/16 v17, 0x0

    #@162
    .line 1925
    .local v17, "found":Z
    const/16 v24, 0x0

    #@164
    .line 1926
    :cond_5
    if-lez v19, :cond_6

    #@166
    .line 1927
    add-int/lit8 v19, v19, -0x1

    #@168
    .line 1928
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
    .line 1929
    .local v24, "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v24

    #@176
    iget v4, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    #@178
    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@17a
    if-ne v4, v5, :cond_5

    #@17c
    .line 1930
    const/16 v17, 0x1

    #@17e
    .line 1934
    .end local v24    # "st":Landroid/content/SyncStatusInfo;
    :cond_6
    if-nez v17, :cond_7

    #@180
    .line 1935
    new-instance v24, Landroid/content/SyncStatusInfo;

    #@182
    iget v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@184
    move-object/from16 v0, v24

    #@186
    invoke-direct {v0, v4}, Landroid/content/SyncStatusInfo;-><init>(I)V

    #@189
    .line 1936
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
    .line 1938
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
    .line 1939
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
    .line 1940
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
    .line 1941
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
    .line 1942
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
    .line 1943
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
    .line 1944
    const/4 v4, 0x0

    #@1d7
    move-object/from16 v0, v24

    #@1d9
    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@1db
    .line 1945
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
    .line 1946
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
    .line 1947
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
    .line 1948
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
    .line 1949
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
    .line 1950
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
    .line 1873
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
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
    .line 1877
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_8
    const/16 v18, 0x0

    #@22b
    .restart local v18    # "hasType":Z
    goto/16 :goto_1

    #@22d
    .line 1910
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const/4 v11, 0x0

    #@22e
    goto/16 :goto_3

    #@230
    .line 1950
    .restart local v11    # "accountType":Ljava/lang/String;
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "authorityName":Ljava/lang/String;
    .restart local v17    # "found":Z
    .restart local v19    # "i":I
    :cond_a
    const/4 v4, 0x0

    #@231
    goto :goto_4

    #@232
    .line 1954
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v17    # "found":Z
    .end local v19    # "i":I
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@235
    .line 1957
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    #@237
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    #@23a
    .line 1958
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "settings"

    #@23d
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    #@240
    .line 1959
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
    .line 1960
    :cond_c
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    #@24d
    move-result v4

    #@24e
    if-eqz v4, :cond_11

    #@250
    .line 1961
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
    .line 1962
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
    .line 1963
    .local v25, "value":Ljava/lang/String;
    if-eqz v21, :cond_c

    #@268
    .line 1964
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
    .line 1965
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
    .line 1966
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
    .line 1967
    const-string/jumbo v4, "sync_provider_"

    #@290
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@293
    move-result v4

    #@294
    .line 1968
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@297
    move-result v5

    #@298
    .line 1967
    move-object/from16 v0, v21

    #@29a
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29d
    move-result-object v23

    #@29e
    .line 1969
    .local v23, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a0
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2a2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@2a5
    move-result v19

    #@2a6
    .line 1970
    .restart local v19    # "i":I
    :cond_f
    :goto_7
    if-lez v19, :cond_c

    #@2a8
    .line 1971
    add-int/lit8 v19, v19, -0x1

    #@2aa
    .line 1972
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
    .line 1973
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
    .line 1974
    if-eqz v25, :cond_10

    #@2c4
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2c7
    move-result v4

    #@2c8
    :goto_8
    iput-boolean v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@2ca
    .line 1975
    const/4 v4, 0x1

    #@2cb
    iput v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@2cd
    goto :goto_7

    #@2ce
    .line 1974
    :cond_10
    const/4 v4, 0x1

    #@2cf
    goto :goto_8

    #@2d0
    .line 1981
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "provider":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_11
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    #@2d3
    .line 1983
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@2d6
    .line 1985
    new-instance v4, Ljava/io/File;

    #@2d8
    move-object/from16 v0, v22

    #@2da
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2dd
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@2e0
    .line 1862
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v18    # "hasType":Z
    .end local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    return-void
.end method

.method private readStatisticsLocked()V
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x64

    #@2
    .line 2101
    :try_start_0
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@4
    invoke-virtual {v7}, Landroid/util/AtomicFile;->readFully()[B

    #@7
    move-result-object v0

    #@8
    .line 2102
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@b
    move-result-object v4

    #@c
    .line 2103
    .local v4, "in":Landroid/os/Parcel;
    array-length v7, v0

    #@d
    const/4 v8, 0x0

    #@e
    invoke-virtual {v4, v0, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    #@11
    .line 2104
    const/4 v7, 0x0

    #@12
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    #@15
    .line 2106
    const/4 v5, 0x0

    #@16
    .line 2107
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
    .line 2108
    const/16 v7, 0x65

    #@1e
    if-eq v6, v7, :cond_1

    #@20
    .line 2109
    if-ne v6, v10, :cond_3

    #@22
    .line 2110
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    .line 2111
    .local v1, "day":I
    if-ne v6, v10, :cond_2

    #@28
    .line 2112
    add-int/lit16 v7, v1, -0x7d9

    #@2a
    add-int/lit16 v1, v7, 0x37a5

    #@2c
    .line 2114
    :cond_2
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@2e
    invoke-direct {v2, v1}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    #@31
    .line 2115
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v7

    #@35
    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@37
    .line 2116
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    #@3a
    move-result-wide v8

    #@3b
    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@3d
    .line 2117
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v7

    #@41
    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@43
    .line 2118
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    #@46
    move-result-wide v8

    #@47
    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@49
    .line 2119
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@4b
    array-length v7, v7

    #@4c
    if-ge v5, v7, :cond_0

    #@4e
    .line 2120
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@50
    aput-object v2, v7, v5

    #@52
    .line 2121
    add-int/lit8 v5, v5, 0x1

    #@54
    goto :goto_0

    #@55
    .line 2125
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
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 2099
    .end local v0    # "data":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "index":I
    .end local v6    # "token":I
    :cond_4
    :goto_1
    return-void

    #@70
    .line 2129
    :catch_0
    move-exception v3

    #@71
    .line 2130
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "SyncManager"

    #@74
    const-string/jumbo v8, "No initial statistics"

    #@77
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    goto :goto_1
.end method

.method private readStatusLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 1996
    const-string/jumbo v5, "SyncManagerFile"

    #@4
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 1997
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
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2000
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@2c
    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    #@2f
    move-result-object v0

    #@30
    .line 2001
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@33
    move-result-object v2

    #@34
    .line 2002
    .local v2, "in":Landroid/os/Parcel;
    array-length v5, v0

    #@35
    const/4 v6, 0x0

    #@36
    invoke-virtual {v2, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    #@39
    .line 2003
    const/4 v5, 0x0

    #@3a
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    #@3d
    .line 2005
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v4

    #@41
    .local v4, "token":I
    if-eqz v4, :cond_3

    #@43
    .line 2006
    const/16 v5, 0x64

    #@45
    if-ne v4, v5, :cond_4

    #@47
    .line 2007
    new-instance v3, Landroid/content/SyncStatusInfo;

    #@49
    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    #@4c
    .line 2008
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
    .line 2009
    const/4 v5, 0x0

    #@57
    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    #@59
    .line 2010
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
    .line 2011
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
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 2013
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
    .line 2021
    .end local v0    # "data":[B
    .end local v2    # "in":Landroid/os/Parcel;
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    .end local v4    # "token":I
    :catch_0
    move-exception v1

    #@88
    .line 2022
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SyncManager"

    #@8b
    const-string/jumbo v6, "No initial status"

    #@8e
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 1995
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void

    #@92
    .line 2017
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
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
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
    .line 1389
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
    .line 1390
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_1

    #@f
    .line 1391
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@11
    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@17
    .line 1392
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_1

    #@19
    .line 1393
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 1394
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    #@1f
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@21
    invoke-interface {v2, v3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@24
    .line 1396
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@26
    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@28
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    #@2b
    .line 1397
    if-eqz p4, :cond_1

    #@2d
    .line 1398
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@30
    .line 1388
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    return-void
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
    .line 2081
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 2082
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2083
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@e
    .line 2084
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@10
    invoke-direct {v1, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@13
    .line 2083
    invoke-interface {v0, v1, p3, p5}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    #@16
    .line 2076
    :goto_0
    return-void

    #@17
    .line 2088
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
    .line 2062
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v1

    #@4
    const/16 v2, 0x3e8

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 2063
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2064
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@e
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@10
    invoke-interface {v1, v2, p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    #@13
    .line 2061
    :goto_0
    return-void

    #@14
    .line 2067
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
    .line 2070
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@23
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@25
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@27
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    #@2c
    .line 2071
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    #@33
    goto :goto_0
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
    .line 745
    const/4 v4, 0x0

    #@1
    .line 746
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
    .line 747
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
    .line 751
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
    .line 752
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_3

    #@3b
    .line 753
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
    .line 756
    :cond_3
    iget-wide v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@47
    cmp-long v5, v6, p4

    #@49
    if-nez v5, :cond_4

    #@4b
    .line 757
    iget-wide v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@4d
    cmp-long v5, v6, p6

    #@4f
    if-eqz v5, :cond_2

    #@51
    .line 758
    :cond_4
    iput-wide p4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@53
    .line 759
    iput-wide p6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@55
    .line 760
    const/4 v4, 0x1

    #@56
    goto :goto_1

    #@57
    .line 748
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
    .line 764
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
    .line 664
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@4
    monitor-enter v2

    #@5
    .line 665
    const/4 v1, -0x1

    #@6
    const/4 v3, 0x0

    #@7
    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@a
    move-result-object v0

    #@b
    .line 666
    .local v0, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-ge p2, v4, :cond_0

    #@d
    .line 667
    const/4 p2, -0x1

    #@e
    .line 669
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
    .line 670
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
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 672
    :cond_1
    iget v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@43
    if-ne v1, p2, :cond_3

    #@45
    .line 673
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
    .line 674
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
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    :cond_2
    monitor-exit v2

    #@71
    .line 676
    return-void

    #@72
    .line 678
    :cond_3
    :try_start_1
    iput p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@74
    .line 679
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    monitor-exit v2

    #@78
    .line 681
    if-ne p2, v5, :cond_4

    #@7a
    .line 682
    new-instance v1, Landroid/os/Bundle;

    #@7c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@7f
    const/4 v2, -0x5

    #@80
    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V

    #@83
    .line 684
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@86
    .line 662
    return-void

    #@87
    .line 664
    .end local v0    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    #@88
    monitor-exit v2

    #@89
    throw v1
.end method

.method private writeAccountInfoLocked()V
    .locals 14

    #@0
    .prologue
    .line 1796
    const-string/jumbo v11, "SyncManagerFile"

    #@3
    const/4 v12, 0x2

    #@4
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v11

    #@8
    if-eqz v11, :cond_0

    #@a
    .line 1797
    const-string/jumbo v11, "SyncManagerFile"

    #@d
    new-instance v12, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v13, "Writing new "

    #@15
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v12

    #@19
    iget-object v13, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@1b
    invoke-virtual {v13}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@1e
    move-result-object v13

    #@1f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v12

    #@23
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v12

    #@27
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1799
    :cond_0
    const/4 v4, 0x0

    #@2b
    .line 1802
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@2d
    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@30
    move-result-object v4

    #@31
    .line 1803
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    #@33
    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@36
    .line 1804
    .local v9, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@38
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@3b
    move-result-object v11

    #@3c
    invoke-interface {v9, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@3f
    .line 1805
    const/4 v11, 0x1

    #@40
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@43
    move-result-object v11

    #@44
    const/4 v12, 0x0

    #@45
    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@48
    .line 1806
    const-string/jumbo v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@4b
    const/4 v12, 0x1

    #@4c
    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@4f
    .line 1808
    const-string/jumbo v11, "accounts"

    #@52
    const/4 v12, 0x0

    #@53
    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@56
    .line 1809
    const-string/jumbo v11, "version"

    #@59
    const/4 v12, 0x3

    #@5a
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5d
    move-result-object v12

    #@5e
    const/4 v13, 0x0

    #@5f
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@62
    .line 1810
    const-string/jumbo v11, "nextAuthorityId"

    #@65
    iget v12, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    #@67
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6a
    move-result-object v12

    #@6b
    const/4 v13, 0x0

    #@6c
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6f
    .line 1811
    const-string/jumbo v11, "offsetInSeconds"

    #@72
    iget v12, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    #@74
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@77
    move-result-object v12

    #@78
    const/4 v13, 0x0

    #@79
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7c
    .line 1814
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@7e
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    #@81
    move-result v0

    #@82
    .line 1815
    .local v0, "M":I
    const/4 v8, 0x0

    #@83
    .local v8, "m":I
    :goto_0
    if-ge v8, v0, :cond_1

    #@85
    .line 1816
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@87
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@8a
    move-result v10

    #@8b
    .line 1817
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@8d
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@90
    move-result-object v7

    #@91
    check-cast v7, Ljava/lang/Boolean;

    #@93
    .line 1818
    .local v7, "listen":Ljava/lang/Boolean;
    const-string/jumbo v11, "listenForTickles"

    #@96
    const/4 v12, 0x0

    #@97
    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9a
    .line 1819
    const-string/jumbo v11, "user"

    #@9d
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a0
    move-result-object v12

    #@a1
    const/4 v13, 0x0

    #@a2
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a5
    .line 1820
    const-string/jumbo v11, "enabled"

    #@a8
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    #@ab
    move-result v12

    #@ac
    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@af
    move-result-object v12

    #@b0
    const/4 v13, 0x0

    #@b1
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b4
    .line 1821
    const-string/jumbo v11, "listenForTickles"

    #@b7
    const/4 v12, 0x0

    #@b8
    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bb
    .line 1815
    add-int/lit8 v8, v8, 0x1

    #@bd
    goto :goto_0

    #@be
    .line 1824
    .end local v7    # "listen":Ljava/lang/Boolean;
    .end local v10    # "userId":I
    :cond_1
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@c0
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    #@c3
    move-result v1

    #@c4
    .line 1825
    .local v1, "N":I
    const/4 v5, 0x0

    #@c5
    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    #@c7
    .line 1826
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@c9
    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@cc
    move-result-object v2

    #@cd
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@cf
    .line 1827
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@d1
    .line 1828
    .local v6, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string/jumbo v11, "authority"

    #@d4
    const/4 v12, 0x0

    #@d5
    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d8
    .line 1829
    const-string/jumbo v11, "id"

    #@db
    iget v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@dd
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e0
    move-result-object v12

    #@e1
    const/4 v13, 0x0

    #@e2
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e5
    .line 1830
    const-string/jumbo v11, "user"

    #@e8
    iget v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@ea
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@ed
    move-result-object v12

    #@ee
    const/4 v13, 0x0

    #@ef
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f2
    .line 1831
    const-string/jumbo v11, "enabled"

    #@f5
    iget-boolean v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@f7
    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@fa
    move-result-object v12

    #@fb
    const/4 v13, 0x0

    #@fc
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ff
    .line 1832
    const-string/jumbo v11, "account"

    #@102
    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@104
    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@106
    const/4 v13, 0x0

    #@107
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10a
    .line 1833
    const-string/jumbo v11, "type"

    #@10d
    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@10f
    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@111
    const/4 v13, 0x0

    #@112
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@115
    .line 1834
    const-string/jumbo v11, "authority"

    #@118
    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@11a
    const/4 v13, 0x0

    #@11b
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11e
    .line 1835
    const-string/jumbo v11, "syncable"

    #@121
    iget v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@123
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@126
    move-result-object v12

    #@127
    const/4 v13, 0x0

    #@128
    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12b
    .line 1836
    const-string/jumbo v11, "authority"

    #@12e
    const/4 v12, 0x0

    #@12f
    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@132
    .line 1825
    add-int/lit8 v5, v5, 0x1

    #@134
    goto :goto_1

    #@135
    .line 1838
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    const-string/jumbo v11, "accounts"

    #@138
    const/4 v12, 0x0

    #@139
    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13c
    .line 1839
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@13f
    .line 1840
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@141
    invoke-virtual {v11, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@144
    .line 1795
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":I
    .end local v8    # "m":I
    .end local v9    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    :goto_2
    return-void

    #@145
    .line 1841
    :catch_0
    move-exception v3

    #@146
    .line 1842
    .local v3, "e1":Ljava/io/IOException;
    const-string/jumbo v11, "SyncManager"

    #@149
    const-string/jumbo v12, "Error writing accounts"

    #@14c
    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14f
    .line 1843
    if-eqz v4, :cond_3

    #@151
    .line 1844
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    #@153
    invoke-virtual {v11, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@156
    goto :goto_2
.end method

.method private writeStatisticsLocked()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 2138
    const-string/jumbo v6, "SyncManagerFile"

    #@4
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_0

    #@a
    .line 2139
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
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2144
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    #@2d
    .line 2146
    const/4 v3, 0x0

    #@2e
    .line 2148
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@30
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@33
    move-result-object v3

    #@34
    .line 2149
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@37
    move-result-object v5

    #@38
    .line 2150
    .local v5, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@3a
    array-length v0, v6

    #@3b
    .line 2151
    .local v0, "N":I
    const/4 v4, 0x0

    #@3c
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@3e
    .line 2152
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@40
    aget-object v1, v6, v4

    #@42
    .line 2153
    .local v1, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_3

    #@44
    .line 2163
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_1
    const/4 v6, 0x0

    #@45
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 2164
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    #@4f
    .line 2165
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 2167
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    #@54
    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@57
    .line 2137
    .end local v0    # "N":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    #@58
    .line 2156
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
    .line 2157
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    #@5f
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    .line 2158
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@64
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    .line 2159
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@69
    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@6c
    .line 2160
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@6e
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    .line 2161
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@73
    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@76
    .line 2151
    add-int/lit8 v4, v4, 0x1

    #@78
    goto :goto_0

    #@79
    .line 2168
    .end local v0    # "N":I
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :catch_0
    move-exception v2

    #@7a
    .line 2169
    .local v2, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    #@7d
    const-string/jumbo v7, "Error writing stats"

    #@80
    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@83
    .line 2170
    if-eqz v3, :cond_2

    #@85
    .line 2171
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
    .line 2030
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
    .line 2031
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
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2036
    :cond_0
    const/4 v6, 0x1

    #@2b
    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    #@2e
    .line 2038
    const/4 v2, 0x0

    #@2f
    .line 2040
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@31
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@34
    move-result-object v2

    #@35
    .line 2041
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@38
    move-result-object v4

    #@39
    .line 2042
    .local v4, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@3b
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@3e
    move-result v0

    #@3f
    .line 2043
    .local v0, "N":I
    const/4 v3, 0x0

    #@40
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@42
    .line 2044
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@44
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    check-cast v5, Landroid/content/SyncStatusInfo;

    #@4a
    .line 2045
    .local v5, "status":Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    #@4c
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 2046
    const/4 v6, 0x0

    #@50
    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@53
    .line 2043
    add-int/lit8 v3, v3, 0x1

    #@55
    goto :goto_0

    #@56
    .line 2048
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    :cond_1
    const/4 v6, 0x0

    #@57
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 2049
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    #@61
    .line 2050
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@64
    .line 2052
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    #@66
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    .line 2029
    .end local v0    # "N":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    #@6a
    .line 2053
    :catch_0
    move-exception v1

    #@6b
    .line 2054
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    #@6e
    const-string/jumbo v7, "Error writing status"

    #@71
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@74
    .line 2055
    if-eqz v2, :cond_2

    #@76
    .line 2056
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
    .line 969
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v8

    #@3
    .line 970
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
    .line 971
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
    .line 972
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@1e
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@20
    .line 971
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 973
    const-string/jumbo v3, " src="

    #@27
    .line 971
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 973
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@2d
    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@2f
    .line 971
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 974
    const-string/jumbo v3, " extras="

    #@36
    .line 971
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 974
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@3c
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@3e
    .line 971
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 976
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@4b
    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@4d
    .line 979
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v1, -0x1

    #@4e
    .line 980
    const/4 v2, 0x1

    #@4f
    .line 977
    invoke-direct {p0, v7, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@52
    move-result-object v6

    #@53
    .line 981
    .local v6, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Landroid/content/SyncInfo;

    #@55
    .line 982
    iget v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@57
    .line 983
    iget-object v2, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@59
    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@5b
    .line 984
    iget-object v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5d
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@5f
    .line 985
    iget-wide v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@61
    .line 981
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    #@64
    .line 986
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
    .line 988
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    #@73
    .line 989
    return-object v0

    #@74
    .line 969
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
    .line 501
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 502
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
    .line 500
    return-void

    #@e
    .line 501
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public clearAllBackoffsLocked()V
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    .line 768
    const/4 v4, 0x0

    #@3
    .line 769
    .local v4, "changed":Z
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@5
    monitor-enter v6

    #@6
    .line 771
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@8
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v5

    #@c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "accountInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_4

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@1c
    .line 772
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    .local v3, "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_0

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@32
    .line 773
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@34
    cmp-long v5, v8, v10

    #@36
    if-nez v5, :cond_2

    #@38
    .line 774
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@3a
    cmp-long v5, v8, v10

    #@3c
    if-eqz v5, :cond_1

    #@3e
    .line 775
    :cond_2
    const-string/jumbo v5, "SyncManager"

    #@41
    const/4 v7, 0x2

    #@42
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_3

    #@48
    .line 776
    const-string/jumbo v5, "SyncManager"

    #@4b
    new-instance v7, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v8, "clearAllBackoffsLocked: authority:"

    #@53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    .line 777
    iget-object v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@59
    .line 776
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    .line 778
    const-string/jumbo v8, " account:"

    #@60
    .line 776
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    .line 778
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@66
    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    #@68
    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@6a
    .line 776
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    .line 779
    const-string/jumbo v8, " user:"

    #@71
    .line 776
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    .line 779
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@77
    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    #@79
    .line 776
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v7

    #@7d
    .line 780
    const-string/jumbo v8, " backoffTime was: "

    #@80
    .line 776
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v7

    #@84
    .line 780
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@86
    .line 776
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@89
    move-result-object v7

    #@8a
    .line 781
    const-string/jumbo v8, " backoffDelay was: "

    #@8d
    .line 776
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    .line 781
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@93
    .line 776
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@96
    move-result-object v7

    #@97
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v7

    #@9b
    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 783
    :cond_3
    const-wide/16 v8, -0x1

    #@a0
    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@a2
    .line 784
    const-wide/16 v8, -0x1

    #@a4
    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a6
    .line 785
    const/4 v4, 0x1

    #@a7
    goto/16 :goto_0

    #@a9
    .end local v0    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_4
    monitor-exit v6

    #@aa
    .line 791
    if-eqz v4, :cond_5

    #@ac
    .line 792
    const/4 v5, 0x1

    #@ad
    invoke-virtual {p0, v5}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@b0
    .line 767
    :cond_5
    return-void

    #@b1
    .line 769
    .end local v1    # "accountInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@b2
    monitor-exit v6

    #@b3
    throw v5
.end method

.method public clearAndReadState()V
    .locals 2

    #@0
    .prologue
    .line 1429
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1430
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@8
    .line 1431
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@d
    .line 1432
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@12
    .line 1433
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@17
    .line 1434
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 1436
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    #@1f
    .line 1437
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    #@22
    .line 1438
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    #@25
    .line 1439
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    #@28
    .line 1440
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@2b
    .line 1441
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@2e
    .line 1442
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    monitor-exit v1

    #@32
    .line 1428
    return-void

    #@33
    .line 1429
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .locals 12
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 909
    iget-object v9, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v9

    #@3
    .line 910
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
    .line 911
    const-string/jumbo v8, "SyncManager"

    #@10
    const-string/jumbo v10, "Updating for new accounts..."

    #@13
    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 913
    :cond_0
    new-instance v7, Landroid/util/SparseArray;

    #@18
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    #@1b
    .line 914
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
    .line 915
    .local v1, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_4

    #@2b
    .line 916
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    #@31
    .line 917
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
    .line 918
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    #@3d
    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    #@3f
    if-ne v8, p2, :cond_1

    #@41
    .line 920
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
    .line 921
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
    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 923
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
    .line 924
    .local v2, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@7f
    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    goto :goto_1

    #@83
    .line 909
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
    .line 926
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
    .line 931
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v3    # "auth$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@8d
    move-result v4

    #@8e
    .line 932
    .local v4, "i":I
    if-lez v4, :cond_b

    #@90
    .line 933
    :cond_5
    if-lez v4, :cond_a

    #@92
    .line 934
    add-int/lit8 v4, v4, -0x1

    #@94
    .line 935
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    #@97
    move-result v5

    #@98
    .line 936
    .local v5, "ident":I
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@9b
    move-result-object v2

    #@9c
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@9e
    .line 937
    .restart local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    #@a0
    if-eqz v8, :cond_6

    #@a2
    .line 938
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    #@a4
    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@a6
    invoke-interface {v8, v10}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    #@a9
    .line 940
    :cond_6
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@ab
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    #@ae
    .line 941
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@b0
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@b3
    move-result v6

    #@b4
    .line 942
    .local v6, "j":I
    :cond_7
    :goto_2
    if-lez v6, :cond_8

    #@b6
    .line 943
    add-int/lit8 v6, v6, -0x1

    #@b8
    .line 944
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@ba
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@bd
    move-result v8

    #@be
    if-ne v8, v5, :cond_7

    #@c0
    .line 945
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@c2
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@c4
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@c7
    move-result v10

    #@c8
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    #@cb
    goto :goto_2

    #@cc
    .line 948
    :cond_8
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@d1
    move-result v6

    #@d2
    .line 949
    :cond_9
    :goto_3
    if-lez v6, :cond_5

    #@d4
    .line 950
    add-int/lit8 v6, v6, -0x1

    #@d6
    .line 951
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@d8
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@db
    move-result-object v8

    #@dc
    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@de
    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@e0
    if-ne v8, v5, :cond_9

    #@e2
    .line 952
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@e4
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@e7
    goto :goto_3

    #@e8
    .line 956
    .end local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v5    # "ident":I
    .end local v6    # "j":I
    :cond_a
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    #@eb
    .line 957
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@ee
    .line 958
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f1
    :cond_b
    monitor-exit v9

    #@f2
    .line 908
    return-void
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 2
    .param p1, "authorityId"    # I

    #@0
    .prologue
    .line 869
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 870
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
    .line 869
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
    .line 688
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v2

    #@4
    .line 689
    :try_start_0
    const-string/jumbo v1, "getBackoff"

    #@7
    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@a
    move-result-object v0

    #@b
    .line 690
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    #@d
    .line 691
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
    .line 693
    return-object v3

    #@21
    .line 688
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
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
    .line 1205
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 1207
    const/4 v1, -0x1

    #@4
    .line 1208
    const/4 v3, 0x1

    #@5
    .line 1206
    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@8
    move-result-object v0

    #@9
    .line 1209
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
    .line 1205
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "canAccessAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1175
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v6

    #@3
    .line 1176
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    #@6
    move-result-object v3

    #@7
    .line 1177
    .local v3, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 1178
    .local v4, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "sync$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/content/SyncInfo;

    #@1c
    .line 1180
    .local v1, "sync":Landroid/content/SyncInfo;
    if-nez p2, :cond_0

    #@1e
    .line 1182
    iget v5, v1, Landroid/content/SyncInfo;->authorityId:I

    #@20
    iget-object v7, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@22
    iget-wide v8, v1, Landroid/content/SyncInfo;->startTime:J

    #@24
    .line 1181
    invoke-static {v5, v7, v8, v9}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    #@27
    move-result-object v0

    #@28
    .line 1186
    .local v0, "copy":Landroid/content/SyncInfo;
    :goto_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 1175
    .end local v0    # "copy":Landroid/content/SyncInfo;
    .end local v1    # "sync":Landroid/content/SyncInfo;
    .end local v2    # "sync$iterator":Ljava/util/Iterator;
    .end local v3    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v4    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_0
    move-exception v5

    #@2d
    monitor-exit v6

    #@2e
    throw v5

    #@2f
    .line 1184
    .restart local v1    # "sync":Landroid/content/SyncInfo;
    .restart local v2    # "sync$iterator":Ljava/util/Iterator;
    .restart local v3    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .restart local v4    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/SyncInfo;

    #@31
    invoke-direct {v0, v1}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .restart local v0    # "copy":Landroid/content/SyncInfo;
    goto :goto_1

    #@35
    .end local v0    # "copy":Landroid/content/SyncInfo;
    .end local v1    # "sync":Landroid/content/SyncInfo;
    :cond_1
    monitor-exit v6

    #@36
    .line 1188
    return-object v4
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .locals 6

    #@0
    .prologue
    .line 1280
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 1281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@5
    array-length v1, v1

    #@6
    new-array v0, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    #@8
    .line 1282
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
    .line 1283
    return-object v0

    #@12
    .line 1280
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
    .line 797
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 798
    :try_start_0
    const-string/jumbo v1, "getDelayUntil"

    #@6
    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    .line 799
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    #@c
    .line 800
    const-wide/16 v4, 0x0

    #@e
    monitor-exit v2

    #@f
    return-wide v4

    #@10
    .line 802
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
    .line 797
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
    .line 628
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v4

    #@4
    .line 629
    if-eqz p1, :cond_1

    #@6
    .line 631
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@8
    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@b
    .line 632
    const-string/jumbo v5, "get authority syncable"

    #@e
    .line 630
    invoke-direct {p0, v3, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v0

    #@12
    .line 633
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    #@14
    monitor-exit v4

    #@15
    .line 634
    return v6

    #@16
    .line 636
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
    .line 639
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@1f
    move-result v2

    #@20
    .line 640
    .local v2, "i":I
    :cond_2
    if-lez v2, :cond_3

    #@22
    .line 641
    add-int/lit8 v2, v2, -0x1

    #@24
    .line 642
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@2c
    .line 643
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 644
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@32
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@34
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v3

    #@38
    .line 643
    if-eqz v3, :cond_2

    #@3a
    .line 645
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
    .line 648
    return v6

    #@40
    .line 628
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    #@41
    monitor-exit v4

    #@42
    throw v3
.end method

.method public getMasterSyncAutomatically(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 862
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 864
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
    .line 862
    .end local v0    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1220
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 1221
    :cond_0
    return-object v7

    #@a
    .line 1223
    :cond_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@c
    monitor-enter v5

    #@d
    .line 1224
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@12
    move-result v0

    #@13
    .line 1225
    .local v0, "N":I
    const/4 v3, 0x0

    #@14
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@16
    .line 1226
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/content/SyncStatusInfo;

    #@1e
    .line 1227
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@20
    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    #@22
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@28
    .line 1228
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_2

    #@2a
    .line 1229
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2c
    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v4

    #@30
    .line 1228
    if-eqz v4, :cond_2

    #@32
    monitor-exit v5

    #@33
    .line 1230
    return-object v2

    #@34
    .line 1225
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_0

    #@37
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_3
    monitor-exit v5

    #@38
    .line 1233
    return-object v7

    #@39
    .line 1223
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@3a
    monitor-exit v5

    #@3b
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
    .line 570
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v4

    #@4
    .line 571
    if-eqz p1, :cond_1

    #@6
    .line 573
    :try_start_0
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@8
    invoke-direct {v5, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@b
    .line 574
    const-string/jumbo v6, "getSyncAutomatically"

    #@e
    .line 572
    invoke-direct {p0, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@11
    move-result-object v0

    #@12
    .line 575
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
    .line 578
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v2

    #@1e
    .line 579
    .local v2, "i":I
    :cond_2
    if-lez v2, :cond_3

    #@20
    .line 580
    add-int/lit8 v2, v2, -0x1

    #@22
    .line 581
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@2a
    .line 582
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
    .line 583
    iget-boolean v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 582
    if-eqz v5, :cond_2

    #@3b
    .line 584
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
    .line 587
    return v3

    #@40
    .line 570
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
    .line 1264
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 1265
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 1266
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    #@b
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 1267
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@11
    .line 1268
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
    .line 1267
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_0
    monitor-exit v4

    #@20
    .line 1270
    return-object v2

    #@21
    .line 1264
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
    .line 497
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    #@2
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 486
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@7
    monitor-enter v0

    #@8
    .line 487
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :goto_0
    monitor-exit v0

    #@c
    .line 484
    :cond_0
    return-void

    #@d
    .line 486
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v0

    #@f
    throw v1

    #@10
    .line 489
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    #@12
    const/4 v1, 0x2

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 490
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@17
    monitor-enter v0

    #@18
    .line 491
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    goto :goto_0

    #@1c
    .line 490
    :catchall_1
    move-exception v1

    #@1d
    monitor-exit v0

    #@1e
    throw v1
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .locals 8
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    #@0
    .prologue
    .line 1020
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v5

    #@3
    .line 1021
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
    .line 1022
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
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1024
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
    .line 1025
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_1

    #@32
    .line 1026
    const-wide/16 v6, -0x1

    #@34
    monitor-exit v5

    #@35
    return-wide v6

    #@36
    .line 1028
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    #@38
    invoke-direct {v1}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    #@3b
    .line 1029
    .local v1, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    #@3e
    move-result v4

    #@3f
    iput-boolean v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    #@41
    .line 1030
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@43
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@45
    .line 1031
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@47
    add-int/lit8 v6, v4, 0x1

    #@49
    iput v6, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@4b
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    #@4d
    .line 1032
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@4f
    if-gez v4, :cond_2

    #@51
    const/4 v4, 0x0

    #@52
    iput v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    #@54
    .line 1033
    :cond_2
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    #@56
    .line 1034
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    #@58
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@5a
    .line 1035
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    #@5c
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    #@5e
    .line 1036
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    #@60
    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    #@62
    .line 1037
    const/4 v4, 0x0

    #@63
    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    #@65
    .line 1038
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@67
    const/4 v6, 0x0

    #@68
    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@6b
    .line 1039
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
    .line 1040
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
    .line 1020
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_0
    move-exception v4

    #@84
    monitor-exit v5

    #@85
    throw v4

    #@86
    .line 1042
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_2
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    #@88
    int-to-long v2, v4

    #@89
    .line 1043
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
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ad
    :cond_4
    monitor-exit v5

    #@ae
    .line 1046
    const/16 v4, 0x8

    #@b0
    invoke-virtual {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@b3
    .line 1047
    return-wide v2
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 879
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 880
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
    .line 881
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v1, Landroid/content/SyncInfo;->authorityId:I

    #@1b
    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@1e
    move-result-object v0

    #@1f
    .line 882
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
    .line 883
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
    .line 887
    const/4 v3, 0x0

    #@2e
    return v3

    #@2f
    .line 879
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
    .line 1239
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v5

    #@3
    .line 1240
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 1241
    .local v0, "N":I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@c
    .line 1242
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/content/SyncStatusInfo;

    #@14
    .line 1243
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
    .line 1244
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    #@20
    .line 1241
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1247
    :cond_1
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@25
    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 1250
    iget-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    if-eqz v4, :cond_0

    #@2f
    .line 1251
    const/4 v4, 0x1

    #@30
    monitor-exit v5

    #@31
    return v4

    #@32
    .line 1254
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_2
    const/4 v4, 0x0

    #@33
    monitor-exit v5

    #@34
    return v4

    #@35
    .line 1239
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v5

    #@37
    throw v4
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pendingValue"    # Z

    #@0
    .prologue
    .line 891
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v3

    #@3
    .line 893
    const/4 v2, -0x1

    #@4
    .line 894
    const/4 v4, 0x1

    #@5
    .line 892
    :try_start_0
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    .line 895
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    #@b
    monitor-exit v3

    #@c
    .line 896
    return-void

    #@d
    .line 898
    :cond_0
    :try_start_1
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    #@f
    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    #@12
    move-result-object v1

    #@13
    .line 899
    .local v1, "status":Landroid/content/SyncStatusInfo;
    iput-boolean p2, v1, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v3

    #@16
    .line 901
    const/4 v2, 0x2

    #@17
    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@1a
    .line 890
    return-void

    #@1b
    .line 891
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "status":Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method public queueBackup()V
    .locals 1

    #@0
    .prologue
    .line 2181
    const-string/jumbo v0, "android"

    #@3
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    #@6
    .line 2180
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .locals 4
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 997
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
    .line 998
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
    .line 999
    const-string/jumbo v3, " user="

    #@25
    .line 998
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 1000
    const-string/jumbo v3, " auth="

    #@30
    .line 998
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 1000
    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@36
    .line 998
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 1002
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
    .line 1005
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    #@4c
    .line 995
    return-void

    #@4d
    .line 996
    :catchall_0
    move-exception v0

    #@4e
    monitor-exit v1

    #@4f
    throw v0
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@0
    .prologue
    .line 1377
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1378
    :try_start_0
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@5
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@7
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@9
    const/4 v4, 0x1

    #@a
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1376
    return-void

    #@f
    .line 1377
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    #@0
    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 506
    return-void

    #@a
    .line 507
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
    .line 1012
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@4
    .line 1011
    return-void
.end method

.method reportChange(I)V
    .locals 8
    .param p1, "which"    # I

    #@0
    .prologue
    .line 535
    const/4 v3, 0x0

    #@1
    .line 536
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v6

    #@4
    .line 537
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
    .line 538
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v4, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    #@d
    .line 539
    add-int/lit8 v1, v1, -0x1

    #@f
    .line 540
    :try_start_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    #@11
    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/Integer;

    #@17
    .line 541
    .local v2, "mask":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v5

    #@1b
    and-int/2addr v5, p1

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 544
    if-nez v4, :cond_4

    #@20
    .line 545
    new-instance v3, Ljava/util/ArrayList;

    #@22
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 547
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
    .line 549
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
    .line 552
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
    .line 553
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
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 556
    :cond_2
    if-eqz v4, :cond_3

    #@69
    .line 557
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6c
    move-result v1

    #@6d
    .line 558
    :goto_2
    if-lez v1, :cond_3

    #@6f
    .line 559
    add-int/lit8 v1, v1, -0x1

    #@71
    .line 561
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
    .line 562
    :catch_0
    move-exception v0

    #@7c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@7d
    .line 536
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
    .line 534
    .restart local v1    # "i":I
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_3
    return-void

    #@81
    .line 536
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

.method restoreAllPeriodicSyncs()Z
    .locals 12

    #@0
    .prologue
    .line 826
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 827
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 829
    :cond_0
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@8
    monitor-enter v11

    #@9
    .line 830
    const/4 v8, 0x0

    #@a
    .local v8, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@f
    move-result v1

    #@10
    if-ge v8, v1, :cond_2

    #@12
    .line 831
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@1a
    .line 832
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@1c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v10

    #@20
    .local v10, "periodicSync$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_1

    #@26
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v9

    #@2a
    check-cast v9, Landroid/content/PeriodicSync;

    #@2c
    .line 833
    .local v9, "periodicSync":Landroid/content/PeriodicSync;
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    #@2e
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@30
    .line 834
    iget-object v3, v9, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@32
    iget-wide v4, v9, Landroid/content/PeriodicSync;->period:J

    #@34
    iget-wide v6, v9, Landroid/content/PeriodicSync;->flexTime:J

    #@36
    .line 833
    invoke-interface/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    goto :goto_1

    #@3a
    .line 829
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v9    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v11

    #@3c
    throw v1

    #@3d
    .line 836
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@42
    .line 830
    add-int/lit8 v8, v8, 0x1

    #@44
    goto :goto_0

    #@45
    .line 838
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    monitor-exit v11

    #@49
    .line 840
    const/4 v1, 0x1

    #@4a
    return v1
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    #@0
    .prologue
    .line 702
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
    .line 703
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
    .line 704
    const-string/jumbo v4, " -> nextSyncTime "

    #@20
    .line 703
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
    .line 704
    const-string/jumbo v4, ", nextDelay "

    #@2d
    .line 703
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
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 707
    :cond_0
    iget-object v12, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@40
    monitor-enter v12

    #@41
    .line 708
    :try_start_0
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@43
    if-eqz v2, :cond_1

    #@45
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@47
    if-nez v2, :cond_3

    #@49
    .line 712
    :cond_1
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    #@4b
    .line 713
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@4d
    .line 714
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    #@4f
    move-object v2, p0

    #@50
    move-wide/from16 v6, p2

    #@52
    move-wide/from16 v8, p4

    #@54
    .line 711
    invoke-direct/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    move-result v11

    #@58
    :goto_0
    monitor-exit v12

    #@59
    .line 729
    if-eqz v11, :cond_2

    #@5b
    .line 730
    const/4 v2, 0x1

    #@5c
    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@5f
    .line 701
    :cond_2
    return-void

    #@60
    .line 718
    :cond_3
    const/4 v2, -0x1

    #@61
    const/4 v3, 0x1

    #@62
    :try_start_1
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@65
    move-result-object v10

    #@66
    .line 719
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@68
    cmp-long v2, v2, p2

    #@6a
    if-nez v2, :cond_4

    #@6c
    .line 720
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    #@6e
    cmp-long v2, v2, p4

    #@70
    if-nez v2, :cond_4

    #@72
    .line 721
    const/4 v11, 0x0

    #@73
    .line 720
    .local v11, "changed":Z
    goto :goto_0

    #@74
    .line 723
    .end local v11    # "changed":Z
    :cond_4
    move-wide/from16 v0, p2

    #@76
    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    #@78
    .line 724
    move-wide/from16 v0, p4

    #@7a
    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7c
    .line 725
    const/4 v11, 0x1

    #@7d
    .restart local v11    # "changed":Z
    goto :goto_0

    #@7e
    .line 707
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "changed":Z
    :catchall_0
    move-exception v2

    #@7f
    monitor-exit v12

    #@80
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
    .line 807
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
    .line 808
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
    .line 809
    const-string/jumbo v3, " -> delayUntil "

    #@21
    .line 808
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
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 811
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@32
    monitor-enter v2

    #@33
    .line 812
    const/4 v1, -0x1

    #@34
    const/4 v3, 0x1

    #@35
    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@38
    move-result-object v0

    #@39
    .line 813
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
    .line 814
    return-void

    #@41
    .line 816
    :cond_1
    :try_start_1
    iput-wide p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v2

    #@44
    .line 818
    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@47
    .line 806
    return-void

    #@48
    .line 811
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
    .line 653
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@2
    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@5
    invoke-direct {p0, v0, p4}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    #@8
    .line 652
    return-void
.end method

.method public setMasterSyncAutomatically(ZI)V
    .locals 7
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 844
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3
    monitor-enter v2

    #@4
    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v6

    #@a
    check-cast v6, Ljava/lang/Boolean;

    #@c
    .line 846
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
    .line 847
    return-void

    #@1a
    .line 849
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
    .line 850
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v2

    #@27
    .line 852
    if-eqz p1, :cond_1

    #@29
    .line 854
    new-instance v5, Landroid/os/Bundle;

    #@2b
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@2e
    .line 853
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
    .line 856
    :cond_1
    const/4 v0, 0x1

    #@36
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@39
    .line 857
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    #@3b
    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@40
    .line 858
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    #@43
    .line 843
    return-void

    #@44
    .line 844
    .end local v6    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    #@45
    monitor-exit v2

    #@46
    throw v0
.end method

.method protected setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 474
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    #@6
    .line 472
    :cond_0
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 468
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    #@6
    .line 466
    :cond_0
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    #@0
    .prologue
    .line 479
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 480
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    #@6
    .line 478
    :cond_0
    return-void
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
    .line 593
    const-string/jumbo v0, "SyncManager"

    #@4
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 594
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
    .line 595
    const-string/jumbo v2, ", user "

    #@20
    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 595
    const-string/jumbo v2, " -> "

    #@2b
    .line 594
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
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 597
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@3c
    monitor-enter v1

    #@3d
    .line 600
    :try_start_0
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@3f
    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@42
    .line 601
    const/4 v2, -0x1

    #@43
    .line 602
    const/4 v3, 0x0

    #@44
    .line 599
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    #@47
    move-result-object v6

    #@48
    .line 603
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@4a
    if-ne v0, p4, :cond_2

    #@4c
    .line 604
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
    .line 605
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
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    :cond_1
    monitor-exit v1

    #@78
    .line 607
    return-void

    #@79
    .line 612
    :cond_2
    if-eqz p4, :cond_3

    #@7b
    :try_start_1
    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@7d
    if-ne v0, v4, :cond_3

    #@7f
    .line 613
    const/4 v0, -0x1

    #@80
    iput v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    #@82
    .line 615
    :cond_3
    iput-boolean p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    #@84
    .line 616
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    monitor-exit v1

    #@88
    .line 619
    if-eqz p4, :cond_4

    #@8a
    .line 621
    new-instance v5, Landroid/os/Bundle;

    #@8c
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@8f
    .line 620
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
    .line 623
    :cond_4
    const/4 v0, 0x1

    #@98
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@9b
    .line 624
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    #@9e
    .line 592
    return-void

    #@9f
    .line 597
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v0

    #@a0
    monitor-exit v1

    #@a1
    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .locals 1

    #@0
    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    #@2
    return v0
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
    .line 1052
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@4
    monitor-enter v12

    #@5
    .line 1053
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
    .line 1054
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
    invoke-static {v11, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 1056
    :cond_0
    const/4 v5, 0x0

    #@2c
    .line 1057
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    #@2e
    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v4

    #@34
    .line 1058
    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_1

    #@36
    .line 1059
    add-int/lit8 v4, v4, -0x1

    #@38
    .line 1060
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
    .line 1061
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    #@44
    int-to-long v14, v11

    #@45
    cmp-long v11, v14, p1

    #@47
    if-nez v11, :cond_2

    #@49
    .line 1067
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_1
    if-nez v5, :cond_3

    #@4b
    .line 1068
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
    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    monitor-exit v12

    #@68
    .line 1069
    return-void

    #@69
    .line 1064
    .restart local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_2
    const/4 v5, 0x0

    #@6a
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    goto :goto_0

    #@6b
    .line 1072
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_1
    move-wide/from16 v0, p3

    #@6d
    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    #@6f
    .line 1073
    const/4 v11, 0x1

    #@70
    iput v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    #@72
    .line 1074
    move-object/from16 v0, p5

    #@74
    iput-object v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    #@76
    .line 1075
    move-wide/from16 v0, p6

    #@78
    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    #@7a
    .line 1076
    move-wide/from16 v0, p8

    #@7c
    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    #@7e
    .line 1078
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-direct {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    #@85
    move-result-object v8

    #@86
    .line 1080
    .local v8, "status":Landroid/content/SyncStatusInfo;
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@88
    add-int/lit8 v11, v11, 0x1

    #@8a
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    #@8c
    .line 1081
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@8e
    add-long v14, v14, p3

    #@90
    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    #@92
    .line 1082
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@94
    packed-switch v11, :pswitch_data_0

    #@97
    .line 1100
    :goto_1
    const/4 v9, 0x0

    #@98
    .line 1101
    .local v9, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    #@9b
    move-result v2

    #@9c
    .line 1102
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
    .line 1103
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
    .line 1110
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
    .line 1112
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    #@ba
    add-long v6, v14, p3

    #@bc
    .line 1113
    .local v6, "lastSyncTime":J
    const/4 v10, 0x0

    #@bd
    .line 1114
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
    .line 1116
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
    .line 1117
    :cond_5
    const/4 v10, 0x1

    #@d9
    .line 1119
    :cond_6
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    #@db
    .line 1120
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@dd
    iput v11, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    #@df
    .line 1121
    const-wide/16 v14, 0x0

    #@e1
    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@e3
    .line 1122
    const/4 v11, -0x1

    #@e4
    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@e6
    .line 1123
    const/4 v11, 0x0

    #@e7
    iput-object v11, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@e9
    .line 1124
    const-wide/16 v14, 0x0

    #@eb
    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@ed
    .line 1125
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@ef
    add-int/lit8 v11, v11, 0x1

    #@f1
    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    #@f3
    .line 1126
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@f5
    add-long v14, v14, p3

    #@f7
    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    #@f9
    .line 1141
    :cond_7
    :goto_3
    if-eqz v10, :cond_f

    #@fb
    .line 1142
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@fe
    .line 1147
    :cond_8
    :goto_4
    if-eqz v9, :cond_10

    #@100
    .line 1148
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@103
    :cond_9
    :goto_5
    monitor-exit v12

    #@104
    .line 1155
    const/16 v11, 0x8

    #@106
    move-object/from16 v0, p0

    #@108
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    #@10b
    .line 1051
    return-void

    #@10c
    .line 1084
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
    .line 1052
    .end local v4    # "i":I
    .end local v8    # "status":Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v11

    #@114
    monitor-exit v12

    #@115
    throw v11

    #@116
    .line 1087
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
    .line 1090
    :pswitch_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@120
    add-int/lit8 v11, v11, 0x1

    #@122
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    #@124
    goto/16 :goto_1

    #@126
    .line 1093
    :pswitch_3
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@128
    add-int/lit8 v11, v11, 0x1

    #@12a
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    #@12c
    goto/16 :goto_1

    #@12e
    .line 1096
    :pswitch_4
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@130
    add-int/lit8 v11, v11, 0x1

    #@132
    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    #@134
    goto/16 :goto_1

    #@136
    .line 1104
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
    .line 1105
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
    .line 1106
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
    .line 1107
    const/4 v9, 0x1

    #@165
    goto/16 :goto_2

    #@167
    .line 1108
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
    .line 1127
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
    .line 1128
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@17f
    const-wide/16 v16, 0x0

    #@181
    cmp-long v11, v14, v16

    #@183
    if-nez v11, :cond_d

    #@185
    .line 1129
    const/4 v10, 0x1

    #@186
    .line 1131
    :cond_d
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    #@188
    .line 1132
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    #@18a
    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    #@18c
    .line 1133
    move-object/from16 v0, p5

    #@18e
    iput-object v0, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    #@190
    .line 1134
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@192
    const-wide/16 v16, 0x0

    #@194
    cmp-long v11, v14, v16

    #@196
    if-nez v11, :cond_e

    #@198
    .line 1135
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    #@19a
    .line 1137
    :cond_e
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@19c
    add-int/lit8 v11, v11, 0x1

    #@19e
    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    #@1a0
    .line 1138
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@1a2
    add-long v14, v14, p3

    #@1a4
    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    #@1a6
    goto/16 :goto_3

    #@1a8
    .line 1143
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
    .line 1144
    const/4 v11, 0x1

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    #@1b7
    move-result-object v11

    #@1b8
    .line 1145
    const-wide/32 v14, 0x927c0

    #@1bb
    .line 1144
    move-object/from16 v0, p0

    #@1bd
    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1c0
    goto/16 :goto_4

    #@1c2
    .line 1149
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
    .line 1150
    const/4 v11, 0x2

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    #@1d1
    move-result-object v11

    #@1d2
    .line 1151
    const-wide/32 v14, 0x1b7740

    #@1d5
    .line 1150
    move-object/from16 v0, p0

    #@1d7
    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1da
    goto/16 :goto_5

    #@1dc
    .line 1082
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public writeAllState()V
    .locals 2

    #@0
    .prologue
    .line 1414
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 1416
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    #@6
    .line 1417
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 1413
    return-void

    #@b
    .line 1414
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
