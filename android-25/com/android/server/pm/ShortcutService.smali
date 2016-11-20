.class public Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getDynamicShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getManifestShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getPinnedShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl1;,
        Lcom/android/server/pm/ShortcutService$-void_-com_android_server_pm_ShortcutService_lambda$20_com_android_server_pm_ShortcutUser_u_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void__clinit___LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void__clinit___LambdaImpl1;,
        Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_boolean_onlyForPackageManagerApis_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_boolean_appStillExists_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl1;,
        Lcom/android/server/pm/ShortcutService$-void_handleLocaleChanged__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$-void_verifyStatesInner__LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$1;,
        Lcom/android/server/pm/ShortcutService$2;,
        Lcom/android/server/pm/ShortcutService$3;,
        Lcom/android/server/pm/ShortcutService$CommandException;,
        Lcom/android/server/pm/ShortcutService$ConfigConstants;,
        Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;,
        Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;,
        Lcom/android/server/pm/ShortcutService$Lifecycle;,
        Lcom/android/server/pm/ShortcutService$LocalService;,
        Lcom/android/server/pm/ShortcutService$MyShellCommand;,
        Lcom/android/server/pm/ShortcutService$ShortcutOperation;,
        Lcom/android/server/pm/ShortcutService$Stats;
    }
.end annotation


# static fields
.field private static ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private static EMPTY_RESOLVE_INFO:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"

.field static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"

.field private static final KEY_ICON_SIZE:Ljava/lang/String; = "iconSize"

.field private static final KEY_LOW_RAM:Ljava/lang/String; = "lowRam"

.field private static final KEY_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final LAUNCHER_INTENT_CATEGORY:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field static final OPERATION_ADD:I = 0x1

.field static final OPERATION_SET:I = 0x0

.field static final OPERATION_UPDATE:I = 0x2

.field private static final PACKAGE_MATCH_FLAGS:I = 0xc2000

.field private static PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROCESS_STATE_FOREGROUND_THRESHOLD:I = 0x4

.field private static final STAT_LABELS:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAST_RESET_TIME:Ljava/lang/String; = "last_reset_time"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field private mLastWtfStacktrace:Ljava/lang/Exception;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

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

.field private final mLock:Ljava/lang/Object;

.field private mMaxIconDimension:I

.field private mMaxShortcuts:I

.field mMaxUpdatesPerInterval:I

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageMonitor:Landroid/content/BroadcastReceiver;

.field private mRawLastResetTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

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

.field final mUnlockedUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

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

.field private mWtfCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_pm_ShortcutService-mthref-1(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1

    #@0
    .prologue
    .line 1923
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
    .line 1937
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutService-mthref-3(Landroid/content/pm/ShortcutInfo;)Z
    .locals 1

    #@0
    .prologue
    .line 1951
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutService-mthref-4(Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 0

    #@0
    .prologue
    .line 3758
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    #@3
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$13(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageUserId"    # I
    .param p2, "l"    # Lcom/android/server/pm/ShortcutLauncher;

    #@0
    .prologue
    .line 2224
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/ShortcutLauncher;->cleanUpPackage(Ljava/lang/String;I)Z

    #@3
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$14(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0
    .param p0, "p"    # Lcom/android/server/pm/ShortcutPackage;

    #@0
    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    #@3
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$15(Lcom/android/server/pm/ShortcutUser;)V
    .locals 0
    .param p0, "user"    # Lcom/android/server/pm/ShortcutUser;

    #@0
    .prologue
    .line 2532
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    #@3
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$18(Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 0
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 3158
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    #@3
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$19(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 0
    .param p0, "launcher"    # Lcom/android/server/pm/ShortcutLauncher;

    #@0
    .prologue
    .line 3163
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensureVersionInfo()V

    #@3
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$20(Lcom/android/server/pm/ShortcutUser;)V
    .locals 1
    .param p0, "u"    # Lcom/android/server/pm/ShortcutUser;

    #@0
    .prologue
    .line 3758
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void_-com_android_server_pm_ShortcutService_lambda$20_com_android_server_pm_ShortcutUser_u_LambdaImpl0;

    #@2
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-void_-com_android_server_pm_ShortcutService_lambda$20_com_android_server_pm_ShortcutUser_u_LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    #@8
    .line 0
    return-void
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$4(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p0, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method static synthetic -com_android_server_pm_ShortcutService_lambda$5(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 244
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method static synthetic -get0(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

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

.method static synthetic -wrap0(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "appStillExists"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

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
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesForce()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 162
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    #@9
    .line 239
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    #@10
    .line 242
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void__clinit___LambdaImpl0;

    #@12
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-void__clinit___LambdaImpl0;-><init>()V

    #@15
    .line 241
    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    #@17
    .line 244
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void__clinit___LambdaImpl1;

    #@19
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-void__clinit___LambdaImpl1;-><init>()V

    #@1c
    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    #@1e
    .line 333
    const/16 v0, 0x10

    #@20
    new-array v0, v0, [Ljava/lang/String;

    #@22
    .line 334
    const-string/jumbo v1, "getHomeActivities()"

    #@25
    aput-object v1, v0, v2

    #@27
    .line 335
    const-string/jumbo v1, "Launcher permission check"

    #@2a
    const/4 v2, 0x1

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 336
    const-string/jumbo v1, "getPackageInfo()"

    #@30
    const/4 v2, 0x2

    #@31
    aput-object v1, v0, v2

    #@33
    .line 337
    const-string/jumbo v1, "getPackageInfo(SIG)"

    #@36
    const/4 v2, 0x3

    #@37
    aput-object v1, v0, v2

    #@39
    .line 338
    const-string/jumbo v1, "getApplicationInfo"

    #@3c
    const/4 v2, 0x4

    #@3d
    aput-object v1, v0, v2

    #@3f
    .line 339
    const-string/jumbo v1, "cleanupDanglingBitmaps"

    #@42
    const/4 v2, 0x5

    #@43
    aput-object v1, v0, v2

    #@45
    .line 340
    const-string/jumbo v1, "getActivity+metadata"

    #@48
    const/4 v2, 0x6

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 341
    const-string/jumbo v1, "getInstalledPackages"

    #@4e
    const/4 v2, 0x7

    #@4f
    aput-object v1, v0, v2

    #@51
    .line 342
    const-string/jumbo v1, "checkPackageChanges"

    #@54
    const/16 v2, 0x8

    #@56
    aput-object v1, v0, v2

    #@58
    .line 343
    const-string/jumbo v1, "getApplicationResources"

    #@5b
    const/16 v2, 0x9

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 344
    const-string/jumbo v1, "resourceNameLookup"

    #@62
    const/16 v2, 0xa

    #@64
    aput-object v1, v0, v2

    #@66
    .line 345
    const-string/jumbo v1, "getLauncherActivity"

    #@69
    const/16 v2, 0xb

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 346
    const-string/jumbo v1, "checkLauncherActivity"

    #@70
    const/16 v2, 0xc

    #@72
    aput-object v1, v0, v2

    #@74
    .line 347
    const-string/jumbo v1, "isActivityEnabled"

    #@77
    const/16 v2, 0xd

    #@79
    aput-object v1, v0, v2

    #@7b
    .line 348
    const-string/jumbo v1, "packageUpdateCheck"

    #@7e
    const/16 v2, 0xe

    #@80
    aput-object v1, v0, v2

    #@82
    .line 349
    const-string/jumbo v1, "asyncPreloadUserDelay"

    #@85
    const/16 v2, 0xf

    #@87
    aput-object v1, v0, v2

    #@89
    .line 333
    sput-object v0, Lcom/android/server/pm/ShortcutService;->STAT_LABELS:[Ljava/lang/String;

    #@8b
    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 390
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@c
    .line 389
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "onlyForPackageManagerApis"    # Z

    #@0
    .prologue
    .line 394
    invoke-direct {p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    #@3
    .line 237
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@a
    .line 249
    new-instance v1, Ljava/util/ArrayList;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    #@12
    .line 258
    new-instance v1, Landroid/util/SparseArray;

    #@14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@19
    .line 292
    new-instance v1, Landroid/util/SparseIntArray;

    #@1b
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    #@1e
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@20
    .line 295
    new-instance v1, Landroid/util/SparseLongArray;

    #@22
    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    #@27
    .line 298
    new-instance v1, Ljava/util/ArrayList;

    #@29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2c
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@2e
    .line 300
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@30
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@33
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@35
    .line 308
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@37
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    #@3a
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@3c
    .line 352
    new-instance v1, Ljava/lang/Object;

    #@3e
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@41
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    #@43
    .line 355
    const/16 v1, 0x10

    #@45
    new-array v1, v1, [I

    #@47
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    #@49
    .line 358
    const/16 v1, 0x10

    #@4b
    new-array v1, v1, [J

    #@4d
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    #@4f
    .line 378
    const/4 v1, 0x0

    #@50
    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    #@52
    .line 453
    new-instance v1, Lcom/android/server/pm/ShortcutService$1;

    #@54
    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$1;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@57
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    #@59
    .line 1018
    new-instance v1, Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_boolean_onlyForPackageManagerApis_LambdaImpl0;

    #@5b
    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$-void__init__android_content_Context_context_android_os_Looper_looper_boolean_onlyForPackageManagerApis_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@5e
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    #@60
    .line 2507
    new-instance v1, Lcom/android/server/pm/ShortcutService$2;

    #@62
    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$2;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@65
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@67
    .line 2543
    new-instance v1, Lcom/android/server/pm/ShortcutService$3;

    #@69
    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    #@6c
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    #@6e
    .line 395
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v1

    #@72
    check-cast v1, Landroid/content/Context;

    #@74
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@76
    .line 396
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    #@78
    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService;

    #@7a
    const/4 v3, 0x0

    #@7b
    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService;)V

    #@7e
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@81
    .line 397
    new-instance v1, Landroid/os/Handler;

    #@83
    move-object/from16 v0, p2

    #@85
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@88
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@8a
    .line 398
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@8d
    move-result-object v1

    #@8e
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@90
    .line 400
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    #@92
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@95
    move-result-object v1

    #@96
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    #@98
    .line 399
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    move-result-object v1

    #@9c
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    #@9e
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@a0
    .line 401
    const-class v1, Landroid/os/UserManager;

    #@a2
    move-object/from16 v0, p1

    #@a4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@a7
    move-result-object v1

    #@a8
    check-cast v1, Landroid/os/UserManager;

    #@aa
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    move-result-object v1

    #@ae
    check-cast v1, Landroid/os/UserManager;

    #@b0
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    #@b2
    .line 403
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    #@b4
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@b7
    move-result-object v1

    #@b8
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    #@ba
    .line 402
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@bd
    move-result-object v1

    #@be
    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    #@c0
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@c2
    .line 405
    const-class v1, Landroid/app/ActivityManagerInternal;

    #@c4
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@c7
    move-result-object v1

    #@c8
    check-cast v1, Landroid/app/ActivityManagerInternal;

    #@ca
    .line 404
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    move-result-object v1

    #@ce
    check-cast v1, Landroid/app/ActivityManagerInternal;

    #@d0
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@d2
    .line 407
    if-eqz p3, :cond_0

    #@d4
    .line 408
    return-void

    #@d5
    .line 415
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    #@d7
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    #@da
    .line 416
    .local v4, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@dd
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@e0
    .line 417
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@e3
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@e6
    .line 418
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@e9
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ec
    .line 419
    const-string/jumbo v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    #@ef
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@f2
    .line 420
    const-string/jumbo v1, "package"

    #@f5
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@f8
    .line 421
    const/16 v1, 0x3e8

    #@fa
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    #@fd
    .line 422
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@ff
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    #@101
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@103
    .line 423
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@105
    const/4 v5, 0x0

    #@106
    .line 422
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@109
    .line 425
    new-instance v8, Landroid/content/IntentFilter;

    #@10b
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    #@10e
    .line 426
    .local v8, "preferedActivityFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    #@111
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@114
    .line 427
    const/16 v1, 0x3e8

    #@116
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    #@119
    .line 428
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@11b
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    #@11d
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11f
    .line 429
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@121
    const/4 v9, 0x0

    #@122
    .line 428
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@125
    .line 431
    new-instance v12, Landroid/content/IntentFilter;

    #@127
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    #@12a
    .line 432
    .local v12, "localeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    #@12d
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@130
    .line 433
    const/16 v1, 0x3e8

    #@132
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    #@135
    .line 434
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@137
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    #@139
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@13b
    .line 435
    iget-object v14, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@13d
    const/4 v13, 0x0

    #@13e
    .line 434
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@141
    .line 437
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    #@143
    const/4 v2, 0x3

    #@144
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    #@147
    .line 394
    return-void
.end method

.method private assignImplicitRanks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1632
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 1633
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@e
    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    #@11
    .line 1632
    add-int/lit8 v0, v0, -0x1

    #@13
    goto :goto_0

    #@14
    .line 1631
    :cond_0
    return-void
.end method

.method private cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "appStillExists"    # Z

    #@0
    .prologue
    .line 2191
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2192
    :try_start_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_boolean_appStillExists_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageForAllLoadedUsers_java_lang_String_packageName_int_packageUserId_boolean_appStillExists_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 2190
    return-void

    #@d
    .line 2191
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method private cleanupDanglingBitmapDirectoriesLocked(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@3
    move-result-wide v4

    #@4
    .line 1217
    .local v4, "start":J
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@7
    move-result-object v6

    #@8
    .line 1219
    .local v6, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    #@b
    move-result-object v0

    #@c
    .line 1220
    .local v0, "bitmapDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@f
    move-result-object v2

    #@10
    .line 1221
    .local v2, "children":[Ljava/io/File;
    if-nez v2, :cond_0

    #@12
    .line 1222
    return-void

    #@13
    .line 1224
    :cond_0
    const/4 v7, 0x0

    #@14
    array-length v8, v2

    #@15
    :goto_0
    if-ge v7, v8, :cond_3

    #@17
    aget-object v1, v2, v7

    #@19
    .line 1225
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    #@1c
    move-result v9

    #@1d
    if-nez v9, :cond_1

    #@1f
    .line 1224
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1228
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 1232
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v3}, Lcom/android/server/pm/ShortcutUser;->hasPackage(Ljava/lang/String;)Z

    #@29
    move-result v9

    #@2a
    if-nez v9, :cond_2

    #@2c
    .line 1236
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    #@2f
    goto :goto_1

    #@30
    .line 1238
    :cond_2
    invoke-direct {p0, p1, v6, v3, v1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V

    #@33
    goto :goto_1

    #@34
    .line 1241
    .end local v1    # "child":Ljava/io/File;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x5

    #@35
    invoke-virtual {p0, v7, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@38
    .line 1211
    return-void
.end method

.method private cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "user"    # Lcom/android/server/pm/ShortcutUser;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 1247
    invoke-virtual {p2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFiles()Landroid/util/ArraySet;

    #@7
    move-result-object v2

    #@8
    .line 1249
    .local v2, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@b
    move-result-object v4

    #@c
    const/4 v3, 0x0

    #@d
    array-length v5, v4

    #@e
    :goto_0
    if-ge v3, v5, :cond_2

    #@10
    aget-object v0, v4, v3

    #@12
    .line 1250
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    #@15
    move-result v6

    #@16
    if-nez v6, :cond_1

    #@18
    .line 1249
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1253
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1254
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v6

    #@23
    if-nez v6, :cond_0

    #@25
    .line 1258
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@28
    goto :goto_1

    #@29
    .line 1245
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "clear"    # Z

    #@0
    .prologue
    .line 3344
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 3346
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    #@5
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    #@8
    .line 3348
    .local v3, "users":Lorg/json/JSONArray;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@e
    move-result v4

    #@f
    if-ge v1, v4, :cond_0

    #@11
    .line 3349
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Lcom/android/server/pm/ShortcutUser;

    #@19
    invoke-virtual {v4, p2}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@20
    .line 3348
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 3352
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    #@25
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    #@28
    .line 3354
    .local v2, "result":Lorg/json/JSONObject;
    const-string/jumbo v4, "shortcut"

    #@2b
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@2e
    .line 3355
    const-string/jumbo v4, "lowRam"

    #@31
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    #@34
    move-result v6

    #@35
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    #@38
    .line 3356
    const-string/jumbo v4, "iconSize"

    #@3b
    iget v6, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@3d
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    #@40
    .line 3358
    const/4 v4, 0x1

    #@41
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .end local v1    # "i":I
    .end local v2    # "result":Lorg/json/JSONObject;
    .end local v3    # "users":Lorg/json/JSONArray;
    :goto_1
    monitor-exit v5

    #@49
    .line 3343
    return-void

    #@4a
    .line 3359
    :catch_0
    move-exception v0

    #@4b
    .line 3360
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    const-string/jumbo v4, "ShortcutService"

    #@4e
    const-string/jumbo v6, "Unable to write in json"

    #@51
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    goto :goto_1

    #@55
    .line 3344
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    #@56
    monitor-exit v5

    #@57
    throw v4
.end method

.method private dumpInner(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 3240
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 3241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@6
    move-result-wide v6

    #@7
    .line 3242
    .local v6, "now":J
    const-string/jumbo v9, "Now: ["

    #@a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    .line 3243
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    #@10
    .line 3244
    const-string/jumbo v9, "] "

    #@13
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 3245
    invoke-static {v6, v7}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 3247
    const-string/jumbo v9, "  Raw last reset: ["

    #@20
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    .line 3248
    iget-wide v12, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@25
    invoke-virtual {p1, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@28
    .line 3249
    const-string/jumbo v9, "] "

    #@2b
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    .line 3250
    iget-wide v12, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@30
    invoke-static {v12, v13}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 3252
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    #@3a
    move-result-wide v2

    #@3b
    .line 3253
    .local v2, "last":J
    const-string/jumbo v9, "  Last reset: ["

    #@3e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41
    .line 3254
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@44
    .line 3255
    const-string/jumbo v9, "] "

    #@47
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    .line 3256
    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 3258
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    #@54
    move-result-wide v4

    #@55
    .line 3259
    .local v4, "next":J
    const-string/jumbo v9, "  Next reset: ["

    #@58
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b
    .line 3260
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@5e
    .line 3261
    const-string/jumbo v9, "] "

    #@61
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    .line 3262
    invoke-static {v4, v5}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 3264
    const-string/jumbo v9, "  Config:"

    #@6e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    .line 3265
    const-string/jumbo v9, "    Max icon dim: "

    #@74
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 3266
    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@79
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@7c
    .line 3267
    const-string/jumbo v9, "    Icon format: "

    #@7f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    .line 3268
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    #@84
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@87
    .line 3269
    const-string/jumbo v9, "    Icon quality: "

    #@8a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    .line 3270
    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    #@8f
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@92
    .line 3271
    const-string/jumbo v9, "    saveDelayMillis: "

    #@95
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    .line 3272
    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    #@9a
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@9d
    .line 3273
    const-string/jumbo v9, "    resetInterval: "

    #@a0
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    .line 3274
    iget-wide v12, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@a5
    invoke-virtual {p1, v12, v13}, Ljava/io/PrintWriter;->println(J)V

    #@a8
    .line 3275
    const-string/jumbo v9, "    maxUpdatesPerInterval: "

    #@ab
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 3276
    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@b0
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@b3
    .line 3277
    const-string/jumbo v9, "    maxShortcutsPerActivity: "

    #@b6
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b9
    .line 3278
    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    #@bb
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@be
    .line 3279
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@c1
    .line 3281
    const-string/jumbo v9, "  Stats:"

    #@c4
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c7
    .line 3282
    iget-object v11, p0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    #@c9
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@ca
    .line 3283
    const/4 v0, 0x0

    #@cb
    .local v0, "i":I
    :goto_0
    const/16 v9, 0x10

    #@cd
    if-ge v0, v9, :cond_0

    #@cf
    .line 3284
    :try_start_1
    const-string/jumbo v9, "    "

    #@d2
    invoke-direct {p0, p1, v9, v0}, Lcom/android/server/pm/ShortcutService;->dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d5
    .line 3283
    add-int/lit8 v0, v0, 0x1

    #@d7
    goto :goto_0

    #@d8
    :cond_0
    :try_start_2
    monitor-exit v11

    #@d9
    .line 3288
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@dc
    .line 3289
    const-string/jumbo v9, "  #Failures: "

    #@df
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    .line 3290
    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    #@e4
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    #@e7
    .line 3292
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    #@e9
    if-eqz v9, :cond_1

    #@eb
    .line 3293
    const-string/jumbo v9, "  Last failure stack trace: "

    #@ee
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f1
    .line 3294
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    #@f3
    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fa
    .line 3297
    :cond_1
    const/4 v0, 0x0

    #@fb
    :goto_1
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@fd
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@100
    move-result v9

    #@101
    if-ge v0, v9, :cond_2

    #@103
    .line 3298
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@106
    .line 3299
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@108
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10b
    move-result-object v9

    #@10c
    check-cast v9, Lcom/android/server/pm/ShortcutUser;

    #@10e
    const-string/jumbo v11, "  "

    #@111
    invoke-virtual {v9, p1, v11}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@114
    .line 3297
    add-int/lit8 v0, v0, 0x1

    #@116
    goto :goto_1

    #@117
    .line 3282
    :catchall_0
    move-exception v9

    #@118
    monitor-exit v11

    #@119
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@11a
    .line 3240
    .end local v0    # "i":I
    .end local v2    # "last":J
    .end local v4    # "next":J
    .end local v6    # "now":J
    :catchall_1
    move-exception v9

    #@11b
    monitor-exit v10

    #@11c
    throw v9

    #@11d
    .line 3302
    .restart local v0    # "i":I
    .restart local v2    # "last":J
    .restart local v4    # "next":J
    .restart local v6    # "now":J
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@120
    .line 3303
    const-string/jumbo v9, "  UID state:"

    #@123
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@126
    .line 3305
    const/4 v0, 0x0

    #@127
    :goto_2
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@129
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    #@12c
    move-result v9

    #@12d
    if-ge v0, v9, :cond_4

    #@12f
    .line 3306
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@131
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@134
    move-result v8

    #@135
    .line 3307
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@137
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@13a
    move-result v1

    #@13b
    .line 3308
    .local v1, "state":I
    const-string/jumbo v9, "    UID="

    #@13e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@141
    .line 3309
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    #@144
    .line 3310
    const-string/jumbo v9, " state="

    #@147
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    .line 3311
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    #@14d
    .line 3312
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    #@150
    move-result v9

    #@151
    if-eqz v9, :cond_3

    #@153
    .line 3313
    const-string/jumbo v9, "  [FG]"

    #@156
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    .line 3315
    :cond_3
    const-string/jumbo v9, "  last FG="

    #@15c
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15f
    .line 3316
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    #@161
    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->get(I)J

    #@164
    move-result-wide v12

    #@165
    invoke-virtual {p1, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    #@168
    .line 3317
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@16b
    .line 3305
    add-int/lit8 v0, v0, 0x1

    #@16d
    goto :goto_2

    #@16e
    .end local v1    # "state":I
    .end local v8    # "uid":I
    :cond_4
    monitor-exit v10

    #@16f
    .line 3239
    return-void
.end method

.method private dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "statId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3329
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4
    .line 3330
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    #@6
    aget v0, v1, p3

    #@8
    .line 3331
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    #@a
    aget-wide v2, v1, p3

    #@c
    .line 3332
    .local v2, "dur":J
    const-string/jumbo v1, "%s: count=%d, total=%dms, avg=%.1fms"

    #@f
    const/4 v4, 0x4

    #@10
    new-array v6, v4, [Ljava/lang/Object;

    #@12
    .line 3333
    sget-object v4, Lcom/android/server/pm/ShortcutService;->STAT_LABELS:[Ljava/lang/String;

    #@14
    aget-object v4, v4, p3

    #@16
    aput-object v4, v6, v5

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v4

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object v4, v6, v5

    #@1f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22
    move-result-object v4

    #@23
    const/4 v5, 0x2

    #@24
    aput-object v4, v6, v5

    #@26
    .line 3334
    if-nez v0, :cond_0

    #@28
    const-wide/16 v4, 0x0

    #@2a
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x3

    #@2f
    aput-object v4, v6, v5

    #@31
    .line 3332
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 3328
    return-void

    #@39
    .line 3334
    :cond_0
    long-to-double v4, v2

    #@3a
    int-to-double v8, v0

    #@3b
    div-double/2addr v4, v8

    #@3c
    goto :goto_0
.end method

.method private enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1482
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1483
    return-void

    #@7
    .line 1485
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 1481
    return-void
.end method

.method private enforceResetThrottlingPermission()V
    .locals 2

    #@0
    .prologue
    .line 1473
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1474
    return-void

    #@7
    .line 1477
    :cond_0
    const-string/jumbo v0, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    #@a
    const/4 v1, 0x0

    #@b
    .line 1476
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 1472
    return-void
.end method

.method private enforceShell()V
    .locals 2

    #@0
    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1462
    new-instance v0, Ljava/lang/SecurityException;

    #@8
    const-string/jumbo v1, "Caller must be shell"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1460
    :cond_0
    return-void
.end method

.method private enforceSystem()V
    .locals 2

    #@0
    .prologue
    .line 1467
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1468
    new-instance v0, Ljava/lang/SecurityException;

    #@8
    const-string/jumbo v1, "Caller must be system"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1466
    :cond_0
    return-void
.end method

.method private enforceSystemOrShell()V
    .locals 2

    #@0
    .prologue
    .line 1455
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
    :goto_0
    if-nez v0, :cond_1

    #@c
    .line 1456
    new-instance v0, Ljava/lang/SecurityException;

    #@e
    const-string/jumbo v1, "Caller must be system or shell"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1455
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1454
    :cond_1
    return-void
.end method

.method private fillInDefaultActivity(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    #@1
    .line 1616
    const/4 v0, 0x0

    #@2
    .line 1617
    .local v0, "defaultActivity":Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v1, v3, -0x1

    #@8
    .end local v0    # "defaultActivity":Landroid/content/ComponentName;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@a
    .line 1618
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    #@10
    .line 1619
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@13
    move-result-object v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 1620
    if-nez v0, :cond_0

    #@18
    .line 1622
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    #@1f
    move-result v5

    #@20
    .line 1621
    invoke-virtual {p0, v3, v5}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    #@23
    move-result-object v0

    #@24
    .line 1623
    .local v0, "defaultActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    #@26
    const/4 v3, 0x1

    #@27
    .line 1624
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "Launcher activity not found for package "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    .line 1623
    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@42
    .line 1626
    .end local v0    # "defaultActivity":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    #@45
    .line 1617
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@47
    goto :goto_0

    #@48
    .restart local v0    # "defaultActivity":Landroid/content/ComponentName;
    :cond_2
    move v3, v4

    #@49
    .line 1623
    goto :goto_1

    #@4a
    .line 1614
    .end local v0    # "defaultActivity":Landroid/content/ComponentName;
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_3
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V
    .locals 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "forUpdate"    # Z

    #@0
    .prologue
    .line 1586
    const-string/jumbo v0, "Null shortcut detected"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1587
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1589
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Cannot publish shortcut: activity "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, " does not"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 1591
    const-string/jumbo v2, " belong to package "

    #@3a
    .line 1590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 1591
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 1590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 1588
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@4d
    .line 1593
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    #@54
    move-result v1

    #@55
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    #@58
    move-result v0

    #@59
    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v2, "Cannot publish shortcut: activity "

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    const-string/jumbo v2, " is not"

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    .line 1595
    const-string/jumbo v2, " main activity"

    #@77
    .line 1594
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    .line 1592
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    #@82
    .line 1598
    :cond_0
    if-nez p2, :cond_1

    #@84
    .line 1599
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields()V

    #@87
    .line 1601
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    #@8e
    move-result v1

    #@8f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    #@92
    move-result v0

    #@93
    .line 1602
    new-instance v1, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v2, "Cannot publish shortcut: "

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    const-string/jumbo v2, " is not main activity"

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    .line 1600
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@b5
    .line 1604
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    #@b8
    move-result-object v0

    #@b9
    if-eqz v0, :cond_2

    #@bb
    .line 1605
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    #@be
    move-result-object v0

    #@bf
    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@c2
    .line 1608
    :cond_2
    const/4 v0, 0x0

    #@c3
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    #@c6
    .line 1585
    return-void
.end method

.method private forUpdatedPackages(IJZLjava/util/function/Consumer;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "lastScanTime"    # J
    .param p4, "afterOta"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/function/Consumer",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2932
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 2933
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v0, v3, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@c
    .line 2934
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/content/pm/PackageInfo;

    #@12
    .line 2939
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    #@14
    cmp-long v3, v4, p2

    #@16
    if-gez v3, :cond_0

    #@18
    .line 2940
    if-eqz p4, :cond_1

    #@1a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1c
    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutService;->isPureSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    #@1f
    move-result v3

    #@20
    .line 2939
    if-eqz v3, :cond_1

    #@22
    .line 2944
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    invoke-interface {p5, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@27
    .line 2933
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 2928
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 3323
    new-instance v0, Landroid/text/format/Time;

    #@2
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    #@5
    .line 3324
    .local v0, "tobj":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    #@8
    .line 3325
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
    .line 610
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
    .line 611
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@f
    .line 612
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
    .line 3614
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

.method private getMainActivityIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 3012
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 3013
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 3014
    return-object v0
.end method

.method private getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    .locals 3
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
    .line 1958
    .local p4, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1960
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@8
    move-result-object v0

    #@9
    .line 1961
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v0, v1, p4, p3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    #@c
    .line 1963
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    #@e
    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@11
    return-object v2
.end method

.method private handlePackageAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2696
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2697
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@6
    move-result-object v0

    #@7
    .line 2698
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@a
    .line 2699
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 2701
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@12
    .line 2692
    return-void

    #@13
    .line 2696
    .end local v0    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
.end method

.method private handlePackageChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    .line 2747
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2748
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@6
    move-result-object v0

    #@7
    .line 2750
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v2

    #@c
    .line 2753
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@f
    .line 2740
    return-void

    #@10
    .line 2747
    .end local v0    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method private handlePackageDataCleared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    .line 2735
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    #@4
    .line 2737
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@7
    .line 2730
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    #@0
    .prologue
    .line 2725
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    #@4
    .line 2727
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@7
    .line 2720
    return-void
.end method

.method private handlePackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2709
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 2710
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@6
    move-result-object v0

    #@7
    .line 2711
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@a
    .line 2713
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 2714
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 2717
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@18
    .line 2704
    return-void

    #@19
    .line 2709
    .end local v0    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private initialize()V
    .locals 2

    #@0
    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 620
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    #@6
    .line 621
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 618
    return-void

    #@b
    .line 619
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
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
    .line 2957
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@4
    move-result-object v0

    #@5
    .line 2958
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
    .line 1450
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    #@5
    move-result v0

    #@6
    .line 1451
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
    .line 1445
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    #@3
    move-result v0

    #@4
    .line 1446
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
    .line 1069
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

.method private static isInstalled(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    .line 2970
    if-eqz p0, :cond_0

    #@2
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2962
    if-eqz p0, :cond_0

    #@3
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5
    const/high16 v2, 0x800000

    #@7
    and-int/2addr v1, v2

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 2966
    if-eqz p0, :cond_0

    #@2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    .line 2982
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 2974
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method private static isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    .line 2978
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method private isProcessStateForeground(I)Z
    .locals 2
    .param p1, "processState"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 490
    const/4 v1, -0x1

    #@2
    if-eq p1, v1, :cond_0

    #@4
    .line 491
    const/4 v1, 0x4

    #@5
    if-gt p1, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 490
    :cond_0
    return v0
.end method

.method private isPureSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2953
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
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
    .line 1130
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
    .line 850
    const-wide/16 v8, 0x0

    #@2
    iput-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@4
    .line 852
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    #@7
    move-result-object v3

    #@8
    .line 856
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
    .line 857
    .local v4, "in":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@11
    move-result-object v5

    #@12
    .line 858
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@14
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1b
    .line 861
    :cond_0
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1e
    move-result v7

    #@1f
    .local v7, "type":I
    const/4 v8, 0x1

    #@20
    if-eq v7, v8, :cond_7

    #@22
    .line 862
    const/4 v8, 0x2

    #@23
    if-ne v7, v8, :cond_0

    #@25
    .line 865
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@28
    move-result v0

    #@29
    .line 867
    .local v0, "depth":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 868
    .local v6, "tag":Ljava/lang/String;
    const/4 v8, 0x1

    #@2e
    if-ne v0, v8, :cond_4

    #@30
    .line 869
    const-string/jumbo v8, "root"

    #@33
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v8

    #@37
    if-nez v8, :cond_0

    #@39
    .line 870
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
    .line 891
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
    .line 885
    .end local v0    # "depth":I
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_0
    move-exception v1

    #@5c
    .line 893
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    #@5f
    .line 849
    return-void

    #@60
    .line 891
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
    .line 871
    :cond_3
    return-void

    #@63
    .line 876
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
    .line 878
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
    .line 891
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
    if-eqz v9, :cond_a

    #@83
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3

    #@84
    .line 887
    :catch_3
    move-exception v2

    #@85
    .line 888
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
    .line 890
    const-wide/16 v8, 0x0

    #@a5
    iput-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@a7
    goto :goto_2

    #@a8
    .line 881
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "depth":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_6
    :try_start_7
    const-string/jumbo v8, "ShortcutService"

    #@ab
    new-instance v10, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v11, "Invalid tag: "

    #@b3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v10

    #@b7
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v10

    #@bf
    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@c2
    goto/16 :goto_0

    #@c4
    .line 891
    .end local v0    # "depth":I
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :catchall_1
    move-exception v8

    #@c5
    goto :goto_3

    #@c6
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_7
    if-eqz v4, :cond_8

    #@c8
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3

    #@cb
    :cond_8
    :goto_5
    if-eqz v9, :cond_2

    #@cd
    :try_start_9
    throw v9

    #@ce
    :catch_4
    move-exception v9

    #@cf
    goto :goto_5

    #@d0
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_5
    move-exception v10

    #@d1
    if-nez v9, :cond_9

    #@d3
    move-object v9, v10

    #@d4
    goto :goto_4

    #@d5
    :cond_9
    if-eq v9, v10, :cond_5

    #@d7
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@da
    goto :goto_4

    #@db
    :cond_a
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
    .line 629
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    #@7
    .line 628
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
            Ljava/io/IOException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 982
    new-instance v0, Ljava/io/BufferedInputStream;

    #@3
    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@6
    .line 984
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    #@7
    .line 985
    .local v3, "ret":Lcom/android/server/pm/ShortcutUser;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@a
    move-result-object v2

    #@b
    .line 986
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@14
    .line 989
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
    .line 990
    const/4 v6, 0x2

    #@1b
    if-ne v5, v6, :cond_0

    #@1d
    .line 993
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@20
    move-result v1

    #@21
    .line 995
    .local v1, "depth":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 1000
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
    .line 1001
    invoke-static {p0, v2, p1, p3}, Lcom/android/server/pm/ShortcutUser;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;

    #@33
    move-result-object v3

    #@34
    .local v3, "ret":Lcom/android/server/pm/ShortcutUser;
    goto :goto_0

    #@35
    .line 1004
    .end local v3    # "ret":Lcom/android/server/pm/ShortcutUser;
    :cond_1
    invoke-static {v1, v4}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    #@38
    goto :goto_0

    #@39
    .line 1006
    .end local v1    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 952
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    #@4
    move-result-object v4

    #@5
    .line 956
    .local v4, "path":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    #@7
    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@a
    .line 960
    .local v2, "file":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v3

    #@e
    .line 968
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    #@f
    :try_start_1
    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v5

    #@13
    .line 974
    .local v5, "ret":Lcom/android/server/pm/ShortcutUser;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@16
    .line 969
    return-object v5

    #@17
    .line 961
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "ret":Lcom/android/server/pm/ShortcutUser;
    :catch_0
    move-exception v0

    #@18
    .line 965
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-object v9

    #@19
    .line 970
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    #@1a
    .line 971
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "ShortcutService"

    #@1d
    new-instance v7, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v8, "Failed to read file "

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    .line 974
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3b
    .line 972
    return-object v9

    #@3c
    .line 973
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    #@3d
    .line 974
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 973
    throw v6
.end method

.method private notifyListeners(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1557
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@2
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    #@8
    .line 1556
    return-void
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 703
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
    .line 733
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 734
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 735
    const/4 v1, 0x0

    #@b
    return-object v1

    #@c
    .line 737
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
    .line 707
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
    .line 711
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
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 756
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 757
    .local v0, "parsed":Landroid/content/Intent;
    if-nez v0, :cond_0

    #@6
    .line 759
    new-instance v0, Landroid/content/Intent;

    #@8
    .end local v0    # "parsed":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    #@b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 761
    .restart local v0    # "parsed":Landroid/content/Intent;
    :cond_0
    return-object v0
.end method

.method static parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 742
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 743
    .local v2, "value":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    .line 744
    .local v1, "parsed":Landroid/content/Intent;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_0

    #@b
    .line 746
    const/4 v3, 0x0

    #@c
    :try_start_0
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    .line 751
    .end local v1    # "parsed":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    #@11
    .line 747
    .restart local v1    # "parsed":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@12
    .line 748
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v3, "ShortcutService"

    #@15
    const-string/jumbo v4, "Error parsing intent"

    #@18
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 715
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
    .line 719
    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 720
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 721
    return-wide p2

    #@b
    .line 724
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
    .line 725
    :catch_0
    move-exception v0

    #@11
    .line 726
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
    .line 727
    return-wide p2
.end method

.method static parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 699
    const/4 v0, 0x0

    #@1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private rescanUpdatedPackagesLocked(IJZ)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "lastScanTime"    # J
    .param p4, "forceRescan"    # Z

    #@0
    .prologue
    .line 2671
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@3
    move-result-object v8

    #@4
    .line 2675
    .local v8, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@7
    move-result-wide v6

    #@8
    .line 2677
    .local v6, "now":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanOsFingerprint()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    const/4 v4, 0x0

    #@17
    .line 2680
    .local v4, "afterOta":Z
    :goto_0
    new-instance v5, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;

    #@19
    invoke-direct {v5, p0, v8, p1, p4}, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;IZ)V

    #@1c
    move-object v0, p0

    #@1d
    move v1, p1

    #@1e
    move-wide v2, p2

    #@1f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService;->forUpdatedPackages(IJZLjava/util/function/Consumer;)V

    #@22
    .line 2687
    invoke-virtual {v8, v6, v7}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanTime(J)V

    #@25
    .line 2688
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v8, v0}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanOsFingerprint(Ljava/lang/String;)V

    #@2c
    .line 2689
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@2f
    .line 2670
    return-void

    #@30
    .line 2677
    .end local v4    # "afterOta":Z
    :cond_0
    const/4 v4, 0x1

    #@31
    .restart local v4    # "afterOta":Z
    goto :goto_0
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
    .line 927
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@2
    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 930
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    #@7
    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@a
    .line 931
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@c
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@13
    .line 932
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
    .line 934
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/ShortcutUser;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    #@23
    .line 936
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@26
    .line 938
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    #@29
    .line 939
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    #@2c
    .line 925
    return-void
.end method

.method private saveUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 902
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    #@3
    move-result-object v3

    #@4
    .line 906
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    #@b
    .line 907
    new-instance v1, Landroid/util/AtomicFile;

    #@d
    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@10
    .line 908
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    #@11
    .line 910
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@14
    move-result-object v2

    #@15
    .line 912
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    #@16
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    #@19
    .line 914
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@1c
    .line 917
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 901
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@20
    .line 918
    :catch_0
    move-exception v0

    #@21
    .line 919
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ShortcutService"

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "Failed to write to file "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 920
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@42
    goto :goto_0
.end method

.method private scheduleSaveBaseState()V
    .locals 1

    #@0
    .prologue
    .line 1010
    const/16 v0, -0x2710

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    #@5
    .line 1009
    return-void
.end method

.method private scheduleSaveInner(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1024
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1025
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
    .line 1026
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
    .line 1030
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@1b
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@20
    .line 1031
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
    .line 1020
    return-void

    #@2b
    .line 1024
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
    .line 1396
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v6

    #@6
    .line 1397
    .local v6, "ow":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@9
    move-result v5

    #@a
    .line 1398
    .local v5, "oh":I
    if-gt v6, p1, :cond_0

    #@c
    if-gt v5, p1, :cond_0

    #@e
    .line 1402
    return-object p0

    #@f
    .line 1404
    :cond_0
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@12
    move-result v2

    #@13
    .line 1407
    .local v2, "longerDimension":I
    mul-int v8, v6, p1

    #@15
    div-int v4, v8, v2

    #@17
    .line 1408
    .local v4, "nw":I
    mul-int v8, v5, p1

    #@19
    div-int v3, v8, v2

    #@1b
    .line 1414
    .local v3, "nh":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1d
    invoke-static {v4, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@20
    move-result-object v7

    #@21
    .line 1415
    .local v7, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@23
    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@26
    .line 1417
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/RectF;

    #@28
    int-to-float v8, v4

    #@29
    int-to-float v9, v3

    #@2a
    invoke-direct {v1, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@2d
    .line 1419
    .local v1, "dst":Landroid/graphics/RectF;
    invoke-virtual {v0, p0, v11, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@30
    .line 1421
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
    .line 943
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
    .line 602
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    #@3
    .line 605
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    #@8
    .line 597
    return-void
.end method

.method private updateTimesLocked()V
    .locals 10

    #@0
    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 1079
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@6
    .line 1081
    .local v4, "prevLastResetTime":J
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@8
    const-wide/16 v8, 0x0

    #@a
    cmp-long v6, v6, v8

    #@c
    if-nez v6, :cond_2

    #@e
    .line 1083
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@10
    .line 1097
    :cond_0
    :goto_0
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@12
    cmp-long v6, v4, v6

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 1098
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    #@19
    .line 1075
    :cond_1
    return-void

    #@1a
    .line 1084
    :cond_2
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@1c
    cmp-long v6, v0, v6

    #@1e
    if-gez v6, :cond_3

    #@20
    .line 1086
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_0

    #@26
    .line 1087
    const-string/jumbo v6, "ShortcutService"

    #@29
    const-string/jumbo v7, "Clock rewound"

    #@2c
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1089
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@31
    goto :goto_0

    #@32
    .line 1092
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
    .line 1093
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@3d
    iget-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@3f
    rem-long v2, v6, v8

    #@41
    .line 1094
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

.method private verifyCaller(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1499
    const-string/jumbo v1, "packageName"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    .line 1501
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1502
    return-void

    #@d
    .line 1505
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    #@10
    move-result v0

    #@11
    .line 1508
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@14
    move-result v1

    #@15
    if-eq v1, p2, :cond_1

    #@17
    .line 1509
    new-instance v1, Ljava/lang/SecurityException;

    #@19
    const-string/jumbo v2, "Invalid user-ID"

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 1511
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
    .line 1512
    return-void

    #@2b
    .line 1514
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    #@2d
    const-string/jumbo v2, "Calling package name mismatch"

    #@30
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1
.end method

.method private final verifyStatesForce()V
    .locals 0

    #@0
    .prologue
    .line 3753
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    #@3
    .line 3752
    return-void
.end method

.method private verifyStatesInner()V
    .locals 2

    #@0
    .prologue
    .line 3757
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 3758
    :try_start_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$-void_verifyStatesInner__LambdaImpl0;

    #@5
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-void_verifyStatesInner__LambdaImpl0;-><init>()V

    #@8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 3756
    return-void

    #@d
    .line 3757
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
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
    .line 947
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
    .line 946
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
    .line 797
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@7
    .line 796
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
    .line 807
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 808
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@a
    .line 806
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
    .line 812
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 814
    :cond_0
    const/4 v0, 0x0

    #@4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@b
    .line 811
    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 791
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 793
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f
    .line 790
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
    .line 801
    if-eqz p2, :cond_0

    #@2
    .line 802
    const-string/jumbo v0, "1"

    #@5
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@8
    .line 800
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
    .line 783
    if-nez p2, :cond_0

    #@3
    return-void

    #@4
    .line 785
    :cond_0
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 786
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@a
    .line 787
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 782
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
    .line 773
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 772
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
    .line 777
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 778
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 776
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
    .line 765
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    return-void

    #@8
    .line 767
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 768
    const-string/jumbo v0, "value"

    #@e
    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11
    .line 769
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14
    .line 764
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutService-mthref-0()V
    .locals 0

    #@0
    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    #@3
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$12(Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "appStillExists"    # Z
    .param p4, "user"    # Lcom/android/server/pm/ShortcutUser;

    #@0
    .prologue
    .line 2193
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    #@7
    .line 0
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$16(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 2
    .param p1, "gonePackages"    # Ljava/util/ArrayList;
    .param p2, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    #@0
    .prologue
    .line 2641
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2642
    return-void

    #@b
    .line 2644
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    #@12
    move-result v1

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 2649
    invoke-static {p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 0
    :cond_1
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$17(Lcom/android/server/pm/ShortcutUser;IZLandroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "user"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "userId"    # I
    .param p3, "forceRescan"    # Z
    .param p4, "ai"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 2681
    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, p0, v0, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    #@5
    .line 2682
    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0, p3}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    #@a
    .line 0
    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$7(JI)V
    .locals 3
    .param p1, "start"    # J
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 579
    const/16 v0, 0xf

    #@5
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@8
    .line 580
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 0
    return-void

    #@d
    .line 578
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method synthetic -com_android_server_pm_ShortcutService_lambda$8(ILjava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1560
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1561
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@a
    .line 1562
    return-void

    #@b
    .line 1565
    :cond_0
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    #@d
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    #@f
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@12
    .local v0, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    :try_start_4
    monitor-exit v4

    #@13
    .line 1568
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v3

    #@17
    add-int/lit8 v1, v3, -0x1

    #@19
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@1b
    .line 1569
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    #@21
    invoke-interface {v3, p2, p1}, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;->onShortcutChanged(Ljava/lang/String;I)V

    #@24
    .line 1568
    add-int/lit8 v1, v1, -0x1

    #@26
    goto :goto_0

    #@27
    .line 1560
    .end local v0    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@2a
    .line 1571
    :catch_0
    move-exception v2

    #@2b
    .line 0
    :cond_1
    return-void
.end method

.method public addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1773
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@5
    .line 1775
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@8
    move-result-object v2

    #@9
    .line 1776
    .local v2, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c
    move-result v4

    #@d
    .line 1778
    .local v4, "size":I
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v6

    #@10
    .line 1779
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@13
    .line 1781
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@16
    move-result-object v3

    #@17
    .line 1783
    .local v3, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    #@1a
    .line 1785
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    #@1d
    .line 1787
    const/4 v5, 0x1

    #@1e
    invoke-virtual {v3, v2, v5}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    #@21
    .line 1790
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    #@24
    .line 1791
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    #@27
    .line 1794
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_0

    #@2d
    monitor-exit v6

    #@2e
    .line 1795
    return v7

    #@2f
    .line 1797
    :cond_0
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@32
    .line 1798
    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@38
    .line 1801
    .local v1, "newShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v5, 0x0

    #@39
    invoke-direct {p0, v1, v5}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    #@3c
    .line 1805
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    #@3f
    .line 1808
    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutPackage;->addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    #@42
    .line 1797
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1812
    .end local v1    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    monitor-exit v6

    #@49
    .line 1814
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@4c
    .line 1816
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@4f
    .line 1818
    return v8

    #@50
    .line 1778
    .end local v0    # "i":I
    .end local v3    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v5

    #@51
    monitor-exit v6

    #@52
    throw v5
.end method

.method public applyRestore([BI)V
    .locals 8
    .param p1, "payload"    # [B
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3184
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    #@3
    .line 3188
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 3189
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 3190
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Can\'t restore: user "

    #@14
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v5, " is locked or not running"

    #@1f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v4

    #@2b
    .line 3191
    return-void

    #@2c
    .line 3195
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@2e
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 3197
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x1

    #@32
    :try_start_2
    invoke-direct {p0, p2, v1, v3}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    move-result-object v2

    #@36
    .line 3202
    .local v2, "restored":Lcom/android/server/pm/ShortcutUser;
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    #@3d
    .line 3206
    const-wide/16 v6, 0x0

    #@3f
    .line 3207
    const/4 v3, 0x1

    #@40
    .line 3205
    invoke-direct {p0, p2, v6, v7, v3}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJZ)V

    #@43
    .line 3209
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    monitor-exit v4

    #@47
    .line 3183
    return-void

    #@48
    .line 3198
    .end local v2    # "restored":Lcom/android/server/pm/ShortcutUser;
    :catch_0
    move-exception v0

    #@49
    .line 3199
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "ShortcutService"

    #@4c
    const-string/jumbo v5, "Restoration failed."

    #@4f
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@52
    monitor-exit v4

    #@53
    .line 3200
    return-void

    #@54
    .line 3188
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "is":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v3

    #@55
    monitor-exit v4

    #@56
    throw v3
.end method

.method checkPackageChanges(I)V
    .locals 11
    .param p1, "ownerUserId"    # I

    #@0
    .prologue
    const/16 v10, 0x8

    #@2
    .line 2627
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsSafeModeEnabled()Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 2628
    const-string/jumbo v6, "ShortcutService"

    #@b
    const-string/jumbo v7, "Safe mode, skipping checkPackageChanges()"

    #@e
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 2629
    return-void

    #@12
    .line 2632
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@15
    move-result-wide v4

    #@16
    .line 2634
    .local v4, "start":J
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 2636
    .local v0, "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@1d
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    .line 2637
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@21
    move-result-object v3

    #@22
    .line 2640
    .local v3, "user":Lcom/android/server/pm/ShortcutUser;
    new-instance v6, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;

    #@24
    invoke-direct {v6, p0, v0}, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V

    #@27
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    #@2a
    .line 2652
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v6

    #@2e
    if-lez v6, :cond_1

    #@30
    .line 2653
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v6

    #@34
    add-int/lit8 v1, v6, -0x1

    #@36
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@38
    .line 2654
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    #@3e
    .line 2655
    .local v2, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v6, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    #@40
    iget v8, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    #@42
    .line 2656
    const/4 v9, 0x0

    #@43
    .line 2655
    invoke-virtual {p0, v6, p1, v8, v9}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    #@46
    .line 2653
    add-int/lit8 v1, v1, -0x1

    #@48
    goto :goto_0

    #@49
    .line 2660
    .end local v1    # "i":I
    .end local v2    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanTime()J

    #@4c
    move-result-wide v8

    #@4d
    .line 2661
    const/4 v6, 0x0

    #@4e
    .line 2660
    invoke-direct {p0, p1, v8, v9, v6}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@52
    .line 2664
    invoke-virtual {p0, v10, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@55
    .line 2666
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@58
    .line 2623
    return-void

    #@59
    .line 2636
    .end local v3    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v6

    #@5a
    :try_start_3
    monitor-exit v7

    #@5b
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5c
    .line 2663
    .end local v0    # "gonePackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    :catchall_1
    move-exception v6

    #@5d
    .line 2664
    invoke-virtual {p0, v10, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@60
    .line 2663
    throw v6
.end method

.method cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "owningUserId"    # I
    .param p3, "packageUserId"    # I
    .param p4, "appStillExists"    # Z

    #@0
    .prologue
    .line 2208
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    #@3
    move-result v2

    #@4
    .line 2210
    .local v2, "wasUserLoaded":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@7
    move-result-object v1

    #@8
    .line 2211
    .local v1, "user":Lcom/android/server/pm/ShortcutUser;
    const/4 v0, 0x0

    #@9
    .line 2214
    .local v0, "doNotify":Z
    if-ne p3, p2, :cond_0

    #@b
    .line 2215
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@e
    move-result-object v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 2216
    const/4 v0, 0x1

    #@12
    .line 2221
    :cond_0
    invoke-virtual {v1, p3, p1}, Lcom/android/server/pm/ShortcutUser;->removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    #@15
    .line 2224
    new-instance v3, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0;

    #@17
    invoke-direct {v3, p1, p3}, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0;-><init>(Ljava/lang/String;I)V

    #@1a
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    #@1d
    .line 2228
    new-instance v3, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl1;

    #@1f
    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl1;-><init>()V

    #@22
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    #@25
    .line 2230
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@28
    .line 2232
    if-eqz v0, :cond_1

    #@2a
    .line 2233
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    #@2d
    .line 2237
    :cond_1
    if-eqz p4, :cond_2

    #@2f
    if-ne p3, p2, :cond_2

    #@31
    .line 2240
    const/4 v3, 0x1

    #@32
    invoke-virtual {v1, p1, v3}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    #@35
    .line 2243
    :cond_2
    if-nez v2, :cond_3

    #@37
    .line 2245
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    #@3a
    .line 2207
    :cond_3
    return-void
.end method

.method public cleanupBitmapsForPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1202
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    .line 1203
    .local v0, "packagePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 1204
    return-void

    #@10
    .line 1206
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
    .line 1207
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
    .line 1201
    :cond_1
    return-void

    #@37
    .line 1206
    :cond_2
    const/4 v1, 0x0

    #@38
    goto :goto_0
.end method

.method public disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "disabledMessage"    # Ljava/lang/CharSequence;
    .param p4, "disabledMessageResId"    # I
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1824
    invoke-direct {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1825
    const-string/jumbo v3, "shortcutIds must be provided"

    #@6
    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 1827
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v4

    #@c
    .line 1828
    :try_start_0
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@f
    .line 1830
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@12
    move-result-object v2

    #@13
    .line 1832
    .local v2, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v2, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    #@16
    .line 1835
    if-nez p3, :cond_0

    #@18
    const/4 v0, 0x0

    #@19
    .line 1837
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@1c
    move-result v3

    #@1d
    add-int/lit8 v1, v3, -0x1

    #@1f
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@21
    .line 1838
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Ljava/lang/String;

    #@27
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Ljava/lang/String;

    #@2d
    .line 1840
    const/4 v5, 0x0

    #@2e
    .line 1838
    invoke-virtual {v2, v3, v0, p4, v5}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V

    #@31
    .line 1837
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_1

    #@34
    .line 1835
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .local v0, "disabledMessageString":Ljava/lang/String;
    goto :goto_0

    #@39
    .line 1844
    .end local v0    # "disabledMessageString":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v4

    #@3d
    .line 1846
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@40
    .line 1848
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@43
    .line 1823
    return-void

    #@44
    .line 1827
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v4

    #@46
    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3217
    const-string/jumbo v3, "android.permission.DUMP"

    #@3
    .line 3218
    const-string/jumbo v4, "can\'t dump by this caller"

    #@6
    .line 3217
    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 3219
    const/4 v1, 0x0

    #@a
    .line 3220
    .local v1, "checkin":Z
    const/4 v2, 0x0

    #@b
    .line 3221
    .local v2, "clear":Z
    if-eqz p3, :cond_2

    #@d
    .line 3222
    const/4 v3, 0x0

    #@e
    array-length v4, p3

    #@f
    :goto_0
    if-ge v3, v4, :cond_2

    #@11
    aget-object v0, p3, v3

    #@13
    .line 3223
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-c"

    #@16
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 3224
    const/4 v1, 0x1

    #@1d
    .line 3222
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 3225
    :cond_1
    const-string/jumbo v5, "--checkin"

    #@23
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 3226
    const/4 v1, 0x1

    #@2a
    .line 3227
    const/4 v2, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 3232
    .end local v0    # "arg":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    #@2e
    .line 3233
    invoke-direct {p0, p2, v2}, Lcom/android/server/pm/ShortcutService;->dumpCheckin(Ljava/io/PrintWriter;Z)V

    #@31
    .line 3216
    :goto_2
    return-void

    #@32
    .line 3235
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;)V

    #@35
    goto :goto_2
.end method

.method public enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1853
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1854
    const-string/jumbo v2, "shortcutIds must be provided"

    #@6
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 1856
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v3

    #@c
    .line 1857
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@f
    .line 1859
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@12
    move-result-object v1

    #@13
    .line 1861
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    #@16
    .line 1863
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@19
    move-result v2

    #@1a
    add-int/lit8 v0, v2, -0x1

    #@1c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@1e
    .line 1864
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/String;

    #@24
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->enableWithId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1863
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    :cond_0
    monitor-exit v3

    #@2b
    .line 1867
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@2e
    .line 1869
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@31
    .line 1852
    return-void

    #@32
    .line 1856
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v2

    #@33
    monitor-exit v3

    #@34
    throw v2
.end method

.method enforceMaxActivityShortcuts(I)V
    .locals 2
    .param p1, "numShortcuts"    # I

    #@0
    .prologue
    .line 1531
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 1532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Max number of dynamic shortcuts exceeded"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1530
    :cond_0
    return-void
.end method

.method fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .locals 6
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 1430
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    #@9
    move-result v4

    #@a
    .line 1429
    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    #@d
    move-result-object v0

    #@e
    .line 1431
    .local v0, "publisherRes":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    #@10
    .line 1432
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@13
    move-result-wide v2

    #@14
    .line 1434
    .local v2, "start":J
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 1436
    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@1a
    .line 1438
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    #@1d
    .line 1428
    .end local v2    # "start":J
    :cond_0
    return-void

    #@1e
    .line 1435
    .restart local v2    # "start":J
    :catchall_0
    move-exception v1

    #@1f
    .line 1436
    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@22
    .line 1435
    throw v1
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
    .line 1156
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
    .line 1157
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
    .line 1156
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1155
    :cond_0
    return-void
.end method

.method final getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2860
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2830
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getBackupPayload(I)[B
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3141
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    #@4
    .line 3145
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v4

    #@7
    .line 3146
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 3147
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Can\'t backup: user "

    #@15
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v5, " is locked or not running"

    #@20
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v4

    #@2c
    .line 3148
    return-object v6

    #@2d
    .line 3151
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@30
    move-result-object v2

    #@31
    .line 3152
    .local v2, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v2, :cond_1

    #@33
    .line 3153
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "Can\'t backup: user not found: id="

    #@3b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    monitor-exit v4

    #@4b
    .line 3154
    return-object v6

    #@4c
    .line 3158
    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl0;

    #@4e
    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl0;-><init>()V

    #@51
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    #@54
    .line 3163
    new-instance v3, Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl1;

    #@56
    invoke-direct {v3}, Lcom/android/server/pm/ShortcutService$-byte__getBackupPayload_int_userId_LambdaImpl1;-><init>()V

    #@59
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    #@5c
    .line 3166
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@5f
    .line 3167
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    #@62
    .line 3170
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@64
    const v3, 0x8000

    #@67
    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    .line 3172
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    #@6b
    :try_start_3
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6e
    .line 3178
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@71
    move-result-object v3

    #@72
    monitor-exit v4

    #@73
    return-object v3

    #@74
    .line 3173
    :catch_0
    move-exception v0

    #@75
    .line 3175
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v3, "ShortcutService"

    #@78
    const-string/jumbo v5, "Backup failed."

    #@7b
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7e
    monitor-exit v4

    #@7f
    .line 3176
    return-object v6

    #@80
    .line 3145
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v3

    #@81
    monitor-exit v4

    #@82
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
    .line 1916
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1918
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1919
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@9
    .line 1923
    new-instance v0, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getDynamicShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@b
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getDynamicShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>()V

    #@e
    .line 1922
    const/16 v2, 0x9

    #@10
    .line 1921
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 1918
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public getIconMaxDimensions(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1999
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 2001
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 2002
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    return v1

    #@a
    .line 2001
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
    .line 3705
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    #@2
    return-object v0
.end method

.method getIconPersistQualityForTest()I
    .locals 1

    #@0
    .prologue
    .line 3710
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    #@2
    return v0
.end method

.method final getInstalledPackages(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x7

    #@1
    .line 2893
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@4
    move-result-wide v2

    #@5
    .line 2894
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@8
    move-result-wide v4

    #@9
    .line 2896
    .local v4, "token":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    .line 2898
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v6, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    #@f
    invoke-interface {v0, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 2906
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@15
    .line 2908
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@18
    .line 2900
    return-object v0

    #@19
    .line 2901
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v1

    #@1a
    .line 2903
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v6, "ShortcutService"

    #@1d
    const-string/jumbo v7, "RemoteException"

    #@20
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 2904
    const/4 v6, 0x0

    #@24
    .line 2906
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@27
    .line 2908
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@2a
    .line 2904
    return-object v6

    #@2b
    .line 2905
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@2c
    .line 2906
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@2f
    .line 2908
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@32
    .line 2905
    throw v6
.end method

.method getLastResetTimeLocked()J
    .locals 2

    #@0
    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    #@3
    .line 1059
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
    .line 1187
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ShortcutUser;->getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
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
    .line 1930
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1932
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1933
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@9
    .line 1937
    new-instance v0, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getManifestShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@b
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getManifestShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>()V

    #@e
    .line 1936
    const/16 v2, 0x9

    #@10
    .line 1935
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 1932
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method getMaxActivityShortcuts()I
    .locals 1

    #@0
    .prologue
    .line 1540
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    #@2
    return v0
.end method

.method getMaxIconDimensionForTest()I
    .locals 1

    #@0
    .prologue
    .line 3700
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@2
    return v0
.end method

.method public getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
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
    .line 1969
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1971
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    #@5
    return v0
.end method

.method getMaxShortcutsForTest()I
    .locals 1

    #@0
    .prologue
    .line 3685
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    #@2
    return v0
.end method

.method getMaxUpdatesPerIntervalForTest()I
    .locals 1

    #@0
    .prologue
    .line 3690
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@2
    return v0
.end method

.method getNextResetTimeLocked()J
    .locals 4

    #@0
    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    #@3
    .line 1065
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@5
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@7
    add-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2771
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "getSignatures"    # Z

    #@0
    .prologue
    .line 2794
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method final getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2763
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3725
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 3726
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v0

    #@8
    .line 3727
    .local v0, "pkg":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_0

    #@a
    monitor-exit v2

    #@b
    return-object v1

    #@c
    .line 3729
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result-object v1

    #@10
    monitor-exit v2

    #@11
    return-object v1

    #@12
    .line 3725
    .end local v0    # "pkg":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3715
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 3716
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/pm/ShortcutUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 3717
    .local v0, "user":Lcom/android/server/pm/ShortcutUser;
    if-nez v0, :cond_0

    #@e
    monitor-exit v2

    #@f
    return-object v3

    #@10
    .line 3719
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/pm/ShortcutPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    return-object v1

    #@1c
    .line 3715
    .end local v0    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    #@0
    .prologue
    .line 1177
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    #@7
    move-result-object v0

    #@8
    .line 1178
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getUser()Lcom/android/server/pm/ShortcutUser;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->onCalledByPublisher(Ljava/lang/String;)V

    #@f
    .line 1179
    return-object v0
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
    .line 1169
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

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
    .line 1944
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1946
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1947
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@9
    .line 1951
    new-instance v0, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getPinnedShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@b
    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getPinnedShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>()V

    #@e
    .line 1950
    const/16 v2, 0x9

    #@10
    .line 1949
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 1946
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public getRateLimitResetTime(Ljava/lang/String;I)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1988
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1990
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 1991
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@9
    .line 1993
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-wide v2

    #@d
    monitor-exit v1

    #@e
    return-wide v2

    #@f
    .line 1990
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getRemainingCallCount(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1976
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1978
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 1979
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@9
    .line 1981
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@c
    move-result-object v0

    #@d
    .line 1982
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    #@f
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v3

    #@13
    sub-int/2addr v1, v3

    #@14
    monitor-exit v2

    #@15
    return v1

    #@16
    .line 1978
    .end local v0    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method getResetIntervalForTest()J
    .locals 2

    #@0
    .prologue
    .line 3695
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
    .line 3680
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method getUidLastForegroundElapsedTimeLocked(I)J
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 510
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
    .line 3675
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

.method final getUserFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 898
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "shortcuts.xml"

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
    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1138
    const-string/jumbo v1, "User still locked"

    #@9
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    #@c
    .line 1141
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    #@14
    .line 1142
    .local v0, "userPackages":Lcom/android/server/pm/ShortcutUser;
    if-nez v0, :cond_2

    #@16
    .line 1143
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@19
    move-result-object v0

    #@1a
    .line 1144
    if-nez v0, :cond_1

    #@1c
    .line 1145
    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    #@1e
    .end local v0    # "userPackages":Lcom/android/server/pm/ShortcutUser;
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    #@21
    .line 1147
    .restart local v0    # "userPackages":Lcom/android/server/pm/ShortcutUser;
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@26
    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    #@29
    .line 1152
    :cond_2
    return-object v0
.end method

.method handleCleanupUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 591
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    #@6
    .line 593
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 586
    return-void

    #@e
    .line 590
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method handleLocaleChanged()V
    .locals 4

    #@0
    .prologue
    .line 2527
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    #@3
    .line 2529
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 2530
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    move-result-wide v0

    #@a
    .line 2532
    .local v0, "token":J
    :try_start_1
    new-instance v2, Lcom/android/server/pm/ShortcutService$-void_handleLocaleChanged__LambdaImpl0;

    #@c
    invoke-direct {v2}, Lcom/android/server/pm/ShortcutService$-void_handleLocaleChanged__LambdaImpl0;-><init>()V

    #@f
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 2534
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@15
    monitor-exit v3

    #@16
    .line 2523
    return-void

    #@17
    .line 2533
    :catchall_0
    move-exception v2

    #@18
    .line 2534
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1b
    .line 2533
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    .line 2529
    .end local v0    # "token":J
    :catchall_1
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2
.end method

.method handleOnUidStateChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    #@0
    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    #@8
    .line 483
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 484
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
    .line 473
    return-void

    #@19
    .line 477
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method handleUnlockUser(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 565
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 566
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@5
    const/4 v4, 0x1

    #@6
    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v3

    #@a
    .line 576
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@d
    move-result-wide v0

    #@e
    .line 577
    .local v0, "start":J
    new-instance v2, Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;

    #@10
    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/pm/ShortcutService$-void_handleUnlockUser_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService;JI)V

    #@13
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectRunOnNewThread(Ljava/lang/Runnable;)V

    #@16
    .line 561
    return-void

    #@17
    .line 565
    .end local v0    # "start":J
    :catchall_0
    move-exception v2

    #@18
    monitor-exit v3

    #@19
    throw v2
.end method

.method hasShortcutHostPermission(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 2090
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@4
    move-result-wide v0

    #@5
    .line 2092
    .local v0, "start":J
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v2

    #@9
    .line 2094
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@c
    .line 2092
    return v2

    #@d
    .line 2093
    :catchall_0
    move-exception v2

    #@e
    .line 2094
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@11
    .line 2093
    throw v2
.end method

.method hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .locals 17
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2102
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v14

    #@5
    .line 2103
    :try_start_0
    move-object/from16 v0, p0

    #@7
    move/from16 v1, p2

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@c
    .line 2105
    move-object/from16 v0, p0

    #@e
    move/from16 v1, p2

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@13
    move-result-object v12

    #@14
    .line 2108
    .local v12, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutUser;->getCachedLauncher()Landroid/content/ComponentName;

    #@17
    move-result-object v3

    #@18
    .line 2109
    .local v3, "cached":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    #@1a
    .line 2110
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1d
    move-result-object v13

    #@1e
    move-object/from16 v0, p1

    #@20
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v13

    #@24
    if-eqz v13, :cond_0

    #@26
    .line 2111
    const/4 v13, 0x1

    #@27
    monitor-exit v14

    #@28
    return v13

    #@29
    .line 2116
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    #@2b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2e
    .line 2119
    .local v2, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@31
    move-result-wide v10

    #@32
    .line 2120
    .local v10, "startGetHomeActivitiesAsUser":J
    move-object/from16 v0, p0

    #@34
    iget-object v13, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@36
    move/from16 v0, p2

    #@38
    invoke-virtual {v13, v2, v0}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    #@3b
    move-result-object v4

    #@3c
    .line 2122
    .local v4, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v13, 0x0

    #@3d
    move-object/from16 v0, p0

    #@3f
    invoke-virtual {v0, v13, v10, v11}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@42
    .line 2125
    if-eqz v4, :cond_3

    #@44
    .line 2126
    move-object v5, v4

    #@45
    .line 2146
    :cond_1
    :goto_0
    if-nez v5, :cond_5

    #@47
    .line 2153
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@4a
    move-result v9

    #@4b
    .line 2155
    .local v9, "size":I
    const/high16 v7, -0x80000000

    #@4d
    .line 2156
    .local v7, "lastPriority":I
    const/4 v6, 0x0

    #@4e
    .local v6, "i":I
    :goto_1
    if-ge v6, v9, :cond_5

    #@50
    .line 2157
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v8

    #@54
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@56
    .line 2158
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@58
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5a
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@5d
    move-result v13

    #@5e
    if-nez v13, :cond_4

    #@60
    .line 2156
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@62
    goto :goto_1

    #@63
    .line 2131
    .end local v6    # "i":I
    .end local v7    # "lastPriority":I
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "size":I
    :cond_3
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    #@66
    move-result-object v5

    #@67
    .line 2133
    .local v5, "detected":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    #@69
    .line 2134
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, p2

    #@6d
    invoke-virtual {v0, v5, v1}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    #@70
    move-result v13

    #@71
    if-nez v13, :cond_1

    #@73
    .line 2139
    const-string/jumbo v13, "ShortcutService"

    #@76
    new-instance v15, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v16, "Cached launcher "

    #@7e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v15

    #@82
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v15

    #@86
    const-string/jumbo v16, " no longer exists"

    #@89
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v15

    #@8d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v15

    #@91
    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 2140
    const/4 v5, 0x0

    #@95
    .line 2141
    .local v5, "detected":Landroid/content/ComponentName;
    invoke-virtual {v12}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@98
    goto :goto_0

    #@99
    .line 2102
    .end local v2    # "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "cached":Landroid/content/ComponentName;
    .end local v4    # "defaultLauncher":Landroid/content/ComponentName;
    .end local v5    # "detected":Landroid/content/ComponentName;
    .end local v10    # "startGetHomeActivitiesAsUser":J
    .end local v12    # "user":Lcom/android/server/pm/ShortcutUser;
    :catchall_0
    move-exception v13

    #@9a
    monitor-exit v14

    #@9b
    throw v13

    #@9c
    .line 2165
    .restart local v2    # "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "cached":Landroid/content/ComponentName;
    .restart local v4    # "defaultLauncher":Landroid/content/ComponentName;
    .restart local v6    # "i":I
    .restart local v7    # "lastPriority":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "size":I
    .restart local v10    # "startGetHomeActivitiesAsUser":J
    .restart local v12    # "user":Lcom/android/server/pm/ShortcutUser;
    :cond_4
    :try_start_2
    iget v13, v8, Landroid/content/pm/ResolveInfo;->priority:I

    #@9e
    if-lt v13, v7, :cond_2

    #@a0
    .line 2168
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a2
    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    #@a5
    move-result-object v5

    #@a6
    .line 2169
    .local v5, "detected":Landroid/content/ComponentName;
    iget v7, v8, Landroid/content/pm/ResolveInfo;->priority:I

    #@a8
    goto :goto_2

    #@a9
    .line 2174
    .end local v5    # "detected":Landroid/content/ComponentName;
    .end local v6    # "i":I
    .end local v7    # "lastPriority":I
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "size":I
    :cond_5
    invoke-virtual {v12, v5}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    #@ac
    .line 2175
    if-eqz v5, :cond_6

    #@ae
    .line 2179
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b1
    move-result-object v13

    #@b2
    move-object/from16 v0, p1

    #@b4
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b7
    move-result v13

    #@b8
    monitor-exit v14

    #@b9
    return v13

    #@ba
    .line 2182
    :cond_6
    const/4 v13, 0x0

    #@bb
    monitor-exit v14

    #@bc
    return v13
.end method

.method injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    .line 2840
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@4
    move-result-wide v2

    #@5
    .line 2841
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@8
    move-result-wide v4

    #@9
    .line 2843
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
    .line 2849
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@15
    .line 2851
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@18
    .line 2843
    return-object v1

    #@19
    .line 2844
    :catch_0
    move-exception v0

    #@1a
    .line 2846
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
    .line 2847
    const/4 v1, 0x0

    #@24
    .line 2849
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@27
    .line 2851
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@2a
    .line 2847
    return-object v1

    #@2b
    .line 2848
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    .line 2849
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@2f
    .line 2851
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@32
    .line 2848
    throw v1
.end method

.method injectBinderCallingUid()I
    .locals 1

    #@0
    .prologue
    .line 3610
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingUid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method injectBuildFingerprint()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3632
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method injectClearCallingIdentity()J
    .locals 2

    #@0
    .prologue
    .line 3620
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
    .line 3599
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
    .line 691
    int-to-float v0, p1

    #@1
    .line 692
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
    .line 691
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
    .line 3604
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
    .line 1495
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1494
    return-void
.end method

.method injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 8
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x6

    #@1
    .line 2871
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@4
    move-result-wide v2

    #@5
    .line 2872
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@8
    move-result-wide v4

    #@9
    .line 2874
    .local v4, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@b
    .line 2875
    const v6, 0xc2080

    #@e
    .line 2874
    invoke-interface {v1, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v1

    #@12
    .line 2881
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@15
    .line 2883
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@18
    .line 2874
    return-object v1

    #@19
    .line 2876
    :catch_0
    move-exception v0

    #@1a
    .line 2878
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
    .line 2879
    const/4 v1, 0x0

    #@24
    .line 2881
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@27
    .line 2883
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@2a
    .line 2879
    return-object v1

    #@2b
    .line 2880
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2c
    .line 2881
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@2f
    .line 2883
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@32
    .line 2880
    throw v1
.end method

.method injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v8, 0xb

    #@3
    .line 3051
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    .line 3052
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@a
    move-result-wide v4

    #@b
    .line 3055
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    #@e
    move-result-object v6

    #@f
    const/4 v7, 0x0

    #@10
    invoke-virtual {p0, v6, p1, v7, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 3056
    .local v0, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v6

    #@18
    if-nez v6, :cond_0

    #@1a
    .line 3058
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1d
    .line 3060
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@20
    .line 3056
    return-object v1

    #@21
    :cond_0
    const/4 v1, 0x0

    #@22
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@28
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2a
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    move-result-object v1

    #@2e
    goto :goto_0

    #@2f
    .line 3057
    .end local v0    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v1

    #@30
    .line 3058
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@33
    .line 3060
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@36
    .line 3057
    throw v1
.end method

.method public injectGetLocaleTagsForUser(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 450
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0xc

    #@2
    .line 3087
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    .line 3088
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@9
    move-result-wide v2

    #@a
    .line 3090
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    #@d
    move-result-object v4

    #@e
    const/4 v5, 0x0

    #@f
    invoke-virtual {p0, v4, p1, v5, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v4

    #@13
    .line 3092
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@16
    .line 3094
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@19
    .line 3090
    return-object v4

    #@1a
    .line 3091
    :catchall_0
    move-exception v4

    #@1b
    .line 3092
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1e
    .line 3094
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@21
    .line 3091
    throw v4
.end method

.method injectGetPackageUid(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2775
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2777
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
    .line 2783
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@10
    .line 2777
    return v1

    #@11
    .line 2778
    :catch_0
    move-exception v0

    #@12
    .line 2780
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
    .line 2781
    const/4 v1, -0x1

    #@1c
    .line 2783
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1f
    .line 2781
    return v1

    #@20
    .line 2782
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@21
    .line 2783
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@24
    .line 2782
    throw v1
.end method

.method injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2920
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    const v2, 0xc2000

    #@5
    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    #@8
    move-result-object v0

    #@9
    .line 2921
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_0

    #@b
    .line 2922
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 2924
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/16 v8, 0x9

    #@2
    .line 2996
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@5
    move-result-wide v2

    #@6
    .line 2997
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@9
    move-result-wide v4

    #@a
    .line 2999
    .local v4, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v1

    #@14
    .line 3005
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@17
    .line 3007
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@1a
    .line 2999
    return-object v1

    #@1b
    .line 3001
    :catch_0
    move-exception v0

    #@1c
    .line 3002
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string/jumbo v1, "ShortcutService"

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "Resources for package "

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    const-string/jumbo v7, " not found"

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 3003
    const/4 v1, 0x0

    #@3e
    .line 3005
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@41
    .line 3007
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@44
    .line 3003
    return-object v1

    #@45
    .line 3004
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    #@46
    .line 3005
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@49
    .line 3007
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@4c
    .line 3004
    throw v1
.end method

.method injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .locals 8
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/16 v7, 0xd

    #@2
    const/4 v4, 0x0

    #@3
    .line 3104
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@6
    move-result-wide v0

    #@7
    .line 3105
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@a
    move-result-wide v2

    #@b
    .line 3107
    .local v2, "token":J
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    #@d
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    #@10
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {p0, v5, v6, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    #@17
    move-result-object v5

    #@18
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v5

    #@1c
    if-lez v5, :cond_0

    #@1e
    const/4 v4, 0x1

    #@1f
    .line 3110
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@22
    .line 3112
    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@25
    .line 3107
    return v4

    #@26
    .line 3109
    :catchall_0
    move-exception v4

    #@27
    .line 3110
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@2a
    .line 3112
    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@2d
    .line 3109
    throw v4
.end method

.method injectIsLowRamDevice()Z
    .locals 1

    #@0
    .prologue
    .line 3663
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method injectIsMainActivity(Landroid/content/ComponentName;I)Z
    .locals 9
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/16 v8, 0xc

    #@2
    const/4 v1, 0x0

    #@3
    .line 3068
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    .line 3069
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@a
    move-result-wide v4

    #@b
    .line 3072
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {p0, v6, v7, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    .line 3074
    .local v0, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v6

    #@1b
    if-lez v6, :cond_0

    #@1d
    const/4 v1, 0x1

    #@1e
    .line 3076
    :cond_0
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@21
    .line 3078
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@24
    .line 3074
    return v1

    #@25
    .line 3075
    .end local v0    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v1

    #@26
    .line 3076
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@29
    .line 3078
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@2c
    .line 3075
    throw v1
.end method

.method injectIsSafeModeEnabled()Z
    .locals 4

    #@0
    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 3120
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v1, "window"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    .line 3119
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v1

    #@13
    .line 3125
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@16
    .line 3119
    return v1

    #@17
    .line 3122
    :catch_0
    move-exception v0

    #@18
    .line 3123
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@19
    .line 3125
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1c
    .line 3123
    return v1

    #@1d
    .line 3124
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1e
    .line 3125
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@21
    .line 3124
    throw v1
.end method

.method injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
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
    .line 2805
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    #@5
    move-result-wide v2

    #@6
    .line 2806
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@9
    move-result-wide v4

    #@a
    .line 2808
    .local v4, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    #@c
    .line 2810
    if-eqz p3, :cond_0

    #@e
    const/16 v1, 0x40

    #@10
    .line 2809
    :goto_0
    const v9, 0xc2000

    #@13
    or-int/2addr v1, v9

    #@14
    .line 2808
    invoke-interface {v8, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v8

    #@18
    .line 2816
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1b
    .line 2819
    if-eqz p3, :cond_1

    #@1d
    move v1, v6

    #@1e
    .line 2818
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@21
    .line 2808
    return-object v8

    #@22
    .line 2810
    :cond_0
    const/4 v1, 0x0

    #@23
    goto :goto_0

    #@24
    :cond_1
    move v1, v7

    #@25
    .line 2819
    goto :goto_1

    #@26
    .line 2811
    :catch_0
    move-exception v0

    #@27
    .line 2813
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
    .line 2814
    const/4 v1, 0x0

    #@31
    .line 2816
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@34
    .line 2819
    if-eqz p3, :cond_2

    #@36
    .line 2818
    :goto_2
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@39
    .line 2814
    return-object v1

    #@3a
    :cond_2
    move v6, v7

    #@3b
    .line 2819
    goto :goto_2

    #@3c
    .line 2815
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@3d
    .line 2816
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@40
    .line 2819
    if-eqz p3, :cond_3

    #@42
    .line 2818
    :goto_3
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    #@45
    .line 2815
    throw v1

    #@46
    :cond_3
    move v6, v7

    #@47
    .line 2819
    goto :goto_3
.end method

.method injectPostToHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 1518
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 2
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I

    #@0
    .prologue
    .line 3669
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3667
    :goto_0
    return-void

    #@8
    .line 3670
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
    .line 3626
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3
    .line 3625
    return-void
.end method

.method injectRunOnNewThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1523
    new-instance v0, Ljava/lang/Thread;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@8
    .line 1522
    return-void
.end method

.method injectShortcutManagerConstants()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 686
    const-string/jumbo v1, "shortcut_manager_constants"

    #@9
    .line 684
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method injectShouldPerformVerification()Z
    .locals 1

    #@0
    .prologue
    .line 3739
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method injectSystemDataPath()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 3653
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
    .line 3658
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
    .line 1387
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

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
    .line 1388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    .line 1389
    const-string/jumbo v1, "Icon resource must reside in shortcut owner package"

    #@13
    .line 1388
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 1386
    :cond_0
    return-void
.end method

.method injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method isPackageInstalled(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2986
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method isUidForegroundLocked(I)Z
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 495
    const/16 v0, 0x3e8

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 498
    return v2

    #@6
    .line 501
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
    if-eqz v0, :cond_1

    #@14
    .line 502
    return v2

    #@15
    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@17
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    #@1a
    move-result v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method protected isUserUnlockedL(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1105
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1106
    const/4 v2, 0x1

    #@9
    return v2

    #@a
    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@d
    move-result-wide v0

    #@e
    .line 1114
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    #@10
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v2

    #@14
    .line 1116
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@17
    .line 1114
    return v2

    #@18
    .line 1115
    :catchall_0
    move-exception v2

    #@19
    .line 1116
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1c
    .line 1115
    throw v2
.end method

.method logDurationStat(IJ)V
    .locals 6
    .param p1, "statId"    # I
    .param p2, "start"    # J

    #@0
    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    #@5
    aget v2, v0, p1

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    aput v2, v0, p1

    #@b
    .line 444
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    #@d
    aget-wide v2, v0, p1

    #@f
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

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
    .line 441
    return-void

    #@19
    .line 442
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2074
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceResetThrottlingPermission()V

    #@3
    .line 2076
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 2077
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    monitor-exit v1

    #@d
    .line 2079
    return-void

    #@e
    .line 2082
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimitingForCommandLineNoSaving()V

    #@15
    .line 2084
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 2070
    return-void

    #@1a
    .line 2076
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 550
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 546
    :goto_0
    return-void

    #@4
    .line 552
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->initialize()V

    #@7
    goto :goto_0

    #@8
    .line 555
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@e
    goto :goto_0

    #@f
    .line 550
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 10
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
    .line 3371
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceShell()V

    #@3
    .line 3373
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@6
    move-result-wide v8

    #@7
    .line 3375
    .local v8, "token":J
    :try_start_0
    new-instance v0, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$MyShellCommand;)V

    #@d
    move-object v1, p0

    #@e
    move-object v2, p1

    #@f
    move-object v3, p2

    #@10
    move-object v4, p3

    #@11
    move-object v5, p4

    #@12
    move-object v6, p5

    #@13
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    #@16
    move-result v7

    #@17
    .line 3376
    .local v7, "status":I
    const/4 v0, 0x0

    #@18
    invoke-virtual {p5, v7, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 3378
    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1e
    .line 3369
    return-void

    #@1f
    .line 3377
    .end local v7    # "status":I
    :catchall_0
    move-exception v0

    #@20
    .line 3378
    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@23
    .line 3377
    throw v0
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
    .line 1285
    new-instance v3, Ljava/io/File;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    #@5
    move-result-object v5

    #@6
    .line 1286
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    .line 1285
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    .line 1287
    .local v3, "packagePath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_1

    #@13
    .line 1288
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@16
    .line 1289
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_0

    #@1c
    .line 1290
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
    .line 1292
    :cond_0
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@39
    .line 1295
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@3c
    move-result-wide v6

    #@3d
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 1296
    .local v0, "baseName":Ljava/lang/String;
    const/4 v4, 0x0

    #@42
    .line 1297
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
    .line 1298
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@5b
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5e
    .line 1299
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@61
    move-result v5

    #@62
    if-nez v5, :cond_3

    #@64
    .line 1303
    new-instance v5, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    #@66
    invoke-direct {v5, v1}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    #@69
    return-object v5

    #@6a
    .line 1297
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
    .line 1296
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
    .line 1552
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    #@3
    .line 1553
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@6
    .line 1547
    return-void
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3026
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Ljava/lang/String;

    #@7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@a
    .line 3027
    if-eqz p3, :cond_0

    #@c
    .line 3028
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@f
    .line 3032
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v1

    #@15
    .line 3033
    const v2, 0xc2000

    #@18
    .line 3032
    invoke-virtual {v1, p1, v2, p4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1b
    move-result-object v0

    #@1c
    .line 3034
    .local v0, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    #@1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2

    #@24
    .line 3035
    :cond_1
    sget-object v1, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    #@26
    return-object v1

    #@27
    .line 3038
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@2d
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2f
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_3

    #@35
    .line 3039
    sget-object v1, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    #@37
    return-object v1

    #@38
    .line 3041
    :cond_3
    sget-object v1, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    #@3a
    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    #@3d
    .line 3042
    return-object v0
.end method

.method public removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1900
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1902
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 1903
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@9
    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@c
    move-result-object v0

    #@d
    .line 1906
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 1908
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@14
    .line 1910
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@17
    .line 1899
    return-void

    #@18
    .line 1902
    .end local v0    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutIds"    # Ljava/util/List;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1875
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1876
    const-string/jumbo v2, "shortcutIds must be provided"

    #@6
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 1878
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v3

    #@c
    .line 1879
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@f
    .line 1881
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@12
    move-result-object v1

    #@13
    .line 1883
    .local v1, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    #@16
    .line 1885
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@19
    move-result v2

    #@1a
    add-int/lit8 v0, v2, -0x1

    #@1c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@1e
    .line 1887
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/String;

    #@24
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/lang/String;

    #@2a
    .line 1886
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;)Z

    #@2d
    .line 1885
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 1891
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit v3

    #@34
    .line 1893
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@37
    .line 1895
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@3a
    .line 1874
    return-void

    #@3b
    .line 1878
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v2

    #@3c
    monitor-exit v3

    #@3d
    throw v2
.end method

.method removeIcon(ILandroid/content/pm/ShortcutInfo;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 1196
    const/4 v0, 0x0

    #@1
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    #@4
    .line 1197
    const/4 v0, 0x0

    #@5
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    #@8
    .line 1198
    const/16 v0, 0xc

    #@a
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    #@d
    .line 1193
    return-void
.end method

.method public reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 2008
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 2010
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2017
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v4

    #@9
    .line 2018
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@c
    .line 2020
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@f
    move-result-object v0

    #@10
    .line 2022
    .local v0, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@13
    move-result-object v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 2023
    const-string/jumbo v1, "ShortcutService"

    #@19
    const-string/jumbo v5, "reportShortcutUsed: package %s doesn\'t have shortcut %s"

    #@1c
    const/4 v6, 0x2

    #@1d
    new-array v6, v6, [Ljava/lang/Object;

    #@1f
    .line 2024
    const/4 v7, 0x0

    #@20
    aput-object p1, v6, v7

    #@22
    const/4 v7, 0x1

    #@23
    aput-object p2, v6, v7

    #@25
    .line 2023
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v4

    #@2d
    .line 2025
    return-void

    #@2e
    :cond_0
    monitor-exit v4

    #@2f
    .line 2029
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@32
    move-result-wide v2

    #@33
    .line 2031
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    #@35
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@38
    .line 2033
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@3b
    .line 2007
    return-void

    #@3c
    .line 2017
    .end local v0    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v4

    #@3e
    throw v1

    #@3f
    .line 2032
    .restart local v0    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .restart local v2    # "token":J
    :catchall_1
    move-exception v1

    #@40
    .line 2033
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@43
    .line 2032
    throw v1
.end method

.method resetAllThrottlingInner()V
    .locals 4

    #@0
    .prologue
    .line 2062
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2063
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
    .line 2065
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    #@d
    .line 2066
    const-string/jumbo v0, "ShortcutService"

    #@10
    const-string/jumbo v1, "ShortcutManager: throttling counter reset for all users"

    #@13
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 2061
    return-void

    #@17
    .line 2062
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public resetThrottling()V
    .locals 1

    #@0
    .prologue
    .line 2043
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystemOrShell()V

    #@3
    .line 2045
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getCallingUserId()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    #@a
    .line 2042
    return-void
.end method

.method resetThrottlingInner(I)V
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2049
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2050
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 2051
    const-string/jumbo v0, "ShortcutService"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "User "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " is locked or not running"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    .line 2052
    return-void

    #@2c
    .line 2055
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->resetThrottling()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit v1

    #@34
    .line 2057
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    #@37
    .line 2058
    const-string/jumbo v0, "ShortcutService"

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "ShortcutManager: throttling counter reset for user "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 2048
    return-void

    #@52
    .line 2049
    :catchall_0
    move-exception v0

    #@53
    monitor-exit v1

    #@54
    throw v0
.end method

.method saveBaseStateLocked()V
    .locals 8

    #@0
    .prologue
    .line 819
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    #@3
    move-result-object v1

    #@4
    .line 824
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    #@5
    .line 826
    .local v3, "outs":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@8
    move-result-object v3

    #@9
    .line 829
    .local v3, "outs":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@b
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@e
    .line 830
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@10
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@17
    .line 831
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
    .line 832
    const-string/jumbo v4, "root"

    #@23
    const/4 v5, 0x0

    #@24
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 835
    const-string/jumbo v4, "last_reset_time"

    #@2a
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    #@2c
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@2f
    .line 838
    const-string/jumbo v4, "root"

    #@32
    const/4 v5, 0x0

    #@33
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 839
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@39
    .line 842
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 818
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "outs":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    #@3d
    .line 843
    :catch_0
    move-exception v0

    #@3e
    .line 844
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "ShortcutService"

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "Failed to write to file "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    .line 845
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@5f
    goto :goto_0
.end method

.method saveDirtyInfo()V
    .locals 5

    #@0
    .prologue
    .line 1040
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1041
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@5
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@d
    .line 1042
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@f
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Ljava/lang/Integer;

    #@15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v2

    #@19
    .line 1043
    .local v2, "userId":I
    const/16 v3, -0x2710

    #@1b
    if-ne v2, v3, :cond_0

    #@1d
    .line 1044
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseStateLocked()V

    #@20
    .line 1041
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@22
    goto :goto_0

    #@23
    .line 1046
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    goto :goto_1

    #@27
    .line 1040
    .end local v1    # "i":I
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    #@28
    :try_start_2
    monitor-exit v4

    #@29
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@2a
    .line 1051
    :catch_0
    move-exception v0

    #@2b
    .line 1052
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Exception in saveDirtyInfo"

    #@2e
    invoke-virtual {p0, v3, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    .line 1035
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    #@32
    .line 1049
    .restart local v1    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    #@34
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@37
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@38
    goto :goto_2
.end method

.method saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    #@0
    .prologue
    .line 1309
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    #@3
    move-result v8

    #@4
    if-nez v8, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_1

    #@c
    .line 1310
    :cond_0
    return-void

    #@d
    .line 1313
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    #@10
    move-result-wide v6

    #@11
    .line 1316
    .local v6, "token":J
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->removeIcon(ILandroid/content/pm/ShortcutInfo;)V

    #@14
    .line 1318
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    move-result-object v2

    #@18
    .line 1319
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    if-nez v2, :cond_2

    #@1a
    .line 1379
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@1d
    .line 1320
    return-void

    #@1e
    .line 1325
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    #@21
    move-result v8

    #@22
    packed-switch v8, :pswitch_data_0

    #@25
    .line 1340
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    #@28
    move-result-object v8

    #@29
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 1374
    :catchall_0
    move-exception v8

    #@2b
    .line 1376
    :try_start_2
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    #@2e
    .line 1374
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2f
    .line 1378
    .end local v2    # "icon":Landroid/graphics/drawable/Icon;
    :catchall_1
    move-exception v8

    #@30
    .line 1379
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@33
    .line 1378
    throw v8

    #@34
    .line 1327
    .restart local v2    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_0
    :try_start_3
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/ShortcutService;->injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V

    #@37
    .line 1329
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    #@3a
    move-result v8

    #@3b
    invoke-virtual {p2, v8}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    #@3e
    .line 1330
    const/4 v8, 0x4

    #@3f
    invoke-virtual {p2, v8}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 1376
    :try_start_4
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@45
    .line 1379
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@48
    .line 1331
    return-void

    #@49
    .line 1334
    :pswitch_1
    :try_start_5
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@4c
    move-result-object v0

    #@4d
    .line 1342
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    #@4f
    .line 1343
    const-string/jumbo v8, "ShortcutService"

    #@52
    const-string/jumbo v9, "Null bitmap detected"

    #@55
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@58
    .line 1376
    :try_start_6
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@5b
    .line 1379
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@5e
    .line 1344
    return-void

    #@5f
    .line 1347
    :cond_3
    const/4 v4, 0x0

    #@60
    .line 1349
    .local v4, "path":Ljava/io/File;
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@63
    move-result-object v3

    #@64
    .line 1351
    .local v3, "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    #@67
    move-result-object v4

    #@68
    .line 1353
    .local v4, "path":Ljava/io/File;
    iget v8, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@6a
    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@6d
    move-result-object v5

    #@6e
    .line 1355
    .local v5, "shrunk":Landroid/graphics/Bitmap;
    :try_start_9
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    #@70
    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    #@72
    invoke-virtual {v5, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@75
    .line 1357
    if-eq v0, v5, :cond_4

    #@77
    .line 1358
    :try_start_a
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    #@7a
    .line 1362
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {p2, v8}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    #@85
    .line 1363
    const/16 v8, 0x8

    #@87
    invoke-virtual {p2, v8}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@8a
    .line 1365
    :try_start_b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@8d
    .line 1376
    .end local v3    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "shrunk":Landroid/graphics/Bitmap;
    :cond_5
    :goto_0
    :try_start_c
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@90
    .line 1379
    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    #@93
    .line 1308
    return-void

    #@94
    .line 1356
    .restart local v3    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .restart local v4    # "path":Ljava/io/File;
    .restart local v5    # "shrunk":Landroid/graphics/Bitmap;
    :catchall_2
    move-exception v8

    #@95
    .line 1357
    if-eq v0, v5, :cond_6

    #@97
    .line 1358
    :try_start_d
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    #@9a
    .line 1356
    :cond_6
    throw v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@9b
    .line 1364
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "shrunk":Landroid/graphics/Bitmap;
    :catchall_3
    move-exception v8

    #@9c
    .line 1365
    :try_start_e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@9f
    .line 1364
    throw v8
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@a0
    .line 1367
    .end local v3    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    :catch_0
    move-exception v1

    #@a1
    .line 1369
    .local v1, "e":Ljava/lang/Exception;
    :try_start_f
    const-string/jumbo v8, "ShortcutService"

    #@a4
    const-string/jumbo v9, "Unable to write bitmap to file"

    #@a7
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@aa
    .line 1370
    if-eqz v4, :cond_5

    #@ac
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@af
    move-result v8

    #@b0
    if-eqz v8, :cond_5

    #@b2
    .line 1371
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@b5
    goto :goto_0

    #@b6
    .line 1325
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
    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    #@3
    .line 1013
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
    .line 1642
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@4
    .line 1644
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    .line 1645
    .local v2, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@b
    move-result v4

    #@c
    .line 1647
    .local v4, "size":I
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v6

    #@f
    .line 1648
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@12
    .line 1650
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@15
    move-result-object v3

    #@16
    .line 1652
    .local v3, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    #@19
    .line 1654
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    #@1c
    .line 1656
    const/4 v5, 0x0

    #@1d
    invoke-virtual {v3, v2, v5}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    #@20
    .line 1659
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_0

    #@26
    monitor-exit v6

    #@27
    .line 1660
    return v7

    #@28
    .line 1664
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    #@2b
    .line 1665
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    #@2e
    .line 1667
    const/4 v0, 0x0

    #@2f
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@31
    .line 1668
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    #@37
    const/4 v7, 0x0

    #@38
    invoke-direct {p0, v5, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    #@3b
    .line 1667
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1672
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()V

    #@41
    .line 1675
    const/4 v0, 0x0

    #@42
    :goto_1
    if-ge v0, v4, :cond_2

    #@44
    .line 1676
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    #@4a
    .line 1677
    .local v1, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutPackage;->addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    #@4d
    .line 1675
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 1681
    .end local v1    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    monitor-exit v6

    #@54
    .line 1683
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@57
    .line 1685
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@5a
    .line 1687
    const/4 v5, 0x1

    #@5b
    return v5

    #@5c
    .line 1647
    .end local v0    # "i":I
    .end local v3    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v5

    #@5d
    monitor-exit v6

    #@5e
    throw v5
.end method

.method shouldBackupApp(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3136
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
    .line 3132
    const v0, 0x8000

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method throwIfUserLockedL(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1123
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "User "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " is locked or not running"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1121
    :cond_0
    return-void
.end method

.method updateConfigurationLocked(Ljava/lang/String;)Z
    .locals 11
    .param p1, "config"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 637
    const/4 v3, 0x1

    #@2
    .line 639
    .local v3, "result":Z
    new-instance v2, Landroid/util/KeyValueListParser;

    #@4
    const/16 v4, 0x2c

    #@6
    invoke-direct {v2, v4}, Landroid/util/KeyValueListParser;-><init>(C)V

    #@9
    .line 641
    .local v2, "parser":Landroid/util/KeyValueListParser;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 649
    :goto_0
    const-string/jumbo v4, "save_delay_ms"

    #@f
    .line 650
    const-wide/16 v6, 0xbb8

    #@11
    .line 649
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
    .line 652
    const-wide/16 v4, 0x1

    #@1e
    .line 653
    const-string/jumbo v6, "reset_interval_sec"

    #@21
    const-wide/32 v8, 0x15180

    #@24
    .line 652
    invoke-virtual {v2, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@27
    move-result-wide v6

    #@28
    .line 654
    const-wide/16 v8, 0x3e8

    #@2a
    .line 652
    mul-long/2addr v6, v8

    #@2b
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    #@2e
    move-result-wide v4

    #@2f
    iput-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    #@31
    .line 657
    const-string/jumbo v4, "max_updates_per_interval"

    #@34
    const-wide/16 v6, 0xa

    #@36
    .line 656
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
    .line 660
    const-string/jumbo v4, "max_shortcuts"

    #@44
    const-wide/16 v6, 0x5

    #@46
    .line 659
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
    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    #@51
    .line 662
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_0

    #@57
    .line 664
    const-string/jumbo v4, "max_icon_dimension_dp_lowram"

    #@5a
    .line 665
    const-wide/16 v6, 0x30

    #@5c
    .line 663
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@5f
    move-result-wide v4

    #@60
    long-to-int v4, v4

    #@61
    .line 662
    :goto_1
    const/4 v5, 0x1

    #@62
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    #@65
    move-result v1

    #@66
    .line 670
    .local v1, "iconDimensionDp":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    #@69
    move-result v4

    #@6a
    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    #@6c
    .line 673
    const-string/jumbo v4, "icon_format"

    #@6f
    sget-object v5, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    #@71
    invoke-virtual {v2, v4, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    .line 672
    invoke-static {v4}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    #@78
    move-result-object v4

    #@79
    iput-object v4, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    #@7b
    .line 676
    const-string/jumbo v4, "icon_quality"

    #@7e
    .line 677
    const-wide/16 v6, 0x64

    #@80
    .line 675
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@83
    move-result-wide v4

    #@84
    long-to-int v4, v4

    #@85
    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    #@87
    .line 679
    return v3

    #@88
    .line 642
    .end local v1    # "iconDimensionDp":I
    :catch_0
    move-exception v0

    #@89
    .line 645
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "ShortcutService"

    #@8c
    const-string/jumbo v5, "Bad shortcut manager settings"

    #@8f
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@92
    .line 646
    const/4 v3, 0x0

    #@93
    goto/16 :goto_0

    #@95
    .line 667
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string/jumbo v4, "max_icon_dimension_dp"

    #@98
    .line 668
    const-wide/16 v6, 0x60

    #@9a
    .line 666
    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    #@9d
    move-result-wide v4

    #@9e
    long-to-int v4, v4

    #@9f
    goto :goto_1
.end method

.method public updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutInfoList"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1693
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    #@3
    .line 1695
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    .line 1696
    .local v1, "newShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v4

    #@b
    .line 1698
    .local v4, "size":I
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v8

    #@e
    .line 1699
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    #@11
    .line 1701
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    #@14
    move-result-object v2

    #@15
    .line 1703
    .local v2, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    #@18
    .line 1708
    const/4 v7, 0x2

    #@19
    invoke-virtual {v2, v1, v7}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    #@1c
    .line 1711
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v7

    #@20
    if-nez v7, :cond_0

    #@22
    .line 1712
    const/4 v7, 0x0

    #@23
    monitor-exit v8

    #@24
    return v7

    #@25
    .line 1716
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    #@28
    .line 1717
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    #@2b
    .line 1719
    const/4 v0, 0x0

    #@2c
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_9

    #@2e
    .line 1720
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    #@34
    .line 1721
    .local v5, "source":Landroid/content/pm/ShortcutInfo;
    const/4 v7, 0x1

    #@35
    invoke-direct {p0, v5, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    #@38
    .line 1723
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v2, v7}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    #@3f
    move-result-object v6

    #@40
    .line 1724
    .local v6, "target":Landroid/content/pm/ShortcutInfo;
    if-nez v6, :cond_2

    #@42
    .line 1719
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1728
    :cond_2
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@48
    move-result v7

    #@49
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    #@4c
    move-result v9

    #@4d
    if-eq v7, v9, :cond_3

    #@4f
    .line 1729
    const-string/jumbo v7, "ShortcutService"

    #@52
    .line 1730
    const-string/jumbo v9, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    #@55
    .line 1729
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 1735
    :cond_3
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    #@5b
    move-result v7

    #@5c
    if-eqz v7, :cond_4

    #@5e
    .line 1736
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    #@61
    .line 1737
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    #@64
    move-result v7

    #@65
    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    #@68
    .line 1740
    :cond_4
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    #@6b
    move-result-object v7

    #@6c
    if-eqz v7, :cond_8

    #@6e
    const/4 v3, 0x1

    #@6f
    .line 1741
    .local v3, "replacingIcon":Z
    :goto_2
    if-eqz v3, :cond_5

    #@71
    .line 1742
    invoke-virtual {p0, p3, v6}, Lcom/android/server/pm/ShortcutService;->removeIcon(ILandroid/content/pm/ShortcutInfo;)V

    #@74
    .line 1746
    :cond_5
    invoke-virtual {v6, v5}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    #@77
    .line 1747
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    #@7a
    move-result-wide v10

    #@7b
    invoke-virtual {v6, v10, v11}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    #@7e
    .line 1749
    if-eqz v3, :cond_6

    #@80
    .line 1750
    invoke-virtual {p0, p3, v6}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcut(ILandroid/content/pm/ShortcutInfo;)V

    #@83
    .line 1755
    :cond_6
    if-nez v3, :cond_7

    #@85
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    #@88
    move-result v7

    #@89
    if-eqz v7, :cond_1

    #@8b
    .line 1756
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8e
    goto :goto_1

    #@8f
    .line 1698
    .end local v0    # "i":I
    .end local v2    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "replacingIcon":Z
    .end local v5    # "source":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "target":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v7

    #@90
    monitor-exit v8

    #@91
    throw v7

    #@92
    .line 1740
    .restart local v0    # "i":I
    .restart local v2    # "ps":Lcom/android/server/pm/ShortcutPackage;
    .restart local v5    # "source":Landroid/content/pm/ShortcutInfo;
    .restart local v6    # "target":Landroid/content/pm/ShortcutInfo;
    :cond_8
    const/4 v3, 0x0

    #@93
    .restart local v3    # "replacingIcon":Z
    goto :goto_2

    #@94
    .line 1761
    .end local v3    # "replacingIcon":Z
    .end local v5    # "source":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "target":Landroid/content/pm/ShortcutInfo;
    :cond_9
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@97
    monitor-exit v8

    #@98
    .line 1763
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    #@9b
    .line 1765
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    #@9e
    .line 1767
    const/4 v7, 0x1

    #@9f
    return v7
.end method

.method final verifyStates()V
    .locals 1

    #@0
    .prologue
    .line 3747
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3748
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    #@9
    .line 3746
    :cond_0
    return-void
.end method

.method final wtf(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3636
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 3635
    return-void
.end method

.method wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 3641
    if-nez p2, :cond_0

    #@2
    .line 3642
    new-instance p2, Ljava/lang/RuntimeException;

    #@4
    .end local p2    # "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "Stacktrace"

    #@7
    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    .line 3644
    .restart local p2    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    .line 3645
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    #@13
    .line 3646
    new-instance v0, Ljava/lang/Exception;

    #@15
    const-string/jumbo v2, "Last failure was logged here:"

    #@18
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 3648
    const-string/jumbo v0, "ShortcutService"

    #@21
    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    .line 3640
    return-void

    #@25
    .line 3644
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method
