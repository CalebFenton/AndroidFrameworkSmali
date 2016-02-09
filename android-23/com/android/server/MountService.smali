.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$Lifecycle;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$Callbacks;,
        Lcom/android/server/MountService$MountServiceInternalImpl;,
        Lcom/android/server/MountService$1;
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

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

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

.field private final mCallbacks:Lcom/android/server/MountService$Callbacks;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mCryptConnector:Lcom/android/server/NativeDaemonConnector;

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

.field private final mLock:Ljava/lang/Object;

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

.field private mStartedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mSystemReady:Z

.field private final mUnmountLock:Ljava/lang/Object;

.field private mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnmountLock"
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumes:Landroid/util/ArrayMap;
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

.method static synthetic -get5(Lcom/android/server/MountService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@2
    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/server/MountService;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

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

.method static synthetic -set1(Lcom/android/server/MountService;J)J
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

.method static synthetic -wrap10(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->systemReady()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/MountService;)V
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
    invoke-direct {p0}, Lcom/android/server/MountService;->handleDaemonConnected()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/MountService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/MountService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onCleanupUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/MountService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onStartUser(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/MountService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->remountUidExternalStorage(II)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 149
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    #@3
    .line 401
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
    .line 400
    sput-object v0, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@20
    .line 526
    new-instance v0, Landroid/content/ComponentName;

    #@22
    .line 527
    const-string/jumbo v1, "com.android.defcontainer"

    #@25
    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    #@28
    .line 526
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    #@2d
    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1352
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    #@3
    .line 281
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@a
    .line 284
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@c
    iput-object v0, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    #@e
    .line 288
    new-instance v0, Landroid/util/ArrayMap;

    #@10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@15
    .line 291
    new-instance v0, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@1c
    .line 295
    new-instance v0, Landroid/util/ArrayMap;

    #@1e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@23
    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    #@25
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@28
    iput-object v0, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    #@2a
    .line 407
    const/4 v0, 0x0

    #@2b
    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@2d
    .line 408
    const/4 v0, 0x0

    #@2e
    iput-boolean v0, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@30
    .line 415
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@32
    const/4 v1, 0x2

    #@33
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@36
    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@38
    .line 416
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@3a
    const/4 v1, 0x1

    #@3b
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@3e
    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    #@40
    .line 418
    new-instance v0, Ljava/lang/Object;

    #@42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@45
    iput-object v0, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    #@47
    .line 426
    new-instance v0, Ljava/util/HashSet;

    #@49
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@4c
    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@4e
    .line 444
    new-instance v0, Ljava/util/HashMap;

    #@50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@53
    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@55
    .line 447
    new-instance v0, Ljava/util/HashMap;

    #@57
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5a
    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@5c
    .line 450
    new-instance v0, Lcom/android/server/MountService$MountServiceInternalImpl;

    #@5e
    const/4 v1, 0x0

    #@5f
    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$MountServiceInternalImpl;)V

    #@62
    iput-object v0, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    #@64
    .line 529
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    #@66
    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    #@69
    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    #@6b
    .line 548
    const/4 v0, 0x0

    #@6c
    iput-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    #@6e
    .line 672
    new-instance v0, Lcom/android/server/MountService$1;

    #@70
    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    #@73
    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@75
    .line 1353
    sput-object p0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    #@77
    .line 1355
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@79
    .line 1356
    new-instance v0, Lcom/android/server/MountService$Callbacks;

    #@7b
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@82
    move-result-object v1

    #@83
    invoke-direct {v0, v1}, Lcom/android/server/MountService$Callbacks;-><init>(Landroid/os/Looper;)V

    #@86
    iput-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@88
    .line 1359
    const-string/jumbo v0, "package"

    #@8b
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8e
    move-result-object v0

    #@8f
    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    #@91
    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@93
    .line 1361
    new-instance v10, Landroid/os/HandlerThread;

    #@95
    const-string/jumbo v0, "MountService"

    #@98
    invoke-direct {v10, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@9b
    .line 1362
    .local v10, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    #@9e
    .line 1363
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    #@a0
    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@a3
    move-result-object v1

    #@a4
    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    #@a7
    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@a9
    .line 1366
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    #@ab
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@b2
    move-result-object v1

    #@b3
    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    #@b6
    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@b8
    .line 1369
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@bb
    move-result-object v8

    #@bc
    .line 1370
    .local v8, "dataDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    #@be
    const-string/jumbo v0, "system"

    #@c1
    invoke-direct {v11, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c4
    .line 1371
    .local v11, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@c6
    const-string/jumbo v1, "last-fstrim"

    #@c9
    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@cc
    iput-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@ce
    .line 1372
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@d0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@d3
    move-result v0

    #@d4
    if-nez v0, :cond_0

    #@d6
    .line 1376
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    #@d8
    iget-object v1, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@da
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@dd
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e0
    .line 1384
    :goto_0
    new-instance v0, Landroid/util/AtomicFile;

    #@e2
    .line 1385
    new-instance v1, Ljava/io/File;

    #@e4
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    #@e7
    move-result-object v2

    #@e8
    const-string/jumbo v3, "storage.xml"

    #@eb
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@ee
    .line 1384
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@f1
    iput-object v0, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@f3
    .line 1387
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@f5
    monitor-enter v0

    #@f6
    .line 1388
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/MountService;->readSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f9
    monitor-exit v0

    #@fa
    .line 1391
    const-class v0, Landroid/os/storage/MountServiceInternal;

    #@fc
    iget-object v1, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    #@fe
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@101
    .line 1399
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    #@103
    const-string/jumbo v2, "vold"

    #@106
    const-string/jumbo v4, "VoldConnector"

    #@109
    const/16 v3, 0x1f4

    #@10b
    const/16 v5, 0x19

    #@10d
    .line 1400
    const/4 v6, 0x0

    #@10e
    move-object v1, p0

    #@10f
    .line 1399
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    #@112
    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@114
    .line 1401
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@116
    const/4 v1, 0x1

    #@117
    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    #@11a
    .line 1403
    new-instance v12, Ljava/lang/Thread;

    #@11c
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@11e
    const-string/jumbo v1, "VoldConnector"

    #@121
    invoke-direct {v12, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@124
    .line 1404
    .local v12, "thread":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    #@127
    .line 1407
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    #@129
    const-string/jumbo v2, "cryptd"

    #@12c
    .line 1408
    const-string/jumbo v4, "CryptdConnector"

    #@12f
    const/16 v3, 0x1f4

    #@131
    const/16 v5, 0x19

    #@133
    const/4 v6, 0x0

    #@134
    move-object v1, p0

    #@135
    .line 1407
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    #@138
    iput-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@13a
    .line 1409
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@13c
    const/4 v1, 0x1

    #@13d
    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    #@140
    .line 1411
    new-instance v7, Ljava/lang/Thread;

    #@142
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@144
    const-string/jumbo v1, "CryptdConnector"

    #@147
    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@14a
    .line 1412
    .local v7, "crypt_thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    #@14d
    .line 1414
    new-instance v13, Landroid/content/IntentFilter;

    #@14f
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    #@152
    .line 1415
    .local v13, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@155
    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@158
    .line 1416
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@15b
    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@15e
    .line 1417
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@160
    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    #@162
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@164
    const/4 v3, 0x0

    #@165
    invoke-virtual {v0, v1, v13, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@168
    .line 1419
    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolume()V

    #@16b
    .line 1352
    return-void

    #@16c
    .line 1377
    .end local v7    # "crypt_thread":Ljava/lang/Thread;
    .end local v12    # "thread":Ljava/lang/Thread;
    .end local v13    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v9

    #@16d
    .line 1378
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v0, "MountService"

    #@170
    new-instance v1, Ljava/lang/StringBuilder;

    #@172
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@175
    const-string/jumbo v2, "Unable to create fstrim record "

    #@178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v1

    #@17c
    iget-object v2, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@17e
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@181
    move-result-object v2

    #@182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v1

    #@186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v1

    #@18a
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18d
    goto/16 :goto_0

    #@18f
    .line 1381
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    #@191
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@194
    move-result-wide v0

    #@195
    iput-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@197
    goto/16 :goto_0

    #@199
    .line 1387
    :catchall_0
    move-exception v1

    #@19a
    monitor-exit v0

    #@19b
    throw v1
.end method

.method private addInternalVolume()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 771
    new-instance v0, Landroid/os/storage/VolumeInfo;

    #@3
    const-string/jumbo v1, "private"

    #@6
    .line 772
    const/4 v2, 0x1

    #@7
    .line 771
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    #@a
    .line 773
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    #@b
    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    #@d
    .line 774
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
    .line 775
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@19
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 769
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
    .line 2717
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 2718
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@6
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    check-cast v4, Ljava/util/List;

    #@c
    .line 2720
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    #@e
    .line 2721
    new-instance v4, Ljava/util/ArrayList;

    #@10
    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 2722
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@15
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 2732
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 2734
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 2749
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@20
    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@22
    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 2716
    return-void

    #@26
    .line 2724
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
    .line 2725
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
    .line 2726
    new-instance v5, Ljava/lang/IllegalStateException;

    #@42
    const-string/jumbo v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    #@45
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@48
    throw v5

    #@49
    .line 2735
    .end local v2    # "o":Lcom/android/server/MountService$ObbState;
    .end local v3    # "o$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@4a
    .line 2740
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@4d
    .line 2741
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_3

    #@53
    .line 2742
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@55
    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 2746
    :cond_3
    throw v1
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3180
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 3181
    return-object p0

    #@8
    .line 3184
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 3187
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    #@e
    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@11
    .line 3190
    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 3192
    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 3195
    .local v1, "legacyExternalPath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_1

    #@27
    .line 3196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2a
    move-result v6

    #@2b
    add-int/lit8 v6, v6, 0x1

    #@2d
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    .line 3204
    :goto_0
    const-string/jumbo v2, "Android/obb"

    #@34
    .line 3205
    .local v2, "obbPath":Ljava/lang/String;
    const-string/jumbo v6, "Android/obb"

    #@37
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_3

    #@3d
    .line 3206
    const-string/jumbo v6, "Android/obb"

    #@40
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@43
    move-result v6

    #@44
    add-int/lit8 v6, v6, 0x1

    #@46
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    .line 3208
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    #@4c
    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@4f
    .line 3209
    .local v3, "ownerEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    #@51
    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    #@54
    move-result-object v7

    #@55
    aget-object v7, v7, v8

    #@57
    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5a
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    return-object v6

    #@5f
    .line 3197
    .end local v2    # "obbPath":Ljava/lang/String;
    .end local v3    # "ownerEnv":Landroid/os/Environment$UserEnvironment;
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_2

    #@65
    .line 3198
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@68
    move-result v6

    #@69
    add-int/lit8 v6, v6, 0x1

    #@6b
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    goto :goto_0

    #@70
    .line 3200
    :cond_2
    return-object p0

    #@71
    .line 3214
    .restart local v2    # "obbPath":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/io/File;

    #@73
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    #@76
    move-result-object v7

    #@77
    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@7a
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    return-object v6
.end method

.method private copyLocaleFromMountService()V
    .locals 7

    #@0
    .prologue
    .line 904
    :try_start_0
    const-string/jumbo v4, "SystemLocale"

    #@3
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v3

    #@7
    .line 908
    .local v3, "systemLocale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 909
    return-void

    #@e
    .line 905
    .end local v3    # "systemLocale":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@f
    .line 906
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    #@10
    .line 912
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
    .line 913
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@34
    move-result-object v2

    #@35
    .line 914
    .local v2, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/content/res/Configuration;

    #@37
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@3a
    .line 915
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    #@3d
    .line 917
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@40
    move-result-object v4

    #@41
    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@44
    .line 923
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
    .line 924
    const-string/jumbo v4, "persist.sys.locale"

    #@68
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    .line 901
    return-void

    #@70
    .line 918
    :catch_1
    move-exception v1

    #@71
    .line 919
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MountService"

    #@74
    const-string/jumbo v5, "Error setting system locale from mount service"

    #@77
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    goto :goto_0
.end method

.method private enforceAdminUser()V
    .locals 7

    #@0
    .prologue
    .line 1333
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
    .line 1334
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v0

    #@f
    .line 1336
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v2

    #@13
    .line 1338
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
    .line 1340
    .local v1, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1342
    if-nez v1, :cond_0

    #@20
    .line 1343
    new-instance v5, Ljava/lang/SecurityException;

    #@22
    const-string/jumbo v6, "Only admin users can adopt sd cards"

    #@25
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@28
    throw v5

    #@29
    .line 1339
    .end local v1    # "isAdmin":Z
    :catchall_0
    move-exception v5

    #@2a
    .line 1340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1339
    throw v5

    #@2e
    .line 1332
    .restart local v1    # "isAdmin":Z
    :cond_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 1315
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 3
    .param p1, "diskId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 387
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    #@b
    .line 389
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_0

    #@d
    .line 390
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@f
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 0x1

    #@10
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@13
    .line 391
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
    .line 393
    return-object v0

    #@1a
    .line 387
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
    .line 333
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 334
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
    .line 335
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/os/storage/VolumeInfo;

    #@15
    .line 336
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
    .line 337
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
    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    #@31
    .line 341
    return-object v4

    #@32
    .line 333
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
    .line 358
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
    .line 359
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@c
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 360
    const-string/jumbo v1, "emulated"

    #@15
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 361
    :cond_0
    const-string/jumbo v1, "primary_physical"

    #@1d
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 362
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 364
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
    .line 311
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 312
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
    .line 313
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 314
    return-object v0

    #@f
    :cond_0
    monitor-exit v2

    #@10
    .line 317
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
    .line 311
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
    .line 321
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 322
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
    .line 323
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/storage/VolumeInfo;

    #@14
    .line 324
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
    .line 325
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v3

    #@23
    return-object v2

    #@24
    .line 322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    #@28
    .line 329
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
    .line 321
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
    .line 1806
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
    .line 1804
    :goto_0
    return-void

    #@15
    .line 1807
    :catch_0
    move-exception v0

    #@16
    .line 1808
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
    .line 1433
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
    .line 1434
    const-string/jumbo v0, "primary_physical"

    #@d
    return-object v0

    #@e
    .line 1436
    :cond_0
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@10
    return-object v0
.end method

.method private handleDaemonConnected()V
    .locals 4

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 875
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 882
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@c
    .line 883
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@e
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    #@11
    move-result-wide v0

    #@12
    const-wide/16 v2, 0x0

    #@14
    cmp-long v0, v0, v2

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 885
    return-void

    #@19
    .line 874
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v0

    #@1b
    throw v1

    #@1c
    .line 890
    :cond_0
    const-string/jumbo v0, ""

    #@1f
    const-string/jumbo v1, "vold.encrypt_progress"

    #@22
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 891
    invoke-direct {p0}, Lcom/android/server/MountService;->copyLocaleFromMountService()V

    #@2f
    .line 895
    :cond_1
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@31
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    #@34
    .line 898
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    #@36
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@39
    .line 873
    return-void
.end method

.method private handleSystemReady()V
    .locals 2

    #@0
    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 739
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 743
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    #@c
    .line 737
    return-void

    #@d
    .line 738
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v0

    #@f
    throw v1
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1198
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    #@4
    move-result v0

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 1204
    return v1

    #@9
    .line 1207
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    #@c
    move-result v0

    #@d
    packed-switch v0, :pswitch_data_1

    #@10
    .line 1216
    :pswitch_1
    return v1

    #@11
    .line 1219
    :pswitch_2
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 1198
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@1e
    .line 1207
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
    .line 1323
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
    .line 1324
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
    .line 1325
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_physical_media"

    #@17
    .line 1326
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@1a
    move-result-object v2

    #@1b
    .line 1325
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 1328
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_1
    return v3
.end method

.method private isReady()Z
    .locals 5

    #@0
    .prologue
    .line 731
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
    .line 732
    :catch_0
    move-exception v0

    #@c
    .line 733
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2238
    const/16 v3, 0x3e8

    #@4
    if-ne p2, v3, :cond_0

    #@6
    .line 2239
    return v1

    #@7
    .line 2242
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 2243
    return v2

    #@a
    .line 2246
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@c
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@f
    move-result v4

    #@10
    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    #@13
    move-result v0

    #@14
    .line 2253
    .local v0, "packageUid":I
    if-ne p2, v0, :cond_2

    #@16
    :goto_0
    return v1

    #@17
    :cond_2
    move v1, v2

    #@18
    goto :goto_0
.end method

.method private killMediaProvider()V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 754
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@6
    const-string/jumbo v6, "media"

    #@9
    const/4 v7, 0x0

    #@a
    .line 755
    const/4 v8, 0x0

    #@b
    .line 754
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    #@e
    move-result-object v2

    #@f
    .line 756
    .local v2, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_0

    #@11
    .line 757
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v0

    #@15
    .line 759
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@19
    .line 760
    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1d
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    #@20
    move-result v6

    #@21
    const-string/jumbo v7, "vold reset"

    #@24
    .line 759
    invoke-interface {v0, v3, v6, v7}, Landroid/app/IActivityManager;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 765
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 751
    return-void

    #@2b
    .line 764
    .end local v2    # "provider":Landroid/content/pm/ProviderInfo;
    :catchall_0
    move-exception v3

    #@2c
    .line 765
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 764
    throw v3

    #@30
    .line 761
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v2    # "provider":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v1

    #@31
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private onCleanupUser(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 836
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
    .line 839
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
    .line 843
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@34
    monitor-enter v2

    #@35
    .line 844
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    #@37
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Lcom/android/server/MountService;->mStartedUsers:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    monitor-exit v2

    #@3e
    .line 835
    return-void

    #@3f
    .line 843
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v2

    #@41
    throw v1

    #@42
    .line 840
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
    .line 1129
    const/4 v4, 0x0

    #@1
    .line 1130
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
    .line 1131
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/os/storage/VolumeInfo;

    #@12
    .line 1132
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
    .line 1133
    add-int/lit8 v4, v4, 0x1

    #@20
    .line 1130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1137
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@25
    const-string/jumbo v5, "android.os.storage.action.DISK_SCANNED"

    #@28
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2b
    .line 1138
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    #@2d
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@30
    .line 1139
    const-string/jumbo v5, "android.os.storage.extra.DISK_ID"

    #@33
    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    #@35
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@38
    .line 1140
    const-string/jumbo v5, "android.os.storage.extra.VOLUME_COUNT"

    #@3b
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3e
    .line 1141
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
    .line 1143
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
    .line 1144
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_2

    #@54
    .line 1145
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@57
    .line 1148
    :cond_2
    iput v4, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    #@59
    .line 1149
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@5b
    invoke-static {v5, p1, v4}, Lcom/android/server/MountService$Callbacks;->-wrap1(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    #@5e
    .line 1128
    return-void
.end method

.method private onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 35
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 946
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1121
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
    .line 1125
    :cond_0
    :goto_0
    const/16 v32, 0x1

    #@23
    return v32

    #@24
    .line 948
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
    .line 949
    const/16 v32, 0x1

    #@33
    aget-object v18, p3, v32

    #@35
    .line 950
    .local v18, "id":Ljava/lang/String;
    const/16 v32, 0x2

    #@37
    aget-object v32, p3, v32

    #@39
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3c
    move-result v16

    #@3d
    .line 951
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
    .line 952
    move-object/from16 v0, p0

    #@4a
    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@4c
    move/from16 v32, v0

    #@4e
    .line 951
    if-eqz v32, :cond_2

    #@50
    .line 953
    :cond_1
    or-int/lit8 v16, v16, 0x1

    #@52
    .line 955
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
    .line 959
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
    .line 960
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
    .line 961
    .local v5, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@8c
    .line 962
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
    .line 967
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
    .line 968
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@ab
    .line 969
    new-instance v4, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    .line 970
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
    .line 971
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
    .line 970
    add-int/lit8 v17, v17, 0x1

    #@cc
    goto :goto_1

    #@cd
    .line 973
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
    .line 978
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
    .line 979
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
    .line 980
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@fa
    .line 981
    move-object/from16 v0, p0

    #@fc
    invoke-direct {v0, v5}, Lcom/android/server/MountService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    #@ff
    goto/16 :goto_0

    #@101
    .line 986
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
    .line 987
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
    .line 988
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@120
    .line 989
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
    .line 994
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
    .line 995
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
    .line 996
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    #@149
    .line 997
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
    .line 1003
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_7
    const/16 v32, 0x1

    #@158
    aget-object v18, p3, v32

    #@15a
    .line 1004
    .restart local v18    # "id":Ljava/lang/String;
    const/16 v32, 0x2

    #@15c
    aget-object v32, p3, v32

    #@15e
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@161
    move-result v30

    #@162
    .line 1005
    .local v30, "type":I
    const/16 v32, 0x3

    #@164
    aget-object v32, p3, v32

    #@166
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    #@169
    move-result-object v12

    #@16a
    .line 1006
    .local v12, "diskId":Ljava/lang/String;
    const/16 v32, 0x4

    #@16c
    aget-object v32, p3, v32

    #@16e
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    #@171
    move-result-object v22

    #@172
    .line 1008
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
    .line 1009
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
    .line 1010
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
    .line 1011
    move-object/from16 v0, p0

    #@19e
    move-object/from16 v1, v31

    #@1a0
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    #@1a3
    goto/16 :goto_0

    #@1a5
    .line 1015
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
    .line 1016
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
    .line 1017
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@1c4
    .line 1018
    move-object/from16 v0, v31

    #@1c6
    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    #@1c8
    move/from16 v21, v0

    #@1ca
    .line 1019
    .local v21, "oldState":I
    const/16 v32, 0x2

    #@1cc
    aget-object v32, p3, v32

    #@1ce
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1d1
    move-result v20

    #@1d2
    .line 1020
    .local v20, "newState":I
    move/from16 v0, v20

    #@1d4
    move-object/from16 v1, v31

    #@1d6
    iput v0, v1, Landroid/os/storage/VolumeInfo;->state:I

    #@1d8
    .line 1021
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
    .line 1026
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
    .line 1027
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
    .line 1028
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@204
    .line 1029
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
    .line 1034
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
    .line 1035
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
    .line 1036
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@22f
    .line 1037
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
    .line 1042
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
    .line 1043
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@24d
    .line 1044
    new-instance v4, Ljava/lang/StringBuilder;

    #@24f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@252
    .line 1045
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
    .line 1046
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
    .line 1045
    add-int/lit8 v17, v17, 0x1

    #@26e
    goto :goto_2

    #@26f
    .line 1048
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
    .line 1054
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
    .line 1055
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
    .line 1056
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@29e
    .line 1057
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
    .line 1062
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
    .line 1063
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
    .line 1064
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    #@2c9
    .line 1065
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
    .line 1070
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
    .line 1071
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
    .line 1076
    :pswitch_f
    const/16 v32, 0x1

    #@2f3
    aget-object v32, p3, v32

    #@2f5
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f8
    move-result v25

    #@2f9
    .line 1077
    .local v25, "status":I
    move-object/from16 v0, p0

    #@2fb
    move/from16 v1, v25

    #@2fd
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    #@300
    goto/16 :goto_0

    #@302
    .line 1081
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
    .line 1082
    const/16 v32, 0x1

    #@311
    aget-object v23, p3, v32

    #@313
    .line 1083
    .local v23, "path":Ljava/lang/String;
    const/16 v32, 0x2

    #@315
    aget-object v19, p3, v32

    #@317
    .line 1084
    .local v19, "ident":Ljava/lang/String;
    const/16 v32, 0x3

    #@319
    aget-object v32, p3, v32

    #@31b
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@31e
    move-result-wide v8

    #@31f
    .line 1085
    .local v8, "create":J
    const/16 v32, 0x4

    #@321
    aget-object v32, p3, v32

    #@323
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@326
    move-result-wide v14

    #@327
    .line 1086
    .local v14, "drop":J
    const/16 v32, 0x5

    #@329
    aget-object v32, p3, v32

    #@32b
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@32e
    move-result-wide v26

    #@32f
    .line 1087
    .local v26, "run":J
    const/16 v32, 0x6

    #@331
    aget-object v32, p3, v32

    #@333
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@336
    move-result-wide v10

    #@337
    .line 1089
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
    .line 1090
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
    .line 1091
    const-string/jumbo v34, " "

    #@35c
    .line 1090
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
    .line 1091
    const-string/jumbo v34, " "

    #@36b
    .line 1090
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
    .line 1091
    const-string/jumbo v34, " "

    #@378
    .line 1090
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
    .line 1091
    const-string/jumbo v34, " "

    #@387
    .line 1090
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
    .line 1093
    move-object/from16 v0, p0

    #@39e
    move-object/from16 v1, v23

    #@3a0
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    #@3a3
    move-result-object v24

    #@3a4
    .line 1094
    .local v24, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v24, :cond_0

    #@3a6
    .line 1095
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
    .line 1096
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@3b3
    goto/16 :goto_0

    #@3b5
    .line 1102
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
    .line 1103
    const/16 v32, 0x1

    #@3c4
    aget-object v23, p3, v32

    #@3c6
    .line 1104
    .restart local v23    # "path":Ljava/lang/String;
    const/16 v32, 0x2

    #@3c8
    aget-object v32, p3, v32

    #@3ca
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3cd
    move-result-wide v6

    #@3ce
    .line 1105
    .local v6, "bytes":J
    const/16 v32, 0x3

    #@3d0
    aget-object v32, p3, v32

    #@3d2
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3d5
    move-result-wide v28

    #@3d6
    .line 1107
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
    .line 1108
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
    .line 1109
    const-string/jumbo v34, " "

    #@3fb
    .line 1108
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
    .line 1109
    const-string/jumbo v34, " "

    #@408
    .line 1108
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
    .line 1111
    move-object/from16 v0, p0

    #@421
    move-object/from16 v1, v23

    #@423
    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    #@426
    move-result-object v24

    #@427
    .line 1112
    .restart local v24    # "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v24, :cond_0

    #@429
    .line 1113
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
    .line 1114
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@436
    goto/16 :goto_0

    #@438
    .line 946
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
    .line 1287
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1288
    const-string/jumbo v1, "MountService"

    #@8
    const-string/jumbo v2, "Odd, status but no move requested"

    #@b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 1289
    return-void

    #@f
    .line 1294
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
    .line 1300
    :goto_0
    const/16 v1, 0x52

    #@19
    if-ne p1, v1, :cond_1

    #@1b
    .line 1301
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
    .line 1303
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    #@40
    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@42
    .line 1304
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@45
    .line 1307
    :cond_1
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_2

    #@4b
    .line 1308
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
    .line 1310
    iput-object v5, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@74
    .line 1311
    iput-object v5, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    #@76
    .line 1286
    :cond_2
    return-void

    #@77
    .line 1295
    :catch_0
    move-exception v0

    #@78
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private onStartUser(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 808
    const-string/jumbo v5, "MountService"

    #@3
    new-instance v6, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v7, "onStartUser "

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
    .line 814
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
    .line 820
    :goto_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@34
    monitor-enter v6

    #@35
    .line 821
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
    .line 822
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/os/storage/VolumeInfo;

    #@46
    .line 823
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
    .line 824
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@54
    const/4 v7, 0x0

    #@55
    invoke-virtual {v4, v5, p1, v7}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    #@58
    move-result-object v3

    #@59
    .line 825
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
    .line 827
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    #@66
    move-result v5

    #@67
    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    .line 828
    .local v0, "envState":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@6d
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    invoke-static {v5, v7, v0, v0}, Lcom/android/server/MountService$Callbacks;->-wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 821
    .end local v0    # "envState":Ljava/lang/String;
    .end local v3    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_1

    #@77
    .line 831
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    #@79
    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@7c
    move-result-object v5

    #@7d
    iput-object v5, p0, Lcom/android/server/MountService;->mStartedUsers:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    monitor-exit v6

    #@80
    .line 807
    return-void

    #@81
    .line 820
    :catchall_0
    move-exception v5

    #@82
    monitor-exit v6

    #@83
    throw v5

    #@84
    .line 815
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    #@85
    .local v2, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto :goto_0
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .locals 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x5

    #@2
    .line 1153
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@4
    const/4 v3, 0x2

    #@5
    if-ne v2, v3, :cond_2

    #@7
    .line 1154
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@9
    const-class v3, Landroid/os/storage/StorageManager;

    #@b
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/os/storage/StorageManager;

    #@11
    .line 1155
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    #@14
    move-result-object v0

    #@15
    .line 1157
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@17
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@19
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 1158
    const-string/jumbo v2, "private"

    #@22
    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    .line 1157
    if-eqz v2, :cond_1

    #@2a
    .line 1159
    const-string/jumbo v2, "MountService"

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Found primary storage at "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 1160
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@46
    or-int/lit8 v2, v2, 0x1

    #@48
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@4a
    .line 1161
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@4c
    or-int/lit8 v2, v2, 0x2

    #@4e
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@50
    .line 1162
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@52
    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@59
    .line 1152
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_0
    :goto_0
    return-void

    #@5a
    .line 1164
    .restart local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_1
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@5c
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@5e
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_0

    #@64
    .line 1165
    const-string/jumbo v2, "MountService"

    #@67
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v4, "Found primary storage at "

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 1166
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@80
    or-int/lit8 v2, v2, 0x1

    #@82
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@84
    .line 1167
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@86
    or-int/lit8 v2, v2, 0x2

    #@88
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@8a
    .line 1168
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@8c
    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@93
    goto :goto_0

    #@94
    .line 1171
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_2
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@96
    if-nez v2, :cond_5

    #@98
    .line 1173
    const-string/jumbo v2, "primary_physical"

    #@9b
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@9d
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a0
    move-result v2

    #@a1
    if-eqz v2, :cond_3

    #@a3
    .line 1174
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@a5
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    #@a8
    move-result v2

    #@a9
    .line 1173
    if-eqz v2, :cond_3

    #@ab
    .line 1175
    const-string/jumbo v2, "MountService"

    #@ae
    new-instance v3, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v4, "Found primary storage at "

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v3

    #@c2
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    .line 1176
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@c7
    or-int/lit8 v2, v2, 0x1

    #@c9
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@cb
    .line 1177
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@cd
    or-int/lit8 v2, v2, 0x2

    #@cf
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@d1
    .line 1182
    :cond_3
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@d3
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    #@d6
    move-result v2

    #@d7
    if-eqz v2, :cond_4

    #@d9
    .line 1183
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@db
    or-int/lit8 v2, v2, 0x2

    #@dd
    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    #@df
    .line 1186
    :cond_4
    iput v6, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    #@e1
    .line 1187
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@e3
    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e6
    move-result-object v2

    #@e7
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 1189
    :cond_5
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@ee
    const/4 v3, 0x1

    #@ef
    if-ne v2, v3, :cond_6

    #@f1
    .line 1190
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@f3
    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 1193
    :cond_6
    const-string/jumbo v2, "MountService"

    #@ff
    new-instance v3, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v4, "Skipping automatic mounting of "

    #@107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v3

    #@10b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v3

    #@10f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v3

    #@113
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@116
    goto/16 :goto_0
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .locals 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    .line 1225
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
    .line 1245
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@10
    invoke-static {v6, p1, p2, p3}, Lcom/android/server/MountService$Callbacks;->-wrap5(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    #@13
    .line 1247
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_1

    #@19
    .line 1248
    new-instance v0, Landroid/content/Intent;

    #@1b
    const-string/jumbo v6, "android.os.storage.action.VOLUME_STATE_CHANGED"

    #@1e
    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@21
    .line 1249
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    #@24
    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@26
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@29
    .line 1250
    const-string/jumbo v6, "android.os.storage.extra.VOLUME_STATE"

    #@2c
    invoke-virtual {v0, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2f
    .line 1251
    const-string/jumbo v6, "android.os.storage.extra.FS_UUID"

    #@32
    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@34
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@37
    .line 1252
    const/high16 v6, 0x4000000

    #@39
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3c
    .line 1253
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@3e
    const/4 v7, 0x7

    #@3f
    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    #@46
    .line 1256
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 1257
    .local v2, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 1259
    .local v1, "newStateEnv":Ljava/lang/String;
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@51
    move-result v6

    #@52
    if-nez v6, :cond_6

    #@54
    .line 1263
    iget-object v7, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    #@56
    const/4 v6, 0x0

    #@57
    array-length v8, v7

    #@58
    :goto_1
    if-ge v6, v8, :cond_6

    #@5a
    aget v4, v7, v6

    #@5c
    .line 1264
    .local v4, "userId":I
    invoke-virtual {p1, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    #@5f
    move-result v9

    #@60
    if-eqz v9, :cond_2

    #@62
    .line 1265
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@64
    const/4 v10, 0x0

    #@65
    invoke-virtual {p1, v9, v4, v10}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    #@68
    move-result-object v5

    #@69
    .line 1266
    .local v5, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@6b
    const/4 v10, 0x6

    #@6c
    invoke-virtual {v9, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    #@73
    .line 1268
    iget-object v9, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@75
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    #@78
    move-result-object v10

    #@79
    invoke-static {v9, v10, v2, v1}, Lcom/android/server/MountService$Callbacks;->-wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7c
    .line 1263
    .end local v5    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@7e
    goto :goto_1

    #@7f
    .line 1226
    .end local v1    # "newStateEnv":Ljava/lang/String;
    .end local v2    # "oldStateEnv":Ljava/lang/String;
    .end local v4    # "userId":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@81
    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@83
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    move-result-object v3

    #@87
    check-cast v3, Landroid/os/storage/VolumeRecord;

    #@89
    .line 1227
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v3, :cond_5

    #@8b
    .line 1228
    new-instance v3, Landroid/os/storage/VolumeRecord;

    #@8d
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@8f
    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@91
    invoke-direct {v3, v6, v7}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    #@94
    .line 1229
    .restart local v3    # "rec":Landroid/os/storage/VolumeRecord;
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    #@96
    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@98
    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9b
    move-result-wide v6

    #@9c
    iput-wide v6, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@9e
    .line 1231
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@a0
    const/4 v7, 0x1

    #@a1
    if-ne v6, v7, :cond_4

    #@a3
    .line 1232
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@a5
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@ab
    .line 1234
    :cond_4
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@ad
    iget-object v7, v3, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@af
    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    .line 1235
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 1238
    :cond_5
    iget-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@b9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@bc
    move-result v6

    #@bd
    if-eqz v6, :cond_0

    #@bf
    .line 1239
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    #@c1
    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@c3
    .line 1240
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1274
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    .restart local v1    # "newStateEnv":Ljava/lang/String;
    .restart local v2    # "oldStateEnv":Ljava/lang/String;
    :cond_6
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@ca
    if-nez v6, :cond_7

    #@cc
    iget v6, p1, Landroid/os/storage/VolumeInfo;->state:I

    #@ce
    const/4 v7, 0x5

    #@cf
    if-ne v6, v7, :cond_7

    #@d1
    .line 1281
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@d3
    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    #@d5
    .line 1282
    iget-object v8, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    #@d7
    const/4 v9, 0x5

    #@d8
    .line 1281
    invoke-virtual {v7, v9, v8}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@db
    move-result-object v7

    #@dc
    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    #@df
    .line 1222
    :cond_7
    return-void
.end method

.method private readSettingsLocked()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x2

    #@1
    const/4 v13, 0x1

    #@2
    const/4 v12, 0x0

    #@3
    .line 1441
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    #@8
    .line 1442
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    #@b
    move-result-object v11

    #@c
    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@e
    .line 1443
    iput-boolean v12, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@10
    .line 1445
    const/4 v3, 0x0

    #@11
    .line 1447
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@13
    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@16
    move-result-object v3

    #@17
    .line 1448
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@1a
    move-result-object v4

    #@1b
    .line 1449
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1d
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@20
    move-result-object v11

    #@21
    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@24
    .line 1452
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@27
    move-result v8

    #@28
    .local v8, "type":I
    if-eq v8, v13, :cond_6

    #@2a
    .line 1453
    if-ne v8, v14, :cond_0

    #@2c
    .line 1454
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    .line 1455
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v11, "volumes"

    #@33
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v11

    #@37
    if-eqz v11, :cond_5

    #@39
    .line 1456
    const-string/jumbo v11, "version"

    #@3c
    const/4 v12, 0x1

    #@3d
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@40
    move-result v10

    #@41
    .line 1458
    .local v10, "version":I
    const-string/jumbo v11, "ro.vold.primary_physical"

    #@44
    const/4 v12, 0x0

    #@45
    .line 1457
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@48
    move-result v5

    #@49
    .line 1459
    .local v5, "primaryPhysical":Z
    const/4 v11, 0x3

    #@4a
    if-ge v10, v11, :cond_3

    #@4c
    .line 1460
    if-lt v10, v14, :cond_1

    #@4e
    if-eqz v5, :cond_4

    #@50
    :cond_1
    const/4 v9, 0x0

    #@51
    .line 1461
    .local v9, "validAttr":Z
    :goto_1
    if-eqz v9, :cond_2

    #@53
    .line 1463
    const-string/jumbo v11, "primaryStorageUuid"

    #@56
    .line 1462
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v11

    #@5a
    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@5c
    .line 1465
    :cond_2
    const-string/jumbo v11, "forceAdoptable"

    #@5f
    const/4 v12, 0x0

    #@60
    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@63
    move-result v11

    #@64
    iput-boolean v11, p0, Lcom/android/server/MountService;->mForceAdoptable:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    goto :goto_0

    #@67
    .line 1473
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "primaryPhysical":Z
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "validAttr":Z
    .end local v10    # "version":I
    :catch_0
    move-exception v0

    #@68
    .line 1480
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6b
    .line 1440
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    #@6c
    .line 1459
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "primaryPhysical":Z
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v10    # "version":I
    :cond_3
    const/4 v9, 0x1

    #@6d
    .restart local v9    # "validAttr":Z
    goto :goto_1

    #@6e
    .line 1460
    .end local v9    # "validAttr":Z
    :cond_4
    const/4 v9, 0x1

    #@6f
    .restart local v9    # "validAttr":Z
    goto :goto_1

    #@70
    .line 1467
    .end local v5    # "primaryPhysical":Z
    .end local v9    # "validAttr":Z
    .end local v10    # "version":I
    :cond_5
    :try_start_1
    const-string/jumbo v11, "volume"

    #@73
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v11

    #@77
    if-eqz v11, :cond_0

    #@79
    .line 1468
    invoke-static {v4}, Lcom/android/server/MountService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    #@7c
    move-result-object v6

    #@7d
    .line 1469
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@7f
    iget-object v12, v6, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@81
    invoke-virtual {v11, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 1475
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v1

    #@86
    .line 1476
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v11, "MountService"

    #@89
    const-string/jumbo v12, "Failed reading metadata"

    #@8c
    invoke-static {v11, v12, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8f
    .line 1480
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@92
    goto :goto_2

    #@93
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@96
    goto :goto_2

    #@97
    .line 1477
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_2
    move-exception v2

    #@98
    .line 1478
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string/jumbo v11, "MountService"

    #@9b
    const-string/jumbo v12, "Failed reading metadata"

    #@9e
    invoke-static {v11, v12, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a1
    .line 1480
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a4
    goto :goto_2

    #@a5
    .line 1479
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v11

    #@a6
    .line 1480
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a9
    .line 1479
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
    .line 1513
    const-string/jumbo v3, "type"

    #@3
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@6
    move-result v2

    #@7
    .line 1514
    .local v2, "type":I
    const-string/jumbo v3, "fsUuid"

    #@a
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1515
    .local v0, "fsUuid":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/VolumeRecord;

    #@10
    invoke-direct {v1, v2, v0}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    #@13
    .line 1516
    .local v1, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    #@16
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@1c
    .line 1517
    const-string/jumbo v3, "nickname"

    #@1f
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@25
    .line 1518
    const-string/jumbo v3, "userFlags"

    #@28
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@2b
    move-result v3

    #@2c
    iput v3, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@2e
    .line 1519
    const-string/jumbo v3, "createdMillis"

    #@31
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@34
    move-result-wide v4

    #@35
    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@37
    .line 1520
    const-string/jumbo v3, "lastTrimMillis"

    #@3a
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@3d
    move-result-wide v4

    #@3e
    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    #@40
    .line 1521
    const-string/jumbo v3, "lastBenchMillis"

    #@43
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@46
    move-result-wide v4

    #@47
    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    #@49
    .line 1522
    return-object v1
.end method

.method private remountUidExternalStorage(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 1813
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@3
    .line 1815
    const-string/jumbo v1, "none"

    #@6
    .line 1816
    .local v1, "modeName":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    #@9
    .line 1831
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
    .line 1812
    :goto_1
    return-void

    #@25
    .line 1818
    :pswitch_0
    const-string/jumbo v1, "default"

    #@28
    goto :goto_0

    #@29
    .line 1822
    :pswitch_1
    const-string/jumbo v1, "read"

    #@2c
    goto :goto_0

    #@2d
    .line 1826
    :pswitch_2
    const-string/jumbo v1, "write"

    #@30
    goto :goto_0

    #@31
    .line 1832
    :catch_0
    move-exception v0

    #@32
    .line 1833
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
    .line 1816
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
    .line 2753
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    .line 2754
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@6
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/util/List;

    #@c
    .line 2755
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    #@e
    .line 2756
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 2757
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    #@17
    .line 2759
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 2760
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@1f
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 2764
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@24
    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@26
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 2752
    return-void
.end method

.method private resetIfReadyAndConnectedLocked()V
    .locals 14

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 779
    const-string/jumbo v7, "MountService"

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
    .line 780
    const-string/jumbo v9, ", mDaemonConnected="

    #@19
    .line 779
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v8

    #@1d
    .line 780
    iget-boolean v9, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@1f
    .line 779
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 781
    iget-boolean v7, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@2c
    if-eqz v7, :cond_0

    #@2e
    iget-boolean v7, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@30
    if-eqz v7, :cond_0

    #@32
    .line 782
    invoke-direct {p0}, Lcom/android/server/MountService;->killMediaProvider()V

    #@35
    .line 784
    iget-object v7, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@37
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    #@3a
    .line 785
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    #@3f
    .line 787
    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolume()V

    #@42
    .line 790
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@44
    const-string/jumbo v8, "volume"

    #@47
    const/4 v9, 0x1

    #@48
    new-array v9, v9, [Ljava/lang/Object;

    #@4a
    const-string/jumbo v10, "reset"

    #@4d
    const/4 v11, 0x0

    #@4e
    aput-object v10, v9, v11

    #@50
    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@53
    .line 793
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@55
    const-class v8, Landroid/os/UserManager;

    #@57
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Landroid/os/UserManager;

    #@5d
    .line 794
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    #@60
    move-result-object v5

    #@61
    .line 795
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@64
    move-result-object v3

    #@65
    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@68
    move-result v7

    #@69
    if-eqz v7, :cond_1

    #@6b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v2

    #@6f
    check-cast v2, Landroid/content/pm/UserInfo;

    #@71
    .line 796
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@73
    const-string/jumbo v8, "volume"

    #@76
    const/4 v9, 0x3

    #@77
    new-array v9, v9, [Ljava/lang/Object;

    #@79
    const-string/jumbo v10, "user_added"

    #@7c
    const/4 v11, 0x0

    #@7d
    aput-object v10, v9, v11

    #@7f
    iget v10, v2, Landroid/content/pm/UserInfo;->id:I

    #@81
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v10

    #@85
    const/4 v11, 0x1

    #@86
    aput-object v10, v9, v11

    #@88
    iget v10, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    #@8a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v10

    #@8e
    const/4 v11, 0x2

    #@8f
    aput-object v10, v9, v11

    #@91
    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@94
    goto :goto_0

    #@95
    .line 801
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    #@96
    .line 802
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v6, "MountService"

    #@99
    const-string/jumbo v7, "Failed to reset vold"

    #@9c
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9f
    .line 778
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_0
    return-void

    #@a0
    .line 798
    .restart local v1    # "um":Landroid/os/UserManager;
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    #@a2
    array-length v8, v7

    #@a3
    :goto_1
    if-ge v6, v8, :cond_0

    #@a5
    aget v4, v7, v6

    #@a7
    .line 799
    .local v4, "userId":I
    iget-object v9, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@a9
    const-string/jumbo v10, "volume"

    #@ac
    const/4 v11, 0x2

    #@ad
    new-array v11, v11, [Ljava/lang/Object;

    #@af
    const-string/jumbo v12, "user_started"

    #@b2
    const/4 v13, 0x0

    #@b3
    aput-object v12, v11, v13

    #@b5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v12

    #@b9
    const/4 v13, 0x1

    #@ba
    aput-object v12, v11, v13

    #@bc
    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@bf
    .line 798
    add-int/lit8 v6, v6, 0x1

    #@c1
    goto :goto_1
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
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
    .line 346
    const-string/jumbo v1, "internal"

    #@11
    return-object v1

    #@12
    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    #@15
    move-result-object v0

    #@16
    .line 349
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
    .line 350
    :cond_1
    const-string/jumbo v1, "unknown"

    #@23
    return-object v1

    #@24
    .line 352
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
    .line 353
    const-wide/32 v4, 0x240c8400

    #@3a
    .line 352
    div-long/2addr v2, v4

    #@3b
    long-to-int v2, v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 353
    const-string/jumbo v2, "w"

    #@43
    .line 352
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
    .line 369
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v7

    #@6
    .line 370
    const-string/jumbo v8, "storage_benchmark_interval"

    #@9
    const-wide/32 v10, 0x240c8400

    #@c
    .line 369
    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@f
    move-result-wide v2

    #@10
    .line 371
    .local v2, "benchInterval":J
    iget-object v8, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@12
    monitor-enter v8

    #@13
    .line 372
    const/4 v4, 0x0

    #@14
    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@19
    move-result v7

    #@1a
    if-ge v4, v7, :cond_1

    #@1c
    .line 373
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Landroid/os/storage/VolumeInfo;

    #@24
    .line 374
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@26
    iget-object v9, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@28
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Landroid/os/storage/VolumeRecord;

    #@2e
    .line 375
    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_0

    #@34
    if-eqz v5, :cond_0

    #@36
    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@39
    move-result-wide v10

    #@3a
    iget-wide v12, v5, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    sub-long v0, v10, v12

    #@3e
    .line 377
    .local v0, "benchAge":J
    cmp-long v7, v0, v2

    #@40
    if-ltz v7, :cond_0

    #@42
    .line 378
    const/4 v7, 0x1

    #@43
    monitor-exit v8

    #@44
    return v7

    #@45
    .line 372
    .end local v0    # "benchAge":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@47
    goto :goto_0

    #@48
    .line 382
    .end local v5    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v7, 0x0

    #@49
    monitor-exit v8

    #@4a
    return v7

    #@4b
    .line 371
    :catchall_0
    move-exception v7

    #@4c
    monitor-exit v8

    #@4d
    throw v7
.end method

.method private systemReady()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1428
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    #@3
    .line 1429
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@c
    .line 1427
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 4
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;

    #@0
    .prologue
    .line 703
    const-wide/16 v2, -0x1

    #@2
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 701
    :goto_0
    return-void

    #@6
    .line 704
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
    .line 710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 713
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
    .line 714
    return-void

    #@f
    .line 716
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
    .line 717
    const-string/jumbo v5, " still waiting for "

    #@2d
    .line 716
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    .line 717
    const-string/jumbo v5, "..."

    #@38
    .line 716
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
    .line 722
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
    .line 723
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
    .line 724
    const-string/jumbo v5, " gave up waiting for "

    #@70
    .line 723
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    .line 724
    const-string/jumbo v5, " after "

    #@7b
    .line 723
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    .line 724
    const-string/jumbo v5, "ms"

    #@86
    .line 723
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
    .line 719
    :catch_0
    move-exception v0

    #@93
    .line 720
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
    .line 698
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    #@2
    const-string/jumbo v1, "mConnectedSignal"

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    #@8
    .line 697
    return-void
.end method

.method private warnOnNotMounted()V
    .locals 4

    #@0
    .prologue
    .line 1938
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1939
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
    .line 1940
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/storage/VolumeInfo;

    #@14
    .line 1941
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
    .line 1943
    return-void

    #@22
    .line 1939
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    #@26
    .line 1948
    const-string/jumbo v2, "MountService"

    #@29
    const-string/jumbo v3, "No primary storage mounted!"

    #@2c
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1937
    return-void

    #@30
    .line 1938
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
    .line 1485
    const/4 v1, 0x0

    #@1
    .line 1487
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@3
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@6
    move-result-object v1

    #@7
    .line 1489
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 1490
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@e
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@15
    .line 1491
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
    .line 1492
    const-string/jumbo v6, "volumes"

    #@21
    const/4 v7, 0x0

    #@22
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 1493
    const-string/jumbo v6, "version"

    #@28
    const/4 v7, 0x3

    #@29
    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2c
    .line 1494
    const-string/jumbo v6, "primaryStorageUuid"

    #@2f
    iget-object v7, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@31
    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 1495
    const-string/jumbo v6, "forceAdoptable"

    #@37
    iget-boolean v7, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@39
    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@3c
    .line 1496
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@41
    move-result v5

    #@42
    .line 1497
    .local v5, "size":I
    const/4 v2, 0x0

    #@43
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    #@45
    .line 1498
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@47
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Landroid/os/storage/VolumeRecord;

    #@4d
    .line 1499
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v3, v4}, Lcom/android/server/MountService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    #@50
    .line 1497
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1501
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_0
    const-string/jumbo v6, "volumes"

    #@56
    const/4 v7, 0x0

    #@57
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5a
    .line 1502
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@5d
    .line 1504
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    #@5f
    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@62
    .line 1484
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    :cond_1
    :goto_1
    return-void

    #@63
    .line 1505
    :catch_0
    move-exception v0

    #@64
    .line 1506
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    #@66
    .line 1507
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
    .line 1526
    const-string/jumbo v0, "volume"

    #@4
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 1527
    const-string/jumbo v0, "type"

    #@a
    iget v1, p1, Landroid/os/storage/VolumeRecord;->type:I

    #@c
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@f
    .line 1528
    const-string/jumbo v0, "fsUuid"

    #@12
    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@14
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 1529
    const-string/jumbo v0, "partGuid"

    #@1a
    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@1c
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 1530
    const-string/jumbo v0, "nickname"

    #@22
    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@24
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 1531
    const-string/jumbo v0, "userFlags"

    #@2a
    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    #@2c
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2f
    .line 1532
    const-string/jumbo v0, "createdMillis"

    #@32
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    #@34
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@37
    .line 1533
    const-string/jumbo v0, "lastTrimMillis"

    #@3a
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    #@3c
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@3f
    .line 1534
    const-string/jumbo v0, "lastBenchMillis"

    #@42
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    #@44
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@47
    .line 1535
    const-string/jumbo v0, "volume"

    #@4a
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 1525
    return-void
.end method


# virtual methods
.method public benchmark(Ljava/lang/String;)J
    .locals 8
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1662
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1663
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1667
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    .line 1668
    const-string/jumbo v4, "volume"

    #@e
    .line 1667
    const/4 v5, 0x2

    #@f
    new-array v5, v5, [Ljava/lang/Object;

    #@11
    .line 1668
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
    .line 1667
    const-wide/32 v6, 0x2bf20

    #@1d
    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@20
    move-result-object v2

    #@21
    .line 1669
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
    .line 1672
    .end local v2    # "res":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@2b
    .line 1673
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v3

    #@2f
    throw v3

    #@30
    .line 1670
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v1

    #@31
    .line 1671
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
    .line 2427
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    #@5
    .line 2428
    const-string/jumbo v4, "no permission to access the crypt keeper"

    #@8
    .line 2427
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 2430
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@e
    .line 2437
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
    .line 2438
    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@25
    invoke-direct {v5, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@28
    const/4 v6, 0x2

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 2437
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@2e
    move-result-object v1

    #@2f
    .line 2439
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
    .line 2440
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@39
    .line 2442
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
    .line 2572
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 2573
    return-void

    #@7
    .line 2578
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@9
    const-string/jumbo v3, "cryptfs"

    #@c
    const/4 v4, 0x1

    #@d
    new-array v4, v4, [Ljava/lang/Object;

    #@f
    const-string/jumbo v5, "clearpw"

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v4, v6

    #@15
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v1

    #@19
    .line 2571
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    #@1a
    .line 2579
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@1b
    .line 2580
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@1e
    move-result-object v2

    #@1f
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
    .line 1966
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1967
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1968
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 1970
    const/4 v1, 0x0

    #@d
    .line 1972
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
    .line 1973
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
    .line 1972
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 1978
    :goto_1
    if-nez v1, :cond_0

    #@44
    .line 1979
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@46
    monitor-enter v3

    #@47
    .line 1980
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@49
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    monitor-exit v3

    #@4d
    .line 1983
    :cond_0
    return v1

    #@4e
    .line 1973
    :cond_1
    :try_start_2
    const-string/jumbo v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    #@51
    goto :goto_0

    #@52
    .line 1974
    :catch_0
    move-exception v0

    #@53
    .line 1975
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    #@54
    goto :goto_1

    #@55
    .line 1979
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v2

    #@56
    monitor-exit v3

    #@57
    throw v2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 2359
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "password cannot be empty"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 2362
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@11
    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    #@14
    .line 2363
    const-string/jumbo v5, "no permission to access the crypt keeper"

    #@17
    .line 2362
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 2365
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@1d
    .line 2373
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
    .line 2375
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    .line 2376
    .local v0, "code":I
    if-nez v0, :cond_1

    #@41
    .line 2379
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    #@43
    new-instance v4, Lcom/android/server/MountService$2;

    #@45
    invoke-direct {v4, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    #@48
    .line 2387
    const-wide/16 v6, 0x3e8

    #@4a
    .line 2379
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 2390
    :cond_1
    return v0

    #@4e
    .line 2391
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@4f
    .line 2393
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
    .line 2036
    const-string/jumbo v4, "android.permission.ASEC_DESTROY"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2037
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2038
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2046
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    #@13
    .line 2048
    const/4 v3, 0x0

    #@14
    .line 2050
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
    .line 2051
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    #@2a
    .line 2052
    const-string/jumbo v4, "force"

    #@2d
    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@30
    .line 2054
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@32
    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 2064
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    #@37
    .line 2065
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@39
    monitor-enter v5

    #@3a
    .line 2066
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@3c
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_1

    #@42
    .line 2067
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@44
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    :cond_1
    monitor-exit v5

    #@48
    .line 2072
    :cond_2
    return v3

    #@49
    .line 2055
    :catch_0
    move-exception v2

    #@4a
    .line 2056
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@4d
    move-result v1

    #@4e
    .line 2057
    .local v1, "code":I
    const/16 v4, 0x195

    #@50
    if-ne v1, v4, :cond_3

    #@52
    .line 2058
    const/4 v3, -0x7

    #@53
    goto :goto_0

    #@54
    .line 2060
    :cond_3
    const/4 v3, -0x1

    #@55
    goto :goto_0

    #@56
    .line 2065
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    #@57
    monitor-exit v5

    #@58
    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3330
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
    .line 3332
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
    .line 3333
    .local v12, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    #@1b
    iget-object v15, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@1d
    monitor-enter v15

    #@1e
    .line 3334
    :try_start_0
    const-string/jumbo v14, "Disks:"

    #@21
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 3335
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@27
    .line 3336
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
    .line 3337
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
    .line 3338
    .local v3, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v3, v12}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@3f
    .line 3336
    add-int/lit8 v6, v6, 0x1

    #@41
    goto :goto_0

    #@42
    .line 3340
    .end local v3    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@45
    .line 3342
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@48
    .line 3343
    const-string/jumbo v14, "Volumes:"

    #@4b
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 3344
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@51
    .line 3345
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
    .line 3346
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
    .line 3347
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
    .line 3345
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@77
    goto :goto_1

    #@78
    .line 3348
    :cond_1
    invoke-virtual {v13, v12}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    goto :goto_2

    #@7c
    .line 3333
    .end local v6    # "i":I
    .end local v13    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v14

    #@7d
    monitor-exit v15

    #@7e
    throw v14

    #@7f
    .line 3350
    .restart local v6    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@82
    .line 3352
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@85
    .line 3353
    const-string/jumbo v14, "Records:"

    #@88
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 3354
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@8e
    .line 3355
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
    .line 3356
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
    .line 3357
    .local v8, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v8, v12}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@a6
    .line 3355
    add-int/lit8 v6, v6, 0x1

    #@a8
    goto :goto_3

    #@a9
    .line 3359
    .end local v8    # "note":Landroid/os/storage/VolumeRecord;
    :cond_3
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@ac
    .line 3361
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@af
    .line 3362
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
    .line 3363
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f1
    monitor-exit v15

    #@f2
    .line 3366
    move-object/from16 v0, p0

    #@f4
    iget-object v15, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@f6
    monitor-enter v15

    #@f7
    .line 3367
    :try_start_2
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@fa
    .line 3368
    const-string/jumbo v14, "mObbMounts:"

    #@fd
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@100
    .line 3369
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@103
    .line 3370
    move-object/from16 v0, p0

    #@105
    iget-object v14, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@107
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@10a
    move-result-object v14

    #@10b
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10e
    move-result-object v2

    #@10f
    .line 3372
    .local v2, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@112
    move-result v14

    #@113
    if-eqz v14, :cond_5

    #@115
    .line 3373
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@118
    move-result-object v4

    #@119
    check-cast v4, Ljava/util/Map$Entry;

    #@11b
    .line 3374
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@123
    move-result-object v16

    #@124
    move-object/from16 v0, v16

    #@126
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v14

    #@12a
    const-string/jumbo v16, ":"

    #@12d
    move-object/from16 v0, v16

    #@12f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v14

    #@133
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v14

    #@137
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@13a
    .line 3375
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@13d
    .line 3376
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@140
    move-result-object v11

    #@141
    check-cast v11, Ljava/util/List;

    #@143
    .line 3377
    .local v11, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@146
    move-result-object v10

    #@147
    .local v10, "obbState$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@14a
    move-result v14

    #@14b
    if-eqz v14, :cond_4

    #@14d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@150
    move-result-object v9

    #@151
    check-cast v9, Lcom/android/server/MountService$ObbState;

    #@153
    .line 3378
    .local v9, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v12, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@156
    goto :goto_5

    #@157
    .line 3366
    .end local v2    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v9    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v10    # "obbState$iterator":Ljava/util/Iterator;
    .end local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_1
    move-exception v14

    #@158
    monitor-exit v15

    #@159
    throw v14

    #@15a
    .line 3380
    .restart local v2    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v10    # "obbState$iterator":Ljava/util/Iterator;
    .restart local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_4
    :try_start_3
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@15d
    goto :goto_4

    #@15e
    .line 3382
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v10    # "obbState$iterator":Ljava/util/Iterator;
    .end local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_5
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@161
    .line 3384
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@164
    .line 3385
    const-string/jumbo v14, "mObbPathToStateMap:"

    #@167
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@16a
    .line 3386
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@16d
    .line 3387
    move-object/from16 v0, p0

    #@16f
    iget-object v14, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    #@171
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@174
    move-result-object v14

    #@175
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@178
    move-result-object v7

    #@179
    .line 3388
    .local v7, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@17c
    move-result v14

    #@17d
    if-eqz v14, :cond_6

    #@17f
    .line 3389
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@182
    move-result-object v5

    #@183
    check-cast v5, Ljava/util/Map$Entry;

    #@185
    .line 3390
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@188
    move-result-object v14

    #@189
    check-cast v14, Ljava/lang/String;

    #@18b
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@18e
    .line 3391
    const-string/jumbo v14, " -> "

    #@191
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@194
    .line 3392
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@197
    move-result-object v14

    #@198
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@19b
    goto :goto_6

    #@19c
    .line 3394
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_6
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19f
    monitor-exit v15

    #@1a0
    .line 3397
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1a3
    .line 3398
    const-string/jumbo v14, "mConnection:"

    #@1a6
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1a9
    .line 3399
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1ac
    .line 3400
    move-object/from16 v0, p0

    #@1ae
    iget-object v14, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@1b0
    move-object/from16 v0, p1

    #@1b2
    move-object/from16 v1, p3

    #@1b4
    invoke-virtual {v14, v0, v12, v1}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1b7
    .line 3401
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1ba
    .line 3403
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1bd
    .line 3404
    const-string/jumbo v14, "Last maintenance: "

    #@1c0
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1c3
    .line 3405
    move-object/from16 v0, p0

    #@1c5
    iget-wide v14, v0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@1c7
    invoke-static {v14, v15}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    #@1ca
    move-result-object v14

    #@1cb
    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1ce
    .line 3329
    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2398
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    if-eq p1, v2, :cond_0

    #@a
    .line 2399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "password cannot be empty"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 2402
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@15
    const-string/jumbo v2, "android.permission.CRYPT_KEEPER"

    #@18
    .line 2403
    const-string/jumbo v3, "no permission to access the crypt keeper"

    #@1b
    .line 2402
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 2405
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@21
    .line 2412
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@23
    const-string/jumbo v2, "cryptfs"

    #@26
    const/4 v3, 0x4

    #@27
    new-array v3, v3, [Ljava/lang/Object;

    #@29
    const-string/jumbo v4, "enablecrypto"

    #@2c
    const/4 v5, 0x0

    #@2d
    aput-object v4, v3, v5

    #@2f
    const-string/jumbo v4, "inplace"

    #@32
    const/4 v5, 0x1

    #@33
    aput-object v4, v3, v5

    #@35
    sget-object v4, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@37
    aget-object v4, v4, p1

    #@39
    const/4 v5, 0x2

    #@3a
    aput-object v4, v3, v5

    #@3c
    .line 2413
    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@3e
    invoke-direct {v4, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    #@41
    const/4 v5, 0x3

    #@42
    aput-object v4, v3, v5

    #@44
    .line 2412
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 2419
    return v6

    #@48
    .line 2414
    :catch_0
    move-exception v0

    #@49
    .line 2416
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@4c
    move-result v1

    #@4d
    return v1
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2002
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2003
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@9
    .line 2005
    const/4 v1, 0x0

    #@a
    .line 2007
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
    .line 2015
    :goto_0
    return v1

    #@1f
    .line 2012
    :catch_0
    move-exception v0

    #@20
    .line 2013
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    #@21
    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    #@0
    .prologue
    .line 2227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 2228
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v1, "no permission to call finishMediaUpdate()"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 2230
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2231
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@1a
    .line 2226
    :goto_0
    return-void

    #@1b
    .line 2233
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
    .line 2019
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2020
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@9
    .line 2022
    const/4 v1, 0x0

    #@a
    .line 2024
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
    .line 2032
    :goto_0
    return v1

    #@29
    .line 2029
    :catch_0
    move-exception v0

    #@2a
    .line 2030
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    #@2b
    goto :goto_0
.end method

.method public forgetAllVolumes()V
    .locals 6

    #@0
    .prologue
    .line 1781
    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1782
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1784
    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v4

    #@c
    .line 1785
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
    .line 1786
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/String;

    #@1d
    .line 1787
    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/os/storage/VolumeRecord;

    #@25
    .line 1788
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_0

    #@2d
    .line 1789
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@2f
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->forgetPartition(Ljava/lang/String;)V

    #@32
    .line 1791
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@34
    invoke-static {v3, v0}, Lcom/android/server/MountService$Callbacks;->-wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    #@37
    .line 1785
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1793
    .end local v0    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@3c
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@3f
    .line 1795
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@41
    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@43
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@46
    move-result v3

    #@47
    if-nez v3, :cond_2

    #@49
    .line 1796
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    iput-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@4f
    .line 1799
    :cond_2
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@52
    .line 1800
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    monitor-exit v4

    #@56
    .line 1780
    return-void

    #@57
    .line 1784
    :catchall_0
    move-exception v3

    #@58
    monitor-exit v4

    #@59
    throw v3
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1757
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1758
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1760
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1761
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1762
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeRecord;

    #@17
    .line 1763
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
    .line 1766
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@23
    invoke-static {v1, p1}, Lcom/android/server/MountService$Callbacks;->-wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    #@26
    .line 1770
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@28
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 1771
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@34
    .line 1772
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V

    #@37
    .line 1775
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v2

    #@3b
    .line 1756
    return-void

    #@3c
    .line 1764
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    #@3e
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->forgetPartition(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1761
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1649
    const-string/jumbo v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1650
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1652
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@c
    move-result-object v1

    #@d
    .line 1654
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
    .line 1648
    return-void

    #@2a
    .line 1655
    :catch_0
    move-exception v0

    #@2b
    .line 1656
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
    .line 1598
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->format(Ljava/lang/String;)V

    #@7
    .line 1599
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .locals 4

    #@0
    .prologue
    .line 2685
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 2686
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v2

    #@9
    new-array v1, v2, [Landroid/os/storage/DiskInfo;

    #@b
    .line 2687
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
    .line 2688
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
    .line 2687
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_0
    monitor-exit v3

    #@22
    .line 2690
    return-object v1

    #@23
    .line 2685
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
    .line 2336
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    #@6
    .line 2337
    const-string/jumbo v5, "no permission to access the crypt keeper"

    #@9
    .line 2336
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 2339
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@f
    .line 2343
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
    .line 2344
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
    .line 2349
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@2b
    .line 2351
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v3, "MountService"

    #@2e
    const-string/jumbo v4, "Error in communicating with cryptfs in validating"

    #@31
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 2352
    return v8

    #@35
    .line 2345
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v1

    #@36
    .line 2347
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "MountService"

    #@39
    const-string/jumbo v4, "Unable to parse result from cryptfs cryptocomplete"

    #@3c
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 2348
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
    .line 2529
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@4
    .line 2534
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@6
    const-string/jumbo v6, "cryptfs"

    #@9
    const/4 v7, 0x2

    #@a
    new-array v7, v7, [Ljava/lang/Object;

    #@c
    const-string/jumbo v8, "getfield"

    #@f
    const/4 v9, 0x0

    #@10
    aput-object v8, v7, v9

    #@12
    const/4 v8, 0x1

    #@13
    aput-object p1, v7, v8

    #@15
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@18
    move-result-object v5

    #@19
    .line 2535
    const/16 v6, 0x71

    #@1b
    .line 2533
    invoke-static {v5, v6}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 2536
    .local v1, "contents":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    #@21
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    #@24
    .line 2537
    .local v3, "result":Ljava/lang/String;
    array-length v5, v1

    #@25
    :goto_0
    if-ge v4, v5, :cond_0

    #@27
    aget-object v0, v1, v4

    #@29
    .line 2538
    .local v0, "content":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result-object v3

    #@3a
    .line 2537
    add-int/lit8 v4, v4, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 2540
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    return-object v3

    #@3e
    .line 2541
    .end local v1    # "contents":[Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@3f
    .line 2542
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@42
    move-result-object v4

    #@43
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
    .line 2257
    const-string/jumbo v4, "rawPath cannot be null"

    #@6
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 2259
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@c
    .line 2260
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@f
    .line 2263
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@11
    monitor-enter v5

    #@12
    .line 2264
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
    .line 2266
    if-nez v3, :cond_0

    #@1d
    .line 2267
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
    .line 2268
    return-object v9

    #@38
    .line 2263
    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4

    #@3b
    .line 2273
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
    iget-object v7, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    #@4b
    const/4 v8, 0x1

    #@4c
    aput-object v7, v6, v8

    #@4e
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@51
    move-result-object v2

    #@52
    .line 2274
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v4, 0xd3

    #@54
    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@57
    .line 2275
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@5a
    move-result-object v4

    #@5b
    return-object v4

    #@5c
    .line 2276
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@5d
    .line 2277
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@60
    move-result v0

    #@61
    .line 2278
    .local v0, "code":I
    const/16 v4, 0x196

    #@63
    if-ne v0, v4, :cond_1

    #@65
    .line 2279
    return-object v9

    #@66
    .line 2281
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
    .line 2548
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    #@6
    .line 2549
    const-string/jumbo v5, "only keyguard can retrieve password"

    #@9
    .line 2548
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 2550
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 2551
    new-instance v3, Ljava/lang/String;

    #@14
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    #@17
    return-object v3

    #@18
    .line 2556
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
    .line 2557
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
    .line 2559
    return-object v8

    #@38
    .line 2561
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
    .line 2564
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@3e
    .line 2565
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "MountService"

    #@41
    const-string/jumbo v4, "Invalid response to getPassword"

    #@44
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 2566
    return-object v8

    #@48
    .line 2562
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    #@49
    .line 2563
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
    .line 2487
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@3
    .line 2491
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@5
    const-string/jumbo v4, "cryptfs"

    #@8
    const/4 v5, 0x1

    #@9
    new-array v5, v5, [Ljava/lang/Object;

    #@b
    const-string/jumbo v6, "getpwtype"

    #@e
    const/4 v7, 0x0

    #@f
    aput-object v6, v5, v7

    #@11
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@14
    move-result-object v1

    #@15
    .line 2492
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@18
    array-length v3, v3

    #@19
    if-ge v2, v3, :cond_1

    #@1b
    .line 2493
    sget-object v3, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    #@1d
    aget-object v3, v3, v2

    #@1f
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 2494
    return v2

    #@2a
    .line 2492
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2497
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2f
    const-string/jumbo v4, "unexpected return from cryptfs"

    #@32
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    throw v3
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 2498
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    #@37
    .line 2499
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3a
    move-result-object v3

    #@3b
    throw v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1854
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1855
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1857
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v0

    #@c
    .line 1858
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v0

    #@f
    return-object v1

    #@10
    .line 1857
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
    .line 2205
    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    #@5
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@8
    .line 2206
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@b
    .line 2207
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@e
    .line 2211
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
    .line 2212
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    #@25
    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@28
    .line 2213
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 2214
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@2e
    .line 2215
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@31
    move-result v0

    #@32
    .line 2216
    .local v0, "code":I
    const/16 v3, 0x196

    #@34
    if-ne v0, v3, :cond_0

    #@36
    .line 2217
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
    .line 2218
    const/4 v3, 0x0

    #@48
    return-object v3

    #@49
    .line 2220
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
    .line 1952
    const-string/jumbo v1, "android.permission.ASEC_ACCESS"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@7
    .line 1953
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@a
    .line 1954
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@d
    .line 1958
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
    .line 1957
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 1959
    :catch_0
    move-exception v0

    #@27
    .line 1960
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
    .line 2184
    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    #@5
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@8
    .line 2185
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@b
    .line 2186
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@e
    .line 2190
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
    .line 2191
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    #@25
    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    #@28
    .line 2192
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 2193
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@2e
    .line 2194
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@31
    move-result v0

    #@32
    .line 2195
    .local v0, "code":I
    const/16 v3, 0x196

    #@34
    if-ne v0, v3, :cond_0

    #@36
    .line 2196
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
    .line 2197
    const/4 v3, 0x0

    #@48
    return-object v3

    #@49
    .line 2199
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
    .line 1912
    const-string/jumbo v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@4
    invoke-direct {p0, v6}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@7
    .line 1913
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@a
    .line 1916
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
    .line 1917
    const/16 v7, 0x70

    #@21
    .line 1915
    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 1920
    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    #@26
    new-array v0, v6, [I

    #@28
    .line 1921
    .local v0, "data":[I
    const/4 v2, 0x0

    #@29
    .local v2, "i":I
    :goto_0
    array-length v6, v4

    #@2a
    if-ge v2, v6, :cond_0

    #@2c
    .line 1922
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
    .line 1924
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
    .line 1921
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1925
    :catch_0
    move-exception v3

    #@42
    .line 1926
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
    .line 1927
    const/4 v6, 0x0

    #@59
    new-array v6, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    #@5b
    return-object v6

    #@5c
    .line 1930
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_0
    return-object v0

    #@5d
    .line 1931
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v4    # "r":[Ljava/lang/String;
    :catch_1
    move-exception v1

    #@5e
    .line 1932
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v6, "MountService"

    #@61
    const-string/jumbo v7, "Failed to retrieve storage users list"

    #@64
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    .line 1933
    new-array v6, v11, [I

    #@69
    return-object v6
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .locals 39
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 2625
    and-int/lit8 v4, p3, 0x1

    #@2
    if-eqz v4, :cond_1

    #@4
    const/16 v21, 0x1

    #@6
    .line 2627
    .local v21, "forWrite":Z
    :goto_0
    new-instance v34, Ljava/util/ArrayList;

    #@8
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 2628
    .local v34, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/16 v22, 0x0

    #@d
    .line 2630
    .local v22, "foundPrimary":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@10
    move-result v36

    #@11
    .line 2632
    .local v36, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@14
    move-result-wide v26

    #@15
    .line 2634
    .local v26, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    #@19
    move/from16 v0, p1

    #@1b
    move-object/from16 v1, p2

    #@1d
    invoke-virtual {v4, v0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2

    #@23
    const/16 v33, 0x0

    #@25
    .line 2637
    .local v33, "reportUnmounted":Z
    :goto_1
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 2640
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2c
    monitor-enter v5

    #@2d
    .line 2641
    const/16 v23, 0x0

    #@2f
    .local v23, "i":I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    #@31
    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@33
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@36
    move-result v4

    #@37
    move/from16 v0, v23

    #@39
    if-ge v0, v4, :cond_5

    #@3b
    .line 2642
    move-object/from16 v0, p0

    #@3d
    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@3f
    move/from16 v0, v23

    #@41
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v38

    #@45
    check-cast v38, Landroid/os/storage/VolumeInfo;

    #@47
    .line 2643
    .local v38, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v21, :cond_3

    #@49
    move-object/from16 v0, v38

    #@4b
    move/from16 v1, v36

    #@4d
    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    #@50
    move-result v4

    #@51
    :goto_3
    if-eqz v4, :cond_0

    #@53
    .line 2644
    move-object/from16 v0, p0

    #@55
    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@57
    move-object/from16 v0, v38

    #@59
    move/from16 v1, v36

    #@5b
    move/from16 v2, v33

    #@5d
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    #@60
    move-result-object v37

    #@61
    .line 2646
    .local v37, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v38 .. v38}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_4

    #@67
    .line 2647
    const/4 v4, 0x0

    #@68
    move-object/from16 v0, v34

    #@6a
    move-object/from16 v1, v37

    #@6c
    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6f
    .line 2648
    const/16 v22, 0x1

    #@71
    .line 2641
    .end local v37    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_4
    add-int/lit8 v23, v23, 0x1

    #@73
    goto :goto_2

    #@74
    .line 2625
    .end local v21    # "forWrite":Z
    .end local v22    # "foundPrimary":Z
    .end local v23    # "i":I
    .end local v26    # "identity":J
    .end local v33    # "reportUnmounted":Z
    .end local v34    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v36    # "userId":I
    .end local v38    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/16 v21, 0x0

    #@76
    .restart local v21    # "forWrite":Z
    goto :goto_0

    #@77
    .line 2634
    .restart local v22    # "foundPrimary":Z
    .restart local v26    # "identity":J
    .restart local v34    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v36    # "userId":I
    :cond_2
    const/16 v33, 0x1

    #@79
    .restart local v33    # "reportUnmounted":Z
    goto :goto_1

    #@7a
    .line 2636
    .end local v33    # "reportUnmounted":Z
    :catchall_0
    move-exception v4

    #@7b
    .line 2637
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7e
    .line 2636
    throw v4

    #@7f
    .line 2643
    .restart local v23    # "i":I
    .restart local v33    # "reportUnmounted":Z
    .restart local v38    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    :try_start_2
    move-object/from16 v0, v38

    #@81
    move/from16 v1, v36

    #@83
    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    #@86
    move-result v4

    #@87
    goto :goto_3

    #@88
    .line 2650
    .restart local v37    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_4
    move-object/from16 v0, v34

    #@8a
    move-object/from16 v1, v37

    #@8c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8f
    goto :goto_4

    #@90
    .line 2640
    .end local v37    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v38    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_1
    move-exception v4

    #@91
    monitor-exit v5

    #@92
    throw v4

    #@93
    :cond_5
    monitor-exit v5

    #@94
    .line 2656
    if-nez v22, :cond_6

    #@96
    .line 2657
    const-string/jumbo v4, "MountService"

    #@99
    const-string/jumbo v5, "No primary storage defined yet; hacking together a stub"

    #@9c
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 2660
    const-string/jumbo v4, "ro.vold.primary_physical"

    #@a2
    const/4 v5, 0x0

    #@a3
    .line 2659
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@a6
    move-result v32

    #@a7
    .line 2662
    .local v32, "primaryPhysical":Z
    const-string/jumbo v24, "stub_primary"

    #@aa
    .line 2663
    .local v24, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    #@ad
    move-result-object v7

    #@ae
    .line 2664
    .local v7, "path":Ljava/io/File;
    move-object/from16 v0, p0

    #@b0
    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@b2
    const v5, 0x104000e

    #@b5
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@b8
    move-result-object v8

    #@b9
    .line 2665
    .local v8, "description":Ljava/lang/String;
    const/16 v25, 0x1

    #@bb
    .line 2666
    .local v25, "primary":Z
    move/from16 v10, v32

    #@bd
    .line 2667
    .local v10, "removable":Z
    if-eqz v32, :cond_7

    #@bf
    const/4 v11, 0x0

    #@c0
    .line 2668
    .local v11, "emulated":Z
    :goto_5
    const-wide/16 v30, 0x0

    #@c2
    .line 2669
    .local v30, "mtpReserveSize":J
    const/16 v20, 0x0

    #@c4
    .line 2670
    .local v20, "allowMassStorage":Z
    const-wide/16 v28, 0x0

    #@c6
    .line 2671
    .local v28, "maxFileSize":J
    new-instance v17, Landroid/os/UserHandle;

    #@c8
    move-object/from16 v0, v17

    #@ca
    move/from16 v1, v36

    #@cc
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@cf
    .line 2672
    .local v17, "owner":Landroid/os/UserHandle;
    const/16 v18, 0x0

    #@d1
    .line 2673
    .local v18, "uuid":Ljava/lang/String;
    const-string/jumbo v35, "removed"

    #@d4
    .line 2675
    .local v35, "state":Ljava/lang/String;
    new-instance v4, Landroid/os/storage/StorageVolume;

    #@d6
    const-string/jumbo v5, "stub_primary"

    #@d9
    .line 2677
    const-string/jumbo v19, "removed"

    #@dc
    .line 2675
    const/4 v6, 0x0

    #@dd
    .line 2676
    const/4 v9, 0x1

    #@de
    const-wide/16 v12, 0x0

    #@e0
    .line 2677
    const/4 v14, 0x0

    #@e1
    const-wide/16 v15, 0x0

    #@e3
    .line 2675
    invoke-direct/range {v4 .. v19}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    #@e6
    const/4 v5, 0x0

    #@e7
    move-object/from16 v0, v34

    #@e9
    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@ec
    .line 2680
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "removable":Z
    .end local v11    # "emulated":Z
    .end local v17    # "owner":Landroid/os/UserHandle;
    .end local v18    # "uuid":Ljava/lang/String;
    .end local v20    # "allowMassStorage":Z
    .end local v24    # "id":Ljava/lang/String;
    .end local v25    # "primary":Z
    .end local v28    # "maxFileSize":J
    .end local v30    # "mtpReserveSize":J
    .end local v32    # "primaryPhysical":Z
    .end local v35    # "state":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    #@ef
    move-result v4

    #@f0
    new-array v4, v4, [Landroid/os/storage/StorageVolume;

    #@f2
    move-object/from16 v0, v34

    #@f4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f7
    move-result-object v4

    #@f8
    check-cast v4, [Landroid/os/storage/StorageVolume;

    #@fa
    return-object v4

    #@fb
    .line 2667
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "removable":Z
    .restart local v24    # "id":Ljava/lang/String;
    .restart local v25    # "primary":Z
    .restart local v32    # "primaryPhysical":Z
    :cond_7
    const/4 v11, 0x1

    #@fc
    .restart local v11    # "emulated":Z
    goto :goto_5
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .locals 4
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 2707
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 2708
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v2

    #@9
    new-array v1, v2, [Landroid/os/storage/VolumeRecord;

    #@b
    .line 2709
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
    .line 2710
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
    .line 2709
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_0
    monitor-exit v3

    #@22
    .line 2712
    return-object v1

    #@23
    .line 2707
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
    .line 1577
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
    .line 2696
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 2697
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v2

    #@9
    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    #@b
    .line 2698
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
    .line 2699
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
    .line 2698
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_0
    monitor-exit v3

    #@22
    .line 2701
    return-object v1

    #@23
    .line 2696
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    #@0
    .prologue
    .line 1582
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
    .line 2288
    const-string/jumbo v0, "rawPath cannot be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2289
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@8
    monitor-enter v1

    #@9
    .line 2290
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
    .line 2289
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
    .line 2149
    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2150
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2151
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2153
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@e
    monitor-enter v1

    #@f
    .line 2154
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
    .line 2153
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
    .line 1562
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
    .line 1572
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public lastMaintenance()J
    .locals 2

    #@0
    .prologue
    .line 861
    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    #@2
    return-wide v0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2586
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4
    move-result v6

    #@5
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@8
    move-result v5

    #@9
    .line 2587
    .local v5, "userId":I
    new-instance v4, Landroid/os/Environment$UserEnvironment;

    #@b
    invoke-direct {v4, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@e
    .line 2590
    .local v4, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@10
    .line 2591
    const-string/jumbo v7, "appops"

    #@13
    .line 2590
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/app/AppOpsManager;

    #@19
    .line 2592
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v6

    #@1d
    invoke-virtual {v1, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    #@20
    .line 2594
    const/4 v0, 0x0

    #@21
    .line 2596
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
    .line 2604
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
    .line 2605
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    #@37
    move-result-object v6

    #@38
    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    #@3b
    move-result v6

    #@3c
    .line 2604
    if-nez v6, :cond_0

    #@3e
    .line 2606
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    #@41
    move-result-object v6

    #@42
    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    #@45
    move-result v6

    #@46
    .line 2604
    if-eqz v6, :cond_2

    #@48
    .line 2607
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4b
    move-result-object p2

    #@4c
    .line 2608
    const-string/jumbo v6, "/"

    #@4f
    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@52
    move-result v6

    #@53
    if-nez v6, :cond_1

    #@55
    .line 2609
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
    .line 2613
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
    .line 2614
    return v11

    #@7e
    .line 2597
    .local v0, "appFile":Ljava/io/File;
    :catch_0
    move-exception v3

    #@7f
    .line 2598
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
    .line 2599
    const/4 v6, -0x1

    #@a5
    return v6

    #@a6
    .line 2615
    .end local v3    # "e":Ljava/io/IOException;
    .local v0, "appFile":Ljava/io/File;
    :catch_1
    move-exception v2

    #@a7
    .line 2616
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@aa
    move-result v6

    #@ab
    return v6

    #@ac
    .line 2620
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
    .line 3411
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3412
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@6
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    #@9
    .line 3414
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 3415
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@f
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    #@12
    .line 3410
    :cond_1
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1604
    const-string/jumbo v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1605
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1607
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@c
    move-result-object v1

    #@d
    .line 1608
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1609
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
    .line 1612
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
    .line 1603
    return-void

    #@5d
    .line 1613
    :catch_0
    move-exception v0

    #@5e
    .line 1614
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@61
    move-result-object v2

    #@62
    throw v2
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
    .line 2297
    const-string/jumbo v1, "rawPath cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2298
    const-string/jumbo v1, "canonicalPath cannot be null"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 2299
    const-string/jumbo v1, "token cannot be null"

    #@f
    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 2301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v4

    #@16
    .line 2302
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
    .line 2303
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    #@22
    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    #@25
    .line 2304
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
    .line 2296
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
    .line 2076
    const-string/jumbo v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2077
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2078
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2080
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@e
    monitor-enter v4

    #@f
    .line 2081
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
    .line 2082
    const/4 v3, -0x6

    #@18
    monitor-exit v4

    #@19
    return v3

    #@1a
    :cond_0
    monitor-exit v4

    #@1b
    .line 2086
    const/4 v2, 0x0

    #@1c
    .line 2088
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
    .line 2089
    if-eqz p4, :cond_3

    #@3e
    const-string/jumbo v3, "ro"

    #@41
    :goto_0
    const/4 v7, 0x4

    #@42
    aput-object v3, v6, v7

    #@44
    .line 2088
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@47
    .line 2097
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    #@49
    .line 2098
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@4b
    monitor-enter v4

    #@4c
    .line 2099
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@4e
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@51
    monitor-exit v4

    #@52
    .line 2102
    :cond_2
    return v2

    #@53
    .line 2080
    .end local v2    # "rc":I
    :catchall_0
    move-exception v3

    #@54
    monitor-exit v4

    #@55
    throw v3

    #@56
    .line 2089
    .restart local v2    # "rc":I
    :cond_3
    :try_start_3
    const-string/jumbo v3, "rw"
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    #@59
    goto :goto_0

    #@5a
    .line 2090
    :catch_0
    move-exception v1

    #@5b
    .line 2091
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@5e
    move-result v0

    #@5f
    .line 2092
    .local v0, "code":I
    const/16 v3, 0x195

    #@61
    if-eq v0, v3, :cond_1

    #@63
    .line 2093
    const/4 v2, -0x1

    #@64
    goto :goto_1

    #@65
    .line 2098
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
    .line 1587
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->mount(Ljava/lang/String;)V

    #@7
    .line 1588
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 932
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    #@0
    .prologue
    .line 869
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    #@3
    .line 870
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
    .line 868
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 941
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
    .line 940
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
    .line 1712
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1713
    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    #@9
    .line 1714
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@c
    .line 1716
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    #@f
    move-result-object v2

    #@10
    .line 1718
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
    .line 1719
    const-string/jumbo v3, "partitionMixed"

    #@34
    const-wide/32 v4, 0x2bf20

    #@37
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 1711
    return-void

    #@3b
    .line 1722
    :catch_0
    move-exception v1

    #@3c
    .line 1723
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3e
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@41
    throw v3

    #@42
    .line 1720
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@43
    .line 1721
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
    .line 1695
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1696
    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    #@9
    .line 1697
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@c
    .line 1699
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    #@f
    move-result-object v2

    #@10
    .line 1701
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
    .line 1702
    const-string/jumbo v3, "partitionPrivate"

    #@2d
    const-wide/32 v4, 0x2bf20

    #@30
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 1694
    return-void

    #@34
    .line 1705
    :catch_0
    move-exception v1

    #@35
    .line 1706
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@37
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@3a
    throw v3

    #@3b
    .line 1703
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@3c
    .line 1704
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
    .line 1679
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1680
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1682
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    #@c
    move-result-object v2

    #@d
    .line 1684
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
    .line 1685
    const-string/jumbo v3, "partitionPublic"

    #@2a
    const-wide/32 v4, 0x2bf20

    #@2d
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 1678
    return-void

    #@31
    .line 1688
    :catch_0
    move-exception v1

    #@32
    .line 1689
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@34
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@37
    throw v3

    #@38
    .line 1686
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    #@39
    .line 1687
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@3c
    move-result-object v3

    #@3d
    throw v3
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    #@0
    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->register(Landroid/os/storage/IMountServiceListener;)V

    #@5
    .line 1543
    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2159
    const-string/jumbo v2, "android.permission.ASEC_RENAME"

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
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@e
    monitor-enter v3

    #@f
    .line 2168
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
    .line 2169
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
    .line 2173
    const/4 v1, 0x0

    #@24
    .line 2175
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
    .line 2180
    :goto_0
    return v1

    #@3c
    .line 2163
    .end local v1    # "rc":I
    :catchall_0
    move-exception v2

    #@3d
    monitor-exit v3

    #@3e
    throw v2

    #@3f
    .line 2176
    .restart local v1    # "rc":I
    :catch_0
    move-exception v0

    #@40
    .line 2177
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
    .line 1988
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1989
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1990
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 1992
    const/4 v1, 0x0

    #@d
    .line 1994
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
    .line 1998
    :goto_0
    return v1

    #@31
    .line 1995
    :catch_0
    move-exception v0

    #@32
    .line 1996
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
    .line 849
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
    .line 848
    return-void
.end method

.method public runMaintenance()V
    .locals 1

    #@0
    .prologue
    .line 855
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 856
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    #@a
    .line 854
    return-void
.end method

.method public setDebugFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1839
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@7
    .line 1840
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@a
    .line 1842
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v1

    #@d
    .line 1843
    and-int/lit8 v2, p2, 0x1

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 1844
    and-int/lit8 v2, p1, 0x1

    #@13
    if-eqz v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    #@18
    .line 1847
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    #@1b
    .line 1848
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v1

    #@1f
    .line 1838
    return-void

    #@20
    .line 1842
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
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
    .line 2511
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@3
    .line 2515
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    #@5
    const-string/jumbo v3, "cryptfs"

    #@8
    const/4 v4, 0x3

    #@9
    new-array v4, v4, [Ljava/lang/Object;

    #@b
    const-string/jumbo v5, "setfield"

    #@e
    const/4 v6, 0x0

    #@f
    aput-object v5, v4, v6

    #@11
    const/4 v5, 0x1

    #@12
    aput-object p1, v4, v5

    #@14
    const/4 v5, 0x2

    #@15
    aput-object p2, v4, v5

    #@17
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v1

    #@1b
    .line 2509
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    #@1c
    .line 2516
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@1d
    .line 2517
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@20
    move-result-object v2

    #@21
    throw v2
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    #@0
    .prologue
    .line 1864
    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1865
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1867
    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v4

    #@c
    .line 1868
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@e
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 1869
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
    .line 1867
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3

    #@31
    .line 1872
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 1873
    new-instance v3, Ljava/lang/IllegalStateException;

    #@37
    const-string/jumbo v5, "Move already in progress"

    #@3a
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v3

    #@3e
    .line 1875
    :cond_1
    iput-object p2, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    #@40
    .line 1876
    iput-object p1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    #@42
    .line 1880
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
    .line 1881
    const-string/jumbo v3, "primary_physical"

    #@50
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@53
    move-result v3

    #@54
    .line 1880
    if-eqz v3, :cond_3

    #@56
    .line 1882
    :cond_2
    const-string/jumbo v3, "MountService"

    #@59
    const-string/jumbo v5, "Skipping move to/from primary physical"

    #@5c
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 1883
    const/16 v3, 0x52

    #@61
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    #@64
    .line 1884
    const/16 v3, -0x64

    #@66
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    #@69
    .line 1885
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    :goto_0
    monitor-exit v4

    #@6d
    .line 1863
    return-void

    #@6e
    .line 1888
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@70
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@73
    move-result-object v1

    #@74
    .line 1889
    .local v1, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@77
    move-result-object v2

    #@78
    .line 1891
    .local v2, "to":Landroid/os/storage/VolumeInfo;
    if-nez v1, :cond_4

    #@7a
    .line 1892
    const-string/jumbo v3, "MountService"

    #@7d
    new-instance v5, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v6, "Failing move due to missing from volume "

    #@85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    iget-object v6, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    #@8b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    .line 1893
    const/4 v3, -0x6

    #@97
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9a
    monitor-exit v4

    #@9b
    .line 1894
    return-void

    #@9c
    .line 1895
    :cond_4
    if-nez v2, :cond_5

    #@9e
    .line 1896
    :try_start_3
    const-string/jumbo v3, "MountService"

    #@a1
    new-instance v5, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v6, "Failing move due to missing to volume "

    #@a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 1897
    const/4 v3, -0x6

    #@b9
    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@bc
    monitor-exit v4

    #@bd
    .line 1898
    return-void

    #@be
    .line 1902
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@c0
    const-string/jumbo v5, "volume"

    #@c3
    const/4 v6, 0x3

    #@c4
    new-array v6, v6, [Ljava/lang/Object;

    #@c6
    const-string/jumbo v7, "move_storage"

    #@c9
    const/4 v8, 0x0

    #@ca
    aput-object v7, v6, v8

    #@cc
    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@ce
    const/4 v8, 0x1

    #@cf
    aput-object v7, v6, v8

    #@d1
    iget-object v7, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@d3
    const/4 v8, 0x2

    #@d4
    aput-object v7, v6, v8

    #@d6
    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d9
    goto :goto_0

    #@da
    .line 1903
    :catch_0
    move-exception v0

    #@db
    .line 1904
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    #@de
    move-result-object v3

    #@df
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1567
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
    .line 1729
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1730
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1732
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1733
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1734
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeRecord;

    #@17
    .line 1735
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@19
    .line 1736
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@1b
    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->-wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    #@1e
    .line 1737
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 1728
    return-void

    #@23
    .line 1733
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
    .line 1743
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1744
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1746
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 1747
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 1748
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeRecord;

    #@17
    .line 1749
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
    .line 1750
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@22
    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->-wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    #@25
    .line 1751
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 1742
    return-void

    #@2a
    .line 1747
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
    .line 1554
    const-string/jumbo v0, "android.permission.SHUTDOWN"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1556
    const-string/jumbo v0, "MountService"

    #@9
    const-string/jumbo v1, "Shutting down"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1557
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
    .line 1553
    return-void
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 9
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1620
    const-string/jumbo v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 1621
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 1623
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@c
    move-result-object v1

    #@d
    .line 1626
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 1627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@16
    move-result-wide v2

    #@17
    .line 1629
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    #@19
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1a
    .line 1630
    :try_start_1
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    #@1c
    const/4 v6, 0x1

    #@1d
    invoke-direct {v4, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@20
    iput-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    #@22
    .line 1631
    iget-object v4, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    #@24
    const/4 v6, 0x0

    #@25
    const/4 v7, 0x1

    #@26
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    #@29
    .line 1632
    iget-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    #@2b
    const-string/jumbo v6, "mUnmountSignal"

    #@2e
    invoke-direct {p0, v4, v6}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    #@31
    .line 1633
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
    .line 1636
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 1641
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
    .line 1619
    return-void

    #@4f
    .line 1629
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
    .line 1635
    :catchall_1
    move-exception v4

    #@53
    .line 1636
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 1635
    throw v4

    #@57
    .line 1642
    .end local v2    # "ident":J
    :catch_0
    move-exception v0

    #@58
    .line 1643
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
    .line 2312
    const-string/jumbo v1, "rawPath cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 2315
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    #@8
    monitor-enter v2

    #@9
    .line 2316
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
    .line 2319
    if-eqz v8, :cond_0

    #@14
    .line 2321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@17
    move-result v4

    #@18
    .line 2322
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    #@1a
    .line 2323
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
    .line 2322
    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    #@23
    .line 2324
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    #@25
    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    #@28
    .line 2325
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
    .line 2311
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_0
    return-void

    #@35
    .line 2315
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 2330
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
    .line 2106
    const-string/jumbo v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    #@6
    .line 2107
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@9
    .line 2108
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    #@c
    .line 2110
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@e
    monitor-enter v5

    #@f
    .line 2111
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
    .line 2112
    const/4 v4, -0x5

    #@18
    monitor-exit v5

    #@19
    return v4

    #@1a
    :cond_0
    monitor-exit v5

    #@1b
    .line 2122
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    #@22
    .line 2124
    const/4 v3, 0x0

    #@23
    .line 2126
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
    .line 2127
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_1

    #@39
    .line 2128
    const-string/jumbo v4, "force"

    #@3c
    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    #@3f
    .line 2130
    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    #@41
    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    #@44
    .line 2140
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    #@46
    .line 2141
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@48
    monitor-enter v5

    #@49
    .line 2142
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    #@4b
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4e
    monitor-exit v5

    #@4f
    .line 2145
    :cond_2
    return v3

    #@50
    .line 2110
    .end local v3    # "rc":I
    :catchall_0
    move-exception v4

    #@51
    monitor-exit v5

    #@52
    throw v4

    #@53
    .line 2131
    .restart local v3    # "rc":I
    :catch_0
    move-exception v2

    #@54
    .line 2132
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    #@57
    move-result v1

    #@58
    .line 2133
    .local v1, "code":I
    const/16 v4, 0x195

    #@5a
    if-ne v1, v4, :cond_3

    #@5c
    .line 2134
    const/4 v3, -0x7

    #@5d
    goto :goto_0

    #@5e
    .line 2136
    :cond_3
    const/4 v3, -0x1

    #@5f
    goto :goto_0

    #@60
    .line 2141
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
    .line 1593
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    #@7
    .line 1592
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    #@0
    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->unregister(Landroid/os/storage/IMountServiceListener;)V

    #@5
    .line 1548
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
    .line 2452
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    const/16 v3, 0x3e8

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 2453
    new-instance v2, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v3, "no permission to access the crypt keeper"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 2456
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    #@13
    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    #@16
    .line 2457
    const-string/jumbo v4, "no permission to access the crypt keeper"

    #@19
    .line 2456
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 2459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 2460
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v3, "password cannot be empty"

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 2463
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    #@2e
    .line 2471
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
    .line 2472
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
    .line 2473
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
    .line 2474
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    #@70
    .line 2476
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
    .line 694
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    #@2
    const-string/jumbo v1, "mAsecsScanned"

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    #@8
    .line 693
    return-void
.end method
