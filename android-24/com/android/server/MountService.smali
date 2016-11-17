.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$1;,
        Lcom/android/server/MountService$Callbacks;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$Lifecycle;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$MountServiceInternalImpl;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$VoldResponseCode;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FORCE_ADOPTABLE:Ljava/lang/String; = "forceAdoptable"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTD_TAG:Ljava/lang/String; = "CryptdConnector"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_PARTITION_FORGET:I = 0x9

.field private static final H_RESET:I = 0xa

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final H_VOLUME_UNMOUNT:I = 0x8

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z

.field static sSelf:Lcom/android/server/MountService;


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private volatile mBootCompleted:Z

.field private final mCallbacks:Lcom/android/server/MountService$Callbacks;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mConnectorThread:Ljava/lang/Thread;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mCryptConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mCryptConnectorThread:Ljava/lang/Thread;

.field private volatile mCurrentUserId:I

.field private volatile mDaemonConnected:Z

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceAdoptable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private mLocalUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private volatile mSystemReady:Z

.field private mSystemUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUnmountLock:Ljava/lang/Object;

.field private mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnmountLock"
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/MountService;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/MountService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/MountService;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/MountService;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/MountService;->mCurrentUserId:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/MountService;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/MountService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/MountService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onUnlockUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/MountService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->remountUidExternalStorage(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnected()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->start()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->systemReady()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/MountService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->shouldBenchmark()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->bootCompleted()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .param p1, "partGuid"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->forgetPartition(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->handleDaemonConnected()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/MountService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onCleanupUser(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 155
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    #@3
    .line 438
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [Ljava/lang/String;

    #@6
    const-string/jumbo v1, "password"

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    const-string/jumbo v1, "default"

    #@f
    const/4 v2, 0x1

    #@10
    aput-object v1, v0, v2

    #@12
    const-string/jumbo v1, "pattern"

    #@15
    const/4 v2, 0x2

    #@16
    aput-object v1, v0, v2

    #@18
    const-string/jumbo v1, "pin"

    #@1b
    const/4 v2, 0x3

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 437
    sput-object v0, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@20
    .line 561
    new-instance v0, Landroid/content/ComponentName;

    #@22
    .line 562
    const-string/jumbo v1, "com.android.defcontainer"

    #@25
    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    #@28
    .line 561
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    #@2d
    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v3, 0x1f4

    #@2
    const/16 v5, 0x19

    #@4
    const/4 v12, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    .line 1465
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    #@a
    .line 295
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@11
    .line 299
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@13
    iput-object v0, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    #@15
    .line 302
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@17
    iput-object v0, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    #@19
    .line 306
    new-instance v0, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@20
    .line 309
    new-instance v0, Landroid/util/ArrayMap;

    #@22
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@27
    .line 313
    new-instance v0, Landroid/util/ArrayMap;

    #@29
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@2e
    .line 321
    new-instance v0, Landroid/util/ArrayMap;

    #@30
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@33
    iput-object v0, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    #@35
    .line 328
    iput v1, p0, Lcom/android/server/MountService;->mCurrentUserId:I

    #@37
    .line 448
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@39
    .line 449
    iput-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    #@3b
    .line 450
    iput-boolean v1, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@3d
    .line 458
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@3f
    const/4 v1, 0x2

    #@40
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@43
    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@45
    .line 459
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@47
    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@4a
    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    #@4c
    .line 461
    new-instance v0, Ljava/lang/Object;

    #@4e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@51
    iput-object v0, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    #@53
    .line 469
    new-instance v0, Ljava/util/HashSet;

    #@55
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@58
    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@5a
    .line 487
    new-instance v0, Ljava/util/HashMap;

    #@5c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5f
    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@61
    .line 490
    new-instance v0, Ljava/util/HashMap;

    #@63
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@66
    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@68
    .line 493
    new-instance v0, Lcom/android/server/MountService$MountServiceInternalImpl;

    #@6a
    invoke-direct {v0, p0, v6}, Lcom/android/server/MountService$MountServiceInternalImpl;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$MountServiceInternalImpl;)V

    #@6d
    iput-object v0, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    #@6f
    .line 564
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    #@71
    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    #@74
    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    #@76
    .line 583
    iput-object v6, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    #@78
    .line 725
    new-instance v0, Lcom/android/server/MountService$1;

    #@7a
    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    #@7d
    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@7f
    .line 1466
    sput-object p0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    #@81
    .line 1468
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@83
    .line 1469
    new-instance v0, Lcom/android/server/MountService$Callbacks;

    #@85
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@8c
    move-result-object v1

    #@8d
    invoke-direct {v0, v1}, Lcom/android/server/MountService$Callbacks;-><init>(Landroid/os/Looper;)V

    #@90
    iput-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@92
    .line 1470
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@94
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@96
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@99
    iput-object v0, p0, Lcom/android/server/MountService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@9b
    .line 1473
    const-string/jumbo v0, "package"

    #@9e
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a1
    move-result-object v0

    #@a2
    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    #@a4
    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@a6
    .line 1475
    new-instance v9, Landroid/os/HandlerThread;

    #@a8
    const-string/jumbo v0, "MountService"

    #@ab
    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@ae
    .line 1476
    .local v9, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    #@b1
    .line 1477
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    #@b3
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@b6
    move-result-object v1

    #@b7
    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    #@ba
    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@bc
    .line 1480
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    #@be
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@c1
    move-result-object v1

    #@c2
    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@c5
    move-result-object v1

    #@c6
    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    #@c9
    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@cb
    .line 1483
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@ce
    move-result-object v7

    #@cf
    .line 1484
    .local v7, "dataDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    #@d1
    const-string/jumbo v0, "system"

    #@d4
    invoke-direct {v10, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d7
    .line 1485
    .local v10, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@d9
    const-string/jumbo v1, "last-fstrim"

    #@dc
    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@df
    iput-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@e1
    .line 1486
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@e3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@e6
    move-result v0

    #@e7
    if-nez v0, :cond_0

    #@e9
    .line 1490
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    #@eb
    iget-object v1, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@ed
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@f0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f3
    .line 1498
    :goto_0
    new-instance v0, Landroid/util/AtomicFile;

    #@f5
    .line 1499
    new-instance v1, Ljava/io/File;

    #@f7
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@fa
    move-result-object v2

    #@fb
    const-string/jumbo v4, "storage.xml"

    #@fe
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@101
    .line 1498
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@104
    iput-object v0, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@106
    .line 1501
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@108
    monitor-enter v0

    #@109
    .line 1502
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/MountService;->readSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10c
    monitor-exit v0

    #@10d
    .line 1505
    const-class v0, Landroid/os/storage/MountServiceInternal;

    #@10f
    iget-object v1, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    #@111
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@114
    .line 1513
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    #@116
    const-string/jumbo v2, "vold"

    #@119
    const-string/jumbo v4, "VoldConnector"

    #@11c
    move-object v1, p0

    #@11d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    #@120
    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@122
    .line 1515
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@124
    invoke-virtual {v0, v12}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    #@127
    .line 1516
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@129
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@12b
    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setWarnIfHeld(Ljava/lang/Object;)V

    #@12e
    .line 1517
    new-instance v0, Ljava/lang/Thread;

    #@130
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@132
    const-string/jumbo v2, "VoldConnector"

    #@135
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@138
    iput-object v0, p0, Lcom/android/server/MountService;->mConnectorThread:Ljava/lang/Thread;

    #@13a
    .line 1520
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    #@13c
    const-string/jumbo v2, "cryptd"

    #@13f
    .line 1521
    const-string/jumbo v4, "CryptdConnector"

    #@142
    move-object v1, p0

    #@143
    .line 1520
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    #@146
    iput-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@148
    .line 1522
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@14a
    invoke-virtual {v0, v12}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    #@14d
    .line 1523
    new-instance v0, Ljava/lang/Thread;

    #@14f
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@151
    const-string/jumbo v2, "CryptdConnector"

    #@154
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@157
    iput-object v0, p0, Lcom/android/server/MountService;->mCryptConnectorThread:Ljava/lang/Thread;

    #@159
    .line 1525
    new-instance v11, Landroid/content/IntentFilter;

    #@15b
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    #@15e
    .line 1526
    .local v11, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@161
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@164
    .line 1527
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@167
    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@16a
    .line 1528
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@16c
    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@16e
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@170
    invoke-virtual {v0, v1, v11, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@173
    .line 1530
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@175
    monitor-enter v0

    #@176
    .line 1531
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolumeLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@179
    monitor-exit v0

    #@17a
    .line 1465
    return-void

    #@17b
    .line 1491
    .end local v11    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v8

    #@17c
    .line 1492
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v0, "MountService"

    #@17f
    new-instance v1, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    const-string/jumbo v2, "Unable to create fstrim record "

    #@187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v1

    #@18b
    iget-object v2, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@18d
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@190
    move-result-object v2

    #@191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v1

    #@195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v1

    #@199
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19c
    goto/16 :goto_0

    #@19e
    .line 1495
    .end local v8    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@1a0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@1a3
    move-result-wide v0

    #@1a4
    iput-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@1a6
    goto/16 :goto_0

    #@1a8
    .line 1501
    :catchall_0
    move-exception v1

    #@1a9
    monitor-exit v0

    #@1aa
    throw v1

    #@1ab
    .line 1530
    .restart local v11    # "userFilter":Landroid/content/IntentFilter;
    :catchall_1
    move-exception v1

    #@1ac
    monitor-exit v0

    #@1ad
    throw v1
.end method

.method private addInternalVolumeLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 846
    new-instance v0, Landroid/os/storage/VolumeInfo;

    #@3
    const-string/jumbo v1, "private"

    #@6
    .line 847
    const/4 v2, 0x1

    #@7
    .line 846
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    #@a
    .line 848
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    #@b
    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    #@d
    .line 849
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@17
    .line 850
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@19
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 844
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3123
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 3124
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@6
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    check-cast v4, Ljava/util/List;

    #@c
    .line 3126
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    #@e
    .line 3127
    new-instance v4, Ljava/util/ArrayList;

    #@10
    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 3128
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@15
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 3138
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 3140
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 3155
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@20
    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@22
    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 3122
    return-void

    #@26
    .line 3130
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v3

    #@2a
    .local v3, "o$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_0

    #@30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Lcom/android/server/MountService$ObbState;

    #@36
    .line 3131
    .local v2, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v2, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@38
    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_2

    #@40
    .line 3132
    new-instance v5, Ljava/lang/IllegalStateException;

    #@42
    const-string/jumbo v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    #@45
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@48
    throw v5

    #@49
    .line 3141
    .end local v2    # "o":Lcom/android/server/MountService$ObbState;
    .end local v3    # "o$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@4a
    .line 3146
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@4d
    .line 3147
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_3

    #@53
    .line 3148
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@55
    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 3152
    :cond_3
    throw v1
.end method

.method private bootCompleted()V
    .locals 1

    #@0
    .prologue
    .line 1551
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    #@3
    .line 1550
    return-void
.end method

.method private copyLocaleFromMountService()V
    .locals 7

    #@0
    .prologue
    .line 1008
    :try_start_0
    const-string/jumbo v4, "SystemLocale"

    #@3
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v3

    #@7
    .line 1012
    .local v3, "systemLocale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 1013
    return-void

    #@e
    .line 1009
    .end local v3    # "systemLocale":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@f
    .line 1010
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    #@10
    .line 1016
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "systemLocale":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "MountService"

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Got locale "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    const-string/jumbo v6, " from mount service"

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 1017
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@34
    move-result-object v2

    #@35
    .line 1018
    .local v2, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/content/res/Configuration;

    #@37
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@3a
    .line 1019
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    #@3d
    .line 1021
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@40
    move-result-object v4

    #@41
    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@44
    .line 1027
    :goto_0
    const-string/jumbo v4, "MountService"

    #@47
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v6, "Setting system properties to "

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    const-string/jumbo v6, " from mount service"

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 1028
    const-string/jumbo v4, "persist.sys.locale"

    #@68
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    .line 1005
    return-void

    #@70
    .line 1022
    :catch_1
    move-exception v1

    #@71
    .line 1023
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MountService"

    #@74
    const-string/jumbo v5, "Error setting system locale from mount service"

    #@77
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    goto :goto_0
.end method

.method private encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    .locals 2
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 2817
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2818
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@8
    const-string/jumbo v1, "!"

    #@b
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@e
    return-object v0

    #@f
    .line 2820
    :cond_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@11
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@18
    return-object v0
.end method

.method private enforceAdminUser()V
    .locals 7

    #@0
    .prologue
    .line 1446
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "user"

    #@5
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    check-cast v4, Landroid/os/UserManager;

    #@b
    .line 1447
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v0

    #@f
    .line 1449
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v2

    #@13
    .line 1451
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v1

    #@1b
    .line 1453
    .local v1, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1455
    if-nez v1, :cond_0

    #@20
    .line 1456
    new-instance v5, Ljava/lang/SecurityException;

    #@22
    const-string/jumbo v6, "Only admin users can adopt sd cards"

    #@25
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@28
    throw v5

    #@29
    .line 1452
    .end local v1    # "isAdmin":Z
    :catchall_0
    move-exception v5

    #@2a
    .line 1453
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1452
    throw v5

    #@2e
    .line 1445
    .restart local v1    # "isAdmin":Z
    :cond_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1428
    return-void
.end method

.method private static escapeNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 425
    const-string/jumbo v0, "!"

    #@a
    return-object v0

    #@b
    .line 427
    :cond_0
    const/4 v0, 0x0

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v0

    #@10
    if-ne v0, v1, :cond_1

    #@12
    const/16 v0, 0x20

    #@14
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v0

    #@18
    if-eq v0, v1, :cond_2

    #@1a
    .line 428
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 430
    :cond_2
    return-object p0
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 3
    .param p1, "diskId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    #@b
    .line 415
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_0

    #@d
    .line 416
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@f
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 0x1

    #@10
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@13
    .line 417
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v2

    #@19
    .line 419
    return-object v0

    #@1a
    .line 413
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 353
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 354
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v2

    #@b
    if-ge v0, v2, :cond_1

    #@d
    .line 355
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/os/storage/VolumeInfo;

    #@15
    .line 356
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@17
    if-eqz v2, :cond_0

    #@19
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 357
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@23
    iget-object v4, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/os/storage/VolumeRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    return-object v2

    #@2d
    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    #@31
    .line 361
    return-object v4

    #@32
    .line 353
    :catchall_0
    move-exception v2

    #@33
    monitor-exit v3

    #@34
    throw v2
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    const-class v2, Landroid/os/storage/StorageManager;

    #@4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/storage/StorageManager;

    #@a
    .line 379
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@c
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 380
    const-string/jumbo v1, "emulated"

    #@15
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 381
    :cond_0
    const-string/jumbo v1, "primary_physical"

    #@1d
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 382
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 384
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 333
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 334
    return-object v0

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "No volume found for ID "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 331
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 341
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 342
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_1

    #@c
    .line 343
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/storage/VolumeInfo;

    #@14
    .line 344
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@16
    if-eqz v2, :cond_0

    #@18
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 345
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v3

    #@23
    return-object v2

    #@24
    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    #@28
    .line 349
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "No volume found for path "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 341
    :catchall_0
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2
.end method

.method private forgetPartition(Ljava/lang/String;)V
    .locals 6
    .param p1, "partGuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1929
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2
    const-string/jumbo v2, "volume"

    #@5
    const/4 v3, 0x2

    #@6
    new-array v3, v3, [Ljava/lang/Object;

    #@8
    const-string/jumbo v4, "forget_partition"

    #@b
    const/4 v5, 0x0

    #@c
    aput-object v4, v3, v5

    #@e
    const/4 v4, 0x1

    #@f
    aput-object p1, v3, v4

    #@11
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1927
    :goto_0
    return-void

    #@15
    .line 1930
    :catch_0
    move-exception v0

    #@16
    .line 1931
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "MountService"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Failed to forget key for "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, ": "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1555
    const-string/jumbo v0, "ro.vold.primary_physical"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1556
    const-string/jumbo v0, "primary_physical"

    #@d
    return-object v0

    #@e
    .line 1558
    :cond_0
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@10
    return-object v0
.end method

.method private handleDaemonConnected()V
    .locals 4

    #@0
    .prologue
    .line 979
    invoke-direct {p0}, Lcom/android/server/MountService;->initIfReadyAndConnected()V

    #@3
    .line 980
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnected()V

    #@6
    .line 986
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@b
    .line 987
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@d
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    #@10
    move-result-wide v0

    #@11
    const-wide/16 v2, 0x0

    #@13
    cmp-long v0, v0, v2

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 989
    return-void

    #@18
    .line 994
    :cond_0
    const-string/jumbo v0, ""

    #@1b
    const-string/jumbo v1, "vold.encrypt_progress"

    #@1e
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 995
    invoke-direct {p0}, Lcom/android/server/MountService;->copyLocaleFromMountService()V

    #@2b
    .line 999
    :cond_1
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    #@30
    .line 1002
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    #@32
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@35
    .line 978
    return-void
.end method

.method private handleSystemReady()V
    .locals 1

    #@0
    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/server/MountService;->initIfReadyAndConnected()V

    #@3
    .line 803
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnected()V

    #@6
    .line 806
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@8
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    #@b
    .line 801
    return-void
.end method

.method private initIfReadyAndConnected()V
    .locals 10

    #@0
    .prologue
    .line 854
    const-string/jumbo v5, "MountService"

    #@3
    new-instance v6, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v7, "Thinking about init, mSystemReady="

    #@b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v6

    #@f
    iget-boolean v7, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    .line 855
    const-string/jumbo v7, ", mDaemonConnected="

    #@18
    .line 854
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v6

    #@1c
    .line 855
    iget-boolean v7, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@1e
    .line 854
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 856
    iget-boolean v5, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@2b
    if-eqz v5, :cond_0

    #@2d
    iget-boolean v5, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@2f
    if-eqz v5, :cond_0

    #@31
    .line 857
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 853
    :cond_0
    return-void

    #@38
    .line 861
    :cond_1
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    #@3b
    move-result v1

    #@3c
    .line 862
    .local v1, "initLocked":Z
    const-string/jumbo v5, "MountService"

    #@3f
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "Setting up emulation state, initlocked="

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 863
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@58
    const-class v6, Landroid/os/UserManager;

    #@5a
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5d
    move-result-object v5

    #@5e
    check-cast v5, Landroid/os/UserManager;

    #@60
    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@63
    move-result-object v4

    #@64
    .line 864
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v3

    #@68
    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v5

    #@6c
    if-eqz v5, :cond_0

    #@6e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    check-cast v2, Landroid/content/pm/UserInfo;

    #@74
    .line 866
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    #@76
    .line 867
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@78
    const-string/jumbo v6, "cryptfs"

    #@7b
    const/4 v7, 0x2

    #@7c
    new-array v7, v7, [Ljava/lang/Object;

    #@7e
    const-string/jumbo v8, "lock_user_key"

    #@81
    const/4 v9, 0x0

    #@82
    aput-object v8, v7, v9

    #@84
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    #@86
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@89
    move-result-object v8

    #@8a
    const/4 v9, 0x1

    #@8b
    aput-object v8, v7, v9

    #@8d
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    goto :goto_0

    #@91
    .line 872
    :catch_0
    move-exception v0

    #@92
    .line 873
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v5, "MountService"

    #@95
    const-string/jumbo v6, "Failed to init vold"

    #@98
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9b
    goto :goto_0

    #@9c
    .line 869
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@9e
    const-string/jumbo v6, "cryptfs"

    #@a1
    const/4 v7, 0x5

    #@a2
    new-array v7, v7, [Ljava/lang/Object;

    #@a4
    const-string/jumbo v8, "unlock_user_key"

    #@a7
    const/4 v9, 0x0

    #@a8
    aput-object v8, v7, v9

    #@aa
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    #@ac
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af
    move-result-object v8

    #@b0
    const/4 v9, 0x1

    #@b1
    aput-object v8, v7, v9

    #@b3
    .line 870
    iget v8, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    #@b5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v8

    #@b9
    const/4 v9, 0x2

    #@ba
    aput-object v8, v7, v9

    #@bc
    const-string/jumbo v8, "!"

    #@bf
    const/4 v9, 0x3

    #@c0
    aput-object v8, v7, v9

    #@c2
    const-string/jumbo v8, "!"

    #@c5
    const/4 v9, 0x4

    #@c6
    aput-object v8, v7, v9

    #@c8
    .line 869
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@cb
    goto :goto_0
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1308
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    #@4
    move-result v0

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 1314
    return v1

    #@9
    .line 1317
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    #@c
    move-result v0

    #@d
    packed-switch v0, :pswitch_data_1

    #@10
    .line 1326
    :pswitch_1
    return v1

    #@11
    .line 1329
    :pswitch_2
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 1308
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@1e
    .line 1317
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .locals 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1436
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@7
    const/4 v2, 0x1

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 1437
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@c
    const-class v2, Landroid/os/UserManager;

    #@e
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/UserManager;

    #@14
    .line 1438
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_physical_media"

    #@17
    .line 1439
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@1a
    move-result-object v2

    #@1b
    .line 1438
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 1441
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_1
    return v3
.end method

.method private isReady()Z
    .locals 5

    #@0
    .prologue
    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@2
    const-wide/16 v2, 0x0

    #@4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@6
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 796
    :catch_0
    move-exception v0

    #@c
    .line 797
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2409
    const/16 v3, 0x3e8

    #@4
    if-ne p2, v3, :cond_0

    #@6
    .line 2410
    return v1

    #@7
    .line 2413
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 2414
    return v2

    #@a
    .line 2417
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@c
    .line 2418
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@f
    move-result v4

    #@10
    const/high16 v5, 0x10000000

    #@12
    .line 2417
    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    #@15
    move-result v0

    #@16
    .line 2425
    .local v0, "packageUid":I
    if-ne p2, v0, :cond_2

    #@18
    :goto_0
    return v1

    #@19
    :cond_2
    move v1, v2

    #@1a
    goto :goto_0
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 815
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 817
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@6
    move-result-wide v4

    #@7
    .line 819
    .local v4, "token":J
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v6

    #@b
    .local v6, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_2

    #@11
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/content/pm/UserInfo;

    #@17
    .line 821
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    #@1a
    move-result v7

    #@1b
    if-nez v7, :cond_1

    #@1d
    .line 823
    iget-object v7, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@1f
    const-string/jumbo v8, "media"

    #@22
    .line 826
    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    #@24
    .line 824
    const/high16 v10, 0xc0000

    #@26
    .line 823
    invoke-virtual {v7, v8, v10, v9}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    #@29
    move-result-object v2

    #@2a
    .line 827
    .local v2, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_1

    #@2c
    .line 828
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v0

    #@30
    .line 830
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_1
    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@32
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@34
    .line 831
    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@36
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@38
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    #@3b
    move-result v8

    #@3c
    .line 832
    const-string/jumbo v9, "vold reset"

    #@3f
    const/4 v10, -0x1

    #@40
    .line 830
    invoke-interface {v0, v7, v8, v10, v9}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .line 840
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 814
    return-void

    #@47
    .line 839
    .end local v6    # "user$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@48
    .line 840
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 839
    throw v7

    #@4c
    .line 835
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v2    # "provider":Landroid/content/pm/ProviderInfo;
    .restart local v3    # "user":Landroid/content/pm/UserInfo;
    .restart local v6    # "user$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@4d
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private onCleanupUser(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 941
    const-string/jumbo v1, "MountService"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onCleanupUser "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 944
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@1c
    const-string/jumbo v2, "volume"

    #@1f
    const/4 v3, 0x2

    #@20
    new-array v3, v3, [Ljava/lang/Object;

    #@22
    const-string/jumbo v4, "user_stopped"

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v4, v3, v5

    #@28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    const/4 v5, 0x1

    #@2d
    aput-object v4, v3, v5

    #@2f
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 948
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@34
    monitor-enter v2

    #@35
    .line 949
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    #@37
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    monitor-exit v2

    #@3e
    .line 940
    return-void

    #@3f
    .line 948
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1

    #@42
    .line 945
    :catch_0
    move-exception v0

    #@43
    .local v0, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto :goto_0
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .locals 7
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    #@0
    .prologue
    .line 1233
    const/4 v4, 0x0

    #@1
    .line 1234
    .local v4, "volumeCount":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@7
    move-result v5

    #@8
    if-ge v0, v5, :cond_1

    #@a
    .line 1235
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/os/storage/VolumeInfo;

    #@12
    .line 1236
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v5, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    #@14
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 1237
    add-int/lit8 v4, v4, 0x1

    #@20
    .line 1234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1241
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@25
    const-string/jumbo v5, "android.os.storage.action.DISK_SCANNED"

    #@28
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2b
    .line 1242
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x5000000

    #@2d
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@30
    .line 1244
    const-string/jumbo v5, "android.os.storage.extra.DISK_ID"

    #@33
    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    #@35
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@38
    .line 1245
    const-string/jumbo v5, "android.os.storage.extra.VOLUME_COUNT"

    #@3b
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 1246
    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@40
    const/4 v6, 0x7

    #@41
    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    #@48
    .line 1248
    iget-object v5, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    #@4a
    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    #@4c
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v2

    #@50
    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    #@52
    .line 1249
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_2

    #@54
    .line 1250
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@57
    .line 1253
    :cond_2
    iput v4, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    #@59
    .line 1254
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@5b
    invoke-static {v5, p1, v4}, Lcom/android/server/MountService$Callbacks;->-wrap1(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    #@5e
    .line 1232
    return-void
.end method

.method private onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 35
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1050
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1225
    :pswitch_0
    const-string/jumbo v32, "MountService"

    #@6
    new-instance v33, Ljava/lang/StringBuilder;

    #@8
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v34, "Unhandled vold event "

    #@e
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v33

    #@12
    move-object/from16 v0, v33

    #@14
    move/from16 v1, p1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v33

    #@1a
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v33

    #@1e
    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1229
    :cond_0
    :goto_0
    const/16 v32, 0x1

    #@23
    return v32

    #@24
    .line 1052
    :pswitch_1
    move-object/from16 v0, p3

    #@26
    array-length v0, v0

    #@27
    move/from16 v32, v0

    #@29
    const/16 v33, 0x3

    #@2b
    move/from16 v0, v32

    #@2d
    move/from16 v1, v33

    #@2f
    if-ne v0, v1, :cond_0

    #@31
    .line 1053
    const/16 v32, 0x1

    #@33
    aget-object v18, p3, v32

    #@35
    .line 1054
    .local v18, "id":Ljava/lang/String;
    const/16 v32, 0x2

    #@37
    aget-object v32, p3, v32

    #@39
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c
    move-result v16

    #@3d
    .line 1055
    .local v16, "flags":I
    const-string/jumbo v32, "persist.fw.force_adoptable"

    #@40
    const/16 v33, 0x0

    #@42
    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@45
    move-result v32

    #@46
    if-nez v32, :cond_1

    #@48
    .line 1056
    move-object/from16 v0, p0

    #@4a
    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@4c
    move/from16 v32, v0

    #@4e
    .line 1055
    if-eqz v32, :cond_2

    #@50
    .line 1057
    :cond_1
    or-int/lit8 v16, v16, 0x1

    #@52
    .line 1059
    :cond_2
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@56
    move-object/from16 v32, v0

    #@58
    new-instance v33, Landroid/os/storage/DiskInfo;

    #@5a
    move-object/from16 v0, v33

    #@5c
    move-object/from16 v1, v18

    #@5e
    move/from16 v2, v16

    #@60
    invoke-direct {v0, v1, v2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    #@63
    move-object/from16 v0, v32

    #@65
    move-object/from16 v1, v18

    #@67
    move-object/from16 v2, v33

    #@69
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    goto :goto_0

    #@6d
    .line 1063
    .end local v16    # "flags":I
    .end local v18    # "id":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p3

    #@6f
    array-length v0, v0

    #@70
    move/from16 v32, v0

    #@72
    const/16 v33, 0x3

    #@74
    move/from16 v0, v32

    #@76
    move/from16 v1, v33

    #@78
    if-ne v0, v1, :cond_0

    #@7a
    .line 1064
    move-object/from16 v0, p0

    #@7c
    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@7e
    move-object/from16 v32, v0

    #@80
    const/16 v33, 0x1

    #@82
    aget-object v33, p3, v33

    #@84
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    move-result-object v5

    #@88
    check-cast v5, Landroid/os/storage/DiskInfo;

    #@8a
    .line 1065
    .local v5, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@8c
    .line 1066
    const/16 v32, 0x2

    #@8e
    aget-object v32, p3, v32

    #@90
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@93
    move-result-wide v32

    #@94
    move-wide/from16 v0, v32

    #@96
    iput-wide v0, v5, Landroid/os/storage/DiskInfo;->size:J

    #@98
    goto :goto_0

    #@99
    .line 1071
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_3
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@9d
    move-object/from16 v32, v0

    #@9f
    const/16 v33, 0x1

    #@a1
    aget-object v33, p3, v33

    #@a3
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    move-result-object v5

    #@a7
    check-cast v5, Landroid/os/storage/DiskInfo;

    #@a9
    .line 1072
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@ab
    .line 1073
    new-instance v4, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    .line 1074
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x2

    #@b2
    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p3

    #@b4
    array-length v0, v0

    #@b5
    move/from16 v32, v0

    #@b7
    move/from16 v0, v17

    #@b9
    move/from16 v1, v32

    #@bb
    if-ge v0, v1, :cond_3

    #@bd
    .line 1075
    aget-object v32, p3, v17

    #@bf
    move-object/from16 v0, v32

    #@c1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v32

    #@c5
    const/16 v33, 0x20

    #@c7
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    .line 1074
    add-int/lit8 v17, v17, 0x1

    #@cc
    goto :goto_1

    #@cd
    .line 1077
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v32

    #@d1
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d4
    move-result-object v32

    #@d5
    move-object/from16 v0, v32

    #@d7
    iput-object v0, v5, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    #@d9
    goto/16 :goto_0

    #@db
    .line 1082
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    .end local v17    # "i":I
    :pswitch_4
    move-object/from16 v0, p3

    #@dd
    array-length v0, v0

    #@de
    move/from16 v32, v0

    #@e0
    const/16 v33, 0x2

    #@e2
    move/from16 v0, v32

    #@e4
    move/from16 v1, v33

    #@e6
    if-ne v0, v1, :cond_0

    #@e8
    .line 1083
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@ec
    move-object/from16 v32, v0

    #@ee
    const/16 v33, 0x1

    #@f0
    aget-object v33, p3, v33

    #@f2
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    move-result-object v5

    #@f6
    check-cast v5, Landroid/os/storage/DiskInfo;

    #@f8
    .line 1084
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@fa
    .line 1085
    move-object/from16 v0, p0

    #@fc
    invoke-direct {v0, v5}, Lcom/android/server/MountService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    #@ff
    goto/16 :goto_0

    #@101
    .line 1090
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_5
    move-object/from16 v0, p3

    #@103
    array-length v0, v0

    #@104
    move/from16 v32, v0

    #@106
    const/16 v33, 0x3

    #@108
    move/from16 v0, v32

    #@10a
    move/from16 v1, v33

    #@10c
    if-ne v0, v1, :cond_0

    #@10e
    .line 1091
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@112
    move-object/from16 v32, v0

    #@114
    const/16 v33, 0x1

    #@116
    aget-object v33, p3, v33

    #@118
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11b
    move-result-object v5

    #@11c
    check-cast v5, Landroid/os/storage/DiskInfo;

    #@11e
    .line 1092
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@120
    .line 1093
    const/16 v32, 0x2

    #@122
    aget-object v32, p3, v32

    #@124
    move-object/from16 v0, v32

    #@126
    iput-object v0, v5, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    #@128
    goto/16 :goto_0

    #@12a
    .line 1098
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_6
    move-object/from16 v0, p3

    #@12c
    array-length v0, v0

    #@12d
    move/from16 v32, v0

    #@12f
    const/16 v33, 0x2

    #@131
    move/from16 v0, v32

    #@133
    move/from16 v1, v33

    #@135
    if-ne v0, v1, :cond_0

    #@137
    .line 1099
    move-object/from16 v0, p0

    #@139
    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@13b
    move-object/from16 v32, v0

    #@13d
    const/16 v33, 0x1

    #@13f
    aget-object v33, p3, v33

    #@141
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@144
    move-result-object v5

    #@145
    check-cast v5, Landroid/os/storage/DiskInfo;

    #@147
    .line 1100
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@149
    .line 1101
    move-object/from16 v0, p0

    #@14b
    iget-object v0, v0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@14d
    move-object/from16 v32, v0

    #@14f
    move-object/from16 v0, v32

    #@151
    invoke-static {v0, v5}, Lcom/android/server/MountService$Callbacks;->-wrap0(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;)V

    #@154
    goto/16 :goto_0

    #@156
    .line 1107
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_7
    const/16 v32, 0x1

    #@158
    aget-object v18, p3, v32

    #@15a
    .line 1108
    .restart local v18    # "id":Ljava/lang/String;
    const/16 v32, 0x2

    #@15c
    aget-object v32, p3, v32

    #@15e
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@161
    move-result v30

    #@162
    .line 1109
    .local v30, "type":I
    const/16 v32, 0x3

    #@164
    aget-object v32, p3, v32

    #@166
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    #@169
    move-result-object v12

    #@16a
    .line 1110
    .local v12, "diskId":Ljava/lang/String;
    const/16 v32, 0x4

    #@16c
    aget-object v32, p3, v32

    #@16e
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    #@171
    move-result-object v22

    #@172
    .line 1112
    .local v22, "partGuid":Ljava/lang/String;
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@176
    move-object/from16 v32, v0

    #@178
    move-object/from16 v0, v32

    #@17a
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17d
    move-result-object v5

    #@17e
    check-cast v5, Landroid/os/storage/DiskInfo;

    #@180
    .line 1113
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    new-instance v31, Landroid/os/storage/VolumeInfo;

    #@182
    move-object/from16 v0, v31

    #@184
    move-object/from16 v1, v18

    #@186
    move/from16 v2, v30

    #@188
    move-object/from16 v3, v22

    #@18a
    invoke-direct {v0, v1, v2, v5, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    #@18d
    .line 1114
    .local v31, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@191
    move-object/from16 v32, v0

    #@193
    move-object/from16 v0, v32

    #@195
    move-object/from16 v1, v18

    #@197
    move-object/from16 v2, v31

    #@199
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19c
    .line 1115
    move-object/from16 v0, p0

    #@19e
    move-object/from16 v1, v31

    #@1a0
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    #@1a3
    goto/16 :goto_0

    #@1a5
    .line 1119
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    .end local v12    # "diskId":Ljava/lang/String;
    .end local v18    # "id":Ljava/lang/String;
    .end local v22    # "partGuid":Ljava/lang/String;
    .end local v30    # "type":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_8
    move-object/from16 v0, p3

    #@1a7
    array-length v0, v0

    #@1a8
    move/from16 v32, v0

    #@1aa
    const/16 v33, 0x3

    #@1ac
    move/from16 v0, v32

    #@1ae
    move/from16 v1, v33

    #@1b0
    if-ne v0, v1, :cond_0

    #@1b2
    .line 1120
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@1b6
    move-object/from16 v32, v0

    #@1b8
    const/16 v33, 0x1

    #@1ba
    aget-object v33, p3, v33

    #@1bc
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1bf
    move-result-object v31

    #@1c0
    check-cast v31, Landroid/os/storage/VolumeInfo;

    #@1c2
    .line 1121
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@1c4
    .line 1122
    move-object/from16 v0, v31

    #@1c6
    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    #@1c8
    move/from16 v21, v0

    #@1ca
    .line 1123
    .local v21, "oldState":I
    const/16 v32, 0x2

    #@1cc
    aget-object v32, p3, v32

    #@1ce
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1d1
    move-result v20

    #@1d2
    .line 1124
    .local v20, "newState":I
    move/from16 v0, v20

    #@1d4
    move-object/from16 v1, v31

    #@1d6
    iput v0, v1, Landroid/os/storage/VolumeInfo;->state:I

    #@1d8
    .line 1125
    move-object/from16 v0, p0

    #@1da
    move-object/from16 v1, v31

    #@1dc
    move/from16 v2, v21

    #@1de
    move/from16 v3, v20

    #@1e0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MountService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 1130
    .end local v20    # "newState":I
    .end local v21    # "oldState":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_9
    move-object/from16 v0, p3

    #@1e7
    array-length v0, v0

    #@1e8
    move/from16 v32, v0

    #@1ea
    const/16 v33, 0x3

    #@1ec
    move/from16 v0, v32

    #@1ee
    move/from16 v1, v33

    #@1f0
    if-ne v0, v1, :cond_0

    #@1f2
    .line 1131
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@1f6
    move-object/from16 v32, v0

    #@1f8
    const/16 v33, 0x1

    #@1fa
    aget-object v33, p3, v33

    #@1fc
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ff
    move-result-object v31

    #@200
    check-cast v31, Landroid/os/storage/VolumeInfo;

    #@202
    .line 1132
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@204
    .line 1133
    const/16 v32, 0x2

    #@206
    aget-object v32, p3, v32

    #@208
    move-object/from16 v0, v32

    #@20a
    move-object/from16 v1, v31

    #@20c
    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    #@20e
    goto/16 :goto_0

    #@210
    .line 1138
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_a
    move-object/from16 v0, p3

    #@212
    array-length v0, v0

    #@213
    move/from16 v32, v0

    #@215
    const/16 v33, 0x3

    #@217
    move/from16 v0, v32

    #@219
    move/from16 v1, v33

    #@21b
    if-ne v0, v1, :cond_0

    #@21d
    .line 1139
    move-object/from16 v0, p0

    #@21f
    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@221
    move-object/from16 v32, v0

    #@223
    const/16 v33, 0x1

    #@225
    aget-object v33, p3, v33

    #@227
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22a
    move-result-object v31

    #@22b
    check-cast v31, Landroid/os/storage/VolumeInfo;

    #@22d
    .line 1140
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@22f
    .line 1141
    const/16 v32, 0x2

    #@231
    aget-object v32, p3, v32

    #@233
    move-object/from16 v0, v32

    #@235
    move-object/from16 v1, v31

    #@237
    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@239
    goto/16 :goto_0

    #@23b
    .line 1146
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_b
    move-object/from16 v0, p0

    #@23d
    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@23f
    move-object/from16 v32, v0

    #@241
    const/16 v33, 0x1

    #@243
    aget-object v33, p3, v33

    #@245
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@248
    move-result-object v31

    #@249
    check-cast v31, Landroid/os/storage/VolumeInfo;

    #@24b
    .line 1147
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@24d
    .line 1148
    new-instance v4, Ljava/lang/StringBuilder;

    #@24f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@252
    .line 1149
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x2

    #@254
    .restart local v17    # "i":I
    :goto_2
    move-object/from16 v0, p3

    #@256
    array-length v0, v0

    #@257
    move/from16 v32, v0

    #@259
    move/from16 v0, v17

    #@25b
    move/from16 v1, v32

    #@25d
    if-ge v0, v1, :cond_4

    #@25f
    .line 1150
    aget-object v32, p3, v17

    #@261
    move-object/from16 v0, v32

    #@263
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v32

    #@267
    const/16 v33, 0x20

    #@269
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26c
    .line 1149
    add-int/lit8 v17, v17, 0x1

    #@26e
    goto :goto_2

    #@26f
    .line 1152
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v32

    #@273
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@276
    move-result-object v32

    #@277
    move-object/from16 v0, v32

    #@279
    move-object/from16 v1, v31

    #@27b
    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    #@27d
    goto/16 :goto_0

    #@27f
    .line 1158
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v17    # "i":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_c
    move-object/from16 v0, p3

    #@281
    array-length v0, v0

    #@282
    move/from16 v32, v0

    #@284
    const/16 v33, 0x3

    #@286
    move/from16 v0, v32

    #@288
    move/from16 v1, v33

    #@28a
    if-ne v0, v1, :cond_0

    #@28c
    .line 1159
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@290
    move-object/from16 v32, v0

    #@292
    const/16 v33, 0x1

    #@294
    aget-object v33, p3, v33

    #@296
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@299
    move-result-object v31

    #@29a
    check-cast v31, Landroid/os/storage/VolumeInfo;

    #@29c
    .line 1160
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@29e
    .line 1161
    const/16 v32, 0x2

    #@2a0
    aget-object v32, p3, v32

    #@2a2
    move-object/from16 v0, v32

    #@2a4
    move-object/from16 v1, v31

    #@2a6
    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@2a8
    goto/16 :goto_0

    #@2aa
    .line 1166
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_d
    move-object/from16 v0, p3

    #@2ac
    array-length v0, v0

    #@2ad
    move/from16 v32, v0

    #@2af
    const/16 v33, 0x3

    #@2b1
    move/from16 v0, v32

    #@2b3
    move/from16 v1, v33

    #@2b5
    if-ne v0, v1, :cond_0

    #@2b7
    .line 1167
    move-object/from16 v0, p0

    #@2b9
    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@2bb
    move-object/from16 v32, v0

    #@2bd
    const/16 v33, 0x1

    #@2bf
    aget-object v33, p3, v33

    #@2c1
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c4
    move-result-object v31

    #@2c5
    check-cast v31, Landroid/os/storage/VolumeInfo;

    #@2c7
    .line 1168
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@2c9
    .line 1169
    const/16 v32, 0x2

    #@2cb
    aget-object v32, p3, v32

    #@2cd
    move-object/from16 v0, v32

    #@2cf
    move-object/from16 v1, v31

    #@2d1
    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    #@2d3
    goto/16 :goto_0

    #@2d5
    .line 1174
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_e
    move-object/from16 v0, p3

    #@2d7
    array-length v0, v0

    #@2d8
    move/from16 v32, v0

    #@2da
    const/16 v33, 0x2

    #@2dc
    move/from16 v0, v32

    #@2de
    move/from16 v1, v33

    #@2e0
    if-ne v0, v1, :cond_0

    #@2e2
    .line 1175
    move-object/from16 v0, p0

    #@2e4
    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@2e6
    move-object/from16 v32, v0

    #@2e8
    const/16 v33, 0x1

    #@2ea
    aget-object v33, p3, v33

    #@2ec
    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2ef
    goto/16 :goto_0

    #@2f1
    .line 1180
    :pswitch_f
    const/16 v32, 0x1

    #@2f3
    aget-object v32, p3, v32

    #@2f5
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f8
    move-result v25

    #@2f9
    .line 1181
    .local v25, "status":I
    move-object/from16 v0, p0

    #@2fb
    move/from16 v1, v25

    #@2fd
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    #@300
    goto/16 :goto_0

    #@302
    .line 1185
    .end local v25    # "status":I
    :pswitch_10
    move-object/from16 v0, p3

    #@304
    array-length v0, v0

    #@305
    move/from16 v32, v0

    #@307
    const/16 v33, 0x7

    #@309
    move/from16 v0, v32

    #@30b
    move/from16 v1, v33

    #@30d
    if-ne v0, v1, :cond_0

    #@30f
    .line 1186
    const/16 v32, 0x1

    #@311
    aget-object v23, p3, v32

    #@313
    .line 1187
    .local v23, "path":Ljava/lang/String;
    const/16 v32, 0x2

    #@315
    aget-object v19, p3, v32

    #@317
    .line 1188
    .local v19, "ident":Ljava/lang/String;
    const/16 v32, 0x3

    #@319
    aget-object v32, p3, v32

    #@31b
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@31e
    move-result-wide v8

    #@31f
    .line 1189
    .local v8, "create":J
    const/16 v32, 0x4

    #@321
    aget-object v32, p3, v32

    #@323
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@326
    move-result-wide v14

    #@327
    .line 1190
    .local v14, "drop":J
    const/16 v32, 0x5

    #@329
    aget-object v32, p3, v32

    #@32b
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@32e
    move-result-wide v26

    #@32f
    .line 1191
    .local v26, "run":J
    const/16 v32, 0x6

    #@331
    aget-object v32, p3, v32

    #@333
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@336
    move-result-wide v10

    #@337
    .line 1193
    .local v10, "destroy":J
    move-object/from16 v0, p0

    #@339
    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@33b
    move-object/from16 v32, v0

    #@33d
    const-class v33, Landroid/os/DropBoxManager;

    #@33f
    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@342
    move-result-object v13

    #@343
    check-cast v13, Landroid/os/DropBoxManager;

    #@345
    .line 1194
    .local v13, "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v32, "storage_benchmark"

    #@348
    new-instance v33, Ljava/lang/StringBuilder;

    #@34a
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@34d
    move-object/from16 v0, p0

    #@34f
    move-object/from16 v1, v23

    #@351
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    #@354
    move-result-object v34

    #@355
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@358
    move-result-object v33

    #@359
    .line 1195
    const-string/jumbo v34, " "

    #@35c
    .line 1194
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35f
    move-result-object v33

    #@360
    move-object/from16 v0, v33

    #@362
    move-object/from16 v1, v19

    #@364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    move-result-object v33

    #@368
    .line 1195
    const-string/jumbo v34, " "

    #@36b
    .line 1194
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36e
    move-result-object v33

    #@36f
    move-object/from16 v0, v33

    #@371
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@374
    move-result-object v33

    #@375
    .line 1195
    const-string/jumbo v34, " "

    #@378
    .line 1194
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37b
    move-result-object v33

    #@37c
    move-object/from16 v0, v33

    #@37e
    move-wide/from16 v1, v26

    #@380
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@383
    move-result-object v33

    #@384
    .line 1195
    const-string/jumbo v34, " "

    #@387
    .line 1194
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38a
    move-result-object v33

    #@38b
    move-object/from16 v0, v33

    #@38d
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@390
    move-result-object v33

    #@391
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@394
    move-result-object v33

    #@395
    move-object/from16 v0, v32

    #@397
    move-object/from16 v1, v33

    #@399
    invoke-virtual {v13, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@39c
    .line 1197
    move-object/from16 v0, p0

    #@39e
    move-object/from16 v1, v23

    #@3a0
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    #@3a3
    move-result-object v24

    #@3a4
    .line 1198
    .local v24, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v24, :cond_0

    #@3a6
    .line 1199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3a9
    move-result-wide v32

    #@3aa
    move-wide/from16 v0, v32

    #@3ac
    move-object/from16 v2, v24

    #@3ae
    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    #@3b0
    .line 1200
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@3b3
    goto/16 :goto_0

    #@3b5
    .line 1206
    .end local v8    # "create":J
    .end local v10    # "destroy":J
    .end local v13    # "dropBox":Landroid/os/DropBoxManager;
    .end local v14    # "drop":J
    .end local v19    # "ident":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    .end local v24    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v26    # "run":J
    :pswitch_11
    move-object/from16 v0, p3

    #@3b7
    array-length v0, v0

    #@3b8
    move/from16 v32, v0

    #@3ba
    const/16 v33, 0x4

    #@3bc
    move/from16 v0, v32

    #@3be
    move/from16 v1, v33

    #@3c0
    if-ne v0, v1, :cond_0

    #@3c2
    .line 1207
    const/16 v32, 0x1

    #@3c4
    aget-object v23, p3, v32

    #@3c6
    .line 1208
    .restart local v23    # "path":Ljava/lang/String;
    const/16 v32, 0x2

    #@3c8
    aget-object v32, p3, v32

    #@3ca
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3cd
    move-result-wide v6

    #@3ce
    .line 1209
    .local v6, "bytes":J
    const/16 v32, 0x3

    #@3d0
    aget-object v32, p3, v32

    #@3d2
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3d5
    move-result-wide v28

    #@3d6
    .line 1211
    .local v28, "time":J
    move-object/from16 v0, p0

    #@3d8
    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@3da
    move-object/from16 v32, v0

    #@3dc
    const-class v33, Landroid/os/DropBoxManager;

    #@3de
    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3e1
    move-result-object v13

    #@3e2
    check-cast v13, Landroid/os/DropBoxManager;

    #@3e4
    .line 1212
    .restart local v13    # "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v32, "storage_trim"

    #@3e7
    new-instance v33, Ljava/lang/StringBuilder;

    #@3e9
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@3ec
    move-object/from16 v0, p0

    #@3ee
    move-object/from16 v1, v23

    #@3f0
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    #@3f3
    move-result-object v34

    #@3f4
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f7
    move-result-object v33

    #@3f8
    .line 1213
    const-string/jumbo v34, " "

    #@3fb
    .line 1212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fe
    move-result-object v33

    #@3ff
    move-object/from16 v0, v33

    #@401
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@404
    move-result-object v33

    #@405
    .line 1213
    const-string/jumbo v34, " "

    #@408
    .line 1212
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40b
    move-result-object v33

    #@40c
    move-object/from16 v0, v33

    #@40e
    move-wide/from16 v1, v28

    #@410
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@413
    move-result-object v33

    #@414
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@417
    move-result-object v33

    #@418
    move-object/from16 v0, v32

    #@41a
    move-object/from16 v1, v33

    #@41c
    invoke-virtual {v13, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@41f
    .line 1215
    move-object/from16 v0, p0

    #@421
    move-object/from16 v1, v23

    #@423
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    #@426
    move-result-object v24

    #@427
    .line 1216
    .restart local v24    # "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v24, :cond_0

    #@429
    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@42c
    move-result-wide v32

    #@42d
    move-wide/from16 v0, v32

    #@42f
    move-object/from16 v2, v24

    #@431
    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    #@433
    .line 1218
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@436
    goto/16 :goto_0

    #@438
    .line 1050
    :pswitch_data_0
    .packed-switch 0x280
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private onMoveStatusLocked(I)V
    .locals 6
    .param p1, "status"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1400
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1401
    const-string/jumbo v1, "MountService"

    #@8
    const-string/jumbo v2, "Odd, status but no move requested"

    #@b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1402
    return-void

    #@f
    .line 1407
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@11
    const-wide/16 v2, -0x1

    #@13
    const/4 v4, -0x1

    #@14
    invoke-interface {v1, v4, p1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1413
    :goto_0
    const/16 v1, 0x52

    #@19
    if-ne p1, v1, :cond_1

    #@1b
    .line 1414
    const-string/jumbo v1, "MountService"

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Move to "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    iget-object v3, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, " copy phase finshed; persisting"

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1416
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    #@40
    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@42
    .line 1417
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@45
    .line 1420
    :cond_1
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_2

    #@4b
    .line 1421
    const-string/jumbo v1, "MountService"

    #@4e
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v3, "Move to "

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    iget-object v3, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    const-string/jumbo v3, " finished with status "

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 1423
    iput-object v5, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@74
    .line 1424
    iput-object v5, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    #@76
    .line 1399
    :cond_2
    return-void

    #@77
    .line 1408
    :catch_0
    move-exception v0

    #@78
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private onUnlockUser(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 913
    const-string/jumbo v5, "MountService"

    #@3
    new-instance v6, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v7, "onUnlockUser "

    #@b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 919
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@1c
    const-string/jumbo v6, "volume"

    #@1f
    const/4 v7, 0x2

    #@20
    new-array v7, v7, [Ljava/lang/Object;

    #@22
    const-string/jumbo v8, "user_started"

    #@25
    const/4 v9, 0x0

    #@26
    aput-object v8, v7, v9

    #@28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v8

    #@2c
    const/4 v9, 0x1

    #@2d
    aput-object v8, v7, v9

    #@2f
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 925
    :goto_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@34
    monitor-enter v6

    #@35
    .line 926
    const/4 v1, 0x0

    #@36
    .local v1, "i":I
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@3b
    move-result v5

    #@3c
    if-ge v1, v5, :cond_1

    #@3e
    .line 927
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/os/storage/VolumeInfo;

    #@46
    .line 928
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_0

    #@4c
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_0

    #@52
    .line 929
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@54
    const/4 v7, 0x0

    #@55
    invoke-virtual {v4, v5, p1, v7}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    #@58
    move-result-object v3

    #@59
    .line 930
    .local v3, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@5b
    const/4 v7, 0x6

    #@5c
    invoke-virtual {v5, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    #@63
    .line 932
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    #@66
    move-result v5

    #@67
    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    .line 933
    .local v0, "envState":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@6d
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    invoke-static {v5, v7, v0, v0}, Lcom/android/server/MountService$Callbacks;->-wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 926
    .end local v0    # "envState":Ljava/lang/String;
    .end local v3    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_1

    #@77
    .line 936
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    #@79
    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@7c
    move-result-object v5

    #@7d
    iput-object v5, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    monitor-exit v6

    #@80
    .line 912
    return-void

    #@81
    .line 925
    :catchall_0
    move-exception v5

    #@82
    monitor-exit v6

    #@83
    throw v5

    #@84
    .line 920
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    #@85
    .local v2, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto :goto_0
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    .line 1258
    iget-object v2, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1259
    const-string/jumbo v2, "MountService"

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "System booted in core-only mode; ignoring volume "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1260
    return-void

    #@28
    .line 1263
    :cond_0
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@2a
    const/4 v3, 0x2

    #@2b
    if-ne v2, v3, :cond_3

    #@2d
    .line 1264
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2f
    const-class v3, Landroid/os/storage/StorageManager;

    #@31
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/os/storage/StorageManager;

    #@37
    .line 1265
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    #@3a
    move-result-object v0

    #@3b
    .line 1267
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@3d
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@3f
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_2

    #@45
    .line 1268
    const-string/jumbo v2, "private"

    #@48
    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    .line 1267
    if-eqz v2, :cond_2

    #@50
    .line 1269
    const-string/jumbo v2, "MountService"

    #@53
    new-instance v3, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v4, "Found primary storage at "

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 1270
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@6c
    or-int/lit8 v2, v2, 0x1

    #@6e
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@70
    .line 1271
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@72
    or-int/lit8 v2, v2, 0x2

    #@74
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@76
    .line 1272
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@78
    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@7f
    .line 1257
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_1
    :goto_0
    return-void

    #@80
    .line 1274
    .restart local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_2
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@82
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@84
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@87
    move-result v2

    #@88
    if-eqz v2, :cond_1

    #@8a
    .line 1275
    const-string/jumbo v2, "MountService"

    #@8d
    new-instance v3, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v4, "Found primary storage at "

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 1276
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@a6
    or-int/lit8 v2, v2, 0x1

    #@a8
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@aa
    .line 1277
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@ac
    or-int/lit8 v2, v2, 0x2

    #@ae
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@b0
    .line 1278
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@b2
    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@b9
    goto :goto_0

    #@ba
    .line 1281
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_3
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@bc
    if-nez v2, :cond_6

    #@be
    .line 1283
    const-string/jumbo v2, "primary_physical"

    #@c1
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@c3
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c6
    move-result v2

    #@c7
    if-eqz v2, :cond_4

    #@c9
    .line 1284
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@cb
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    #@ce
    move-result v2

    #@cf
    .line 1283
    if-eqz v2, :cond_4

    #@d1
    .line 1285
    const-string/jumbo v2, "MountService"

    #@d4
    new-instance v3, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v4, "Found primary storage at "

    #@dc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v3

    #@e0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v3

    #@e4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v3

    #@e8
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@eb
    .line 1286
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@ed
    or-int/lit8 v2, v2, 0x1

    #@ef
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@f1
    .line 1287
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@f3
    or-int/lit8 v2, v2, 0x2

    #@f5
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@f7
    .line 1292
    :cond_4
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@f9
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    #@fc
    move-result v2

    #@fd
    if-eqz v2, :cond_5

    #@ff
    .line 1293
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@101
    or-int/lit8 v2, v2, 0x2

    #@103
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@105
    .line 1296
    :cond_5
    iget v2, p0, Lcom/android/server/MountService;->mCurrentUserId:I

    #@107
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@109
    .line 1297
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@10b
    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10e
    move-result-object v2

    #@10f
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@112
    goto/16 :goto_0

    #@114
    .line 1299
    :cond_6
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@116
    const/4 v3, 0x1

    #@117
    if-ne v2, v3, :cond_7

    #@119
    .line 1300
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@11b
    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11e
    move-result-object v2

    #@11f
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@122
    goto/16 :goto_0

    #@124
    .line 1303
    :cond_7
    const-string/jumbo v2, "MountService"

    #@127
    new-instance v3, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string/jumbo v4, "Skipping automatic mounting of "

    #@12f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v3

    #@133
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v3

    #@137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v3

    #@13b
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13e
    goto/16 :goto_0
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .locals 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    .line 1335
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    #@3
    move-result v6

    #@4
    if-eqz v6, :cond_0

    #@6
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_3

    #@e
    .line 1355
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@10
    invoke-static {v6, p1, p2, p3}, Lcom/android/server/MountService$Callbacks;->-wrap5(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    #@13
    .line 1359
    iget-boolean v6, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    #@15
    if-eqz v6, :cond_1

    #@17
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_1

    #@1d
    .line 1360
    new-instance v0, Landroid/content/Intent;

    #@1f
    const-string/jumbo v6, "android.os.storage.action.VOLUME_STATE_CHANGED"

    #@22
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 1361
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    #@28
    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2d
    .line 1362
    const-string/jumbo v6, "android.os.storage.extra.VOLUME_STATE"

    #@30
    invoke-virtual {v0, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@33
    .line 1363
    const-string/jumbo v6, "android.os.storage.extra.FS_UUID"

    #@36
    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3b
    .line 1364
    const/high16 v6, 0x5000000

    #@3d
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@40
    .line 1366
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@42
    const/4 v7, 0x7

    #@43
    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@4a
    .line 1369
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 1370
    .local v2, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 1372
    .local v1, "newStateEnv":Ljava/lang/String;
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@55
    move-result v6

    #@56
    if-nez v6, :cond_6

    #@58
    .line 1376
    iget-object v7, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    #@5a
    const/4 v6, 0x0

    #@5b
    array-length v8, v7

    #@5c
    :goto_1
    if-ge v6, v8, :cond_6

    #@5e
    aget v4, v7, v6

    #@60
    .line 1377
    .local v4, "userId":I
    invoke-virtual {p1, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    #@63
    move-result v9

    #@64
    if-eqz v9, :cond_2

    #@66
    .line 1378
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@68
    const/4 v10, 0x0

    #@69
    invoke-virtual {p1, v9, v4, v10}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    #@6c
    move-result-object v5

    #@6d
    .line 1379
    .local v5, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@6f
    const/4 v10, 0x6

    #@70
    invoke-virtual {v9, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@77
    .line 1381
    iget-object v9, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@79
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    #@7c
    move-result-object v10

    #@7d
    invoke-static {v9, v10, v2, v1}, Lcom/android/server/MountService$Callbacks;->-wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@80
    .line 1376
    .end local v5    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@82
    goto :goto_1

    #@83
    .line 1336
    .end local v1    # "newStateEnv":Ljava/lang/String;
    .end local v2    # "oldStateEnv":Ljava/lang/String;
    .end local v4    # "userId":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@85
    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@87
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    move-result-object v3

    #@8b
    check-cast v3, Landroid/os/storage/VolumeRecord;

    #@8d
    .line 1337
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v3, :cond_5

    #@8f
    .line 1338
    new-instance v3, Landroid/os/storage/VolumeRecord;

    #@91
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@93
    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@95
    invoke-direct {v3, v6, v7}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    #@98
    .line 1339
    .restart local v3    # "rec":Landroid/os/storage/VolumeRecord;
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    #@9a
    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@9c
    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9f
    move-result-wide v6

    #@a0
    iput-wide v6, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@a2
    .line 1341
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@a4
    const/4 v7, 0x1

    #@a5
    if-ne v6, v7, :cond_4

    #@a7
    .line 1342
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@a9
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    #@ac
    move-result-object v6

    #@ad
    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@af
    .line 1344
    :cond_4
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@b1
    iget-object v7, v3, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@b3
    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 1345
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 1348
    :cond_5
    iget-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@bd
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c0
    move-result v6

    #@c1
    if-eqz v6, :cond_0

    #@c3
    .line 1349
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    #@c5
    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@c7
    .line 1350
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@ca
    goto/16 :goto_0

    #@cc
    .line 1387
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    .restart local v1    # "newStateEnv":Ljava/lang/String;
    .restart local v2    # "oldStateEnv":Ljava/lang/String;
    :cond_6
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@ce
    if-nez v6, :cond_7

    #@d0
    iget v6, p1, Landroid/os/storage/VolumeInfo;->state:I

    #@d2
    const/4 v7, 0x5

    #@d3
    if-ne v6, v7, :cond_7

    #@d5
    .line 1394
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@d7
    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@d9
    .line 1395
    iget-object v8, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@db
    const/4 v9, 0x5

    #@dc
    .line 1394
    invoke-virtual {v7, v9, v8}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@df
    move-result-object v7

    #@e0
    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    #@e3
    .line 1332
    :cond_7
    return-void
.end method

.method private readSettingsLocked()V
    .locals 13

    #@0
    .prologue
    .line 1563
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    #@5
    .line 1564
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    #@8
    move-result-object v11

    #@9
    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@b
    .line 1565
    const/4 v11, 0x0

    #@c
    iput-boolean v11, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@e
    .line 1567
    const/4 v3, 0x0

    #@f
    .line 1569
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@11
    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@14
    move-result-object v3

    #@15
    .line 1570
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@18
    move-result-object v4

    #@19
    .line 1571
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1b
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1e
    move-result-object v11

    #@1f
    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@22
    .line 1574
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@25
    move-result v8

    #@26
    .local v8, "type":I
    const/4 v11, 0x1

    #@27
    if-eq v8, v11, :cond_6

    #@29
    .line 1575
    const/4 v11, 0x2

    #@2a
    if-ne v8, v11, :cond_0

    #@2c
    .line 1576
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    .line 1577
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v11, "volumes"

    #@33
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v11

    #@37
    if-eqz v11, :cond_5

    #@39
    .line 1578
    const-string/jumbo v11, "version"

    #@3c
    const/4 v12, 0x1

    #@3d
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@40
    move-result v10

    #@41
    .line 1580
    .local v10, "version":I
    const-string/jumbo v11, "ro.vold.primary_physical"

    #@44
    const/4 v12, 0x0

    #@45
    .line 1579
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@48
    move-result v5

    #@49
    .line 1581
    .local v5, "primaryPhysical":Z
    const/4 v11, 0x3

    #@4a
    if-ge v10, v11, :cond_3

    #@4c
    .line 1582
    const/4 v11, 0x2

    #@4d
    if-lt v10, v11, :cond_1

    #@4f
    if-eqz v5, :cond_4

    #@51
    :cond_1
    const/4 v9, 0x0

    #@52
    .line 1583
    .local v9, "validAttr":Z
    :goto_1
    if-eqz v9, :cond_2

    #@54
    .line 1585
    const-string/jumbo v11, "primaryStorageUuid"

    #@57
    .line 1584
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v11

    #@5b
    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@5d
    .line 1587
    :cond_2
    const-string/jumbo v11, "forceAdoptable"

    #@60
    const/4 v12, 0x0

    #@61
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@64
    move-result v11

    #@65
    iput-boolean v11, p0, Lcom/android/server/MountService;->mForceAdoptable:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    goto :goto_0

    #@68
    .line 1595
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "primaryPhysical":Z
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "validAttr":Z
    .end local v10    # "version":I
    :catch_0
    move-exception v0

    #@69
    .line 1602
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6c
    .line 1562
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    #@6d
    .line 1581
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "primaryPhysical":Z
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v10    # "version":I
    :cond_3
    const/4 v9, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 1582
    :cond_4
    const/4 v9, 0x1

    #@70
    goto :goto_1

    #@71
    .line 1589
    .end local v5    # "primaryPhysical":Z
    .end local v10    # "version":I
    :cond_5
    :try_start_1
    const-string/jumbo v11, "volume"

    #@74
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v11

    #@78
    if-eqz v11, :cond_0

    #@7a
    .line 1590
    invoke-static {v4}, Lcom/android/server/MountService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    #@7d
    move-result-object v6

    #@7e
    .line 1591
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@80
    iget-object v12, v6, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@82
    invoke-virtual {v11, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@85
    goto :goto_0

    #@86
    .line 1597
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v1

    #@87
    .line 1598
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v11, "MountService"

    #@8a
    const-string/jumbo v12, "Failed reading metadata"

    #@8d
    invoke-static {v11, v12, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@90
    .line 1602
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@93
    goto :goto_2

    #@94
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@97
    goto :goto_2

    #@98
    .line 1599
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_2
    move-exception v2

    #@99
    .line 1600
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string/jumbo v11, "MountService"

    #@9c
    const-string/jumbo v12, "Failed reading metadata"

    #@9f
    invoke-static {v11, v12, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a2
    .line 1602
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a5
    goto :goto_2

    #@a6
    .line 1601
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v11

    #@a7
    .line 1602
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@aa
    .line 1601
    throw v11
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .locals 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1635
    const-string/jumbo v3, "type"

    #@3
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@6
    move-result v2

    #@7
    .line 1636
    .local v2, "type":I
    const-string/jumbo v3, "fsUuid"

    #@a
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1637
    .local v0, "fsUuid":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/VolumeRecord;

    #@10
    invoke-direct {v1, v2, v0}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    #@13
    .line 1638
    .local v1, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    #@16
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@1c
    .line 1639
    const-string/jumbo v3, "nickname"

    #@1f
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@25
    .line 1640
    const-string/jumbo v3, "userFlags"

    #@28
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@2b
    move-result v3

    #@2c
    iput v3, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@2e
    .line 1641
    const-string/jumbo v3, "createdMillis"

    #@31
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@34
    move-result-wide v4

    #@35
    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@37
    .line 1642
    const-string/jumbo v3, "lastTrimMillis"

    #@3a
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@3d
    move-result-wide v4

    #@3e
    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    #@40
    .line 1643
    const-string/jumbo v3, "lastBenchMillis"

    #@43
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@46
    move-result-wide v4

    #@47
    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    #@49
    .line 1644
    return-object v1
.end method

.method private remountUidExternalStorage(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 1936
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@3
    .line 1938
    const-string/jumbo v1, "none"

    #@6
    .line 1939
    .local v1, "modeName":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    #@9
    .line 1954
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    const-string/jumbo v3, "volume"

    #@e
    const/4 v4, 0x3

    #@f
    new-array v4, v4, [Ljava/lang/Object;

    #@11
    const-string/jumbo v5, "remount_uid"

    #@14
    const/4 v6, 0x0

    #@15
    aput-object v5, v4, v6

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v5

    #@1b
    const/4 v6, 0x1

    #@1c
    aput-object v5, v4, v6

    #@1e
    const/4 v5, 0x2

    #@1f
    aput-object v1, v4, v5

    #@21
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 1935
    :goto_1
    return-void

    #@25
    .line 1941
    :pswitch_0
    const-string/jumbo v1, "default"

    #@28
    goto :goto_0

    #@29
    .line 1945
    :pswitch_1
    const-string/jumbo v1, "read"

    #@2c
    goto :goto_0

    #@2d
    .line 1949
    :pswitch_2
    const-string/jumbo v1, "write"

    #@30
    goto :goto_0

    #@31
    .line 1955
    :catch_0
    move-exception v0

    #@32
    .line 1956
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v2, "MountService"

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "Failed to remount UID "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    const-string/jumbo v4, " as "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    const-string/jumbo v4, ": "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    goto :goto_1

    #@63
    .line 1939
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    #@0
    .prologue
    .line 3159
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 3160
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@6
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/util/List;

    #@c
    .line 3161
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    #@e
    .line 3162
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 3163
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    #@17
    .line 3165
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 3166
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@1f
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 3170
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@24
    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@26
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 3158
    return-void
.end method

.method private resetIfReadyAndConnected()V
    .locals 13

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 880
    const-string/jumbo v6, "MountService"

    #@4
    new-instance v8, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v9, "Thinking about reset, mSystemReady="

    #@c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v8

    #@10
    iget-boolean v9, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15
    move-result-object v8

    #@16
    .line 881
    const-string/jumbo v9, ", mDaemonConnected="

    #@19
    .line 880
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v8

    #@1d
    .line 881
    iget-boolean v9, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@1f
    .line 880
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 882
    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@2c
    if-eqz v6, :cond_0

    #@2e
    iget-boolean v6, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@30
    if-eqz v6, :cond_0

    #@32
    .line 883
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@34
    const-class v8, Landroid/os/UserManager;

    #@36
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Landroid/os/UserManager;

    #@3c
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@3f
    move-result-object v5

    #@40
    .line 884
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0, v5}, Lcom/android/server/MountService;->killMediaProvider(Ljava/util/List;)V

    #@43
    .line 887
    iget-object v8, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@45
    monitor-enter v8

    #@46
    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    #@48
    .line 890
    .local v1, "systemUnlockedUsers":[I
    iget-object v6, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@4a
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    #@4d
    .line 891
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@4f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    #@52
    .line 893
    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolumeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    monitor-exit v8

    #@56
    .line 897
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@58
    const-string/jumbo v8, "volume"

    #@5b
    const/4 v9, 0x1

    #@5c
    new-array v9, v9, [Ljava/lang/Object;

    #@5e
    const-string/jumbo v10, "reset"

    #@61
    const/4 v11, 0x0

    #@62
    aput-object v10, v9, v11

    #@64
    invoke-virtual {v6, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@67
    .line 900
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v3

    #@6b
    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_1

    #@71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v2

    #@75
    check-cast v2, Landroid/content/pm/UserInfo;

    #@77
    .line 901
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@79
    const-string/jumbo v8, "volume"

    #@7c
    const/4 v9, 0x3

    #@7d
    new-array v9, v9, [Ljava/lang/Object;

    #@7f
    const-string/jumbo v10, "user_added"

    #@82
    const/4 v11, 0x0

    #@83
    aput-object v10, v9, v11

    #@85
    iget v10, v2, Landroid/content/pm/UserInfo;->id:I

    #@87
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8a
    move-result-object v10

    #@8b
    const/4 v11, 0x1

    #@8c
    aput-object v10, v9, v11

    #@8e
    iget v10, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    #@90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@93
    move-result-object v10

    #@94
    const/4 v11, 0x2

    #@95
    aput-object v10, v9, v11

    #@97
    invoke-virtual {v6, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@9a
    goto :goto_0

    #@9b
    .line 906
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    #@9c
    .line 907
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v6, "MountService"

    #@9f
    const-string/jumbo v7, "Failed to reset vold"

    #@a2
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a5
    .line 879
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "systemUnlockedUsers":[I
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    return-void

    #@a6
    .line 887
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    #@a7
    monitor-exit v8

    #@a8
    throw v6

    #@a9
    .line 903
    .restart local v1    # "systemUnlockedUsers":[I
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    array-length v8, v1

    #@aa
    move v6, v7

    #@ab
    :goto_1
    if-ge v6, v8, :cond_0

    #@ad
    aget v4, v1, v6

    #@af
    .line 904
    .local v4, "userId":I
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@b1
    const-string/jumbo v9, "volume"

    #@b4
    const/4 v10, 0x2

    #@b5
    new-array v10, v10, [Ljava/lang/Object;

    #@b7
    const-string/jumbo v11, "user_started"

    #@ba
    const/4 v12, 0x0

    #@bb
    aput-object v11, v10, v12

    #@bd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c0
    move-result-object v11

    #@c1
    const/4 v12, 0x1

    #@c2
    aput-object v11, v10, v12

    #@c4
    invoke-virtual {v7, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    #@c7
    .line 903
    add-int/lit8 v6, v6, 0x1

    #@c9
    goto :goto_1
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 365
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 366
    const-string/jumbo v1, "internal"

    #@11
    return-object v1

    #@12
    .line 368
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    #@15
    move-result-object v0

    #@16
    .line 369
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_1

    #@18
    iget-wide v2, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@1a
    const-wide/16 v4, 0x0

    #@1c
    cmp-long v1, v2, v4

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 370
    :cond_1
    const-string/jumbo v1, "unknown"

    #@23
    return-object v1

    #@24
    .line 372
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "ext:"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@33
    move-result-wide v2

    #@34
    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@36
    sub-long/2addr v2, v4

    #@37
    .line 373
    const-wide/32 v4, 0x240c8400

    #@3a
    .line 372
    div-long/2addr v2, v4

    #@3b
    long-to-int v2, v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 373
    const-string/jumbo v2, "w"

    #@43
    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    return-object v1
.end method

.method private shouldBenchmark()Z
    .locals 14

    #@0
    .prologue
    .line 389
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v7

    #@6
    .line 390
    const-string/jumbo v8, "storage_benchmark_interval"

    #@9
    const-wide/32 v10, 0x240c8400

    #@c
    .line 389
    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@f
    move-result-wide v2

    #@10
    .line 391
    .local v2, "benchInterval":J
    const-wide/16 v8, -0x1

    #@12
    cmp-long v7, v2, v8

    #@14
    if-nez v7, :cond_0

    #@16
    .line 392
    const/4 v7, 0x0

    #@17
    return v7

    #@18
    .line 393
    :cond_0
    const-wide/16 v8, 0x0

    #@1a
    cmp-long v7, v2, v8

    #@1c
    if-nez v7, :cond_1

    #@1e
    .line 394
    const/4 v7, 0x1

    #@1f
    return v7

    #@20
    .line 397
    :cond_1
    iget-object v8, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@22
    monitor-enter v8

    #@23
    .line 398
    const/4 v4, 0x0

    #@24
    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@26
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@29
    move-result v7

    #@2a
    if-ge v4, v7, :cond_3

    #@2c
    .line 399
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@2e
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@31
    move-result-object v6

    #@32
    check-cast v6, Landroid/os/storage/VolumeInfo;

    #@34
    .line 400
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@36
    iget-object v9, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@38
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    check-cast v5, Landroid/os/storage/VolumeRecord;

    #@3e
    .line 401
    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    #@41
    move-result v7

    #@42
    if-eqz v7, :cond_2

    #@44
    if-eqz v5, :cond_2

    #@46
    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@49
    move-result-wide v10

    #@4a
    iget-wide v12, v5, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    sub-long v0, v10, v12

    #@4e
    .line 403
    .local v0, "benchAge":J
    cmp-long v7, v0, v2

    #@50
    if-ltz v7, :cond_2

    #@52
    .line 404
    const/4 v7, 0x1

    #@53
    monitor-exit v8

    #@54
    return v7

    #@55
    .line 398
    .end local v0    # "benchAge":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@57
    goto :goto_0

    #@58
    .line 408
    .end local v5    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    const/4 v7, 0x0

    #@59
    monitor-exit v8

    #@5a
    return v7

    #@5b
    .line 397
    :catchall_0
    move-exception v7

    #@5c
    monitor-exit v8

    #@5d
    throw v7
.end method

.method private start()V
    .locals 1

    #@0
    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectorThread:Ljava/lang/Thread;

    #@2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@5
    .line 1542
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnectorThread:Ljava/lang/Thread;

    #@7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@a
    .line 1540
    return-void
.end method

.method private systemReady()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1546
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@3
    .line 1547
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1545
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 4
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;

    #@0
    .prologue
    .line 767
    const-wide/16 v2, -0x1

    #@2
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 765
    :goto_0
    return-void

    #@6
    .line 768
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/util/concurrent/TimeoutException;
    goto :goto_0
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .locals 9
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 777
    .local v2, "startMillis":J
    :cond_0
    const-wide/16 v4, 0x1388

    #@6
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@8
    invoke-virtual {p1, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 778
    return-void

    #@f
    .line 780
    :cond_1
    const-string/jumbo v1, "MountService"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Thread "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    .line 781
    const-string/jumbo v5, " still waiting for "

    #@2d
    .line 780
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    .line 781
    const-string/jumbo v5, "..."

    #@38
    .line 780
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 786
    :goto_0
    const-wide/16 v4, 0x0

    #@45
    cmp-long v1, p3, v4

    #@47
    if-lez v1, :cond_0

    #@49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4c
    move-result-wide v4

    #@4d
    add-long v6, v2, p3

    #@4f
    cmp-long v1, v4, v6

    #@51
    if-lez v1, :cond_0

    #@53
    .line 787
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    #@55
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "Thread "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    .line 788
    const-string/jumbo v5, " gave up waiting for "

    #@70
    .line 787
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    .line 788
    const-string/jumbo v5, " after "

    #@7b
    .line 787
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    .line 788
    const-string/jumbo v5, "ms"

    #@86
    .line 787
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-direct {v1, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    #@91
    throw v1

    #@92
    .line 783
    :catch_0
    move-exception v0

    #@93
    .line 784
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "MountService"

    #@96
    new-instance v4, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v5, "Interrupt while waiting for "

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v4

    #@aa
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    goto :goto_0
.end method

.method private waitForReady()V
    .locals 2

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@2
    const-string/jumbo v1, "mConnectedSignal"

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    #@8
    .line 761
    return-void
.end method

.method private warnOnNotMounted()V
    .locals 4

    #@0
    .prologue
    .line 2109
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 2110
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_1

    #@c
    .line 2111
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/storage/VolumeInfo;

    #@14
    .line 2112
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    monitor-exit v3

    #@21
    .line 2114
    return-void

    #@22
    .line 2110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    #@26
    .line 2119
    const-string/jumbo v2, "MountService"

    #@29
    const-string/jumbo v3, "No primary storage mounted!"

    #@2c
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 2108
    return-void

    #@30
    .line 2109
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2
.end method

.method private writeSettingsLocked()V
    .locals 8

    #@0
    .prologue
    .line 1607
    const/4 v1, 0x0

    #@1
    .line 1609
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@3
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@6
    move-result-object v1

    #@7
    .line 1611
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 1612
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@e
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@15
    .line 1613
    const/4 v6, 0x1

    #@16
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@19
    move-result-object v6

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1e
    .line 1614
    const-string/jumbo v6, "volumes"

    #@21
    const/4 v7, 0x0

    #@22
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 1615
    const-string/jumbo v6, "version"

    #@28
    const/4 v7, 0x3

    #@29
    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2c
    .line 1616
    const-string/jumbo v6, "primaryStorageUuid"

    #@2f
    iget-object v7, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@31
    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 1617
    const-string/jumbo v6, "forceAdoptable"

    #@37
    iget-boolean v7, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@39
    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@3c
    .line 1618
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@41
    move-result v5

    #@42
    .line 1619
    .local v5, "size":I
    const/4 v2, 0x0

    #@43
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    #@45
    .line 1620
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@47
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Landroid/os/storage/VolumeRecord;

    #@4d
    .line 1621
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v3, v4}, Lcom/android/server/MountService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    #@50
    .line 1619
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1623
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_0
    const-string/jumbo v6, "volumes"

    #@56
    const/4 v7, 0x0

    #@57
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5a
    .line 1624
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@5d
    .line 1626
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@5f
    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 1606
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    :cond_1
    :goto_1
    return-void

    #@63
    .line 1627
    :catch_0
    move-exception v0

    #@64
    .line 1628
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    #@66
    .line 1629
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@68
    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@6b
    goto :goto_1
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .locals 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1648
    const-string/jumbo v0, "volume"

    #@4
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1649
    const-string/jumbo v0, "type"

    #@a
    iget v1, p1, Landroid/os/storage/VolumeRecord;->type:I

    #@c
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@f
    .line 1650
    const-string/jumbo v0, "fsUuid"

    #@12
    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@14
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 1651
    const-string/jumbo v0, "partGuid"

    #@1a
    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@1c
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 1652
    const-string/jumbo v0, "nickname"

    #@22
    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@24
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 1653
    const-string/jumbo v0, "userFlags"

    #@2a
    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@2c
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2f
    .line 1654
    const-string/jumbo v0, "createdMillis"

    #@32
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@34
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@37
    .line 1655
    const-string/jumbo v0, "lastTrimMillis"

    #@3a
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    #@3c
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@3f
    .line 1656
    const-string/jumbo v0, "lastBenchMillis"

    #@42
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    #@44
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@47
    .line 1657
    const-string/jumbo v0, "volume"

    #@4a
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 1647
    return-void
.end method


# virtual methods
.method public addUserKeyAuth(II[B[B)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    #@0
    .prologue
    .line 2833
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2834
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2837
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    const-string/jumbo v2, "cryptfs"

    #@e
    const/4 v3, 0x5

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    const-string/jumbo v4, "add_user_key_auth"

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object v4, v3, v5

    #@1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    const/4 v5, 0x2

    #@23
    aput-object v4, v3, v5

    #@25
    .line 2838
    invoke-direct {p0, p3}, Lcom/android/server/MountService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@28
    move-result-object v4

    #@29
    const/4 v5, 0x3

    #@2a
    aput-object v4, v3, v5

    #@2c
    invoke-direct {p0, p4}, Lcom/android/server/MountService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@2f
    move-result-object v4

    #@30
    const/4 v5, 0x4

    #@31
    aput-object v4, v3, v5

    #@33
    .line 2837
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 2832
    return-void

    #@37
    .line 2839
    :catch_0
    move-exception v0

    #@38
    .line 2840
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3b
    move-result-object v1

    #@3c
    throw v1
.end method

.method public benchmark(Ljava/lang/String;)J
    .locals 8
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1784
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1785
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1789
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    .line 1790
    const-string/jumbo v4, "volume"

    #@e
    .line 1789
    const/4 v5, 0x2

    #@f
    new-array v5, v5, [Ljava/lang/Object;

    #@11
    .line 1790
    const-string/jumbo v6, "benchmark"

    #@14
    const/4 v7, 0x0

    #@15
    aput-object v6, v5, v7

    #@17
    const/4 v6, 0x1

    #@18
    aput-object p1, v5, v6

    #@1a
    .line 1789
    const-wide/32 v6, 0x2bf20

    #@1d
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@20
    move-result-object v2

    #@21
    .line 1791
    .local v2, "res":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/android/server/NativeDaemonTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-wide v4

    #@29
    return-wide v4

    #@2a
    .line 1794
    .end local v2    # "res":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@2b
    .line 1795
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v3

    #@2f
    throw v3

    #@30
    .line 1792
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v1

    #@31
    .line 1793
    .local v1, "e":Lcom/android/server/NativeDaemonTimeoutException;
    const-wide v4, 0x7fffffffffffffffL

    #@36
    return-wide v4
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2604
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    #@5
    .line 2605
    const-string/jumbo v4, "no permission to access the crypt keeper"

    #@8
    .line 2604
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2607
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@e
    .line 2614
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@10
    const-string/jumbo v3, "cryptfs"

    #@13
    const/4 v4, 0x3

    #@14
    new-array v4, v4, [Ljava/lang/Object;

    #@16
    const-string/jumbo v5, "changepw"

    #@19
    const/4 v6, 0x0

    #@1a
    aput-object v5, v4, v6

    #@1c
    sget-object v5, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@1e
    aget-object v5, v5, p1

    #@20
    const/4 v6, 0x1

    #@21
    aput-object v5, v4, v6

    #@23
    .line 2615
    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@25
    invoke-direct {v5, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@28
    const/4 v6, 0x2

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 2614
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@2e
    move-result-object v1

    #@2f
    .line 2616
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result v2

    #@37
    return v2

    #@38
    .line 2617
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@39
    .line 2619
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@3c
    move-result v2

    #@3d
    return v2
.end method

.method public clearPassword()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2776
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.STORAGE_INTERNAL"

    #@5
    .line 2777
    const-string/jumbo v4, "only keyguard can clear password"

    #@8
    .line 2776
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2779
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 2780
    return-void

    #@12
    .line 2785
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@14
    const-string/jumbo v3, "cryptfs"

    #@17
    const/4 v4, 0x1

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    const-string/jumbo v5, "clearpw"

    #@1d
    const/4 v6, 0x0

    #@1e
    aput-object v5, v4, v6

    #@20
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v1

    #@24
    .line 2775
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    #@25
    .line 2786
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@26
    .line 2787
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@29
    move-result-object v2

    #@2a
    throw v2
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    #@0
    .prologue
    .line 2137
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2138
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2139
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2141
    const/4 v1, 0x0

    #@d
    .line 2143
    .local v1, "rc":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v4, "asec"

    #@12
    const/4 v2, 0x7

    #@13
    new-array v5, v2, [Ljava/lang/Object;

    #@15
    const-string/jumbo v2, "create"

    #@18
    const/4 v6, 0x0

    #@19
    aput-object v2, v5, v6

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object p1, v5, v2

    #@1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    const/4 v6, 0x2

    #@23
    aput-object v2, v5, v6

    #@25
    const/4 v2, 0x3

    #@26
    aput-object p3, v5, v2

    #@28
    new-instance v2, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@2a
    invoke-direct {v2, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@2d
    const/4 v6, 0x4

    #@2e
    aput-object v2, v5, v6

    #@30
    .line 2144
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v2

    #@34
    const/4 v6, 0x5

    #@35
    aput-object v2, v5, v6

    #@37
    if-eqz p6, :cond_1

    #@39
    const-string/jumbo v2, "1"

    #@3c
    :goto_0
    const/4 v6, 0x6

    #@3d
    aput-object v2, v5, v6

    #@3f
    .line 2143
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 2149
    :goto_1
    if-nez v1, :cond_0

    #@44
    .line 2150
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@46
    monitor-enter v3

    #@47
    .line 2151
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@49
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    monitor-exit v3

    #@4d
    .line 2154
    :cond_0
    return v1

    #@4e
    .line 2144
    :cond_1
    :try_start_2
    const-string/jumbo v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    #@51
    goto :goto_0

    #@52
    .line 2145
    :catch_0
    move-exception v0

    #@53
    .line 2146
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    #@54
    goto :goto_1

    #@55
    .line 2150
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v2

    #@56
    monitor-exit v3

    #@57
    throw v2
.end method

.method public createUserKey(IIZ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "ephemeral"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2793
    const-string/jumbo v3, "android.permission.STORAGE_INTERNAL"

    #@5
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@8
    .line 2794
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@b
    .line 2797
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v4, "cryptfs"

    #@10
    const/4 v5, 0x4

    #@11
    new-array v5, v5, [Ljava/lang/Object;

    #@13
    const-string/jumbo v6, "create_user_key"

    #@16
    const/4 v7, 0x0

    #@17
    aput-object v6, v5, v7

    #@19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v6

    #@1d
    const/4 v7, 0x1

    #@1e
    aput-object v6, v5, v7

    #@20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v6

    #@24
    const/4 v7, 0x2

    #@25
    aput-object v6, v5, v7

    #@27
    .line 2798
    if-eqz p3, :cond_0

    #@29
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v1

    #@2d
    const/4 v2, 0x3

    #@2e
    aput-object v1, v5, v2

    #@30
    .line 2797
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 2792
    return-void

    #@34
    :cond_0
    move v1, v2

    #@35
    .line 2798
    goto :goto_0

    #@36
    .line 2799
    :catch_0
    move-exception v0

    #@37
    .line 2800
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3a
    move-result-object v1

    #@3b
    throw v1
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2530
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 2531
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "password cannot be empty"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 2534
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@11
    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    #@14
    .line 2535
    const-string/jumbo v5, "no permission to access the crypt keeper"

    #@17
    .line 2534
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2537
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@1d
    .line 2545
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@1f
    const-string/jumbo v4, "cryptfs"

    #@22
    const/4 v5, 0x2

    #@23
    new-array v5, v5, [Ljava/lang/Object;

    #@25
    const-string/jumbo v6, "checkpw"

    #@28
    const/4 v7, 0x0

    #@29
    aput-object v6, v5, v7

    #@2b
    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@2d
    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@30
    const/4 v7, 0x1

    #@31
    aput-object v6, v5, v7

    #@33
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@36
    move-result-object v2

    #@37
    .line 2547
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    .line 2548
    .local v0, "code":I
    if-nez v0, :cond_1

    #@41
    .line 2551
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@43
    new-instance v4, Lcom/android/server/MountService$2;

    #@45
    invoke-direct {v4, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    #@48
    .line 2559
    const-wide/16 v6, 0x3e8

    #@4a
    .line 2551
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 2562
    :cond_1
    return v0

    #@4e
    .line 2563
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@4f
    .line 2565
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@52
    move-result v3

    #@53
    return v3
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 2207
    const-string/jumbo v4, "android.permission.ASEC_DESTROY"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2208
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2209
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2217
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    #@13
    .line 2219
    const/4 v3, 0x0

    #@14
    .line 2221
    .local v3, "rc":I
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@16
    const-string/jumbo v4, "asec"

    #@19
    const/4 v5, 0x2

    #@1a
    new-array v5, v5, [Ljava/lang/Object;

    #@1c
    const-string/jumbo v6, "destroy"

    #@1f
    const/4 v7, 0x0

    #@20
    aput-object v6, v5, v7

    #@22
    const/4 v6, 0x1

    #@23
    aput-object p1, v5, v6

    #@25
    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@28
    .line 2222
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    #@2a
    .line 2223
    const-string/jumbo v4, "force"

    #@2d
    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@30
    .line 2225
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@32
    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 2235
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    #@37
    .line 2236
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@39
    monitor-enter v5

    #@3a
    .line 2237
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@3c
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_1

    #@42
    .line 2238
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@44
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    :cond_1
    monitor-exit v5

    #@48
    .line 2243
    :cond_2
    return v3

    #@49
    .line 2226
    :catch_0
    move-exception v2

    #@4a
    .line 2227
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@4d
    move-result v1

    #@4e
    .line 2228
    .local v1, "code":I
    const/16 v4, 0x195

    #@50
    if-ne v1, v4, :cond_3

    #@52
    .line 2229
    const/4 v3, -0x7

    #@53
    goto :goto_0

    #@54
    .line 2231
    :cond_3
    const/4 v3, -0x1

    #@55
    goto :goto_0

    #@56
    .line 2236
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    #@57
    monitor-exit v5

    #@58
    throw v4
.end method

.method public destroyUserKey(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2806
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2807
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2810
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    const-string/jumbo v2, "cryptfs"

    #@e
    const/4 v3, 0x2

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    const-string/jumbo v4, "destroy_user_key"

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object v4, v3, v5

    #@1e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 2805
    return-void

    #@22
    .line 2811
    :catch_0
    move-exception v0

    #@23
    .line 2812
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@26
    move-result-object v1

    #@27
    throw v1
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 2922
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2923
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2926
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    const-string/jumbo v2, "cryptfs"

    #@e
    const/4 v3, 0x4

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    const-string/jumbo v4, "destroy_user_storage"

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-static {p1}, Lcom/android/server/MountService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object v4, v3, v5

    #@1e
    .line 2927
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    const/4 v5, 0x2

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v4

    #@29
    const/4 v5, 0x3

    #@2a
    aput-object v4, v3, v5

    #@2c
    .line 2926
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 2921
    return-void

    #@30
    .line 2928
    :catch_0
    move-exception v0

    #@31
    .line 2929
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@34
    move-result-object v1

    #@35
    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3690
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v15, "android.permission.DUMP"

    #@7
    const-string/jumbo v16, "MountService"

    #@a
    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 3692
    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    #@f
    const-string/jumbo v14, "  "

    #@12
    const/16 v15, 0xa0

    #@14
    move-object/from16 v0, p2

    #@16
    invoke-direct {v12, v0, v14, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    #@19
    .line 3693
    .local v12, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@1b
    iget-object v15, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@1d
    monitor-enter v15

    #@1e
    .line 3694
    :try_start_0
    const-string/jumbo v14, "Disks:"

    #@21
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 3695
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@27
    .line 3696
    const/4 v6, 0x0

    #@28
    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@2a
    iget-object v14, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@2f
    move-result v14

    #@30
    if-ge v6, v14, :cond_0

    #@32
    .line 3697
    move-object/from16 v0, p0

    #@34
    iget-object v14, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@36
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Landroid/os/storage/DiskInfo;

    #@3c
    .line 3698
    .local v3, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v3, v12}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3f
    .line 3696
    add-int/lit8 v6, v6, 0x1

    #@41
    goto :goto_0

    #@42
    .line 3700
    .end local v3    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@45
    .line 3702
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@48
    .line 3703
    const-string/jumbo v14, "Volumes:"

    #@4b
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 3704
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@51
    .line 3705
    const/4 v6, 0x0

    #@52
    :goto_1
    move-object/from16 v0, p0

    #@54
    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@56
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@59
    move-result v14

    #@5a
    if-ge v6, v14, :cond_2

    #@5c
    .line 3706
    move-object/from16 v0, p0

    #@5e
    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@60
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@63
    move-result-object v13

    #@64
    check-cast v13, Landroid/os/storage/VolumeInfo;

    #@66
    .line 3707
    .local v13, "vol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v14, "private"

    #@69
    iget-object v0, v13, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@6b
    move-object/from16 v16, v0

    #@6d
    move-object/from16 v0, v16

    #@6f
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v14

    #@73
    if-eqz v14, :cond_1

    #@75
    .line 3705
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@77
    goto :goto_1

    #@78
    .line 3708
    :cond_1
    invoke-virtual {v13, v12}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    goto :goto_2

    #@7c
    .line 3693
    .end local v6    # "i":I
    .end local v13    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v14

    #@7d
    monitor-exit v15

    #@7e
    throw v14

    #@7f
    .line 3710
    .restart local v6    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@82
    .line 3712
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@85
    .line 3713
    const-string/jumbo v14, "Records:"

    #@88
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 3714
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@8e
    .line 3715
    const/4 v6, 0x0

    #@8f
    :goto_3
    move-object/from16 v0, p0

    #@91
    iget-object v14, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@93
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    #@96
    move-result v14

    #@97
    if-ge v6, v14, :cond_3

    #@99
    .line 3716
    move-object/from16 v0, p0

    #@9b
    iget-object v14, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@9d
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a0
    move-result-object v8

    #@a1
    check-cast v8, Landroid/os/storage/VolumeRecord;

    #@a3
    .line 3717
    .local v8, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v8, v12}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@a6
    .line 3715
    add-int/lit8 v6, v6, 0x1

    #@a8
    goto :goto_3

    #@a9
    .line 3719
    .end local v8    # "note":Landroid/os/storage/VolumeRecord;
    :cond_3
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@ac
    .line 3721
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@af
    .line 3722
    new-instance v14, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v16, "Primary storage UUID: "

    #@b7
    move-object/from16 v0, v16

    #@b9
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v14

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@c1
    move-object/from16 v16, v0

    #@c3
    move-object/from16 v0, v16

    #@c5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v14

    #@c9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v14

    #@cd
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@d0
    .line 3723
    new-instance v14, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v16, "Force adoptable: "

    #@d8
    move-object/from16 v0, v16

    #@da
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v14

    #@de
    move-object/from16 v0, p0

    #@e0
    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@e2
    move/from16 v16, v0

    #@e4
    move/from16 v0, v16

    #@e6
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v14

    #@ea
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v14

    #@ee
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@f1
    .line 3724
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@f4
    .line 3725
    new-instance v14, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v16, "Local unlocked users: "

    #@fc
    move-object/from16 v0, v16

    #@fe
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v14

    #@102
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    #@106
    move-object/from16 v16, v0

    #@108
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@10b
    move-result-object v16

    #@10c
    move-object/from16 v0, v16

    #@10e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v14

    #@112
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v14

    #@116
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@119
    .line 3726
    new-instance v14, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    const-string/jumbo v16, "System unlocked users: "

    #@121
    move-object/from16 v0, v16

    #@123
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v14

    #@127
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Lcom/android/server/MountService;->mSystemUnlockedUsers:[I

    #@12b
    move-object/from16 v16, v0

    #@12d
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@130
    move-result-object v16

    #@131
    move-object/from16 v0, v16

    #@133
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v14

    #@137
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v14

    #@13b
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13e
    monitor-exit v15

    #@13f
    .line 3729
    move-object/from16 v0, p0

    #@141
    iget-object v15, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@143
    monitor-enter v15

    #@144
    .line 3730
    :try_start_2
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@147
    .line 3731
    const-string/jumbo v14, "mObbMounts:"

    #@14a
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@14d
    .line 3732
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@150
    .line 3733
    move-object/from16 v0, p0

    #@152
    iget-object v14, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@154
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@157
    move-result-object v14

    #@158
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@15b
    move-result-object v2

    #@15c
    .line 3735
    .local v2, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15f
    move-result v14

    #@160
    if-eqz v14, :cond_5

    #@162
    .line 3736
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@165
    move-result-object v4

    #@166
    check-cast v4, Ljava/util/Map$Entry;

    #@168
    .line 3737
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@170
    move-result-object v16

    #@171
    move-object/from16 v0, v16

    #@173
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v14

    #@177
    const-string/jumbo v16, ":"

    #@17a
    move-object/from16 v0, v16

    #@17c
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v14

    #@180
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v14

    #@184
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@187
    .line 3738
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@18a
    .line 3739
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@18d
    move-result-object v11

    #@18e
    check-cast v11, Ljava/util/List;

    #@190
    .line 3740
    .local v11, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@193
    move-result-object v10

    #@194
    .local v10, "obbState$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@197
    move-result v14

    #@198
    if-eqz v14, :cond_4

    #@19a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19d
    move-result-object v9

    #@19e
    check-cast v9, Lcom/android/server/MountService$ObbState;

    #@1a0
    .line 3741
    .local v9, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v12, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1a3
    goto :goto_5

    #@1a4
    .line 3729
    .end local v2    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v9    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v10    # "obbState$iterator":Ljava/util/Iterator;
    .end local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_1
    move-exception v14

    #@1a5
    monitor-exit v15

    #@1a6
    throw v14

    #@1a7
    .line 3743
    .restart local v2    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v10    # "obbState$iterator":Ljava/util/Iterator;
    .restart local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_4
    :try_start_3
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1aa
    goto :goto_4

    #@1ab
    .line 3745
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v10    # "obbState$iterator":Ljava/util/Iterator;
    .end local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_5
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1ae
    .line 3747
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1b1
    .line 3748
    const-string/jumbo v14, "mObbPathToStateMap:"

    #@1b4
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1b7
    .line 3749
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1ba
    .line 3750
    move-object/from16 v0, p0

    #@1bc
    iget-object v14, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@1be
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1c1
    move-result-object v14

    #@1c2
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1c5
    move-result-object v7

    #@1c6
    .line 3751
    .local v7, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1c9
    move-result v14

    #@1ca
    if-eqz v14, :cond_6

    #@1cc
    .line 3752
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cf
    move-result-object v5

    #@1d0
    check-cast v5, Ljava/util/Map$Entry;

    #@1d2
    .line 3753
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d5
    move-result-object v14

    #@1d6
    check-cast v14, Ljava/lang/String;

    #@1d8
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1db
    .line 3754
    const-string/jumbo v14, " -> "

    #@1de
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1e1
    .line 3755
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e4
    move-result-object v14

    #@1e5
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@1e8
    goto :goto_6

    #@1e9
    .line 3757
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_6
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1ec
    monitor-exit v15

    #@1ed
    .line 3760
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1f0
    .line 3761
    const-string/jumbo v14, "mConnector:"

    #@1f3
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1f6
    .line 3762
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1f9
    .line 3763
    move-object/from16 v0, p0

    #@1fb
    iget-object v14, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@1fd
    move-object/from16 v0, p1

    #@1ff
    move-object/from16 v1, p3

    #@201
    invoke-virtual {v14, v0, v12, v1}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@204
    .line 3764
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@207
    .line 3766
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@20a
    .line 3767
    const-string/jumbo v14, "mCryptConnector:"

    #@20d
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@210
    .line 3768
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@213
    .line 3769
    move-object/from16 v0, p0

    #@215
    iget-object v14, v0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@217
    move-object/from16 v0, p1

    #@219
    move-object/from16 v1, p3

    #@21b
    invoke-virtual {v14, v0, v12, v1}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@21e
    .line 3770
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@221
    .line 3772
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@224
    .line 3773
    const-string/jumbo v14, "Last maintenance: "

    #@227
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@22a
    .line 3774
    move-object/from16 v0, p0

    #@22c
    iget-wide v14, v0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@22e
    invoke-static {v14, v15}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    #@231
    move-result-object v14

    #@232
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@235
    .line 3689
    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 2570
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    if-eq p1, v4, :cond_0

    #@a
    .line 2571
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "password cannot be empty"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 2574
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@15
    const-string/jumbo v2, "android.permission.CRYPT_KEEPER"

    #@18
    .line 2575
    const-string/jumbo v3, "no permission to access the crypt keeper"

    #@1b
    .line 2574
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 2577
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@21
    .line 2584
    if-ne p1, v4, :cond_1

    #@23
    .line 2585
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@25
    const-string/jumbo v2, "cryptfs"

    #@28
    const/4 v3, 0x3

    #@29
    new-array v3, v3, [Ljava/lang/Object;

    #@2b
    const-string/jumbo v4, "enablecrypto"

    #@2e
    const/4 v5, 0x0

    #@2f
    aput-object v4, v3, v5

    #@31
    const-string/jumbo v4, "inplace"

    #@34
    const/4 v5, 0x1

    #@35
    aput-object v4, v3, v5

    #@37
    .line 2586
    sget-object v4, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@39
    aget-object v4, v4, p1

    #@3b
    const/4 v5, 0x2

    #@3c
    aput-object v4, v3, v5

    #@3e
    .line 2585
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@41
    .line 2596
    :goto_0
    return v6

    #@42
    .line 2588
    :cond_1
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@44
    const-string/jumbo v2, "cryptfs"

    #@47
    const/4 v3, 0x4

    #@48
    new-array v3, v3, [Ljava/lang/Object;

    #@4a
    const-string/jumbo v4, "enablecrypto"

    #@4d
    const/4 v5, 0x0

    #@4e
    aput-object v4, v3, v5

    #@50
    const-string/jumbo v4, "inplace"

    #@53
    const/4 v5, 0x1

    #@54
    aput-object v4, v3, v5

    #@56
    .line 2589
    sget-object v4, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@58
    aget-object v4, v4, p1

    #@5a
    const/4 v5, 0x2

    #@5b
    aput-object v4, v3, v5

    #@5d
    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@5f
    invoke-direct {v4, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@62
    const/4 v5, 0x3

    #@63
    aput-object v4, v3, v5

    #@65
    .line 2588
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    goto :goto_0

    #@69
    .line 2591
    :catch_0
    move-exception v0

    #@6a
    .line 2593
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@6d
    move-result v1

    #@6e
    return v1
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2173
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2174
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@9
    .line 2176
    const/4 v1, 0x0

    #@a
    .line 2178
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@c
    const-string/jumbo v3, "asec"

    #@f
    const/4 v4, 0x2

    #@10
    new-array v4, v4, [Ljava/lang/Object;

    #@12
    const-string/jumbo v5, "finalize"

    #@15
    const/4 v6, 0x0

    #@16
    aput-object v5, v4, v6

    #@18
    const/4 v5, 0x1

    #@19
    aput-object p1, v4, v5

    #@1b
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 2186
    :goto_0
    return v1

    #@1f
    .line 2183
    :catch_0
    move-exception v0

    #@20
    .line 2184
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    #@21
    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    #@0
    .prologue
    .line 2398
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 2399
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v1, "no permission to call finishMediaUpdate()"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 2401
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2402
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@1a
    .line 2397
    :goto_0
    return-void

    #@1b
    .line 2404
    :cond_1
    const-string/jumbo v0, "MountService"

    #@1e
    const-string/jumbo v1, "Odd, nobody asked to unmount?"

    #@21
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2190
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2191
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@9
    .line 2193
    const/4 v1, 0x0

    #@a
    .line 2195
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@c
    const-string/jumbo v3, "asec"

    #@f
    const/4 v4, 0x4

    #@10
    new-array v4, v4, [Ljava/lang/Object;

    #@12
    const-string/jumbo v5, "fixperms"

    #@15
    const/4 v6, 0x0

    #@16
    aput-object v5, v4, v6

    #@18
    const/4 v5, 0x1

    #@19
    aput-object p1, v4, v5

    #@1b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v5

    #@1f
    const/4 v6, 0x2

    #@20
    aput-object v5, v4, v6

    #@22
    const/4 v5, 0x3

    #@23
    aput-object p3, v4, v5

    #@25
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 2203
    :goto_0
    return v1

    #@29
    .line 2200
    :catch_0
    move-exception v0

    #@2a
    .line 2201
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    #@2b
    goto :goto_0
.end method

.method public fixateNewestUserKeyAuth(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2849
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2850
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2853
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    const-string/jumbo v2, "cryptfs"

    #@e
    const/4 v3, 0x2

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    const-string/jumbo v4, "fixate_newest_user_key_auth"

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object v4, v3, v5

    #@1e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 2848
    return-void

    #@22
    .line 2854
    :catch_0
    move-exception v0

    #@23
    .line 2855
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@26
    move-result-object v1

    #@27
    throw v1
.end method

.method public forgetAllVolumes()V
    .locals 7

    #@0
    .prologue
    .line 1904
    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1905
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1907
    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v4

    #@c
    .line 1908
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@12
    move-result v3

    #@13
    if-ge v1, v3, :cond_1

    #@15
    .line 1909
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/String;

    #@1d
    .line 1910
    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/os/storage/VolumeRecord;

    #@25
    .line 1911
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_0

    #@2d
    .line 1912
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@2f
    iget-object v5, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@31
    const/16 v6, 0x9

    #@33
    invoke-virtual {v3, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@3a
    .line 1914
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@3c
    invoke-static {v3, v0}, Lcom/android/server/MountService$Callbacks;->-wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    #@3f
    .line 1908
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 1916
    .end local v0    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@44
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@47
    .line 1918
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@49
    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@4b
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    if-nez v3, :cond_2

    #@51
    .line 1919
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    iput-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@57
    .line 1922
    :cond_2
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@5a
    .line 1923
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@5c
    const/16 v5, 0xa

    #@5e
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v4

    #@66
    .line 1903
    return-void

    #@67
    .line 1907
    :catchall_0
    move-exception v3

    #@68
    monitor-exit v4

    #@69
    throw v3
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 5
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1879
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1880
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1882
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1884
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeRecord;

    #@17
    .line 1886
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_0

    #@19
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 1889
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@23
    invoke-static {v1, p1}, Lcom/android/server/MountService$Callbacks;->-wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    #@26
    .line 1893
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@28
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 1894
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@34
    .line 1895
    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@36
    const/16 v3, 0xa

    #@38
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@3f
    .line 1898
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit v2

    #@43
    .line 1878
    return-void

    #@44
    .line 1887
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@46
    iget-object v3, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@48
    const/16 v4, 0x9

    #@4a
    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 1884
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    #@53
    monitor-exit v2

    #@54
    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1771
    const-string/jumbo v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1772
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1774
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@c
    move-result-object v1

    #@d
    .line 1776
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v3, "volume"

    #@12
    const/4 v4, 0x3

    #@13
    new-array v4, v4, [Ljava/lang/Object;

    #@15
    const-string/jumbo v5, "format"

    #@18
    const/4 v6, 0x0

    #@19
    aput-object v5, v4, v6

    #@1b
    iget-object v5, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@1d
    const/4 v6, 0x1

    #@1e
    aput-object v5, v4, v6

    #@20
    const-string/jumbo v5, "auto"

    #@23
    const/4 v6, 0x2

    #@24
    aput-object v5, v4, v6

    #@26
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1770
    return-void

    #@2a
    .line 1777
    :catch_0
    move-exception v0

    #@2b
    .line 1778
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v2

    #@2f
    throw v2
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1720
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->format(Ljava/lang/String;)V

    #@7
    .line 1721
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .locals 4

    #@0
    .prologue
    .line 3091
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 3092
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v2

    #@9
    new-array v1, v2, [Landroid/os/storage/DiskInfo;

    #@b
    .line 3093
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@11
    move-result v2

    #@12
    if-ge v0, v2, :cond_0

    #@14
    .line 3094
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/os/storage/DiskInfo;

    #@1c
    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 3093
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_0
    monitor-exit v3

    #@22
    .line 3096
    return-object v1

    #@23
    .line 3091
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/DiskInfo;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method public getEncryptionState()I
    .locals 9

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 2508
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    #@6
    .line 2509
    const-string/jumbo v5, "no permission to access the crypt keeper"

    #@9
    .line 2508
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 2511
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@f
    .line 2515
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@11
    const-string/jumbo v4, "cryptfs"

    #@14
    const/4 v5, 0x1

    #@15
    new-array v5, v5, [Ljava/lang/Object;

    #@17
    const-string/jumbo v6, "cryptocomplete"

    #@1a
    const/4 v7, 0x0

    #@1b
    aput-object v6, v5, v7

    #@1d
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@20
    move-result-object v2

    #@21
    .line 2516
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result v3

    #@29
    return v3

    #@2a
    .line 2521
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@2b
    .line 2523
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v3, "MountService"

    #@2e
    const-string/jumbo v4, "Error in communicating with cryptfs in validating"

    #@31
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 2524
    return v8

    #@35
    .line 2517
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v1

    #@36
    .line 2519
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "MountService"

    #@39
    const-string/jumbo v4, "Unable to parse result from cryptfs cryptocomplete"

    #@3c
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 2520
    return v8
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2709
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v6, "android.permission.STORAGE_INTERNAL"

    #@6
    .line 2710
    const-string/jumbo v7, "no permission to access the crypt keeper"

    #@9
    .line 2709
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 2712
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@f
    .line 2717
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@11
    const-string/jumbo v6, "cryptfs"

    #@14
    const/4 v7, 0x2

    #@15
    new-array v7, v7, [Ljava/lang/Object;

    #@17
    const-string/jumbo v8, "getfield"

    #@1a
    const/4 v9, 0x0

    #@1b
    aput-object v8, v7, v9

    #@1d
    const/4 v8, 0x1

    #@1e
    aput-object p1, v7, v8

    #@20
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@23
    move-result-object v5

    #@24
    .line 2718
    const/16 v6, 0x71

    #@26
    .line 2716
    invoke-static {v5, v6}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 2719
    .local v1, "contents":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    #@2c
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    #@2f
    .line 2720
    .local v3, "result":Ljava/lang/String;
    array-length v5, v1

    #@30
    :goto_0
    if-ge v4, v5, :cond_0

    #@32
    aget-object v0, v1, v4

    #@34
    .line 2721
    .local v0, "content":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    move-result-object v3

    #@45
    .line 2720
    add-int/lit8 v4, v4, 0x1

    #@47
    goto :goto_0

    #@48
    .line 2723
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    return-object v3

    #@49
    .line 2724
    .end local v1    # "contents":[Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@4a
    .line 2725
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4d
    move-result-object v4

    #@4e
    throw v4
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "rawPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    .line 2429
    const-string/jumbo v4, "rawPath cannot be null"

    #@6
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 2431
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@c
    .line 2432
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@f
    .line 2435
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@11
    monitor-enter v5

    #@12
    .line 2436
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@14
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/MountService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .local v3, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v5

    #@1b
    .line 2438
    if-nez v3, :cond_0

    #@1d
    .line 2439
    const-string/jumbo v4, "MountService"

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "Failed to find OBB mounted at "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 2440
    return-object v9

    #@38
    .line 2435
    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .line 2445
    .restart local v3    # "state":Lcom/android/server/MountService$ObbState;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@3d
    const-string/jumbo v5, "obb"

    #@40
    const/4 v6, 0x2

    #@41
    new-array v6, v6, [Ljava/lang/Object;

    #@43
    const-string/jumbo v7, "path"

    #@46
    const/4 v8, 0x0

    #@47
    aput-object v7, v6, v8

    #@49
    iget-object v7, v3, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@4b
    const/4 v8, 0x1

    #@4c
    aput-object v7, v6, v8

    #@4e
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@51
    move-result-object v2

    #@52
    .line 2446
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v4, 0xd3

    #@54
    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@57
    .line 2447
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@5a
    move-result-object v4

    #@5b
    return-object v4

    #@5c
    .line 2448
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@5d
    .line 2449
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@60
    move-result v0

    #@61
    .line 2450
    .local v0, "code":I
    const/16 v4, 0x196

    #@63
    if-ne v0, v4, :cond_1

    #@65
    .line 2451
    return-object v9

    #@66
    .line 2453
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    #@68
    const-string/jumbo v5, "Unexpected response code %d"

    #@6b
    new-array v6, v11, [Ljava/lang/Object;

    #@6d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v7

    #@71
    aput-object v7, v6, v10

    #@73
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v4
.end method

.method public getPassword()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2751
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.STORAGE_INTERNAL"

    #@6
    .line 2752
    const-string/jumbo v5, "only keyguard can retrieve password"

    #@9
    .line 2751
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 2754
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 2755
    new-instance v3, Ljava/lang/String;

    #@14
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    #@17
    return-object v3

    #@18
    .line 2760
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@1a
    const-string/jumbo v4, "cryptfs"

    #@1d
    const/4 v5, 0x1

    #@1e
    new-array v5, v5, [Ljava/lang/Object;

    #@20
    const-string/jumbo v6, "getpw"

    #@23
    const/4 v7, 0x0

    #@24
    aput-object v6, v5, v7

    #@26
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@29
    move-result-object v2

    #@2a
    .line 2761
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v3, "-1"

    #@2d
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    .line 2763
    return-object v8

    #@38
    .line 2765
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v3

    #@3c
    return-object v3

    #@3d
    .line 2768
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@3e
    .line 2769
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "MountService"

    #@41
    const-string/jumbo v4, "Invalid response to getPassword"

    #@44
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 2770
    return-object v8

    #@48
    .line 2766
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@49
    .line 2767
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@4c
    move-result-object v3

    #@4d
    throw v3
.end method

.method public getPasswordType()I
    .locals 8

    #@0
    .prologue
    .line 2663
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "android.permission.STORAGE_INTERNAL"

    #@5
    .line 2664
    const-string/jumbo v5, "no permission to access the crypt keeper"

    #@8
    .line 2663
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2666
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@e
    .line 2670
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@10
    const-string/jumbo v4, "cryptfs"

    #@13
    const/4 v5, 0x1

    #@14
    new-array v5, v5, [Ljava/lang/Object;

    #@16
    const-string/jumbo v6, "getpwtype"

    #@19
    const/4 v7, 0x0

    #@1a
    aput-object v6, v5, v7

    #@1c
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@1f
    move-result-object v1

    #@20
    .line 2671
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@23
    array-length v3, v3

    #@24
    if-ge v2, v3, :cond_1

    #@26
    .line 2672
    sget-object v3, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@28
    aget-object v3, v3, v2

    #@2a
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_0

    #@34
    .line 2673
    return v2

    #@35
    .line 2671
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 2676
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3a
    const-string/jumbo v4, "unexpected return from cryptfs"

    #@3d
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@40
    throw v3
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 2677
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    #@42
    .line 2678
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@45
    move-result-object v3

    #@46
    throw v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2021
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2022
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2024
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v0

    #@c
    .line 2025
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v0

    #@f
    return-object v1

    #@10
    .line 2024
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v0

    #@12
    throw v1
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2376
    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    #@5
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@8
    .line 2377
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@b
    .line 2378
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@e
    .line 2382
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@10
    const-string/jumbo v4, "asec"

    #@13
    const/4 v5, 0x2

    #@14
    new-array v5, v5, [Ljava/lang/Object;

    #@16
    const-string/jumbo v6, "fspath"

    #@19
    const/4 v7, 0x0

    #@1a
    aput-object v6, v5, v7

    #@1c
    const/4 v6, 0x1

    #@1d
    aput-object p1, v5, v6

    #@1f
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@22
    move-result-object v2

    #@23
    .line 2383
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    #@25
    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@28
    .line 2384
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 2385
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@2e
    .line 2386
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@31
    move-result v0

    #@32
    .line 2387
    .local v0, "code":I
    const/16 v3, 0x196

    #@34
    if-ne v0, v3, :cond_0

    #@36
    .line 2388
    const-string/jumbo v3, "MountService"

    #@39
    const-string/jumbo v4, "Container \'%s\' not found"

    #@3c
    new-array v5, v9, [Ljava/lang/Object;

    #@3e
    aput-object p1, v5, v8

    #@40
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 2389
    const/4 v3, 0x0

    #@48
    return-object v3

    #@49
    .line 2391
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@4b
    const-string/jumbo v4, "Unexpected response code %d"

    #@4e
    new-array v5, v9, [Ljava/lang/Object;

    #@50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v6

    #@54
    aput-object v6, v5, v8

    #@56
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2123
    const-string/jumbo v1, "android.permission.ASEC_ACCESS"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@7
    .line 2124
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@a
    .line 2125
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@d
    .line 2129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v2, "asec"

    #@12
    const/4 v3, 0x1

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    const-string/jumbo v4, "list"

    #@18
    const/4 v5, 0x0

    #@19
    aput-object v4, v3, v5

    #@1b
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@1e
    move-result-object v1

    #@1f
    const/16 v2, 0x6f

    #@21
    .line 2128
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 2130
    :catch_0
    move-exception v0

    #@27
    .line 2131
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    #@29
    return-object v1
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 2355
    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    #@5
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@8
    .line 2356
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@b
    .line 2357
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@e
    .line 2361
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@10
    const-string/jumbo v4, "asec"

    #@13
    const/4 v5, 0x2

    #@14
    new-array v5, v5, [Ljava/lang/Object;

    #@16
    const-string/jumbo v6, "path"

    #@19
    const/4 v7, 0x0

    #@1a
    aput-object v6, v5, v7

    #@1c
    const/4 v6, 0x1

    #@1d
    aput-object p1, v5, v6

    #@1f
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@22
    move-result-object v2

    #@23
    .line 2362
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    #@25
    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@28
    .line 2363
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 2364
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@2e
    .line 2365
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@31
    move-result v0

    #@32
    .line 2366
    .local v0, "code":I
    const/16 v3, 0x196

    #@34
    if-ne v0, v3, :cond_0

    #@36
    .line 2367
    const-string/jumbo v3, "MountService"

    #@39
    const-string/jumbo v4, "Container \'%s\' not found"

    #@3c
    new-array v5, v9, [Ljava/lang/Object;

    #@3e
    aput-object p1, v5, v8

    #@40
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 2368
    const/4 v3, 0x0

    #@48
    return-object v3

    #@49
    .line 2370
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@4b
    const-string/jumbo v4, "Unexpected response code %d"

    #@4e
    new-array v5, v9, [Ljava/lang/Object;

    #@50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v6

    #@54
    aput-object v6, v5, v8

    #@56
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2083
    const-string/jumbo v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@4
    invoke-direct {p0, v6}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@7
    .line 2084
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@a
    .line 2087
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@c
    const-string/jumbo v7, "storage"

    #@f
    const/4 v8, 0x2

    #@10
    new-array v8, v8, [Ljava/lang/Object;

    #@12
    const-string/jumbo v9, "users"

    #@15
    const/4 v10, 0x0

    #@16
    aput-object v9, v8, v10

    #@18
    const/4 v9, 0x1

    #@19
    aput-object p1, v8, v9

    #@1b
    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@1e
    move-result-object v6

    #@1f
    .line 2088
    const/16 v7, 0x70

    #@21
    .line 2086
    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 2091
    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    #@26
    new-array v0, v6, [I

    #@28
    .line 2092
    .local v0, "data":[I
    const/4 v2, 0x0

    #@29
    .local v2, "i":I
    :goto_0
    array-length v6, v4

    #@2a
    if-ge v2, v6, :cond_0

    #@2c
    .line 2093
    aget-object v6, v4, v2

    #@2e
    const-string/jumbo v7, " "

    #@31
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    #@34
    move-result-object v5

    #@35
    .line 2095
    .local v5, "tok":[Ljava/lang/String;
    const/4 v6, 0x0

    #@36
    :try_start_1
    aget-object v6, v5, v6

    #@38
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3b
    move-result v6

    #@3c
    aput v6, v0, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    #@3e
    .line 2092
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 2096
    :catch_0
    move-exception v3

    #@42
    .line 2097
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string/jumbo v6, "MountService"

    #@45
    const-string/jumbo v7, "Error parsing pid %s"

    #@48
    const/4 v8, 0x1

    #@49
    new-array v8, v8, [Ljava/lang/Object;

    #@4b
    const/4 v9, 0x0

    #@4c
    aget-object v9, v5, v9

    #@4e
    const/4 v10, 0x0

    #@4f
    aput-object v9, v8, v10

    #@51
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 2098
    const/4 v6, 0x0

    #@59
    new-array v6, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    #@5b
    return-object v6

    #@5c
    .line 2101
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_0
    return-object v0

    #@5d
    .line 2102
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v4    # "r":[Ljava/lang/String;
    :catch_1
    move-exception v1

    #@5e
    .line 2103
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v6, "MountService"

    #@61
    const-string/jumbo v7, "Failed to retrieve storage users list"

    #@64
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    .line 2104
    new-array v6, v11, [I

    #@69
    return-object v6
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .locals 44
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 3005
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v40

    #@4
    .line 3007
    .local v40, "userId":I
    move/from16 v0, p3

    #@6
    and-int/lit16 v4, v0, 0x100

    #@8
    if-eqz v4, :cond_1

    #@a
    const/16 v21, 0x1

    #@c
    .line 3008
    .local v21, "forWrite":Z
    :goto_0
    move/from16 v0, p3

    #@e
    and-int/lit16 v4, v0, 0x200

    #@10
    if-eqz v4, :cond_2

    #@12
    const/16 v32, 0x1

    #@14
    .line 3009
    .local v32, "realState":Z
    :goto_1
    move/from16 v0, p3

    #@16
    and-int/lit16 v4, v0, 0x400

    #@18
    if-eqz v4, :cond_3

    #@1a
    const/16 v25, 0x1

    #@1c
    .line 3013
    .local v25, "includeInvisible":Z
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1f
    move-result-wide v38

    #@20
    .line 3015
    .local v38, "token":J
    :try_start_0
    move-object/from16 v0, p0

    #@22
    move/from16 v1, v40

    #@24
    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->isUserKeyUnlocked(I)Z

    #@27
    move-result v41

    #@28
    .line 3016
    .local v41, "userKeyUnlocked":Z
    move-object/from16 v0, p0

    #@2a
    iget-object v4, v0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    #@2c
    move/from16 v0, p1

    #@2e
    move-object/from16 v1, p2

    #@30
    invoke-virtual {v4, v0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v37

    #@34
    .line 3018
    .local v37, "storagePermission":Z
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 3021
    const/16 v22, 0x0

    #@39
    .line 3023
    .local v22, "foundPrimary":Z
    new-instance v35, Ljava/util/ArrayList;

    #@3b
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    #@3e
    .line 3024
    .local v35, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    move-object/from16 v0, p0

    #@40
    iget-object v5, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@42
    monitor-enter v5

    #@43
    .line 3025
    const/16 v23, 0x0

    #@45
    .local v23, "i":I
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    #@47
    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@49
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@4c
    move-result v4

    #@4d
    move/from16 v0, v23

    #@4f
    if-ge v0, v4, :cond_c

    #@51
    .line 3026
    move-object/from16 v0, p0

    #@53
    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@55
    move/from16 v0, v23

    #@57
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5a
    move-result-object v43

    #@5b
    check-cast v43, Landroid/os/storage/VolumeInfo;

    #@5d
    .line 3027
    .local v43, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@60
    move-result v4

    #@61
    packed-switch v4, :pswitch_data_0

    #@64
    .line 3025
    :cond_0
    :goto_4
    :pswitch_0
    add-int/lit8 v23, v23, 0x1

    #@66
    goto :goto_3

    #@67
    .line 3007
    .end local v21    # "forWrite":Z
    .end local v22    # "foundPrimary":Z
    .end local v23    # "i":I
    .end local v25    # "includeInvisible":Z
    .end local v32    # "realState":Z
    .end local v35    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v37    # "storagePermission":Z
    .end local v38    # "token":J
    .end local v41    # "userKeyUnlocked":Z
    .end local v43    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/16 v21, 0x0

    #@69
    .restart local v21    # "forWrite":Z
    goto :goto_0

    #@6a
    .line 3008
    :cond_2
    const/16 v32, 0x0

    #@6c
    .restart local v32    # "realState":Z
    goto :goto_1

    #@6d
    .line 3009
    :cond_3
    const/16 v25, 0x0

    #@6f
    .restart local v25    # "includeInvisible":Z
    goto :goto_2

    #@70
    .line 3017
    .restart local v38    # "token":J
    :catchall_0
    move-exception v4

    #@71
    .line 3018
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@74
    .line 3017
    throw v4

    #@75
    .line 3035
    .restart local v22    # "foundPrimary":Z
    .restart local v23    # "i":I
    .restart local v35    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v37    # "storagePermission":Z
    .restart local v41    # "userKeyUnlocked":Z
    .restart local v43    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_1
    const/16 v26, 0x0

    #@77
    .line 3036
    .local v26, "match":Z
    if-eqz v21, :cond_6

    #@79
    .line 3037
    :try_start_2
    move-object/from16 v0, v43

    #@7b
    move/from16 v1, v40

    #@7d
    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    #@80
    move-result v26

    #@81
    .line 3042
    .end local v26    # "match":Z
    :goto_5
    if-eqz v26, :cond_0

    #@83
    .line 3044
    const/16 v34, 0x0

    #@85
    .line 3045
    .local v34, "reportUnmounted":Z
    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getType()I

    #@88
    move-result v4

    #@89
    const/4 v6, 0x2

    #@8a
    if-ne v4, v6, :cond_4

    #@8c
    if-eqz v41, :cond_9

    #@8e
    .line 3047
    :cond_4
    if-nez v37, :cond_5

    #@90
    if-eqz v32, :cond_a

    #@92
    .line 3051
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    #@94
    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@96
    move-object/from16 v0, v43

    #@98
    move/from16 v1, v40

    #@9a
    move/from16 v2, v34

    #@9c
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    #@9f
    move-result-object v42

    #@a0
    .line 3053
    .local v42, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@a3
    move-result v4

    #@a4
    if-eqz v4, :cond_b

    #@a6
    .line 3054
    const/4 v4, 0x0

    #@a7
    move-object/from16 v0, v35

    #@a9
    move-object/from16 v1, v42

    #@ab
    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@ae
    .line 3055
    const/16 v22, 0x1

    #@b0
    goto :goto_4

    #@b1
    .line 3039
    .end local v34    # "reportUnmounted":Z
    .end local v42    # "userVol":Landroid/os/storage/StorageVolume;
    .restart local v26    # "match":Z
    :cond_6
    move-object/from16 v0, v43

    #@b3
    move/from16 v1, v40

    #@b5
    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    #@b8
    move-result v4

    #@b9
    if-nez v4, :cond_7

    #@bb
    .line 3040
    if-eqz v25, :cond_8

    #@bd
    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    #@c0
    move-result-object v4

    #@c1
    if-eqz v4, :cond_8

    #@c3
    const/16 v26, 0x1

    #@c5
    goto :goto_5

    #@c6
    .line 3039
    :cond_7
    const/16 v26, 0x1

    #@c8
    goto :goto_5

    #@c9
    .line 3040
    :cond_8
    const/16 v26, 0x0

    #@cb
    goto :goto_5

    #@cc
    .line 3046
    .end local v26    # "match":Z
    .restart local v34    # "reportUnmounted":Z
    :cond_9
    const/16 v34, 0x1

    #@ce
    goto :goto_6

    #@cf
    .line 3048
    :cond_a
    const/16 v34, 0x1

    #@d1
    goto :goto_6

    #@d2
    .line 3057
    .restart local v42    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_b
    move-object/from16 v0, v35

    #@d4
    move-object/from16 v1, v42

    #@d6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@d9
    goto :goto_4

    #@da
    .line 3024
    .end local v34    # "reportUnmounted":Z
    .end local v42    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v43    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_1
    move-exception v4

    #@db
    monitor-exit v5

    #@dc
    throw v4

    #@dd
    :cond_c
    monitor-exit v5

    #@de
    .line 3062
    if-nez v22, :cond_d

    #@e0
    .line 3063
    const-string/jumbo v4, "MountService"

    #@e3
    const-string/jumbo v5, "No primary storage defined yet; hacking together a stub"

    #@e6
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e9
    .line 3066
    const-string/jumbo v4, "ro.vold.primary_physical"

    #@ec
    const/4 v5, 0x0

    #@ed
    .line 3065
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@f0
    move-result v10

    #@f1
    .line 3068
    .local v10, "primaryPhysical":Z
    const-string/jumbo v24, "stub_primary"

    #@f4
    .line 3069
    .local v24, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    #@f7
    move-result-object v7

    #@f8
    .line 3070
    .local v7, "path":Ljava/io/File;
    move-object/from16 v0, p0

    #@fa
    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@fc
    const v5, 0x104000e

    #@ff
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@102
    move-result-object v8

    #@103
    .line 3071
    .local v8, "description":Ljava/lang/String;
    const/16 v27, 0x1

    #@105
    .line 3072
    .local v27, "primary":Z
    move/from16 v33, v10

    #@107
    .line 3073
    .local v33, "removable":Z
    if-eqz v10, :cond_e

    #@109
    const/4 v11, 0x0

    #@10a
    .line 3074
    .local v11, "emulated":Z
    :goto_7
    const-wide/16 v30, 0x0

    #@10c
    .line 3075
    .local v30, "mtpReserveSize":J
    const/16 v20, 0x0

    #@10e
    .line 3076
    .local v20, "allowMassStorage":Z
    const-wide/16 v28, 0x0

    #@110
    .line 3077
    .local v28, "maxFileSize":J
    new-instance v17, Landroid/os/UserHandle;

    #@112
    move-object/from16 v0, v17

    #@114
    move/from16 v1, v40

    #@116
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@119
    .line 3078
    .local v17, "owner":Landroid/os/UserHandle;
    const/16 v18, 0x0

    #@11b
    .line 3079
    .local v18, "uuid":Ljava/lang/String;
    const-string/jumbo v36, "removed"

    #@11e
    .line 3081
    .local v36, "state":Ljava/lang/String;
    new-instance v4, Landroid/os/storage/StorageVolume;

    #@120
    const-string/jumbo v5, "stub_primary"

    #@123
    .line 3083
    const-string/jumbo v19, "removed"

    #@126
    .line 3081
    const/4 v6, 0x0

    #@127
    .line 3082
    const/4 v9, 0x1

    #@128
    const-wide/16 v12, 0x0

    #@12a
    .line 3083
    const/4 v14, 0x0

    #@12b
    const-wide/16 v15, 0x0

    #@12d
    .line 3081
    invoke-direct/range {v4 .. v19}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    #@130
    const/4 v5, 0x0

    #@131
    move-object/from16 v0, v35

    #@133
    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@136
    .line 3086
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "primaryPhysical":Z
    .end local v11    # "emulated":Z
    .end local v17    # "owner":Landroid/os/UserHandle;
    .end local v18    # "uuid":Ljava/lang/String;
    .end local v20    # "allowMassStorage":Z
    .end local v24    # "id":Ljava/lang/String;
    .end local v27    # "primary":Z
    .end local v28    # "maxFileSize":J
    .end local v30    # "mtpReserveSize":J
    .end local v33    # "removable":Z
    .end local v36    # "state":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    #@139
    move-result v4

    #@13a
    new-array v4, v4, [Landroid/os/storage/StorageVolume;

    #@13c
    move-object/from16 v0, v35

    #@13e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@141
    move-result-object v4

    #@142
    check-cast v4, [Landroid/os/storage/StorageVolume;

    #@144
    return-object v4

    #@145
    .line 3073
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "primaryPhysical":Z
    .restart local v24    # "id":Ljava/lang/String;
    .restart local v27    # "primary":Z
    .restart local v33    # "removable":Z
    :cond_e
    const/4 v11, 0x1

    #@146
    .restart local v11    # "emulated":Z
    goto :goto_7

    #@147
    .line 3027
    nop

    #@148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .locals 4
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 3113
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 3114
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v2

    #@9
    new-array v1, v2, [Landroid/os/storage/VolumeRecord;

    #@b
    .line 3115
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@11
    move-result v2

    #@12
    if-ge v0, v2, :cond_0

    #@14
    .line 3116
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/os/storage/VolumeRecord;

    #@1c
    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 3115
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_0
    monitor-exit v3

    #@22
    .line 3118
    return-object v1

    #@23
    .line 3113
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1699
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .locals 4
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 3102
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 3103
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v2

    #@9
    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    #@b
    .line 3104
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@11
    move-result v2

    #@12
    if-ge v0, v2, :cond_0

    #@14
    .line 3105
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/os/storage/VolumeInfo;

    #@1c
    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 3104
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_0
    monitor-exit v3

    #@22
    .line 3107
    return-object v1

    #@23
    .line 3102
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method public isConvertibleToFBE()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2735
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v5, "android.permission.STORAGE_INTERNAL"

    #@7
    .line 2736
    const-string/jumbo v6, "no permission to access the crypt keeper"

    #@a
    .line 2735
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 2738
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@10
    .line 2742
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@12
    const-string/jumbo v5, "cryptfs"

    #@15
    const/4 v6, 0x1

    #@16
    new-array v6, v6, [Ljava/lang/Object;

    #@18
    const-string/jumbo v7, "isConvertibleToFBE"

    #@1b
    const/4 v8, 0x0

    #@1c
    aput-object v7, v6, v8

    #@1e
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@21
    move-result-object v1

    #@22
    .line 2743
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_0

    #@2c
    :goto_0
    return v2

    #@2d
    :cond_0
    move v2, v3

    #@2e
    goto :goto_0

    #@2f
    .line 2744
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@30
    .line 2745
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@33
    move-result-object v2

    #@34
    throw v2
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    #@0
    .prologue
    .line 1704
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2460
    const-string/jumbo v0, "rawPath cannot be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2461
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@8
    monitor-enter v1

    #@9
    .line 2462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@b
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    monitor-exit v1

    #@10
    return v0

    #@11
    .line 2461
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2320
    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2321
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2322
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2324
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@e
    monitor-enter v1

    #@f
    .line 2325
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v0

    #@15
    monitor-exit v1

    #@16
    return v0

    #@17
    .line 2324
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 1

    #@0
    .prologue
    .line 1684
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1694
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isUserKeyUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2902
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2903
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    #@5
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 2902
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public lastMaintenance()J
    .locals 2

    #@0
    .prologue
    .line 966
    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@2
    return-wide v0
.end method

.method public lockUserKey(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2886
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2887
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2890
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    const-string/jumbo v2, "cryptfs"

    #@e
    const/4 v3, 0x2

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    const-string/jumbo v4, "lock_user_key"

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object v4, v3, v5

    #@1e
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 2895
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@23
    monitor-enter v2

    #@24
    .line 2896
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    #@26
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit v2

    #@2d
    .line 2885
    return-void

    #@2e
    .line 2891
    :catch_0
    move-exception v0

    #@2f
    .line 2892
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@32
    move-result-object v1

    #@33
    throw v1

    #@34
    .line 2895
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v6

    #@5
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@8
    move-result v5

    #@9
    .line 2967
    .local v5, "userId":I
    new-instance v4, Landroid/os/Environment$UserEnvironment;

    #@b
    invoke-direct {v4, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@e
    .line 2970
    .local v4, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@10
    .line 2971
    const-string/jumbo v7, "appops"

    #@13
    .line 2970
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/app/AppOpsManager;

    #@19
    .line 2972
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v6

    #@1d
    invoke-virtual {v1, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@20
    .line 2974
    const/4 v0, 0x0

    #@21
    .line 2976
    .local v0, "appFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/File;

    #@23
    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@26
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v0

    #@2a
    .line 2984
    .local v0, "appFile":Ljava/io/File;
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    #@31
    move-result v6

    #@32
    if-nez v6, :cond_0

    #@34
    .line 2985
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    #@37
    move-result-object v6

    #@38
    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    #@3b
    move-result v6

    #@3c
    .line 2984
    if-nez v6, :cond_0

    #@3e
    .line 2986
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    #@41
    move-result-object v6

    #@42
    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    #@45
    move-result v6

    #@46
    .line 2984
    if-eqz v6, :cond_2

    #@48
    .line 2987
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4b
    move-result-object p2

    #@4c
    .line 2988
    const-string/jumbo v6, "/"

    #@4f
    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@52
    move-result v6

    #@53
    if-nez v6, :cond_1

    #@55
    .line 2989
    new-instance v6, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    const-string/jumbo v7, "/"

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object p2

    #@69
    .line 2993
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@6b
    const-string/jumbo v7, "volume"

    #@6e
    const/4 v8, 0x2

    #@6f
    new-array v8, v8, [Ljava/lang/Object;

    #@71
    const-string/jumbo v9, "mkdirs"

    #@74
    const/4 v10, 0x0

    #@75
    aput-object v9, v8, v10

    #@77
    const/4 v9, 0x1

    #@78
    aput-object p2, v8, v9

    #@7a
    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    #@7d
    .line 2994
    return v11

    #@7e
    .line 2977
    .local v0, "appFile":Ljava/io/File;
    :catch_0
    move-exception v3

    #@7f
    .line 2978
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MountService"

    #@82
    new-instance v7, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v8, "Failed to resolve "

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    const-string/jumbo v8, ": "

    #@95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v7

    #@9d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v7

    #@a1
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 2979
    const/4 v6, -0x1

    #@a5
    return v6

    #@a6
    .line 2995
    .end local v3    # "e":Ljava/io/IOException;
    .local v0, "appFile":Ljava/io/File;
    :catch_1
    move-exception v2

    #@a7
    .line 2996
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@aa
    move-result v6

    #@ab
    return v6

    #@ac
    .line 3000
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v6, Ljava/lang/SecurityException;

    #@ae
    new-instance v7, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v8, "Invalid mkdirs path: "

    #@b6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v7

    #@ba
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v7

    #@be
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v7

    #@c2
    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v6
.end method

.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 3780
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3781
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@6
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    #@9
    .line 3783
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 3784
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    #@12
    .line 3779
    :cond_1
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1726
    const-string/jumbo v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1727
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1729
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@c
    move-result-object v1

    #@d
    .line 1730
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1731
    new-instance v2, Ljava/lang/SecurityException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Mounting "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, " restricted by policy"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 1734
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@36
    const-string/jumbo v3, "volume"

    #@39
    const/4 v4, 0x4

    #@3a
    new-array v4, v4, [Ljava/lang/Object;

    #@3c
    const-string/jumbo v5, "mount"

    #@3f
    const/4 v6, 0x0

    #@40
    aput-object v5, v4, v6

    #@42
    iget-object v5, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@44
    const/4 v6, 0x1

    #@45
    aput-object v5, v4, v6

    #@47
    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v5

    #@4d
    const/4 v6, 0x2

    #@4e
    aput-object v5, v4, v6

    #@50
    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v5

    #@56
    const/4 v6, 0x3

    #@57
    aput-object v5, v4, v6

    #@59
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 1725
    return-void

    #@5d
    .line 1735
    :catch_0
    move-exception v0

    #@5e
    .line 1736
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@61
    move-result-object v2

    #@62
    throw v2
.end method

.method public mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2936
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v4

    #@4
    .line 2937
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v3

    #@8
    .line 2939
    .local v3, "pid":I
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@a
    const-string/jumbo v6, "appfuse"

    #@d
    const/4 v7, 0x4

    #@e
    new-array v7, v7, [Ljava/lang/Object;

    #@10
    const-string/jumbo v8, "mount"

    #@13
    const/4 v9, 0x0

    #@14
    aput-object v8, v7, v9

    #@16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v8

    #@1a
    const/4 v9, 0x1

    #@1b
    aput-object v8, v7, v9

    #@1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v8

    #@21
    const/4 v9, 0x2

    #@22
    aput-object v8, v7, v9

    #@24
    const/4 v8, 0x3

    #@25
    aput-object p1, v7, v8

    #@27
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@2a
    move-result-object v2

    #@2b
    .line 2940
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    #@2e
    move-result-object v5

    #@2f
    if-nez v5, :cond_0

    #@31
    .line 2941
    new-instance v5, Landroid/os/RemoteException;

    #@33
    const-string/jumbo v6, "AppFuse FD from vold is null."

    #@36
    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@39
    throw v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@3a
    .line 2957
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "pid":I
    .end local v4    # "uid":I
    :catch_0
    move-exception v0

    #@3b
    .line 2958
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3e
    move-result-object v5

    #@3f
    throw v5

    #@40
    .line 2944
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v3    # "pid":I
    .restart local v4    # "uid":I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    #@43
    move-result-object v5

    #@44
    const/4 v6, 0x0

    #@45
    aget-object v5, v5, v6

    #@47
    .line 2945
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@49
    .line 2946
    new-instance v7, Lcom/android/server/MountService$3;

    #@4b
    invoke-direct {v7, p0, v4, v3, p1}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;IILjava/lang/String;)V

    #@4e
    .line 2943
    invoke-static {v5, v6, v7}, Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@51
    move-result-object v5

    #@52
    return-object v5

    #@53
    .line 2959
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "pid":I
    .end local v4    # "uid":I
    :catch_1
    move-exception v1

    #@54
    .line 2960
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Landroid/os/RemoteException;

    #@56
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v5
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    #@0
    .prologue
    .line 2469
    const-string/jumbo v1, "rawPath cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2470
    const-string/jumbo v1, "canonicalPath cannot be null"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 2471
    const-string/jumbo v1, "token cannot be null"

    #@f
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 2473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v4

    #@16
    .line 2474
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    #@18
    move-object v1, p0

    #@19
    move-object v2, p1

    #@1a
    move-object v3, p2

    #@1b
    move-object v5, p4

    #@1c
    move v6, p5

    #@1d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    #@20
    .line 2475
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    #@22
    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    #@25
    .line 2476
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@27
    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@29
    const/4 v3, 0x1

    #@2a
    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    #@31
    .line 2468
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "readOnly"    # Z

    #@0
    .prologue
    .line 2247
    const-string/jumbo v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2248
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2249
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2251
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@e
    monitor-enter v4

    #@f
    .line 2252
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@11
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 2253
    const/4 v3, -0x6

    #@18
    monitor-exit v4

    #@19
    return v3

    #@1a
    :cond_0
    monitor-exit v4

    #@1b
    .line 2257
    const/4 v2, 0x0

    #@1c
    .line 2259
    .local v2, "rc":I
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@1e
    const-string/jumbo v5, "asec"

    #@21
    const/4 v3, 0x5

    #@22
    new-array v6, v3, [Ljava/lang/Object;

    #@24
    const-string/jumbo v3, "mount"

    #@27
    const/4 v7, 0x0

    #@28
    aput-object v3, v6, v7

    #@2a
    const/4 v3, 0x1

    #@2b
    aput-object p1, v6, v3

    #@2d
    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@2f
    invoke-direct {v3, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@32
    const/4 v7, 0x2

    #@33
    aput-object v3, v6, v7

    #@35
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v3

    #@39
    const/4 v7, 0x3

    #@3a
    aput-object v3, v6, v7

    #@3c
    .line 2260
    if-eqz p4, :cond_3

    #@3e
    const-string/jumbo v3, "ro"

    #@41
    :goto_0
    const/4 v7, 0x4

    #@42
    aput-object v3, v6, v7

    #@44
    .line 2259
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@47
    .line 2268
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    #@49
    .line 2269
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@4b
    monitor-enter v4

    #@4c
    .line 2270
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@4e
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@51
    monitor-exit v4

    #@52
    .line 2273
    :cond_2
    return v2

    #@53
    .line 2251
    .end local v2    # "rc":I
    :catchall_0
    move-exception v3

    #@54
    monitor-exit v4

    #@55
    throw v3

    #@56
    .line 2260
    .restart local v2    # "rc":I
    :cond_3
    :try_start_3
    const-string/jumbo v3, "rw"
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    #@59
    goto :goto_0

    #@5a
    .line 2261
    :catch_0
    move-exception v1

    #@5b
    .line 2262
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@5e
    move-result v0

    #@5f
    .line 2263
    .local v0, "code":I
    const/16 v3, 0x195

    #@61
    if-eq v0, v3, :cond_1

    #@63
    .line 2264
    const/4 v2, -0x1

    #@64
    goto :goto_1

    #@65
    .line 2269
    .end local v0    # "code":I
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v3

    #@66
    monitor-exit v4

    #@67
    throw v3
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1709
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->mount(Ljava/lang/String;)V

    #@7
    .line 1710
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 1036
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    #@0
    .prologue
    .line 974
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@3
    .line 975
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 973
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1045
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 1044
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 8
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    #@0
    .prologue
    .line 1834
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1835
    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    #@9
    .line 1836
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@c
    .line 1838
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    #@f
    move-result-object v2

    #@10
    .line 1840
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@12
    const-string/jumbo v4, "volume"

    #@15
    const/4 v5, 0x4

    #@16
    new-array v5, v5, [Ljava/lang/Object;

    #@18
    const-string/jumbo v6, "partition"

    #@1b
    const/4 v7, 0x0

    #@1c
    aput-object v6, v5, v7

    #@1e
    const/4 v6, 0x1

    #@1f
    aput-object p1, v5, v6

    #@21
    const-string/jumbo v6, "mixed"

    #@24
    const/4 v7, 0x2

    #@25
    aput-object v6, v5, v7

    #@27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v6

    #@2b
    const/4 v7, 0x3

    #@2c
    aput-object v6, v5, v7

    #@2e
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@31
    .line 1841
    const-string/jumbo v3, "partitionMixed"

    #@34
    const-wide/32 v4, 0x2bf20

    #@37
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 1833
    return-void

    #@3b
    .line 1844
    :catch_0
    move-exception v1

    #@3c
    .line 1845
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3e
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@41
    throw v3

    #@42
    .line 1842
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@43
    .line 1843
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@46
    move-result-object v3

    #@47
    throw v3
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 8
    .param p1, "diskId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1817
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1818
    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    #@9
    .line 1819
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@c
    .line 1821
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    #@f
    move-result-object v2

    #@10
    .line 1823
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@12
    const-string/jumbo v4, "volume"

    #@15
    const/4 v5, 0x3

    #@16
    new-array v5, v5, [Ljava/lang/Object;

    #@18
    const-string/jumbo v6, "partition"

    #@1b
    const/4 v7, 0x0

    #@1c
    aput-object v6, v5, v7

    #@1e
    const/4 v6, 0x1

    #@1f
    aput-object p1, v5, v6

    #@21
    const-string/jumbo v6, "private"

    #@24
    const/4 v7, 0x2

    #@25
    aput-object v6, v5, v7

    #@27
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@2a
    .line 1824
    const-string/jumbo v3, "partitionPrivate"

    #@2d
    const-wide/32 v4, 0x2bf20

    #@30
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 1816
    return-void

    #@34
    .line 1827
    :catch_0
    move-exception v1

    #@35
    .line 1828
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@37
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@3a
    throw v3

    #@3b
    .line 1825
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@3c
    .line 1826
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3f
    move-result-object v3

    #@40
    throw v3
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 8
    .param p1, "diskId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1801
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1802
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1804
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    #@c
    move-result-object v2

    #@d
    .line 1806
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v4, "volume"

    #@12
    const/4 v5, 0x3

    #@13
    new-array v5, v5, [Ljava/lang/Object;

    #@15
    const-string/jumbo v6, "partition"

    #@18
    const/4 v7, 0x0

    #@19
    aput-object v6, v5, v7

    #@1b
    const/4 v6, 0x1

    #@1c
    aput-object p1, v5, v6

    #@1e
    const-string/jumbo v6, "public"

    #@21
    const/4 v7, 0x2

    #@22
    aput-object v6, v5, v7

    #@24
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@27
    .line 1807
    const-string/jumbo v3, "partitionPublic"

    #@2a
    const-wide/32 v4, 0x2bf20

    #@2d
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 1800
    return-void

    #@31
    .line 1810
    :catch_0
    move-exception v1

    #@32
    .line 1811
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@34
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@37
    throw v3

    #@38
    .line 1808
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@39
    .line 1809
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3c
    move-result-object v3

    #@3d
    throw v3
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 2909
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2910
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    const-string/jumbo v2, "cryptfs"

    #@e
    const/4 v3, 0x5

    #@f
    new-array v3, v3, [Ljava/lang/Object;

    #@11
    const-string/jumbo v4, "prepare_user_storage"

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-static {p1}, Lcom/android/server/MountService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object v4, v3, v5

    #@1e
    .line 2914
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    const/4 v5, 0x2

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v4

    #@29
    const/4 v5, 0x3

    #@2a
    aput-object v4, v3, v5

    #@2c
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v4

    #@30
    const/4 v5, 0x4

    #@31
    aput-object v4, v3, v5

    #@33
    .line 2913
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 2908
    return-void

    #@37
    .line 2915
    :catch_0
    move-exception v0

    #@38
    .line 2916
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3b
    move-result-object v1

    #@3c
    throw v1
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    #@0
    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->register(Landroid/os/storage/IMountServiceListener;)V

    #@5
    .line 1665
    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2330
    const-string/jumbo v2, "android.permission.ASEC_RENAME"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2331
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2332
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2334
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@e
    monitor-enter v3

    #@f
    .line 2339
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@11
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@19
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 2340
    :cond_0
    const/4 v2, -0x6

    #@20
    monitor-exit v3

    #@21
    return v2

    #@22
    :cond_1
    monitor-exit v3

    #@23
    .line 2344
    const/4 v1, 0x0

    #@24
    .line 2346
    .local v1, "rc":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@26
    const-string/jumbo v3, "asec"

    #@29
    const/4 v4, 0x3

    #@2a
    new-array v4, v4, [Ljava/lang/Object;

    #@2c
    const-string/jumbo v5, "rename"

    #@2f
    const/4 v6, 0x0

    #@30
    aput-object v5, v4, v6

    #@32
    const/4 v5, 0x1

    #@33
    aput-object p1, v4, v5

    #@35
    const/4 v5, 0x2

    #@36
    aput-object p2, v4, v5

    #@38
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 2351
    :goto_0
    return v1

    #@3c
    .line 2334
    .end local v1    # "rc":I
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 2347
    .restart local v1    # "rc":I
    :catch_0
    move-exception v0

    #@40
    .line 2348
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    #@41
    goto :goto_0
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2159
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2160
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2161
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2163
    const/4 v1, 0x0

    #@d
    .line 2165
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    const-string/jumbo v3, "asec"

    #@12
    const/4 v4, 0x4

    #@13
    new-array v4, v4, [Ljava/lang/Object;

    #@15
    const-string/jumbo v5, "resize"

    #@18
    const/4 v6, 0x0

    #@19
    aput-object v5, v4, v6

    #@1b
    const/4 v5, 0x1

    #@1c
    aput-object p1, v4, v5

    #@1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v5

    #@22
    const/4 v6, 0x2

    #@23
    aput-object v5, v4, v6

    #@25
    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@27
    invoke-direct {v5, p3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@2a
    const/4 v6, 0x3

    #@2b
    aput-object v5, v4, v6

    #@2d
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 2169
    :goto_0
    return v1

    #@31
    .line 2166
    :catch_0
    move-exception v0

    #@32
    .line 2167
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    #@33
    goto :goto_0
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x4

    #@5
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 953
    return-void
.end method

.method public runMaintenance()V
    .locals 1

    #@0
    .prologue
    .line 960
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 961
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    #@a
    .line 959
    return-void
.end method

.method public setDebugFlags(II)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1962
    const-string/jumbo v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@4
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@7
    .line 1963
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@a
    .line 1965
    and-int/lit8 v4, p2, 0x2

    #@c
    if-eqz v4, :cond_2

    #@e
    .line 1966
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 1967
    new-instance v4, Ljava/lang/IllegalStateException;

    #@16
    .line 1968
    const-string/jumbo v5, "Emulation not available on device with native FBE"

    #@19
    .line 1967
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v4

    #@1d
    .line 1970
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@1f
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 1971
    new-instance v4, Ljava/lang/IllegalStateException;

    #@27
    .line 1972
    const-string/jumbo v5, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    #@2a
    .line 1971
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4

    #@2e
    .line 1975
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@31
    move-result-wide v2

    #@32
    .line 1977
    .local v2, "token":J
    and-int/lit8 v4, p1, 0x2

    #@34
    if-eqz v4, :cond_5

    #@36
    const/4 v0, 0x1

    #@37
    .line 1978
    .local v0, "emulateFbe":Z
    :goto_0
    :try_start_0
    const-string/jumbo v4, "persist.sys.emulate_fbe"

    #@3a
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 1981
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@43
    const-class v6, Landroid/os/PowerManager;

    #@45
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Landroid/os/PowerManager;

    #@4b
    const/4 v6, 0x0

    #@4c
    invoke-virtual {v4, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 1983
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@52
    .line 1987
    .end local v0    # "emulateFbe":Z
    .end local v2    # "token":J
    :cond_2
    and-int/lit8 v4, p2, 0x1

    #@54
    if-eqz v4, :cond_3

    #@56
    .line 1988
    iget-object v6, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@58
    monitor-enter v6

    #@59
    .line 1989
    and-int/lit8 v4, p1, 0x1

    #@5b
    if-eqz v4, :cond_6

    #@5d
    const/4 v4, 0x1

    #@5e
    :goto_1
    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@60
    .line 1991
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@63
    .line 1992
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@65
    const/16 v5, 0xa

    #@67
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6e
    monitor-exit v6

    #@6f
    .line 1996
    :cond_3
    and-int/lit8 v4, p2, 0xc

    #@71
    if-eqz v4, :cond_4

    #@73
    .line 1999
    and-int/lit8 v4, p1, 0x4

    #@75
    if-eqz v4, :cond_7

    #@77
    .line 2000
    const-string/jumbo v1, "force_on"

    #@7a
    .line 2007
    .local v1, "value":Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7d
    move-result-wide v2

    #@7e
    .line 2009
    .restart local v2    # "token":J
    :try_start_2
    const-string/jumbo v4, "persist.sys.sdcardfs"

    #@81
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@84
    .line 2012
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@86
    const/16 v5, 0xa

    #@88
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@8f
    .line 2014
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@92
    .line 1961
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "token":J
    :cond_4
    return-void

    #@93
    .line 1977
    .restart local v2    # "token":J
    :cond_5
    const/4 v0, 0x0

    #@94
    .restart local v0    # "emulateFbe":Z
    goto :goto_0

    #@95
    .line 1982
    :catchall_0
    move-exception v4

    #@96
    .line 1983
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@99
    .line 1982
    throw v4

    #@9a
    .end local v0    # "emulateFbe":Z
    .end local v2    # "token":J
    :cond_6
    move v4, v5

    #@9b
    .line 1989
    goto :goto_1

    #@9c
    .line 1988
    :catchall_1
    move-exception v4

    #@9d
    monitor-exit v6

    #@9e
    throw v4

    #@9f
    .line 2001
    :cond_7
    and-int/lit8 v4, p1, 0x8

    #@a1
    if-eqz v4, :cond_8

    #@a3
    .line 2002
    const-string/jumbo v1, "force_off"

    #@a6
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_2

    #@a7
    .line 2004
    .end local v1    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v1, ""

    #@aa
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_2

    #@ab
    .line 2013
    .restart local v2    # "token":J
    :catchall_2
    move-exception v4

    #@ac
    .line 2014
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@af
    .line 2013
    throw v4
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2689
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.STORAGE_INTERNAL"

    #@5
    .line 2690
    const-string/jumbo v4, "no permission to access the crypt keeper"

    #@8
    .line 2689
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2692
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@e
    .line 2696
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@10
    const-string/jumbo v3, "cryptfs"

    #@13
    const/4 v4, 0x3

    #@14
    new-array v4, v4, [Ljava/lang/Object;

    #@16
    const-string/jumbo v5, "setfield"

    #@19
    const/4 v6, 0x0

    #@1a
    aput-object v5, v4, v6

    #@1c
    const/4 v5, 0x1

    #@1d
    aput-object p1, v4, v5

    #@1f
    const/4 v5, 0x2

    #@20
    aput-object p2, v4, v5

    #@22
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v1

    #@26
    .line 2688
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    #@27
    .line 2697
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@28
    .line 2698
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2b
    move-result-object v2

    #@2c
    throw v2
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    #@0
    .prologue
    .line 2031
    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2032
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2037
    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v4

    #@c
    .line 2038
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@e
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 2039
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "Primary storage already at "

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 2037
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3

    #@31
    .line 2042
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 2043
    new-instance v3, Ljava/lang/IllegalStateException;

    #@37
    const-string/jumbo v5, "Move already in progress"

    #@3a
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v3

    #@3e
    .line 2045
    :cond_1
    iput-object p2, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@40
    .line 2046
    iput-object p1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    #@42
    .line 2050
    const-string/jumbo v3, "primary_physical"

    #@45
    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@47
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-nez v3, :cond_2

    #@4d
    .line 2051
    const-string/jumbo v3, "primary_physical"

    #@50
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@53
    move-result v3

    #@54
    .line 2050
    if-eqz v3, :cond_3

    #@56
    .line 2052
    :cond_2
    const-string/jumbo v3, "MountService"

    #@59
    const-string/jumbo v5, "Skipping move to/from primary physical"

    #@5c
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 2053
    const/16 v3, 0x52

    #@61
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    #@64
    .line 2054
    const/16 v3, -0x64

    #@66
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    #@69
    .line 2055
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@6b
    const/16 v5, 0xa

    #@6d
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    monitor-exit v4

    #@75
    .line 2056
    return-void

    #@76
    .line 2059
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@78
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@7b
    move-result-object v1

    #@7c
    .line 2060
    .local v1, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@7f
    move-result-object v2

    #@80
    .line 2062
    .local v2, "to":Landroid/os/storage/VolumeInfo;
    if-nez v1, :cond_4

    #@82
    .line 2063
    const-string/jumbo v3, "MountService"

    #@85
    new-instance v5, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v6, "Failing move due to missing from volume "

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    iget-object v6, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 2064
    const/4 v3, -0x6

    #@9f
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a2
    monitor-exit v4

    #@a3
    .line 2065
    return-void

    #@a4
    .line 2066
    :cond_4
    if-nez v2, :cond_5

    #@a6
    .line 2067
    :try_start_3
    const-string/jumbo v3, "MountService"

    #@a9
    new-instance v5, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v6, "Failing move due to missing to volume "

    #@b1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v5

    #@b5
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v5

    #@b9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 2068
    const/4 v3, -0x6

    #@c1
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c4
    monitor-exit v4

    #@c5
    .line 2069
    return-void

    #@c6
    :cond_5
    monitor-exit v4

    #@c7
    .line 2075
    :try_start_4
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@c9
    const-string/jumbo v4, "volume"

    #@cc
    const/4 v5, 0x3

    #@cd
    new-array v5, v5, [Ljava/lang/Object;

    #@cf
    const-string/jumbo v6, "move_storage"

    #@d2
    const/4 v7, 0x0

    #@d3
    aput-object v6, v5, v7

    #@d5
    iget-object v6, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@d7
    const/4 v7, 0x1

    #@d8
    aput-object v6, v5, v7

    #@da
    iget-object v6, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@dc
    const/4 v7, 0x2

    #@dd
    aput-object v6, v5, v7

    #@df
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0

    #@e2
    .line 2030
    return-void

    #@e3
    .line 2076
    :catch_0
    move-exception v0

    #@e4
    .line 2077
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@e7
    move-result-object v3

    #@e8
    throw v3
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1689
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1851
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1852
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1854
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1855
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1856
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeRecord;

    #@17
    .line 1857
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@19
    .line 1858
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@1b
    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->-wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    #@1e
    .line 1859
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 1850
    return-void

    #@23
    .line 1855
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    #@0
    .prologue
    .line 1865
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1866
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1868
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1869
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1870
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeRecord;

    #@17
    .line 1871
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@19
    not-int v3, p3

    #@1a
    and-int/2addr v1, v3

    #@1b
    and-int v3, p2, p3

    #@1d
    or-int/2addr v1, v3

    #@1e
    iput v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@20
    .line 1872
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@22
    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->-wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    #@25
    .line 1873
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 1864
    return-void

    #@2a
    .line 1869
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    #@0
    .prologue
    .line 1676
    const-string/jumbo v0, "android.permission.SHUTDOWN"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1678
    const-string/jumbo v0, "MountService"

    #@9
    const-string/jumbo v1, "Shutting down"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1679
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@11
    const/4 v1, 0x3

    #@12
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 1675
    return-void
.end method

.method public unlockUserKey(II[B[B)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    #@0
    .prologue
    .line 2861
    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2862
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2864
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 2867
    iget-object v1, p0, Lcom/android/server/MountService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@11
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 2868
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Token required to unlock secure user "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 2872
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@39
    const-string/jumbo v2, "cryptfs"

    #@3c
    const/4 v3, 0x5

    #@3d
    new-array v3, v3, [Ljava/lang/Object;

    #@3f
    const-string/jumbo v4, "unlock_user_key"

    #@42
    const/4 v5, 0x0

    #@43
    aput-object v4, v3, v5

    #@45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v4

    #@49
    const/4 v5, 0x1

    #@4a
    aput-object v4, v3, v5

    #@4c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v4

    #@50
    const/4 v5, 0x2

    #@51
    aput-object v4, v3, v5

    #@53
    .line 2873
    invoke-direct {p0, p3}, Lcom/android/server/MountService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@56
    move-result-object v4

    #@57
    const/4 v5, 0x3

    #@58
    aput-object v4, v3, v5

    #@5a
    invoke-direct {p0, p4}, Lcom/android/server/MountService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@5d
    move-result-object v4

    #@5e
    const/4 v5, 0x4

    #@5f
    aput-object v4, v3, v5

    #@61
    .line 2872
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 2879
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@66
    monitor-enter v2

    #@67
    .line 2880
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I

    #@69
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@6c
    move-result-object v1

    #@6d
    iput-object v1, p0, Lcom/android/server/MountService;->mLocalUnlockedUsers:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    monitor-exit v2

    #@70
    .line 2860
    return-void

    #@71
    .line 2874
    :catch_0
    move-exception v0

    #@72
    .line 2875
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@75
    move-result-object v1

    #@76
    throw v1

    #@77
    .line 2879
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v1

    #@78
    monitor-exit v2

    #@79
    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 9
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1742
    const-string/jumbo v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1743
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1745
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@c
    move-result-object v1

    #@d
    .line 1748
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 1749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 1751
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    #@19
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1a
    .line 1752
    :try_start_1
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    #@1c
    const/4 v6, 0x1

    #@1d
    invoke-direct {v4, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@20
    iput-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    #@22
    .line 1753
    iget-object v4, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@24
    const/4 v6, 0x0

    #@25
    const/4 v7, 0x1

    #@26
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    #@29
    .line 1754
    iget-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    #@2b
    const-string/jumbo v6, "mUnmountSignal"

    #@2e
    invoke-direct {p0, v4, v6}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    #@31
    .line 1755
    const/4 v4, 0x0

    #@32
    iput-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .line 1758
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 1763
    .end local v2    # "ident":J
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@3a
    const-string/jumbo v5, "volume"

    #@3d
    const/4 v6, 0x2

    #@3e
    new-array v6, v6, [Ljava/lang/Object;

    #@40
    const-string/jumbo v7, "unmount"

    #@43
    const/4 v8, 0x0

    #@44
    aput-object v7, v6, v8

    #@46
    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@48
    const/4 v8, 0x1

    #@49
    aput-object v7, v6, v8

    #@4b
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    #@4e
    .line 1741
    return-void

    #@4f
    .line 1751
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    #@50
    :try_start_4
    monitor-exit v5

    #@51
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@52
    .line 1757
    :catchall_1
    move-exception v4

    #@53
    .line 1758
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 1757
    throw v4

    #@57
    .line 1764
    .end local v2    # "ident":J
    :catch_0
    move-exception v0

    #@58
    .line 1765
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@5b
    move-result-object v4

    #@5c
    throw v4
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 9
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    #@0
    .prologue
    .line 2484
    const-string/jumbo v1, "rawPath cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2487
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@8
    monitor-enter v2

    #@9
    .line 2488
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@b
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v8

    #@f
    check-cast v8, Lcom/android/server/MountService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2

    #@12
    .line 2491
    if-eqz v8, :cond_0

    #@14
    .line 2493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@17
    move-result v4

    #@18
    .line 2494
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    #@1a
    .line 2495
    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@1c
    move-object v1, p0

    #@1d
    move-object v2, p1

    #@1e
    move-object v5, p3

    #@1f
    move v6, p4

    #@20
    .line 2494
    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    #@23
    .line 2496
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    #@25
    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    #@28
    .line 2497
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@2a
    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@2c
    const/4 v3, 0x1

    #@2d
    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    #@34
    .line 2483
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_0
    return-void

    #@35
    .line 2487
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 2502
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    const-string/jumbo v1, "MountService"

    #@3b
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "Unknown OBB mount at "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    goto :goto_0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    #@0
    .prologue
    .line 2277
    const-string/jumbo v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2278
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2279
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2281
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@e
    monitor-enter v5

    #@f
    .line 2282
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@11
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 2283
    const/4 v4, -0x5

    #@18
    monitor-exit v5

    #@19
    return v4

    #@1a
    :cond_0
    monitor-exit v5

    #@1b
    .line 2293
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    #@22
    .line 2295
    const/4 v3, 0x0

    #@23
    .line 2297
    .local v3, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@25
    const-string/jumbo v4, "asec"

    #@28
    const/4 v5, 0x2

    #@29
    new-array v5, v5, [Ljava/lang/Object;

    #@2b
    const-string/jumbo v6, "unmount"

    #@2e
    const/4 v7, 0x0

    #@2f
    aput-object v6, v5, v7

    #@31
    const/4 v6, 0x1

    #@32
    aput-object p1, v5, v6

    #@34
    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@37
    .line 2298
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_1

    #@39
    .line 2299
    const-string/jumbo v4, "force"

    #@3c
    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@3f
    .line 2301
    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@41
    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@44
    .line 2311
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    #@46
    .line 2312
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@48
    monitor-enter v5

    #@49
    .line 2313
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@4b
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    monitor-exit v5

    #@4f
    .line 2316
    :cond_2
    return v3

    #@50
    .line 2281
    .end local v3    # "rc":I
    :catchall_0
    move-exception v4

    #@51
    monitor-exit v5

    #@52
    throw v4

    #@53
    .line 2302
    .restart local v3    # "rc":I
    :catch_0
    move-exception v2

    #@54
    .line 2303
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@57
    move-result v1

    #@58
    .line 2304
    .local v1, "code":I
    const/16 v4, 0x195

    #@5a
    if-ne v1, v4, :cond_3

    #@5c
    .line 2305
    const/4 v3, -0x7

    #@5d
    goto :goto_0

    #@5e
    .line 2307
    :cond_3
    const/4 v3, -0x1

    #@5f
    goto :goto_0

    #@60
    .line 2312
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v4

    #@61
    monitor-exit v5

    #@62
    throw v4
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    #@0
    .prologue
    .line 1715
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    #@7
    .line 1714
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    #@0
    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->unregister(Landroid/os/storage/IMountServiceListener;)V

    #@5
    .line 1670
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    const/16 v3, 0x3e8

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 2630
    new-instance v2, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v3, "no permission to access the crypt keeper"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 2633
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@13
    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    #@16
    .line 2634
    const-string/jumbo v4, "no permission to access the crypt keeper"

    #@19
    .line 2633
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2636
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 2637
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v3, "password cannot be empty"

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 2640
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@2e
    .line 2648
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@30
    const-string/jumbo v3, "cryptfs"

    #@33
    const/4 v4, 0x2

    #@34
    new-array v4, v4, [Ljava/lang/Object;

    #@36
    const-string/jumbo v5, "verifypw"

    #@39
    const/4 v6, 0x0

    #@3a
    aput-object v5, v4, v6

    #@3c
    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@3e
    invoke-direct {v5, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@41
    const/4 v6, 0x1

    #@42
    aput-object v5, v4, v6

    #@44
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@47
    move-result-object v1

    #@48
    .line 2649
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v2, "MountService"

    #@4b
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "cryptfs verifypw => "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 2650
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    move-result v2

    #@6e
    return v2

    #@6f
    .line 2651
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@70
    .line 2653
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@73
    move-result v2

    #@74
    return v2
.end method

.method public waitForAsecScan()V
    .locals 2

    #@0
    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    #@2
    const-string/jumbo v1, "mAsecsScanned"

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    #@8
    .line 757
    return-void
.end method
