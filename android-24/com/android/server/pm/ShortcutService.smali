.class public Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getDynamicShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getPinnedShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl1;,
        Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_handlePackageUpdateFinished_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$1;,
        Lcom/android/server/pm/ShortcutService$2;,
        Lcom/android/server/pm/ShortcutService$CommandException;,
        Lcom/android/server/pm/ShortcutService$ConfigConstants;,
        Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;,
        Lcom/android/server/pm/ShortcutService$Lifecycle;,
        Lcom/android/server/pm/ShortcutService$LocalService;,
        Lcom/android/server/pm/ShortcutService$MyShellCommand;,
        Lcom/android/server/pm/ShortcutService$Stats;
    }
.end annotation


# static fields
.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEBUG:Z = false

.field static final DEBUG_LOAD:Z = false

.field static final DEBUG_PROCSTATE:Z = false

.field static final DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

.field static final DEFAULT_ICON_PERSIST_QUALITY:I = 0x64

.field static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field static final DEFAULT_MAX_SHORTCUTS_PER_APP:I = 0x5

.field static final DEFAULT_MAX_UPDATES_PER_INTERVAL:I = 0xa

.field static final DEFAULT_RESET_INTERVAL_SEC:J = 0x15180L

.field static final DEFAULT_SAVE_DELAY_MS:I = 0xbb8

.field static final DIRECTORY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "shortcut_service"

.field public static final FEATURE_ENABLED:Z = false

.field static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"

.field static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"

.field private static final PACKAGE_MATCH_FLAGS:I = 0xc2000

.field private static final PROCESS_STATE_FOREGROUND_THRESHOLD:I = 0x4

.field static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAST_RESET_TIME:Ljava/lang/String; = "last_reset_time"

.field private static final TAG_LOCALE_CHANGE_SEQUENCE_NUMBER:Ljava/lang/String; = "locale_seq_no"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mCountStats:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatLock"
    .end annotation
.end field

.field private mDirtyUserIds:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDurationStats:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mIconPersistQuality:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocaleChangeSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mLock:Ljava/lang/Object;

.field private mMaxDynamicShortcuts:I

.field private mMaxIconDimension:I

.field mMaxUpdatesPerInterval:I

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mRawLastResetTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mResetInterval:J

.field private mSaveDelayMillis:I

.field private final mSaveDirtyInfoRunner:Ljava/lang/Runnable;

.field final mStatLock:Ljava/lang/Object;

.field final mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_pm_ShortcutService-mthref-1(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1

    #@0
    .prologue
    .line 1497
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutService-mthref-2(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1

    #@0
    .prologue
    .line 1508
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$10(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageUserId"    # I
    .param p2, "l"    # Lcom/android/server/pm/ShortcutLauncher;

    #@0
    .prologue
    .line 1713
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/ShortcutLauncher;->cleanUpPackage(Ljava/lang/String;I)Z

    #@3
    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLocaleChangeSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageAdded(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 150
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    #@8
    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 312
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    #@b
    .line 311
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 316
    invoke-direct {p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    #@4
    .line 220
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@b
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    #@13
    .line 234
    new-instance v0, Landroid/util/SparseArray;

    #@15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@1a
    .line 266
    new-instance v0, Landroid/util/SparseIntArray;

    #@1c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@21
    .line 269
    new-instance v0, Landroid/util/SparseLongArray;

    #@23
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    #@28
    .line 272
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@2f
    .line 281
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@31
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLocaleChangeSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    #@36
    .line 300
    new-instance v0, Ljava/lang/Object;

    #@38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@3b
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    #@3d
    .line 303
    new-array v0, v2, [I

    #@3f
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    #@41
    .line 306
    new-array v0, v2, [J

    #@43
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    #@45
    .line 344
    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    #@47
    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$1;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@4a
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    #@4c
    .line 867
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_LambdaImpl0;

    #@4e
    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@51
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    #@53
    .line 1965
    new-instance v0, Lcom/android/server/pm/ShortcutService$2;

    #@55
    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$2;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@58
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@5a
    .line 317
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Landroid/content/Context;

    #@60
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@62
    .line 318
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    #@64
    new-instance v1, Lcom/android/server/pm/ShortcutService$LocalService;

    #@66
    const/4 v2, 0x0

    #@67
    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService;)V

    #@6a
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@6d
    .line 319
    new-instance v0, Landroid/os/Handler;

    #@6f
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@72
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@74
    .line 320
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@77
    move-result-object v0

    #@78
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@7a
    .line 321
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    #@7c
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    #@82
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@84
    .line 322
    const-class v0, Landroid/os/UserManager;

    #@86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@89
    move-result-object v0

    #@8a
    check-cast v0, Landroid/os/UserManager;

    #@8c
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    #@8e
    .line 325
    return-void
.end method

.method private cleanUpPackageForAllLoadedUsers(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    .line 1682
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1683
    :try_start_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 1681
    return-void

    #@d
    .line 1682
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method private dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "statId"    # I
    .param p4, "label"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2320
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4
    .line 2321
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    #@6
    aget v0, v1, p3

    #@8
    .line 2322
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    #@a
    aget-wide v2, v1, p3

    #@c
    .line 2323
    .local v2, "dur":J
    const-string/jumbo v1, "%s: count=%d, total=%dms, avg=%.1fms"

    #@f
    const/4 v4, 0x4

    #@10
    new-array v6, v4, [Ljava/lang/Object;

    #@12
    .line 2324
    aput-object p4, v6, v5

    #@14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v4

    #@18
    const/4 v5, 0x1

    #@19
    aput-object v4, v6, v5

    #@1b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1e
    move-result-object v4

    #@1f
    const/4 v5, 0x2

    #@20
    aput-object v4, v6, v5

    #@22
    .line 2325
    if-nez v0, :cond_0

    #@24
    const-wide/16 v4, 0x0

    #@26
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@29
    move-result-object v4

    #@2a
    const/4 v5, 0x3

    #@2b
    aput-object v4, v6, v5

    #@2d
    .line 2323
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 2319
    return-void

    #@35
    .line 2325
    :cond_0
    long-to-double v4, v2

    #@36
    int-to-double v8, v0

    #@37
    div-double/2addr v4, v8

    #@38
    goto :goto_0
.end method

.method private enforceResetThrottlingPermission()V
    .locals 2

    #@0
    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1209
    return-void

    #@7
    .line 1212
    :cond_0
    const-string/jumbo v0, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    #@a
    const/4 v1, 0x0

    #@b
    .line 1211
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 1207
    return-void
.end method

.method private enforceShell()V
    .locals 2

    #@0
    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    #@3
    move-result v0

    #@4
    const-string/jumbo v1, "Caller must be shell"

    #@7
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@a
    .line 1199
    return-void
.end method

.method private enforceSystem()V
    .locals 2

    #@0
    .prologue
    .line 1204
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    const-string/jumbo v1, "Caller must be system"

    #@7
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@a
    .line 1203
    return-void
.end method

.method private enforceSystemOrShell()V
    .locals 2

    #@0
    .prologue
    .line 1195
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    #@9
    move-result v0

    #@a
    .line 1196
    :goto_0
    const-string/jumbo v1, "Caller must be system or shell"

    #@d
    .line 1195
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@10
    .line 1194
    return-void

    #@11
    .line 1195
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V
    .locals 2
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forUpdate"    # Z

    #@0
    .prologue
    .line 1296
    const-string/jumbo v0, "Null shortcut detected"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1297
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivityComponent()Landroid/content/ComponentName;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1299
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1300
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivityComponent()Landroid/content/ComponentName;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 1299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    .line 1301
    const-string/jumbo v1, "Activity package name mismatch"

    #@1f
    .line 1298
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@22
    .line 1304
    :cond_0
    if-nez p2, :cond_1

    #@24
    .line 1305
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields()V

    #@27
    .line 1307
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    #@2a
    move-result-object v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 1308
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    #@30
    move-result-object v0

    #@31
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@34
    .line 1311
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->validateForXml(Ljava/lang/String;)V

    #@3b
    .line 1312
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->validateForXml(Ljava/lang/String;)V

    #@42
    .line 1313
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtras()Landroid/os/PersistableBundle;

    #@45
    move-result-object v0

    #@46
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->validatePersistableBundleForXml(Landroid/os/PersistableBundle;)V

    #@49
    .line 1314
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->validatePersistableBundleForXml(Landroid/os/PersistableBundle;)V

    #@50
    .line 1316
    const/4 v0, 0x0

    #@51
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    #@54
    .line 1295
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 2314
    new-instance v0, Landroid/text/format/Time;

    #@2
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@5
    .line 2315
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    #@8
    .line 2316
    const-string/jumbo v1, "%Y-%m-%d %H:%M:%S"

    #@b
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method private getBaseStateFile()Landroid/util/AtomicFile;
    .locals 3

    #@0
    .prologue
    .line 474
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "shortcut_service.xml"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 475
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@f
    .line 476
    new-instance v1, Landroid/util/AtomicFile;

    #@11
    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@14
    return-object v1
.end method

.method private getCallingUserId()I
    .locals 1

    #@0
    .prologue
    .line 2574
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "cloneFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1515
    .local p4, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1517
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p0, v0, p4, p3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Ljava/util/function/Predicate;I)V

    #@c
    .line 1519
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    #@e
    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@11
    return-object v1
.end method

.method private handlePackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2030
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2031
    :try_start_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 2026
    return-void

    #@d
    .line 2030
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method private handlePackageDataCleared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    .line 2066
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;I)V

    #@3
    .line 2061
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    .line 2058
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;I)V

    #@3
    .line 2053
    return-void
.end method

.method private handlePackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2041
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2042
    :try_start_0
    new-instance v1, Lcom/android/server/pm/ShortcutService$-void_handlePackageUpdateFinished_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@5
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$-void_handlePackageUpdateFinished_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@8
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    #@b
    .line 2045
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationVersionCode(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    .line 2046
    .local v0, "versionCode":I
    if-gez v0, :cond_0

    #@11
    monitor-exit v2

    #@12
    .line 2047
    return-void

    #@13
    .line 2049
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->handlePackageUpdated(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 2036
    return-void

    #@1c
    .line 2041
    .end local v0    # "versionCode":I
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method private initialize()V
    .locals 2

    #@0
    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    #@6
    .line 485
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 482
    return-void

    #@b
    .line 483
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private static isAllowedInXml(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1355
    const/16 v2, 0x20

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const v2, 0xd7ff

    #@9
    if-gt p0, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const v2, 0xe000

    #@f
    if-lt p0, v2, :cond_2

    #@11
    const v2, 0xfffd

    #@14
    if-le p0, v2, :cond_0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_0
.end method

.method private isApplicationFlagSet(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2129
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@4
    move-result-object v0

    #@5
    .line 2130
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@7
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9
    and-int/2addr v2, p3

    #@a
    if-ne v2, p3, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :cond_0
    return v1
.end method

.method private isCallerShell()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1190
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    #@5
    move-result v0

    #@6
    .line 1191
    .local v0, "callingUid":I
    const/16 v3, 0x7d0

    #@8
    if-eq v0, v3, :cond_0

    #@a
    if-nez v0, :cond_1

    #@c
    :cond_0
    :goto_0
    return v1

    #@d
    :cond_1
    move v1, v2

    #@e
    goto :goto_0
.end method

.method private isCallerSystem()Z
    .locals 2

    #@0
    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1186
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    #@6
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@9
    move-result v1

    #@a
    return v1
.end method

.method static isClockValid(J)Z
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 914
    const-wide/32 v0, 0x54a48e00

    #@3
    cmp-long v0, p0, v0

    #@5
    if-ltz v0, :cond_0

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

.method private isProcessStateForeground(I)Z
    .locals 1
    .param p1, "processState"    # I

    #@0
    .prologue
    .line 377
    const/4 v0, 0x4

    #@1
    if-gt p1, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method private isUserLoadedLocked(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private loadBaseStateLocked()V
    .locals 13

    #@0
    .prologue
    .line 706
    const-wide/16 v8, 0x0

    #@2
    iput-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@4
    .line 708
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    #@7
    move-result-object v3

    #@8
    .line 712
    .local v3, "file":Landroid/util/AtomicFile;
    const/4 v9, 0x0

    #@9
    const/4 v4, 0x0

    #@a
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@d
    move-result-object v4

    #@e
    .line 713
    .local v4, "in":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@11
    move-result-object v5

    #@12
    .line 714
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@14
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1b
    .line 717
    :cond_0
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1e
    move-result v7

    #@1f
    .local v7, "type":I
    const/4 v8, 0x1

    #@20
    if-eq v7, v8, :cond_8

    #@22
    .line 718
    const/4 v8, 0x2

    #@23
    if-ne v7, v8, :cond_0

    #@25
    .line 721
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@28
    move-result v0

    #@29
    .line 723
    .local v0, "depth":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 724
    .local v6, "tag":Ljava/lang/String;
    const/4 v8, 0x1

    #@2e
    if-ne v0, v8, :cond_4

    #@30
    .line 725
    const-string/jumbo v8, "root"

    #@33
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v8

    #@37
    if-nez v8, :cond_0

    #@39
    .line 726
    const-string/jumbo v8, "ShortcutService"

    #@3c
    new-instance v10, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v11, "Invalid root tag: "

    #@44
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v10

    #@48
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v10

    #@4c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@53
    .line 750
    if-eqz v4, :cond_1

    #@55
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    #@58
    :cond_1
    :goto_1
    if-eqz v9, :cond_3

    #@5a
    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    #@5b
    .line 744
    .end local v0    # "depth":I
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_0
    move-exception v1

    #@5c
    .line 752
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    #@5f
    .line 705
    return-void

    #@60
    .line 750
    .restart local v0    # "depth":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :catch_1
    move-exception v9

    #@61
    goto :goto_1

    #@62
    .line 727
    :cond_3
    return-void

    #@63
    .line 732
    :cond_4
    :try_start_3
    const-string/jumbo v8, "last_reset_time"

    #@66
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v8

    #@6a
    if-eqz v8, :cond_6

    #@6c
    .line 734
    const-string/jumbo v8, "value"

    #@6f
    invoke-static {v5, v8}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@72
    move-result-wide v10

    #@73
    iput-wide v10, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@75
    goto :goto_0

    #@76
    .line 750
    .end local v0    # "depth":I
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_2
    move-exception v8

    #@77
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@78
    :catchall_0
    move-exception v9

    #@79
    move-object v12, v9

    #@7a
    move-object v9, v8

    #@7b
    move-object v8, v12

    #@7c
    :goto_3
    if-eqz v4, :cond_5

    #@7e
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3

    #@81
    :cond_5
    :goto_4
    if-eqz v9, :cond_b

    #@83
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3

    #@84
    .line 746
    :catch_3
    move-exception v2

    #@85
    .line 747
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ShortcutService"

    #@88
    new-instance v9, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v10, "Failed to read file "

    #@90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v9

    #@94
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@97
    move-result-object v10

    #@98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v9

    #@a0
    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a3
    .line 749
    const-wide/16 v8, 0x0

    #@a5
    iput-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@a7
    goto :goto_2

    #@a8
    .line 732
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "depth":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_6
    :try_start_7
    const-string/jumbo v8, "locale_seq_no"

    #@ab
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v8

    #@af
    if-eqz v8, :cond_7

    #@b1
    .line 737
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mLocaleChangeSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    #@b3
    const-string/jumbo v10, "value"

    #@b6
    invoke-static {v5, v10}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@b9
    move-result-wide v10

    #@ba
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@bd
    goto/16 :goto_0

    #@bf
    .line 750
    .end local v0    # "depth":I
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :catchall_1
    move-exception v8

    #@c0
    goto :goto_3

    #@c1
    .line 740
    .restart local v0    # "depth":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_7
    const-string/jumbo v8, "ShortcutService"

    #@c4
    new-instance v10, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v11, "Invalid tag: "

    #@cc
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v10

    #@d4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v10

    #@d8
    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@db
    goto/16 :goto_0

    #@dd
    .line 750
    .end local v0    # "depth":I
    .end local v6    # "tag":Ljava/lang/String;
    :cond_8
    if-eqz v4, :cond_9

    #@df
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3

    #@e2
    :cond_9
    :goto_5
    if-eqz v9, :cond_2

    #@e4
    :try_start_9
    throw v9

    #@e5
    :catch_4
    move-exception v9

    #@e6
    goto :goto_5

    #@e7
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_5
    move-exception v10

    #@e8
    if-nez v9, :cond_a

    #@ea
    move-object v9, v10

    #@eb
    goto :goto_4

    #@ec
    :cond_a
    if-eq v9, v10, :cond_5

    #@ee
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@f1
    goto :goto_4

    #@f2
    :cond_b
    throw v8
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
.end method

.method private loadConfigurationLocked()V
    .locals 1

    #@0
    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    #@7
    .line 492
    return-void
.end method

.method private loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 831
    new-instance v0, Ljava/io/BufferedInputStream;

    #@3
    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@6
    .line 833
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    #@7
    .line 834
    .local v3, "ret":Lcom/android/server/pm/ShortcutUser;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@a
    move-result-object v2

    #@b
    .line 835
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@14
    .line 838
    .end local v3    # "ret":Lcom/android/server/pm/ShortcutUser;
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@17
    move-result v5

    #@18
    .local v5, "type":I
    if-eq v5, v7, :cond_2

    #@1a
    .line 839
    const/4 v6, 0x2

    #@1b
    if-ne v5, v6, :cond_0

    #@1d
    .line 842
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@20
    move-result v1

    #@21
    .line 844
    .local v1, "depth":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 849
    .local v4, "tag":Ljava/lang/String;
    if-ne v1, v7, :cond_1

    #@27
    const-string/jumbo v6, "user"

    #@2a
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 850
    invoke-static {p0, v2, p1, p3}, Lcom/android/server/pm/ShortcutUser;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;

    #@33
    move-result-object v3

    #@34
    .local v3, "ret":Lcom/android/server/pm/ShortcutUser;
    goto :goto_0

    #@35
    .line 853
    .end local v3    # "ret":Lcom/android/server/pm/ShortcutUser;
    :cond_1
    invoke-static {v1, v4}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    #@38
    goto :goto_0

    #@39
    .line 855
    .end local v1    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 803
    new-instance v4, Ljava/io/File;

    #@3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    #@6
    move-result-object v5

    #@7
    const-string/jumbo v6, "shortcuts.xml"

    #@a
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    .line 807
    .local v4, "path":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    #@f
    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@12
    .line 811
    .local v2, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v3

    #@16
    .line 819
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    #@17
    :try_start_1
    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result-object v5

    #@1b
    .line 824
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e
    .line 819
    return-object v5

    #@1f
    .line 812
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    #@20
    .line 816
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-object v8

    #@21
    .line 820
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    #@22
    .line 821
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "ShortcutService"

    #@25
    new-instance v6, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v7, "Failed to read file "

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    .line 824
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@43
    .line 822
    return-object v8

    #@44
    .line 823
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@45
    .line 824
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@48
    .line 823
    throw v5
.end method

.method private notifyListeners(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserRunning(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1272
    return-void

    #@9
    .line 1274
    :cond_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@b
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@e
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->postToHandler(Ljava/lang/Runnable;)V

    #@11
    .line 1270
    return-void
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 567
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x1

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method static parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 597
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 598
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 599
    const/4 v1, 0x0

    #@b
    return-object v1

    #@c
    .line 601
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 571
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "def"    # I

    #@0
    .prologue
    .line 575
    int-to-long v0, p2

    #@1
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    #@4
    move-result-wide v0

    #@5
    long-to-int v0, v0

    #@6
    return v0
.end method

.method static parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 606
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 607
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 608
    return-object v4

    #@c
    .line 611
    :cond_0
    const/4 v2, 0x0

    #@d
    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 612
    :catch_0
    move-exception v0

    #@13
    .line 613
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v2, "ShortcutService"

    #@16
    const-string/jumbo v3, "Error parsing intent"

    #@19
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 614
    return-object v4
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 579
    const-wide/16 v0, 0x0

    #@2
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "def"    # J

    #@0
    .prologue
    .line 583
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 584
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 585
    return-wide p2

    #@b
    .line 588
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-wide v2

    #@f
    return-wide v2

    #@10
    .line 589
    :catch_0
    move-exception v0

    #@11
    .line 590
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "ShortcutService"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Error parsing long "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 591
    return-wide p2
.end method

.method static parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    const/4 v0, 0x0

    #@1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 778
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@2
    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 781
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    #@7
    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@a
    .line 782
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@c
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@13
    .line 783
    const/4 v2, 0x1

    #@14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@17
    move-result-object v2

    #@18
    const/4 v3, 0x0

    #@19
    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1c
    .line 785
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p0, v1, p3}, Lcom/android/server/pm/ShortcutUser;->saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@23
    .line 787
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@26
    .line 789
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    #@29
    .line 790
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    #@2c
    .line 776
    return-void
.end method

.method private saveUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 756
    new-instance v3, Ljava/io/File;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    #@5
    move-result-object v4

    #@6
    const-string/jumbo v5, "shortcuts.xml"

    #@9
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 760
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@f
    .line 761
    new-instance v1, Landroid/util/AtomicFile;

    #@11
    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@14
    .line 762
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    #@15
    .line 764
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@18
    move-result-object v2

    #@19
    .line 766
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    #@1a
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    #@1d
    .line 768
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 755
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@21
    .line 769
    :catch_0
    move-exception v0

    #@22
    .line 770
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ShortcutService"

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "Failed to write to file "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    .line 771
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@43
    goto :goto_0
.end method

.method private scheduleSaveBaseState()V
    .locals 1

    #@0
    .prologue
    .line 859
    const/16 v0, -0x2710

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    #@5
    .line 858
    return-void
.end method

.method private scheduleSaveInner(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 875
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 879
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@1b
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@20
    .line 880
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@22
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    #@24
    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    #@26
    int-to-long v2, v2

    #@27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2a
    .line 869
    return-void

    #@2b
    .line 873
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method

.method static shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "maxSize"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 1154
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v6

    #@6
    .line 1155
    .local v6, "ow":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@9
    move-result v5

    #@a
    .line 1156
    .local v5, "oh":I
    if-gt v6, p1, :cond_0

    #@c
    if-gt v5, p1, :cond_0

    #@e
    .line 1160
    return-object p0

    #@f
    .line 1162
    :cond_0
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@12
    move-result v2

    #@13
    .line 1165
    .local v2, "longerDimension":I
    mul-int v8, v6, p1

    #@15
    div-int v4, v8, v2

    #@17
    .line 1166
    .local v4, "nw":I
    mul-int v8, v5, p1

    #@19
    div-int v3, v8, v2

    #@1b
    .line 1172
    .local v3, "nh":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1d
    invoke-static {v4, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@20
    move-result-object v7

    #@21
    .line 1173
    .local v7, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@23
    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@26
    .line 1175
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/RectF;

    #@28
    int-to-float v8, v4

    #@29
    int-to-float v9, v3

    #@2a
    invoke-direct {v1, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@2d
    .line 1177
    .local v1, "dst":Landroid/graphics/RectF;
    invoke-virtual {v0, p0, v11, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@30
    .line 1179
    return-object v7
.end method

.method static throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    .locals 5
    .param p0, "depth"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 794
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "Invalid tag \'%s\' found at depth %d"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x1

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method private unloadUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    #@3
    .line 469
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    #@8
    .line 461
    return-void
.end method

.method private updateTimesLocked()V
    .locals 10

    #@0
    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 924
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@6
    .line 926
    .local v4, "prevLastResetTime":J
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@8
    const-wide/16 v8, 0x0

    #@a
    cmp-long v6, v6, v8

    #@c
    if-nez v6, :cond_2

    #@e
    .line 928
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@10
    .line 942
    :cond_0
    :goto_0
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@12
    cmp-long v6, v4, v6

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 943
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    #@19
    .line 920
    :cond_1
    return-void

    #@1a
    .line 929
    :cond_2
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@1c
    cmp-long v6, v0, v6

    #@1e
    if-gez v6, :cond_3

    #@20
    .line 931
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_0

    #@26
    .line 932
    const-string/jumbo v6, "ShortcutService"

    #@29
    const-string/jumbo v7, "Clock rewound"

    #@2c
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 934
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@31
    goto :goto_0

    #@32
    .line 937
    :cond_3
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@34
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@36
    add-long/2addr v6, v8

    #@37
    cmp-long v6, v6, v0

    #@39
    if-gtz v6, :cond_0

    #@3b
    .line 938
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@3d
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@3f
    rem-long v2, v6, v8

    #@41
    .line 939
    .local v2, "offset":J
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@43
    div-long v6, v0, v6

    #@45
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@47
    mul-long/2addr v6, v8

    #@48
    add-long/2addr v6, v2

    #@49
    iput-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@4b
    goto :goto_0
.end method

.method private static validateForXml(Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1344
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1345
    return-void

    #@7
    .line 1347
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v0, v1, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@f
    .line 1348
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->isAllowedInXml(C)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 1349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Unsupported character detected in: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 1347
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@35
    goto :goto_0

    #@36
    .line 1343
    :cond_2
    return-void
.end method

.method private static validatePersistableBundleForXml(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p0, "b"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1323
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->size()I

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_1

    #@9
    .line 1324
    :cond_0
    return-void

    #@a
    .line 1326
    :cond_1
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_5

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/String;

    #@1e
    .line 1327
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->validateForXml(Ljava/lang/String;)V

    #@21
    .line 1328
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    .line 1329
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    #@27
    .line 1331
    instance-of v4, v3, Ljava/lang/String;

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 1332
    check-cast v3, Ljava/lang/String;

    #@2d
    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->validateForXml(Ljava/lang/String;)V

    #@30
    goto :goto_0

    #@31
    .line 1333
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, v3, [Ljava/lang/String;

    #@33
    if-eqz v4, :cond_4

    #@35
    .line 1334
    check-cast v3, [Ljava/lang/String;

    #@37
    .end local v3    # "value":Ljava/lang/Object;
    array-length v6, v3

    #@38
    move v4, v5

    #@39
    :goto_1
    if-ge v4, v6, :cond_2

    #@3b
    aget-object v2, v3, v4

    #@3d
    .line 1335
    .local v2, "v":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/ShortcutService;->validateForXml(Ljava/lang/String;)V

    #@40
    .line 1334
    add-int/lit8 v4, v4, 0x1

    #@42
    goto :goto_1

    #@43
    .line 1337
    .end local v2    # "v":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v4, v3, Landroid/os/PersistableBundle;

    #@45
    if-eqz v4, :cond_2

    #@47
    .line 1338
    check-cast v3, Landroid/os/PersistableBundle;

    #@49
    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->validatePersistableBundleForXml(Landroid/os/PersistableBundle;)V

    #@4c
    goto :goto_0

    #@4d
    .line 1322
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1226
    const-string/jumbo v1, "packageName"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    .line 1228
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1229
    return-void

    #@d
    .line 1232
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    #@10
    move-result v0

    #@11
    .line 1235
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@14
    move-result v1

    #@15
    if-eq v1, p2, :cond_1

    #@17
    .line 1236
    new-instance v1, Ljava/lang/SecurityException;

    #@19
    const-string/jumbo v2, "Invalid user-ID"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 1238
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    #@23
    move-result v1

    #@24
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    #@27
    move-result v2

    #@28
    if-ne v1, v2, :cond_2

    #@2a
    .line 1239
    return-void

    #@2b
    .line 1241
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    #@2d
    const-string/jumbo v2, "Calling package name mismatch"

    #@30
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1
.end method

.method static warnForInvalidTag(ILjava/lang/String;)V
    .locals 5
    .param p0, "depth"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 798
    const-string/jumbo v0, "ShortcutService"

    #@3
    const-string/jumbo v1, "Invalid tag \'%s\' found at depth %d"

    #@6
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    const/4 v3, 0x0

    #@a
    aput-object p1, v2, v3

    #@c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    const/4 v4, 0x1

    #@11
    aput-object v3, v2, v4

    #@13
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 797
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 650
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 661
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 662
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 660
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 666
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 668
    :cond_0
    const/4 v0, 0x0

    #@4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 665
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 645
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 647
    :cond_0
    const/4 v0, 0x0

    #@8
    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 644
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 655
    if-eqz p2, :cond_0

    #@2
    .line 656
    const-string/jumbo v0, "1"

    #@5
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 654
    :cond_0
    return-void
.end method

.method static writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 637
    if-nez p2, :cond_0

    #@3
    return-void

    #@4
    .line 639
    :cond_0
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 640
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@a
    .line 641
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 636
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 627
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 626
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 631
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 632
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 630
    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 619
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    return-void

    #@8
    .line 621
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 622
    const-string/jumbo v0, "value"

    #@e
    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11
    .line 623
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14
    .line 618
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutService-mthref-0()V
    .locals 0

    #@0
    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    #@3
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$11(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0
    .param p1, "p"    # Lcom/android/server/pm/ShortcutPackage;

    #@0
    .prologue
    .line 1717
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags(Lcom/android/server/pm/ShortcutService;)V

    #@3
    .line 0
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$12(ILjava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 3
    .param p1, "ownerUserId"    # I
    .param p2, "gonePackages"    # Ljava/util/ArrayList;
    .param p3, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 2004
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2005
    return-void

    #@b
    .line 2008
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@12
    move-result v2

    #@13
    .line 2007
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getApplicationVersionCode(Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 2009
    .local v0, "versionCode":I
    if-ltz v0, :cond_1

    #@19
    .line 2011
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@1c
    move-result-object v1

    #@1d
    .line 2012
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 2011
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/server/pm/ShortcutUser;->handlePackageUpdated(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@24
    .line 0
    :goto_0
    return-void

    #@25
    .line 2014
    :cond_1
    invoke-static {p3}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$13(Ljava/lang/String;ILcom/android/server/pm/ShortcutUser;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "user"    # Lcom/android/server/pm/ShortcutUser;

    #@0
    .prologue
    .line 2032
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@3
    .line 0
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$14(Ljava/lang/String;ILcom/android/server/pm/ShortcutUser;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "user"    # Lcom/android/server/pm/ShortcutUser;

    #@0
    .prologue
    .line 2043
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@3
    .line 0
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$15(Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 0
    .param p1, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 2171
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageInfoAndSave(Lcom/android/server/pm/ShortcutService;)V

    #@3
    .line 0
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$6(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1276
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1277
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    monitor-exit v3

    #@b
    .line 1280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    add-int/lit8 v1, v2, -0x1

    #@11
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@13
    .line 1281
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    #@19
    invoke-interface {v2, p1, p2}, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;->onShortcutChanged(Ljava/lang/String;I)V

    #@1c
    .line 1280
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1276
    .end local v0    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2

    #@22
    .line 0
    .restart local v0    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$9(Ljava/lang/String;ILcom/android/server/pm/ShortcutUser;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "user"    # Lcom/android/server/pm/ShortcutUser;

    #@0
    .prologue
    .line 1684
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;II)V

    #@7
    .line 0
    return-void
.end method

.method public addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1438
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@4
    .line 1440
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    .line 1441
    .local v2, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v4

    #@c
    .line 1443
    .local v4, "size":I
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v6

    #@f
    .line 1444
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@12
    move-result-object v3

    #@13
    .line 1447
    .local v3, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v3, p0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Lcom/android/server/pm/ShortcutService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_0

    #@19
    monitor-exit v6

    #@1a
    .line 1448
    return v7

    #@1b
    .line 1450
    :cond_0
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@1e
    .line 1451
    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@24
    .line 1454
    .local v1, "newShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v5, 0x0

    #@25
    invoke-direct {p0, v1, v5}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    #@28
    .line 1457
    invoke-virtual {v3, p0, v1}, Lcom/android/server/pm/ShortcutPackage;->addDynamicShortcut(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 1450
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .end local v1    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    :cond_1
    monitor-exit v6

    #@2f
    .line 1460
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@32
    .line 1462
    const/4 v5, 0x1

    #@33
    return v5

    #@34
    .line 1443
    .end local v0    # "i":I
    .end local v3    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v5

    #@35
    monitor-exit v6

    #@36
    throw v5
.end method

.method public applyRestore([BI)V
    .locals 9
    .param p1, "payload"    # [B
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2188
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    #@3
    .line 2193
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@5
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@8
    .line 2195
    .local v2, "is":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x1

    #@9
    :try_start_0
    invoke-direct {p0, p2, v2, v5}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v4

    #@d
    .line 2200
    .local v4, "user":Lcom/android/server/pm/ShortcutUser;
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v6

    #@10
    .line 2201
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v5, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    .line 2204
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    #@18
    move-result-object v0

    #@19
    .line 2205
    .local v0, "bitmapPath":Ljava/io/File;
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    #@1c
    move-result v3

    #@1d
    .line 2206
    .local v3, "success":Z
    if-nez v3, :cond_0

    #@1f
    .line 2207
    const-string/jumbo v5, "ShortcutService"

    #@22
    new-instance v7, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v8, "Failed to delete "

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 2210
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    monitor-exit v6

    #@3d
    .line 2187
    return-void

    #@3e
    .line 2196
    .end local v0    # "bitmapPath":Ljava/io/File;
    .end local v3    # "success":Z
    .end local v4    # "user":Lcom/android/server/pm/ShortcutUser;
    :catch_0
    move-exception v1

    #@3f
    .line 2197
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ShortcutService"

    #@42
    const-string/jumbo v6, "Restoration failed."

    #@45
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 2198
    return-void

    #@49
    .line 2200
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v5

    #@4a
    monitor-exit v6

    #@4b
    throw v5
.end method

.method checkPackageChanges(I)V
    .locals 7
    .param p1, "ownerUserId"    # I

    #@0
    .prologue
    .line 1998
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2000
    .local v0, "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v5

    #@8
    .line 2001
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@b
    move-result-object v3

    #@c
    .line 2003
    .local v3, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v4, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;

    #@e
    invoke-direct {v4, p0, p1, v0}, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/util/ArrayList;)V

    #@11
    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    #@14
    .line 2017
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    if-lez v4, :cond_0

    #@1a
    .line 2018
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v4

    #@1e
    add-int/lit8 v1, v4, -0x1

    #@20
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@22
    .line 2019
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@28
    .line 2020
    .local v2, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v4, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@2a
    iget v6, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@2c
    invoke-virtual {p0, v4, p1, v6}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 2018
    add-int/lit8 v1, v1, -0x1

    #@31
    goto :goto_0

    #@32
    .end local v1    # "i":I
    .end local v2    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_0
    monitor-exit v5

    #@33
    .line 1994
    return-void

    #@34
    .line 2000
    .end local v3    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v4

    #@35
    monitor-exit v5

    #@36
    throw v4
.end method

.method cleanUpPackageLocked(Ljava/lang/String;II)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "owningUserId"    # I
    .param p3, "packageUserId"    # I

    #@0
    .prologue
    .line 1697
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    #@3
    move-result v2

    #@4
    .line 1699
    .local v2, "wasUserLoaded":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@7
    move-result-object v1

    #@8
    .line 1700
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v0, 0x0

    #@9
    .line 1703
    .local v0, "doNotify":Z
    if-ne p3, p2, :cond_0

    #@b
    .line 1704
    invoke-virtual {v1, p0, p1}, Lcom/android/server/pm/ShortcutUser;->removePackage(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@e
    move-result-object v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 1705
    const/4 v0, 0x1

    #@12
    .line 1710
    :cond_0
    invoke-virtual {v1, p3, p1}, Lcom/android/server/pm/ShortcutUser;->removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    #@15
    .line 1713
    new-instance v3, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl0;

    #@17
    invoke-direct {v3, p1, p3}, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl0;-><init>(Ljava/lang/String;I)V

    #@1a
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    #@1d
    .line 1717
    new-instance v3, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl1;

    #@1f
    invoke-direct {v3, p0}, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_LambdaImpl1;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@22
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    #@25
    .line 1719
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@28
    .line 1721
    if-eqz v0, :cond_1

    #@2a
    .line 1722
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    #@2d
    .line 1725
    :cond_1
    if-nez v2, :cond_2

    #@2f
    .line 1727
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    #@32
    .line 1696
    :cond_2
    return-void
.end method

.method public cleanupBitmapsForPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1007
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    .line 1008
    .local v0, "packagePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 1009
    return-void

    #@10
    .line 1011
    :cond_0
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@19
    move-result v1

    #@1a
    :goto_0
    if-nez v1, :cond_1

    #@1c
    .line 1012
    const-string/jumbo v1, "ShortcutService"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Unable to remove directory "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 1006
    :cond_1
    return-void

    #@37
    .line 1011
    :cond_2
    const/4 v1, 0x0

    #@38
    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2220
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "Permission Denial: can\'t dump UserManager from from pid="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 2221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 2220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 2222
    const-string/jumbo v1, ", uid="

    #@22
    .line 2220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 2222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 2220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 2223
    const-string/jumbo v1, " without permission "

    #@31
    .line 2220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 2224
    const-string/jumbo v1, "android.permission.DUMP"

    #@38
    .line 2220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 2225
    return-void

    #@44
    .line 2227
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@47
    .line 2217
    return-void
.end method

.method dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2232
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v15

    #@5
    .line 2233
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@8
    move-result-wide v10

    #@9
    .line 2234
    .local v10, "now":J
    const-string/jumbo v14, "Now: ["

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 2235
    move-object/from16 v0, p1

    #@13
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    #@16
    .line 2236
    const-string/jumbo v14, "] "

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 2237
    invoke-static {v10, v11}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@21
    move-result-object v14

    #@22
    move-object/from16 v0, p1

    #@24
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    .line 2239
    const-string/jumbo v14, "  Raw last reset: ["

    #@2a
    move-object/from16 v0, p1

    #@2c
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 2240
    move-object/from16 v0, p0

    #@31
    iget-wide v0, v0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@33
    move-wide/from16 v16, v0

    #@35
    move-object/from16 v0, p1

    #@37
    move-wide/from16 v1, v16

    #@39
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@3c
    .line 2241
    const-string/jumbo v14, "] "

    #@3f
    move-object/from16 v0, p1

    #@41
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    .line 2242
    move-object/from16 v0, p0

    #@46
    iget-wide v0, v0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@48
    move-wide/from16 v16, v0

    #@4a
    invoke-static/range {v16 .. v17}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@4d
    move-result-object v14

    #@4e
    move-object/from16 v0, p1

    #@50
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    .line 2244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    #@56
    move-result-wide v6

    #@57
    .line 2245
    .local v6, "last":J
    const-string/jumbo v14, "  Last reset: ["

    #@5a
    move-object/from16 v0, p1

    #@5c
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    .line 2246
    move-object/from16 v0, p1

    #@61
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@64
    .line 2247
    const-string/jumbo v14, "] "

    #@67
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c
    .line 2248
    invoke-static {v6, v7}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@6f
    move-result-object v14

    #@70
    move-object/from16 v0, p1

    #@72
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    .line 2250
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    #@78
    move-result-wide v8

    #@79
    .line 2251
    .local v8, "next":J
    const-string/jumbo v14, "  Next reset: ["

    #@7c
    move-object/from16 v0, p1

    #@7e
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    .line 2252
    move-object/from16 v0, p1

    #@83
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@86
    .line 2253
    const-string/jumbo v14, "] "

    #@89
    move-object/from16 v0, p1

    #@8b
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    .line 2254
    invoke-static {v8, v9}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@91
    move-result-object v14

    #@92
    move-object/from16 v0, p1

    #@94
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    .line 2256
    const-string/jumbo v14, "  Locale change seq#: "

    #@9a
    move-object/from16 v0, p1

    #@9c
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    .line 2257
    move-object/from16 v0, p0

    #@a1
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mLocaleChangeSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    #@a3
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@a6
    move-result-wide v16

    #@a7
    move-object/from16 v0, p1

    #@a9
    move-wide/from16 v1, v16

    #@ab
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@ae
    .line 2258
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@b1
    .line 2260
    const-string/jumbo v14, "  Config:"

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b9
    .line 2261
    const-string/jumbo v14, "    Max icon dim: "

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    .line 2262
    move-object/from16 v0, p0

    #@c3
    iget v14, v0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@c5
    move-object/from16 v0, p1

    #@c7
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@ca
    .line 2263
    const-string/jumbo v14, "    Icon format: "

    #@cd
    move-object/from16 v0, p1

    #@cf
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    .line 2264
    move-object/from16 v0, p0

    #@d4
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    #@d6
    move-object/from16 v0, p1

    #@d8
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@db
    .line 2265
    const-string/jumbo v14, "    Icon quality: "

    #@de
    move-object/from16 v0, p1

    #@e0
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    .line 2266
    move-object/from16 v0, p0

    #@e5
    iget v14, v0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    #@e7
    move-object/from16 v0, p1

    #@e9
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@ec
    .line 2267
    const-string/jumbo v14, "    saveDelayMillis: "

    #@ef
    move-object/from16 v0, p1

    #@f1
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f4
    .line 2268
    move-object/from16 v0, p0

    #@f6
    iget v14, v0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    #@f8
    move-object/from16 v0, p1

    #@fa
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@fd
    .line 2269
    const-string/jumbo v14, "    resetInterval: "

    #@100
    move-object/from16 v0, p1

    #@102
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@105
    .line 2270
    move-object/from16 v0, p0

    #@107
    iget-wide v0, v0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@109
    move-wide/from16 v16, v0

    #@10b
    move-object/from16 v0, p1

    #@10d
    move-wide/from16 v1, v16

    #@10f
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    #@112
    .line 2271
    const-string/jumbo v14, "    maxUpdatesPerInterval: "

    #@115
    move-object/from16 v0, p1

    #@117
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11a
    .line 2272
    move-object/from16 v0, p0

    #@11c
    iget v14, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@11e
    move-object/from16 v0, p1

    #@120
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@123
    .line 2273
    const-string/jumbo v14, "    maxDynamicShortcuts: "

    #@126
    move-object/from16 v0, p1

    #@128
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    .line 2274
    move-object/from16 v0, p0

    #@12d
    iget v14, v0, Lcom/android/server/pm/ShortcutService;->mMaxDynamicShortcuts:I

    #@12f
    move-object/from16 v0, p1

    #@131
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@134
    .line 2275
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@137
    .line 2277
    const-string/jumbo v14, "  Stats:"

    #@13a
    move-object/from16 v0, p1

    #@13c
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13f
    .line 2278
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    #@143
    move-object/from16 v16, v0

    #@145
    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@146
    .line 2279
    :try_start_1
    const-string/jumbo v5, "    "

    #@149
    .line 2280
    .local v5, "p":Ljava/lang/String;
    const-string/jumbo v14, "    "

    #@14c
    const-string/jumbo v17, "getHomeActivities()"

    #@14f
    const/16 v18, 0x0

    #@151
    move-object/from16 v0, p0

    #@153
    move-object/from16 v1, p1

    #@155
    move/from16 v2, v18

    #@157
    move-object/from16 v3, v17

    #@159
    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/pm/ShortcutService;->dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    #@15c
    .line 2281
    const-string/jumbo v14, "    "

    #@15f
    const-string/jumbo v17, "Launcher permission check"

    #@162
    const/16 v18, 0x4

    #@164
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, p1

    #@168
    move/from16 v2, v18

    #@16a
    move-object/from16 v3, v17

    #@16c
    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/pm/ShortcutService;->dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    #@16f
    .line 2283
    const-string/jumbo v14, "    "

    #@172
    const-string/jumbo v17, "getPackageInfo()"

    #@175
    const/16 v18, 0x1

    #@177
    move-object/from16 v0, p0

    #@179
    move-object/from16 v1, p1

    #@17b
    move/from16 v2, v18

    #@17d
    move-object/from16 v3, v17

    #@17f
    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/pm/ShortcutService;->dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    #@182
    .line 2284
    const-string/jumbo v14, "    "

    #@185
    const-string/jumbo v17, "getPackageInfo(SIG)"

    #@188
    const/16 v18, 0x2

    #@18a
    move-object/from16 v0, p0

    #@18c
    move-object/from16 v1, p1

    #@18e
    move/from16 v2, v18

    #@190
    move-object/from16 v3, v17

    #@192
    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/pm/ShortcutService;->dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    #@195
    .line 2285
    const-string/jumbo v14, "    "

    #@198
    const-string/jumbo v17, "getApplicationInfo"

    #@19b
    const/16 v18, 0x3

    #@19d
    move-object/from16 v0, p0

    #@19f
    move-object/from16 v1, p1

    #@1a1
    move/from16 v2, v18

    #@1a3
    move-object/from16 v3, v17

    #@1a5
    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/pm/ShortcutService;->dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a8
    :try_start_2
    monitor-exit v16

    #@1a9
    .line 2288
    const/4 v4, 0x0

    #@1aa
    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@1ac
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@1ae
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@1b1
    move-result v14

    #@1b2
    if-ge v4, v14, :cond_0

    #@1b4
    .line 2289
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1b7
    .line 2290
    move-object/from16 v0, p0

    #@1b9
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@1bb
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1be
    move-result-object v14

    #@1bf
    check-cast v14, Lcom/android/server/pm/ShortcutUser;

    #@1c1
    const-string/jumbo v16, "  "

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    move-object/from16 v1, p1

    #@1c8
    move-object/from16 v2, v16

    #@1ca
    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/pm/ShortcutUser;->dump(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@1cd
    .line 2288
    add-int/lit8 v4, v4, 0x1

    #@1cf
    goto :goto_0

    #@1d0
    .line 2278
    .end local v4    # "i":I
    .end local v5    # "p":Ljava/lang/String;
    :catchall_0
    move-exception v14

    #@1d1
    monitor-exit v16

    #@1d2
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1d3
    .line 2232
    .end local v6    # "last":J
    .end local v8    # "next":J
    .end local v10    # "now":J
    :catchall_1
    move-exception v14

    #@1d4
    monitor-exit v15

    #@1d5
    throw v14

    #@1d6
    .line 2293
    .restart local v4    # "i":I
    .restart local v5    # "p":Ljava/lang/String;
    .restart local v6    # "last":J
    .restart local v8    # "next":J
    .restart local v10    # "now":J
    :cond_0
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    #@1d9
    .line 2294
    const-string/jumbo v14, "  UID state:"

    #@1dc
    move-object/from16 v0, p1

    #@1de
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e1
    .line 2296
    const/4 v4, 0x0

    #@1e2
    :goto_1
    move-object/from16 v0, p0

    #@1e4
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@1e6
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    #@1e9
    move-result v14

    #@1ea
    if-ge v4, v14, :cond_2

    #@1ec
    .line 2297
    move-object/from16 v0, p0

    #@1ee
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@1f0
    invoke-virtual {v14, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1f3
    move-result v13

    #@1f4
    .line 2298
    .local v13, "uid":I
    move-object/from16 v0, p0

    #@1f6
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@1f8
    invoke-virtual {v14, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@1fb
    move-result v12

    #@1fc
    .line 2299
    .local v12, "state":I
    const-string/jumbo v14, "    UID="

    #@1ff
    move-object/from16 v0, p1

    #@201
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@204
    .line 2300
    move-object/from16 v0, p1

    #@206
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    #@209
    .line 2301
    const-string/jumbo v14, " state="

    #@20c
    move-object/from16 v0, p1

    #@20e
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@211
    .line 2302
    move-object/from16 v0, p1

    #@213
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    #@216
    .line 2303
    move-object/from16 v0, p0

    #@218
    invoke-direct {v0, v12}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    #@21b
    move-result v14

    #@21c
    if-eqz v14, :cond_1

    #@21e
    .line 2304
    const-string/jumbo v14, "  [FG]"

    #@221
    move-object/from16 v0, p1

    #@223
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@226
    .line 2306
    :cond_1
    const-string/jumbo v14, "  last FG="

    #@229
    move-object/from16 v0, p1

    #@22b
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22e
    .line 2307
    move-object/from16 v0, p0

    #@230
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    #@232
    invoke-virtual {v14, v13}, Landroid/util/SparseLongArray;->get(I)J

    #@235
    move-result-wide v16

    #@236
    move-object/from16 v0, p1

    #@238
    move-wide/from16 v1, v16

    #@23a
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@23d
    .line 2308
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@240
    .line 2296
    add-int/lit8 v4, v4, 0x1

    #@242
    goto :goto_1

    #@243
    .end local v12    # "state":I
    .end local v13    # "uid":I
    :cond_2
    monitor-exit v15

    #@244
    .line 2231
    return-void
.end method

.method enforceMaxDynamicShortcuts(I)V
    .locals 2
    .param p1, "numShortcuts"    # I

    #@0
    .prologue
    .line 1252
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxDynamicShortcuts:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 1253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Max number of dynamic shortcuts exceeded"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1251
    :cond_0
    return-void
.end method

.method forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 969
    .local p1, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutUser;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 970
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    #@12
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@15
    .line 969
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 968
    :cond_0
    return-void
.end method

.method getApplicationVersionCode(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2141
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    .line 2142
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@8
    const/high16 v2, 0x800000

    #@a
    and-int/2addr v1, v2

    #@b
    if-nez v1, :cond_1

    #@d
    .line 2143
    :cond_0
    const/4 v1, -0x1

    #@e
    return v1

    #@f
    .line 2145
    :cond_1
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@11
    return v1
.end method

.method public getBackupPayload(I)[B
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2160
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    #@4
    .line 2164
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v4

    #@7
    .line 2165
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@a
    move-result-object v2

    #@b
    .line 2166
    .local v2, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v2, :cond_0

    #@d
    .line 2167
    const-string/jumbo v3, "ShortcutService"

    #@10
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "Can\'t backup: user not found: id="

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v4

    #@28
    .line 2168
    return-object v7

    #@29
    .line 2171
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl0;

    #@2b
    invoke-direct {v3, p0}, Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@2e
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    #@31
    .line 2174
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@33
    const v3, 0x8000

    #@36
    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    .line 2176
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    #@3a
    :try_start_2
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    .line 2182
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    move-result-object v3

    #@41
    monitor-exit v4

    #@42
    return-object v3

    #@43
    .line 2177
    :catch_0
    move-exception v0

    #@44
    .line 2179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "ShortcutService"

    #@47
    const-string/jumbo v5, "Backup failed."

    #@4a
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4d
    monitor-exit v4

    #@4e
    .line 2180
    return-object v7

    #@4f
    .line 2164
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v3

    #@50
    monitor-exit v4

    #@51
    throw v3
.end method

.method public getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1493
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1494
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1497
    :try_start_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getDynamicShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@8
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getDynamicShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>()V

    #@b
    .line 1496
    const/4 v2, 0x1

    #@c
    .line 1495
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 1494
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getIconMaxDimensions(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1551
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1553
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 1554
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    return v1

    #@a
    .line 1553
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    #@0
    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    #@2
    return-object v0
.end method

.method getIconPersistQualityForTest()I
    .locals 1

    #@0
    .prologue
    .line 2662
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    #@2
    return v0
.end method

.method getLastResetTimeLocked()J
    .locals 2

    #@0
    .prologue
    .line 903
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    #@3
    .line 904
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@5
    return-wide v0
.end method

.method getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerUserId"    # I
    .param p3, "launcherUserId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    #@0
    .prologue
    .line 987
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1, p3}, Lcom/android/server/pm/ShortcutUser;->getLauncherShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLocaleChangeSequenceNumber()J
    .locals 2

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLocaleChangeSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMaxDynamicShortcutCount(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1525
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1527
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxDynamicShortcuts:I

    #@5
    return v0
.end method

.method getMaxDynamicShortcutsForTest()I
    .locals 1

    #@0
    .prologue
    .line 2637
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxDynamicShortcuts:I

    #@2
    return v0
.end method

.method getMaxIconDimensionForTest()I
    .locals 1

    #@0
    .prologue
    .line 2652
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@2
    return v0
.end method

.method getMaxUpdatesPerIntervalForTest()I
    .locals 1

    #@0
    .prologue
    .line 2642
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@2
    return v0
.end method

.method getNextResetTimeLocked()J
    .locals 4

    #@0
    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    #@3
    .line 910
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@5
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@7
    add-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2072
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->injectPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2667
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 2668
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/pm/ShortcutUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 2669
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v1, :cond_0

    #@e
    monitor-exit v3

    #@f
    return-object v4

    #@10
    .line 2671
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/pm/ShortcutPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .line 2672
    .local v0, "pkg":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_1

    #@1c
    monitor-exit v3

    #@1d
    return-object v4

    #@1e
    .line 2674
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    move-result-object v2

    #@22
    monitor-exit v3

    #@23
    return-object v2

    #@24
    .line 2667
    .end local v0    # "pkg":Lcom/android/server/pm/ShortcutPackage;
    .end local v1    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method

.method getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    #@0
    .prologue
    .line 979
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1504
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1505
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1508
    :try_start_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getPinnedShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@8
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getPinnedShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>()V

    #@b
    .line 1507
    const/4 v2, 0x1

    #@c
    .line 1506
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 1505
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getRateLimitResetTime(Ljava/lang/String;I)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1542
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1544
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 1545
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v2

    #@a
    monitor-exit v0

    #@b
    return-wide v2

    #@c
    .line 1544
    :catchall_0
    move-exception v1

    #@d
    monitor-exit v0

    #@e
    throw v1
.end method

.method public getRemainingCallCount(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1532
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1534
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1535
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@8
    .line 1536
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Lcom/android/server/pm/ShortcutService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v2

    #@10
    .line 1535
    sub-int/2addr v0, v2

    #@11
    monitor-exit v1

    #@12
    return v0

    #@13
    .line 1534
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method getResetIntervalForTest()J
    .locals 2

    #@0
    .prologue
    .line 2647
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@2
    return-wide v0
.end method

.method getShortcutsForTest()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method getUidLastForegroundElapsedTimeLocked(I)J
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method getUserBitmapFilePath(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2627
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "bitmaps"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .locals 2
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    #@0
    .prologue
    .line 957
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    #@8
    .line 958
    .local v0, "userPackages":Lcom/android/server/pm/ShortcutUser;
    if-nez v0, :cond_1

    #@a
    .line 959
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@d
    move-result-object v0

    #@e
    .line 960
    if-nez v0, :cond_0

    #@10
    .line 961
    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    #@12
    .end local v0    # "userPackages":Lcom/android/server/pm/ShortcutUser;
    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(I)V

    #@15
    .line 963
    .restart local v0    # "userPackages":Lcom/android/server/pm/ShortcutUser;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    .line 965
    :cond_1
    return-object v0
.end method

.method handleCleanupUser(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 454
    return-void
.end method

.method handleOnUidStateChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    #@0
    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@8
    .line 370
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 371
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    #@10
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@13
    move-result-wide v2

    #@14
    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v1

    #@18
    .line 360
    return-void

    #@19
    .line 364
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method handleUnlockUser(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 441
    return-void
.end method

.method hasShortcutHostPermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1603
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1610
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v15

    #@5
    .line 1611
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v10

    #@9
    .line 1613
    .local v10, "start":J
    move-object/from16 v0, p0

    #@b
    move/from16 v1, p2

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@10
    move-result-object v9

    #@11
    .line 1615
    .local v9, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v2, Ljava/util/ArrayList;

    #@13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 1618
    .local v2, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v12

    #@1a
    .line 1619
    .local v12, "startGetHomeActivitiesAsUser":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    #@1d
    move-result-object v14

    #@1e
    move/from16 v0, p2

    #@20
    invoke-virtual {v14, v2, v0}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    #@23
    move-result-object v3

    #@24
    .line 1621
    .local v3, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v14, 0x0

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v14, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@2a
    .line 1624
    if-eqz v3, :cond_1

    #@2c
    .line 1625
    move-object v4, v3

    #@2d
    .line 1638
    .local v4, "detected":Landroid/content/ComponentName;
    :goto_0
    if-nez v4, :cond_3

    #@2f
    .line 1645
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@32
    move-result v8

    #@33
    .line 1647
    .local v8, "size":I
    const/high16 v6, -0x80000000

    #@35
    .line 1648
    .local v6, "lastPriority":I
    const/4 v5, 0x0

    #@36
    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_3

    #@38
    .line 1649
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v7

    #@3c
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@3e
    .line 1650
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@40
    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@42
    invoke-virtual {v14}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@45
    move-result v14

    #@46
    if-nez v14, :cond_2

    #@48
    .line 1648
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 1630
    .end local v4    # "detected":Landroid/content/ComponentName;
    .end local v5    # "i":I
    .end local v6    # "lastPriority":I
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "size":I
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutUser;->getLauncherComponent()Landroid/content/ComponentName;

    #@4e
    move-result-object v4

    #@4f
    .restart local v4    # "detected":Landroid/content/ComponentName;
    goto :goto_0

    #@50
    .line 1657
    .restart local v5    # "i":I
    .restart local v6    # "lastPriority":I
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "size":I
    :cond_2
    iget v14, v7, Landroid/content/pm/ResolveInfo;->priority:I

    #@52
    if-lt v14, v6, :cond_0

    #@54
    .line 1660
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@56
    invoke-virtual {v14}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@59
    move-result-object v4

    #@5a
    .line 1661
    iget v6, v7, Landroid/content/pm/ResolveInfo;->priority:I

    #@5c
    goto :goto_2

    #@5d
    .line 1664
    .end local v5    # "i":I
    .end local v6    # "lastPriority":I
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "size":I
    :cond_3
    const/4 v14, 0x4

    #@5e
    move-object/from16 v0, p0

    #@60
    invoke-virtual {v0, v14, v10, v11}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@63
    .line 1666
    if-eqz v4, :cond_4

    #@65
    .line 1670
    move-object/from16 v0, p0

    #@67
    invoke-virtual {v9, v0, v4}, Lcom/android/server/pm/ShortcutUser;->setLauncherComponent(Lcom/android/server/pm/ShortcutService;Landroid/content/ComponentName;)V

    #@6a
    .line 1671
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6d
    move-result-object v14

    #@6e
    move-object/from16 v0, p1

    #@70
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    move-result v14

    #@74
    monitor-exit v15

    #@75
    return v14

    #@76
    .line 1674
    :cond_4
    const/4 v14, 0x0

    #@77
    monitor-exit v15

    #@78
    return v14

    #@79
    .line 1610
    .end local v2    # "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultLauncher":Landroid/content/ComponentName;
    .end local v4    # "detected":Landroid/content/ComponentName;
    .end local v9    # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v10    # "start":J
    .end local v12    # "startGetHomeActivitiesAsUser":J
    :catchall_0
    move-exception v14

    #@7a
    monitor-exit v15

    #@7b
    throw v14
.end method

.method injectApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    .line 2113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v2

    #@5
    .line 2114
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@8
    move-result-wide v4

    #@9
    .line 2116
    .local v4, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@b
    const v6, 0xc2000

    #@e
    invoke-interface {v1, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v1

    #@12
    .line 2122
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@15
    .line 2124
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@18
    .line 2116
    return-object v1

    #@19
    .line 2117
    :catch_0
    move-exception v0

    #@1a
    .line 2119
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "ShortcutService"

    #@1d
    const-string/jumbo v6, "RemoteException"

    #@20
    invoke-static {v1, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 2120
    const/4 v1, 0x0

    #@24
    .line 2122
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@27
    .line 2124
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@2a
    .line 2120
    return-object v1

    #@2b
    .line 2121
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    .line 2122
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@2f
    .line 2124
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@32
    .line 2121
    throw v1
.end method

.method injectBinderCallingUid()I
    .locals 1

    #@0
    .prologue
    .line 2570
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingUid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method injectClearCallingIdentity()J
    .locals 2

    #@0
    .prologue
    .line 2580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method injectCurrentTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 2559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method injectDipToPixel(I)I
    .locals 3
    .param p1, "dip"    # I

    #@0
    .prologue
    .line 555
    int-to-float v0, p1

    #@1
    .line 556
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@a
    move-result-object v1

    #@b
    .line 555
    const/4 v2, 0x1

    #@c
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@f
    move-result v0

    #@10
    float-to-int v0, v0

    #@11
    return v0
.end method

.method injectElapsedRealtime()J
    .locals 2

    #@0
    .prologue
    .line 2564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1221
    return-void
.end method

.method injectGetPackageUid(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2076
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2078
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@6
    const v4, 0xc2000

    #@9
    invoke-interface {v1, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    .line 2085
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@10
    .line 2078
    return v1

    #@11
    .line 2080
    :catch_0
    move-exception v0

    #@12
    .line 2082
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "ShortcutService"

    #@15
    const-string/jumbo v4, "RemoteException"

    #@18
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 2083
    const/4 v1, -0x1

    #@1c
    .line 2085
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1f
    .line 2083
    return v1

    #@20
    .line 2084
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@21
    .line 2085
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@24
    .line 2084
    throw v1
.end method

.method injectIsLowRamDevice()Z
    .locals 1

    #@0
    .prologue
    .line 2610
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method injectPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "getSignatures"    # Z

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    .line 2092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    .line 2093
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@9
    move-result-wide v4

    #@a
    .line 2095
    .local v4, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@c
    .line 2096
    if-eqz p3, :cond_0

    #@e
    const/16 v1, 0x40

    #@10
    .line 2095
    :goto_0
    const v9, 0xc2000

    #@13
    or-int/2addr v1, v9

    #@14
    invoke-interface {v8, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v8

    #@18
    .line 2103
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1b
    .line 2106
    if-eqz p3, :cond_1

    #@1d
    move v1, v6

    #@1e
    .line 2105
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@21
    .line 2095
    return-object v8

    #@22
    .line 2096
    :cond_0
    const/4 v1, 0x0

    #@23
    goto :goto_0

    #@24
    :cond_1
    move v1, v7

    #@25
    .line 2106
    goto :goto_1

    #@26
    .line 2098
    :catch_0
    move-exception v0

    #@27
    .line 2100
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "ShortcutService"

    #@2a
    const-string/jumbo v8, "RemoteException"

    #@2d
    invoke-static {v1, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 2101
    const/4 v1, 0x0

    #@31
    .line 2103
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@34
    .line 2106
    if-eqz p3, :cond_2

    #@36
    .line 2105
    :goto_2
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@39
    .line 2101
    return-object v1

    #@3a
    :cond_2
    move v6, v7

    #@3b
    .line 2106
    goto :goto_2

    #@3c
    .line 2102
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@3d
    .line 2103
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@40
    .line 2106
    if-eqz p3, :cond_3

    #@42
    .line 2105
    :goto_3
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@45
    .line 2102
    throw v1

    #@46
    :cond_3
    move v6, v7

    #@47
    .line 2106
    goto :goto_3
.end method

.method injectPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    #@0
    .prologue
    .line 2623
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@2
    return-object v0
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 2
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 2616
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2614
    :goto_0
    return-void

    #@8
    .line 2617
    :catch_0
    move-exception v0

    #@9
    .local v0, "shouldntHappen":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method injectRestoreCallingIdentity(J)V
    .locals 1
    .param p1, "token"    # J

    #@0
    .prologue
    .line 2586
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3
    .line 2585
    return-void
.end method

.method injectShortcutManagerConstants()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 550
    const-string/jumbo v1, "shortcut_manager_constants"

    #@9
    .line 548
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method injectSystemDataPath()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 2600
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method injectUserDataPath(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2605
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "shortcut_service"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V
    .locals 2
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 1145
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    .line 1147
    const-string/jumbo v1, "Icon resource must reside in shortcut owner package"

    #@13
    .line 1146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 1144
    :cond_0
    return-void
.end method

.method isPackageInstalled(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2134
    const/high16 v0, 0x800000

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isUidForegroundLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 381
    const/16 v0, 0x3e8

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 384
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@8
    const/16 v1, 0x10

    #@a
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@d
    move-result v0

    #@e
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method logDurationStat(IJ)V
    .locals 6
    .param p1, "statId"    # I
    .param p2, "start"    # J

    #@0
    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    #@5
    aget v2, v0, p1

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    aput v2, v0, p1

    #@b
    .line 336
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    #@d
    aget-wide v2, v0, p1

    #@f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v4

    #@13
    sub-long/2addr v4, p2

    #@14
    add-long/2addr v2, v4

    #@15
    aput-wide v2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 333
    return-void

    #@19
    .line 334
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1597
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceResetThrottlingPermission()V

    #@3
    .line 1598
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->resetPackageThrottling(Ljava/lang/String;I)V

    #@6
    .line 1593
    return-void
.end method

.method onBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 431
    packed-switch p1, :pswitch_data_0

    #@3
    .line 426
    :goto_0
    return-void

    #@4
    .line 433
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->initialize()V

    #@7
    goto :goto_0

    #@8
    .line 431
    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
    .end packed-switch
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2334
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceShell()V

    #@3
    .line 2336
    new-instance v0, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$MyShellCommand;)V

    #@9
    move-object v1, p0

    #@a
    move-object v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v4, p3

    #@d
    move-object v5, p4

    #@e
    move-object v6, p5

    #@f
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@12
    .line 2332
    return-void
.end method

.method openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1038
    new-instance v3, Ljava/io/File;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    #@5
    move-result-object v5

    #@6
    .line 1039
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    .line 1038
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    .line 1040
    .local v3, "packagePath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_1

    #@13
    .line 1041
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@16
    .line 1042
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_0

    #@1c
    .line 1043
    new-instance v5, Ljava/io/IOException;

    #@1e
    new-instance v6, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v7, "Unable to create directory "

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@35
    throw v5

    #@36
    .line 1045
    :cond_0
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@39
    .line 1048
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@3c
    move-result-wide v6

    #@3d
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 1049
    .local v0, "baseName":Ljava/lang/String;
    const/4 v4, 0x0

    #@42
    .line 1050
    .local v4, "suffix":I
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    if-nez v4, :cond_2

    #@49
    move-object v5, v0

    #@4a
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    const-string/jumbo v6, ".png"

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 1051
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@5b
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5e
    .line 1052
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@61
    move-result v5

    #@62
    if-nez v5, :cond_3

    #@64
    .line 1056
    new-instance v5, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    #@66
    invoke-direct {v5, v1}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    #@69
    return-object v5

    #@6a
    .line 1050
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    const-string/jumbo v7, "_"

    #@76
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    goto :goto_1

    #@83
    .line 1049
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filename":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@85
    goto :goto_0
.end method

.method packageShortcutsChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1266
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    #@3
    .line 1267
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@6
    .line 1261
    return-void
.end method

.method postToHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 1244
    return-void
.end method

.method public removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1482
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1484
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1485
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts(Lcom/android/server/pm/ShortcutService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1487
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@11
    .line 1481
    return-void

    #@12
    .line 1484
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1468
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1469
    const-string/jumbo v1, "shortcutIds must be provided"

    #@6
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 1471
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v2

    #@c
    .line 1472
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v0, v1, -0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@14
    .line 1473
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@17
    move-result-object v3

    #@18
    .line 1474
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/String;

    #@1e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Ljava/lang/String;

    #@24
    .line 1473
    invoke-virtual {v3, p0, v1}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1472
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    :cond_0
    monitor-exit v2

    #@2b
    .line 1477
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@2e
    .line 1467
    return-void

    #@2f
    .line 1471
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1
.end method

.method removeIcon(ILandroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 994
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 998
    new-instance v0, Ljava/io/File;

    #@9
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@13
    .line 1000
    invoke-virtual {p2, v2}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    #@16
    .line 1001
    const/4 v0, 0x0

    #@17
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    #@1a
    .line 1002
    const/16 v0, 0xc

    #@1c
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@1f
    .line 993
    :cond_0
    return-void
.end method

.method resetAllThrottlingInner()V
    .locals 4

    #@0
    .prologue
    .line 1577
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1578
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@6
    move-result-wide v2

    #@7
    iput-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 1580
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    #@d
    .line 1581
    const-string/jumbo v0, "ShortcutService"

    #@10
    const-string/jumbo v1, "ShortcutManager: throttling counter reset for all users"

    #@13
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1576
    return-void

    #@17
    .line 1577
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method resetPackageThrottling(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1585
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1586
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimitingForCommandLineNoSaving()V

    #@a
    .line 1588
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1584
    return-void

    #@f
    .line 1585
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public resetThrottling()V
    .locals 1

    #@0
    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystemOrShell()V

    #@3
    .line 1565
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getCallingUserId()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    #@a
    .line 1562
    return-void
.end method

.method resetThrottlingInner(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1569
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1570
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->resetThrottling()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@e
    .line 1573
    const-string/jumbo v0, "ShortcutService"

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "ShortcutManager: throttling counter reset for user "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 1568
    return-void

    #@29
    .line 1569
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit v1

    #@2b
    throw v0
.end method

.method saveBaseStateLocked()V
    .locals 8

    #@0
    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    #@3
    move-result-object v1

    #@4
    .line 678
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    #@5
    .line 680
    .local v3, "outs":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@8
    move-result-object v3

    #@9
    .line 683
    .local v3, "outs":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@b
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@e
    .line 684
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@10
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@17
    .line 685
    const/4 v4, 0x1

    #@18
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b
    move-result-object v4

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@20
    .line 686
    const-string/jumbo v4, "root"

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 689
    const-string/jumbo v4, "last_reset_time"

    #@2a
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@2c
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@2f
    .line 690
    const-string/jumbo v4, "locale_seq_no"

    #@32
    .line 691
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLocaleChangeSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    #@34
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@37
    move-result-wide v6

    #@38
    .line 690
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@3b
    .line 694
    const-string/jumbo v4, "root"

    #@3e
    const/4 v5, 0x0

    #@3f
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 695
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@45
    .line 698
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 672
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "outs":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@49
    .line 699
    :catch_0
    move-exception v0

    #@4a
    .line 700
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "ShortcutService"

    #@4d
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v6, "Failed to write to file "

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    .line 701
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@6b
    goto :goto_0
.end method

.method saveDirtyInfo()V
    .locals 4

    #@0
    .prologue
    .line 888
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 889
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v0, v2, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@d
    .line 890
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@f
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/Integer;

    #@15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v1

    #@19
    .line 891
    .local v1, "userId":I
    const/16 v2, -0x2710

    #@1b
    if-ne v1, v2, :cond_0

    #@1d
    .line 892
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseStateLocked()V

    #@20
    .line 889
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_0

    #@23
    .line 894
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    goto :goto_1

    #@27
    .line 888
    .end local v0    # "i":I
    .end local v1    # "userId":I
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2

    #@2a
    .line 897
    .restart local v0    # "i":I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@2c
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v3

    #@30
    .line 884
    return-void
.end method

.method saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 1062
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    #@3
    move-result v7

    #@4
    if-nez v7, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_1

    #@c
    .line 1063
    :cond_0
    return-void

    #@d
    .line 1066
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@10
    move-result-wide v8

    #@11
    .line 1069
    .local v8, "token":J
    const/4 v7, 0x0

    #@12
    :try_start_0
    invoke-virtual {p2, v7}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    #@15
    .line 1070
    const/4 v7, 0x0

    #@16
    invoke-virtual {p2, v7}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    #@19
    .line 1072
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    move-result-object v3

    #@1d
    .line 1073
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-nez v3, :cond_2

    #@1f
    .line 1137
    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@22
    .line 1074
    return-void

    #@23
    .line 1078
    :cond_2
    const/4 v1, 0x0

    #@24
    .line 1080
    .local v1, "bitmapToRecycle":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    #@27
    move-result v7

    #@28
    packed-switch v7, :pswitch_data_0

    #@2b
    .line 1095
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v7

    #@2f
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 1129
    :catchall_0
    move-exception v7

    #@31
    .line 1134
    :try_start_2
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    #@34
    .line 1129
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .line 1136
    .end local v1    # "bitmapToRecycle":Landroid/graphics/Bitmap;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :catchall_1
    move-exception v7

    #@36
    .line 1137
    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@39
    .line 1136
    throw v7

    #@3a
    .line 1082
    .restart local v1    # "bitmapToRecycle":Landroid/graphics/Bitmap;
    .restart local v3    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_0
    :try_start_3
    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/ShortcutService;->injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V

    #@3d
    .line 1084
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    #@40
    move-result v7

    #@41
    invoke-virtual {p2, v7}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    #@44
    .line 1085
    const/4 v7, 0x4

    #@45
    invoke-virtual {p2, v7}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    .line 1134
    :try_start_4
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4b
    .line 1137
    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@4e
    .line 1086
    return-void

    #@4f
    .line 1089
    :pswitch_1
    :try_start_5
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@52
    move-result-object v0

    #@53
    .line 1097
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    #@55
    .line 1098
    const-string/jumbo v7, "ShortcutService"

    #@58
    const-string/jumbo v10, "Null bitmap detected"

    #@5b
    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5e
    .line 1134
    :try_start_6
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@61
    .line 1137
    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@64
    .line 1099
    return-void

    #@65
    .line 1102
    :cond_3
    const/4 v5, 0x0

    #@66
    .line 1104
    .local v5, "path":Ljava/io/File;
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@69
    move-result-object v4

    #@6a
    .line 1106
    .local v4, "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    :try_start_8
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    #@6d
    move-result-object v5

    #@6e
    .line 1108
    .local v5, "path":Ljava/io/File;
    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@70
    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@73
    move-result-object v6

    #@74
    .line 1110
    .local v6, "shrunk":Landroid/graphics/Bitmap;
    :try_start_9
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    #@76
    iget v10, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    #@78
    invoke-virtual {v6, v7, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@7b
    .line 1112
    if-eq v0, v6, :cond_4

    #@7d
    .line 1113
    :try_start_a
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    #@80
    .line 1117
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {p2, v7}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    #@8b
    .line 1118
    const/16 v7, 0x8

    #@8d
    invoke-virtual {p2, v7}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@90
    .line 1120
    :try_start_b
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@93
    .line 1134
    .end local v4    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "shrunk":Landroid/graphics/Bitmap;
    :cond_5
    :goto_0
    :try_start_c
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@96
    .line 1137
    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@99
    .line 1061
    return-void

    #@9a
    .line 1111
    .restart local v4    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "shrunk":Landroid/graphics/Bitmap;
    :catchall_2
    move-exception v7

    #@9b
    .line 1112
    if-eq v0, v6, :cond_6

    #@9d
    .line 1113
    :try_start_d
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    #@a0
    .line 1111
    :cond_6
    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@a1
    .line 1119
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "shrunk":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v7

    #@a2
    .line 1120
    :try_start_e
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a5
    .line 1119
    throw v7
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@a6
    .line 1122
    .end local v4    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    :catch_0
    move-exception v2

    #@a7
    .line 1124
    .local v2, "e":Ljava/lang/Exception;
    :try_start_f
    const-string/jumbo v7, "ShortcutService"

    #@aa
    const-string/jumbo v10, "Unable to write bitmap to file"

    #@ad
    invoke-static {v7, v10, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b0
    .line 1125
    if-eqz v5, :cond_5

    #@b2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@b5
    move-result v7

    #@b6
    if-eqz v7, :cond_5

    #@b8
    .line 1126
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@bb
    goto :goto_0

    #@bc
    .line 1080
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method scheduleSaveUser(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    #@3
    .line 862
    return-void
.end method

.method public setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1363
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@4
    .line 1365
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    .line 1366
    .local v2, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v4

    #@c
    .line 1368
    .local v4, "size":I
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v6

    #@f
    .line 1369
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@12
    move-result-object v3

    #@13
    .line 1372
    .local v3, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v3, p0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Lcom/android/server/pm/ShortcutService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_0

    #@19
    monitor-exit v6

    #@1a
    .line 1373
    return v7

    #@1b
    .line 1375
    :cond_0
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->enforceMaxDynamicShortcuts(I)V

    #@1e
    .line 1378
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@21
    .line 1379
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    #@27
    const/4 v7, 0x0

    #@28
    invoke-direct {p0, v5, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    #@2b
    .line 1378
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1383
    :cond_1
    invoke-virtual {v3, p0}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts(Lcom/android/server/pm/ShortcutService;)V

    #@31
    .line 1386
    const/4 v0, 0x0

    #@32
    :goto_1
    if-ge v0, v4, :cond_2

    #@34
    .line 1387
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@3a
    .line 1388
    .local v1, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3, p0, v1}, Lcom/android/server/pm/ShortcutPackage;->addDynamicShortcut(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 1386
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_1

    #@40
    .end local v1    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    :cond_2
    monitor-exit v6

    #@41
    .line 1391
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@44
    .line 1392
    const/4 v5, 0x1

    #@45
    return v5

    #@46
    .line 1368
    .end local v0    # "i":I
    .end local v3    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v5

    #@47
    monitor-exit v6

    #@48
    throw v5
.end method

.method shouldBackupApp(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2155
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5
    const v2, 0x8000

    #@8
    and-int/2addr v1, v2

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method shouldBackupApp(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2151
    const v0, 0x8000

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method updateConfigurationLocked(Ljava/lang/String;)Z
    .locals 11
    .param p1, "config"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 501
    const/4 v3, 0x1

    #@2
    .line 503
    .local v3, "result":Z
    new-instance v2, Landroid/util/KeyValueListParser;

    #@4
    const/16 v4, 0x2c

    #@6
    invoke-direct {v2, v4}, Landroid/util/KeyValueListParser;-><init>(C)V

    #@9
    .line 505
    .local v2, "parser":Landroid/util/KeyValueListParser;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 513
    :goto_0
    const-string/jumbo v4, "save_delay_ms"

    #@f
    .line 514
    const-wide/16 v6, 0xbb8

    #@11
    .line 513
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@14
    move-result-wide v4

    #@15
    long-to-int v4, v4

    #@16
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v4

    #@1a
    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    #@1c
    .line 516
    const-wide/16 v4, 0x1

    #@1e
    .line 517
    const-string/jumbo v6, "reset_interval_sec"

    #@21
    const-wide/32 v8, 0x15180

    #@24
    .line 516
    invoke-virtual {v2, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@27
    move-result-wide v6

    #@28
    .line 518
    const-wide/16 v8, 0x3e8

    #@2a
    .line 516
    mul-long/2addr v6, v8

    #@2b
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@2e
    move-result-wide v4

    #@2f
    iput-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@31
    .line 521
    const-string/jumbo v4, "max_updates_per_interval"

    #@34
    const-wide/16 v6, 0xa

    #@36
    .line 520
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@39
    move-result-wide v4

    #@3a
    long-to-int v4, v4

    #@3b
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    #@3e
    move-result v4

    #@3f
    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@41
    .line 524
    const-string/jumbo v4, "max_shortcuts"

    #@44
    const-wide/16 v6, 0x5

    #@46
    .line 523
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@49
    move-result-wide v4

    #@4a
    long-to-int v4, v4

    #@4b
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    #@4e
    move-result v4

    #@4f
    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxDynamicShortcuts:I

    #@51
    .line 526
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_0

    #@57
    .line 528
    const-string/jumbo v4, "max_icon_dimension_dp_lowram"

    #@5a
    .line 529
    const-wide/16 v6, 0x30

    #@5c
    .line 527
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@5f
    move-result-wide v4

    #@60
    long-to-int v4, v4

    #@61
    .line 526
    :goto_1
    const/4 v5, 0x1

    #@62
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    #@65
    move-result v1

    #@66
    .line 534
    .local v1, "iconDimensionDp":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    #@69
    move-result v4

    #@6a
    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@6c
    .line 537
    const-string/jumbo v4, "icon_format"

    #@6f
    sget-object v5, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    #@71
    invoke-virtual {v2, v4, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    .line 536
    invoke-static {v4}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    #@78
    move-result-object v4

    #@79
    iput-object v4, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    #@7b
    .line 540
    const-string/jumbo v4, "icon_quality"

    #@7e
    .line 541
    const-wide/16 v6, 0x64

    #@80
    .line 539
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@83
    move-result-wide v4

    #@84
    long-to-int v4, v4

    #@85
    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    #@87
    .line 543
    return v3

    #@88
    .line 506
    .end local v1    # "iconDimensionDp":I
    :catch_0
    move-exception v0

    #@89
    .line 509
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "ShortcutService"

    #@8c
    const-string/jumbo v5, "Bad shortcut manager settings"

    #@8f
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@92
    .line 510
    const/4 v3, 0x0

    #@93
    goto/16 :goto_0

    #@95
    .line 531
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string/jumbo v4, "max_icon_dimension_dp"

    #@98
    .line 532
    const-wide/16 v6, 0x60

    #@9a
    .line 530
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@9d
    move-result-wide v4

    #@9e
    long-to-int v4, v4

    #@9f
    goto :goto_1
.end method

.method public updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1398
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@4
    .line 1400
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    .line 1401
    .local v1, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v4

    #@c
    .line 1403
    .local v4, "size":I
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v8

    #@f
    .line 1404
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@12
    move-result-object v2

    #@13
    .line 1407
    .local v2, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v2, p0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Lcom/android/server/pm/ShortcutService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v7

    #@17
    if-nez v7, :cond_0

    #@19
    .line 1408
    const/4 v7, 0x0

    #@1a
    monitor-exit v8

    #@1b
    return v7

    #@1c
    .line 1411
    :cond_0
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    #@1f
    .line 1412
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    #@25
    .line 1413
    .local v5, "source":Landroid/content/pm/ShortcutInfo;
    const/4 v7, 0x1

    #@26
    invoke-direct {p0, v5, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    #@29
    .line 1415
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v2, v7}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@30
    move-result-object v6

    #@31
    .line 1416
    .local v6, "target":Landroid/content/pm/ShortcutInfo;
    if-eqz v6, :cond_2

    #@33
    .line 1417
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    #@36
    move-result-object v7

    #@37
    if-eqz v7, :cond_3

    #@39
    const/4 v3, 0x1

    #@3a
    .line 1418
    .local v3, "replacingIcon":Z
    :goto_1
    if-eqz v3, :cond_1

    #@3c
    .line 1419
    invoke-virtual {p0, p3, v6}, Lcom/android/server/pm/ShortcutService;->removeIcon(ILandroid/content/pm/ShortcutInfo;)V

    #@3f
    .line 1422
    :cond_1
    invoke-virtual {v6, v5}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    #@42
    .line 1424
    if-eqz v3, :cond_2

    #@44
    .line 1425
    invoke-virtual {p0, p3, v6}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 1411
    .end local v3    # "replacingIcon":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 1417
    :cond_3
    const/4 v3, 0x0

    #@4b
    .restart local v3    # "replacingIcon":Z
    goto :goto_1

    #@4c
    .end local v3    # "replacingIcon":Z
    .end local v5    # "source":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "target":Landroid/content/pm/ShortcutInfo;
    :cond_4
    monitor-exit v8

    #@4d
    .line 1430
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@50
    .line 1432
    return v9

    #@51
    .line 1403
    .end local v0    # "i":I
    .end local v2    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v7

    #@52
    monitor-exit v8

    #@53
    throw v7
.end method

.method final wtf(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2590
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Exception;)V

    #@4
    .line 2589
    return-void
.end method

.method wtf(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 2595
    const-string/jumbo v0, "ShortcutService"

    #@3
    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 2594
    return-void
.end method
