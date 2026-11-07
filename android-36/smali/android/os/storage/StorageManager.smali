.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$StorageEventListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageVolumeCallback;,
        Landroid/os/storage/StorageManager$VolumeListQuery;,
        Landroid/os/storage/StorageManager$AppIoBlockedReason;,
        Landroid/os/storage/StorageManager$QuotaType;,
        Landroid/os/storage/StorageManager$AllocateFlags;,
        Landroid/os/storage/StorageManager$MountMode;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageFlags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CLEAR_APP_CACHE:Ljava/lang/String; = "android.os.storage.action.CLEAR_APP_CACHE"

.field public static final whitelist ACTION_MANAGE_STORAGE:Ljava/lang/String; = "android.os.storage.action.MANAGE_STORAGE"

.field public static final blacklist APP_IO_BLOCKED_REASON_TRANSCODING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist APP_IO_BLOCKED_REASON_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist CACHE_RESERVE_PERCENT_HIGH_KEY:Ljava/lang/String; = "cache_reserve_percent_high"

.field public static final blacklist CACHE_RESERVE_PERCENT_LOW_KEY:Ljava/lang/String; = "cache_reserve_percent_low"

.field public static final greylist-max-r CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final greylist-max-r CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final greylist-max-o DEBUG_ADOPTABLE_FORCE_OFF:I = 0x2

.field public static final greylist-max-o DEBUG_ADOPTABLE_FORCE_ON:I = 0x1

.field public static final greylist-max-o DEBUG_SDCARDFS_FORCE_OFF:I = 0x8

.field public static final greylist-max-o DEBUG_SDCARDFS_FORCE_ON:I = 0x4

.field public static final greylist-max-o DEBUG_VIRTUAL_DISK:I = 0x10

.field public static final blacklist DEFAULT_CACHE_RESERVE_PERCENT_HIGH:I = 0xa

.field public static final blacklist DEFAULT_CACHE_RESERVE_PERCENT_LOW:I = 0x2

.field private static final greylist-max-o DEFAULT_FULL_THRESHOLD_BYTES:J

.field public static final blacklist DEFAULT_STORAGE_THRESHOLD_PERCENT_HIGH:I = 0x14

.field public static final blacklist DEFAULT_STORAGE_THRESHOLD_PERCENT_LOW:I = 0x5

.field private static final greylist-max-o DEFAULT_THRESHOLD_MAX_BYTES:J

.field public static final greylist-max-r ENCRYPTION_STATE_NONE:I = 0x1

.field public static final whitelist EXTRA_REQUESTED_BYTES:Ljava/lang/String; = "android.os.storage.extra.REQUESTED_BYTES"

.field public static final whitelist EXTRA_UUID:Ljava/lang/String; = "android.os.storage.extra.UUID"

.field private static final blacklist FAT_UUID_PREFIX:Ljava/lang/String; = "fafafafa-fafa-5afa-8afa-fafa"

.field public static final whitelist FLAG_ALLOCATE_AGGRESSIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_ALLOCATE_CACHE_ONLY:I = 0x10

.field public static final greylist-max-o FLAG_ALLOCATE_DEFY_ALL_RESERVED:I = 0x2

.field public static final greylist-max-o FLAG_ALLOCATE_DEFY_HALF_RESERVED:I = 0x4

.field public static final blacklist FLAG_ALLOCATE_NON_CACHE_ONLY:I = 0x8

.field public static final greylist-max-o FLAG_FOR_WRITE:I = 0x100

.field public static final greylist-max-o FLAG_INCLUDE_INVISIBLE:I = 0x400

.field public static final blacklist FLAG_INCLUDE_RECENT:I = 0x800

.field public static final blacklist FLAG_INCLUDE_SHARED_PROFILE:I = 0x1000

.field public static final greylist-max-o FLAG_REAL_STATE:I = 0x200

.field public static final greylist-max-o FLAG_STORAGE_CE:I = 0x2

.field public static final greylist-max-o FLAG_STORAGE_DE:I = 0x1

.field public static final blacklist FLAG_STORAGE_EXTERNAL:I = 0x4

.field public static final blacklist FLAG_STORAGE_SDK:I = 0x8

.field public static final greylist-max-o FSTRIM_FLAG_DEEP:I = 0x1

.field private static final blacklist LOCAL_LOGV:Z

.field public static final whitelist MOUNT_MODE_EXTERNAL_ANDROID_WRITABLE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOUNT_MODE_EXTERNAL_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOUNT_MODE_EXTERNAL_INSTALLER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOUNT_MODE_EXTERNAL_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOUNT_MODE_EXTERNAL_PASS_THROUGH:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist PATTERN_USER_ID:Ljava/util/regex/Pattern;

.field public static final blacklist PROJECT_ID_EXT_DEFAULT:I = 0x3e8

.field public static final blacklist PROJECT_ID_EXT_MEDIA_AUDIO:I = 0x3e9

.field public static final blacklist PROJECT_ID_EXT_MEDIA_IMAGE:I = 0x3eb

.field public static final blacklist PROJECT_ID_EXT_MEDIA_VIDEO:I = 0x3ea

.field public static final greylist-max-o PROP_ADOPTABLE:Ljava/lang/String; = "persist.sys.adoptable"

.field public static final blacklist PROP_FORCED_SCOPED_STORAGE_WHITELIST:Ljava/lang/String; = "forced_scoped_storage_whitelist"

.field public static final greylist-max-o PROP_HAS_ADOPTABLE:Ljava/lang/String; = "vold.has_adoptable"

.field public static final greylist-max-o PROP_HAS_RESERVED:Ljava/lang/String; = "vold.has_reserved"

.field public static final greylist-max-o PROP_PRIMARY_PHYSICAL:Ljava/lang/String; = "ro.vold.primary_physical"

.field public static final greylist-max-o PROP_SDCARDFS:Ljava/lang/String; = "persist.sys.sdcardfs"

.field public static final greylist-max-o PROP_VIRTUAL_DISK:Ljava/lang/String; = "persist.sys.virtual_disk"

.field public static final whitelist QUOTA_TYPE_MEDIA_AUDIO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUOTA_TYPE_MEDIA_IMAGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUOTA_TYPE_MEDIA_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUOTA_TYPE_MEDIA_VIDEO:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STORAGE_THRESHOLD_PERCENT_HIGH_KEY:Ljava/lang/String; = "storage_threshold_percent_high"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StorageManager"

.field public static final whitelist UUID_DEFAULT:Ljava/util/UUID;

.field public static final greylist-max-o UUID_PRIMARY_PHYSICAL:Ljava/lang/String; = "primary_physical"

.field public static final greylist-max-o UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

.field public static final greylist-max-o UUID_PRIVATE_INTERNAL:Ljava/lang/String;

.field public static final greylist-max-o UUID_SYSTEM:Ljava/lang/String; = "system"

.field public static final greylist-max-o UUID_SYSTEM_:Ljava/util/UUID;

.field private static final blacklist VOLUME_LIST_CACHE_MAX:I = 0x10

.field private static final greylist-max-o XATTR_CACHE_GROUP:Ljava/lang/String; = "user.cache_group"

.field private static final greylist-max-o XATTR_CACHE_TOMBSTONE:Ljava/lang/String; = "user.cache_tombstone"

.field private static volatile greylist-max-o sStorageManager:Landroid/os/storage/IStorageManager;

.field private static final blacklist sVolumeListCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/os/storage/StorageManager$VolumeListQuery;",
            "[",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sVolumeListQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "Landroid/os/storage/StorageManager$VolumeListQuery;",
            "[",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/storage/StorageManager$StorageEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

.field private final greylist-max-o mFuseAppLoopLock:Ljava/lang/Object;

.field private final greylist-max-o mLooper:Landroid/os/Looper;

.field private final greylist-max-o mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final greylist-max-o mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;

.field private final greylist-max-o mStorageManager:Landroid/os/storage/IStorageManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLooper(Landroid/os/storage/StorageManager;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextNonce(Landroid/os/storage/StorageManager;)I
    .registers 1

    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 144
    const-string v0, "StorageManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/storage/StorageManager;->LOCAL_LOGV:Z

    .line 163
    const/4 v0, 0x0

    sput-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 187
    nop

    .line 188
    const-string v1, "41217664-9172-527a-b3d5-edabb50a7d69"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 191
    nop

    .line 192
    const-string v1, "0f95a519-dae7-5abf-9519-fbd6209e05fd"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    .line 195
    nop

    .line 196
    const-string v1, "5d258386-e60d-59e3-826d-0089cdd42cc0"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    .line 302
    sput-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 319
    new-instance v0, Landroid/os/storage/StorageManager$1;

    invoke-direct {v0}, Landroid/os/storage/StorageManager$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageManager;->sVolumeListQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 343
    new-instance v0, Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/app/PropertyInvalidatedCache$Args;

    const-string/jumbo v2, "system_server"

    invoke-direct {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    .line 345
    const-string/jumbo v2, "getVolumeList"

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    sget-object v3, Landroid/os/storage/StorageManager;->sVolumeListQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    sput-object v0, Landroid/os/storage/StorageManager;->sVolumeListCache:Landroid/app/PropertyInvalidatedCache;

    .line 1530
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_THRESHOLD_MAX_BYTES:J

    .line 1532
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_FULL_THRESHOLD_BYTES:J

    .line 2577
    const-string v0, "(?i)^/storage/emulated/([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->PATTERN_USER_ID:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    .line 435
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager-IA;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 3002
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    .line 3004
    iput-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 530
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 531
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    .line 532
    iput-object p2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    .line 533
    nop

    .line 534
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 533
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 535
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 536
    return-void
.end method

.method private blacklist checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "enforce"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "permission"    # Ljava/lang/String;
    .param p7, "op"    # I

    .line 1973
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x5c

    const/4 v5, 0x0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "featureId":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "featureId":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1975
    .local p3, "mode":I
    const/4 p4, 0x1

    if-nez p3, :cond_10

    .line 1976
    return p4

    .line 1978
    :cond_10
    const/4 p5, 0x3

    if-ne p3, p5, :cond_1e

    iget-object p5, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {p5, v0, p2, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p5

    if-nez p5, :cond_1e

    .line 1980
    return p4

    .line 1984
    :cond_1e
    move-object v0, p0

    move v1, p1

    move-object v6, p6

    move v7, p7

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, p2

    .end local p1    # "enforce":Z
    .end local p2    # "pid":I
    .end local p6    # "permission":Ljava/lang/String;
    .end local p7    # "op":I
    .local v1, "enforce":Z
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "featureId":Ljava/lang/String;
    .local v6, "permission":Ljava/lang/String;
    .local v7, "op":I
    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public static blacklist checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enforce"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "permission"    # Ljava/lang/String;
    .param p7, "op"    # I

    .line 1845
    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v8

    return v8
.end method

.method private static blacklist checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enforce"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "permission"    # Ljava/lang/String;
    .param p7, "op"    # I
    .param p8, "note"    # Z

    .line 1868
    invoke-virtual {p0, p6, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1869
    if-nez p1, :cond_a

    .line 1873
    return v1

    .line 1870
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " denied for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1877
    :cond_2d
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1879
    .local v2, "appOps":Landroid/app/AppOpsManager;
    if-eqz p8, :cond_42

    .line 1880
    const/4 v7, 0x0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v3, p7

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "mode":I
    goto :goto_4a

    .line 1883
    .end local v0    # "mode":I
    :cond_42
    :try_start_42
    invoke-virtual {v2, p3, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_45} :catch_ac

    .line 1890
    nop

    .line 1891
    invoke-virtual {v2, p7, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1893
    .restart local v0    # "mode":I
    :goto_4a
    packed-switch v0, :pswitch_data_b2

    .line 1906
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1907
    invoke-static {p7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has unknown mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1908
    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1899
    :pswitch_72
    if-nez p1, :cond_75

    .line 1903
    return v1

    .line 1900
    :cond_75
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Op "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1901
    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1895
    :pswitch_aa
    const/4 v1, 0x1

    return v1

    .line 1884
    .end local v0    # "mode":I
    :catch_ac
    move-exception v0

    .line 1885
    .local v0, "e":Ljava/lang/SecurityException;
    if-nez p1, :cond_b0

    .line 1888
    return v1

    .line 1886
    :cond_b0
    throw v0

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_72
        :pswitch_72
        :pswitch_72
    .end packed-switch
.end method

.method private blacklist checkPermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "enforce"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "permission"    # Ljava/lang/String;
    .param p7, "op"    # I

    .line 1914
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    .end local p1    # "enforce":Z
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "featureId":Ljava/lang/String;
    .end local p6    # "permission":Ljava/lang/String;
    .end local p7    # "op":I
    .local v1, "enforce":Z
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "featureId":Ljava/lang/String;
    .local v6, "permission":Ljava/lang/String;
    .local v7, "op":I
    invoke-static/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public static blacklist checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enforce"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "permission"    # Ljava/lang/String;
    .param p6, "op"    # I

    .line 1856
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "enforce":Z
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "permission":Ljava/lang/String;
    .end local p6    # "op":I
    .local v0, "context":Landroid/content/Context;
    .local v1, "enforce":Z
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v6, "permission":Ljava/lang/String;
    .local v7, "op":I
    invoke-static/range {v0 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o convert(Ljava/util/UUID;)Ljava/lang/String;
    .registers 6
    .param p0, "storageUuid"    # Ljava/util/UUID;

    .line 2823
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2824
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 2825
    :cond_b
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2826
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 2827
    :cond_17
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2828
    const-string/jumbo v0, "system"

    return-object v0

    .line 2830
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2835
    .local v0, "uuidString":Ljava/lang/String;
    const-string v1, "fafafafa-fafa-5afa-8afa-fafa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2836
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2837
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2838
    .local v1, "fatStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2841
    .end local v1    # "fatStr":Ljava/lang/String;
    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o convert(Ljava/lang/String;)Ljava/util/UUID;
    .registers 4
    .param p0, "uuid"    # Ljava/lang/String;

    .line 2796
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2797
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object v0

    .line 2798
    :cond_b
    const-string/jumbo v0, "primary_physical"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2799
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    return-object v0

    .line 2800
    :cond_17
    const-string/jumbo v0, "system"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2801
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    return-object v0

    .line 2802
    :cond_23
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isFatVolumeIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fafafafa-fafa-5afa-8afa-fafa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0

    .line 2816
    :cond_49
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static greylist from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private greylist-max-o getNextNonce()I
    .registers 2

    .line 469
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method private blacklist getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .registers 6
    .param p1, "canonicalPath"    # Ljava/lang/String;

    .line 765
    :try_start_0
    invoke-static {p1}, Landroid/content/res/ObbScanner;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    .line 766
    .local v0, "obbInfo":Landroid/content/res/ObbInfo;
    return-object v0

    .line 767
    .end local v0    # "obbInfo":Landroid/content/res/ObbInfo;
    :catch_5
    move-exception v0

    .line 768
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get OBB info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-o getPrimaryStoragePathAndSize()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1399
    nop

    .line 1400
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 1401
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1400
    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1399
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .registers 5
    .param p0, "volumes"    # [Landroid/os/storage/StorageVolume;

    .line 1482
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 1483
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1484
    return-object v2

    .line 1482
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1487
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing primary storage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getProjectIdForUser(II)J
    .registers 4
    .param p0, "userId"    # I
    .param p1, "projectId"    # I

    .line 2574
    const v0, 0x186a0

    mul-int/2addr v0, p0

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static greylist-max-o getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "userId"    # I

    .line 1285
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-r getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .registers 9
    .param p0, "volumes"    # [Landroid/os/storage/StorageVolume;
    .param p1, "file"    # Ljava/io/File;

    .line 1291
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1292
    return-object v0

    .line 1294
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, "path":Ljava/lang/String;
    const-string v2, "/mnt/content/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1296
    invoke-static {v1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1297
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1298
    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Landroid/net/Uri;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 1297
    return-object v2

    .line 1301
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_46

    .line 1305
    .end local p1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    nop

    .line 1306
    array-length p1, p0

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, p1, :cond_45

    aget-object v4, p0, v3

    .line 1307
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v5

    .line 1309
    .local v5, "volumeFile":Ljava/io/File;
    :try_start_34
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_40

    .line 1312
    .end local v5    # "volumeFile":Ljava/io/File;
    .local v6, "volumeFile":Ljava/io/File;
    nop

    .line 1313
    invoke-static {v6, v2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1314
    return-object v4

    .line 1310
    .end local v6    # "volumeFile":Ljava/io/File;
    .restart local v5    # "volumeFile":Ljava/io/File;
    :catch_40
    move-exception v6

    .line 1311
    .local v6, "ignored":Ljava/io/IOException;
    nop

    .line 1306
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    .end local v5    # "volumeFile":Ljava/io/File;
    .end local v6    # "ignored":Ljava/io/IOException;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1317
    :cond_45
    return-object v0

    .line 1302
    .end local v2    # "file":Ljava/io/File;
    .restart local p1    # "file":Ljava/io/File;
    :catch_46
    move-exception v2

    .line 1303
    .local v2, "ignored":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get canonical path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StorageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    return-object v0
.end method

.method public static greylist getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .registers 7
    .param p0, "userId"    # I
    .param p1, "flags"    # I

    .line 1438
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_27

    .line 1444
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1445
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1444
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    array-length v3, v1

    if-gtz v3, :cond_19

    goto :goto_1d

    .line 1450
    :cond_19
    aget-object v2, v1, v2

    move-object v0, v2

    goto :goto_27

    .line 1447
    :cond_1d
    :goto_1d
    const-string v3, "StorageManager"

    const-string v4, "Missing package names; no storage volumes available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    new-array v2, v2, [Landroid/os/storage/StorageVolume;

    return-object v2

    .line 1452
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_27
    :goto_27
    sget-object v1, Landroid/os/storage/StorageManager;->sVolumeListCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v2, Landroid/os/storage/StorageManager$VolumeListQuery;

    invoke-direct {v2, p0, v0, p1}, Landroid/os/storage/StorageManager$VolumeListQuery;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/storage/StorageVolume;
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_35

    return-object v1

    .line 1453
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_35
    move-exception v0

    .line 1454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static greylist-max-o hasAdoptable()Z
    .registers 4

    .line 1787
    const-string/jumbo v0, "persist.sys.adoptable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_34

    :cond_10
    goto :goto_25

    :sswitch_11
    const-string v1, "force_off"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_26

    :sswitch_1b
    const-string v1, "force_on"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_26

    :goto_25
    const/4 v0, -0x1

    :goto_26
    packed-switch v0, :pswitch_data_3e

    .line 1793
    const-string/jumbo v0, "vold.has_adoptable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1791
    :pswitch_31
    return v3

    .line 1789
    :pswitch_32
    return v2

    nop

    :sswitch_data_34
    .sparse-switch
        0x1bb67bb3 -> :sswitch_1b
        0x5b18fa1b -> :sswitch_11
    .end sparse-switch

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method public static whitelist hasIsolatedStorage()Z
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1805
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist invalidateVolumeListCache()V
    .registers 1

    .line 350
    sget-object v0, Landroid/os/storage/StorageManager;->sVolumeListCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 351
    return-void
.end method

.method private static greylist-max-o isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .param p0, "path"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2716
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2717
    const/4 v0, 0x1

    return v0

    .line 2718
    :catch_9
    move-exception v0

    .line 2719
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENODATA:I

    if-ne v1, v2, :cond_12

    .line 2722
    const/4 v1, 0x0

    return v1

    .line 2720
    :cond_12
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist isCeStorageUnlocked(I)Z
    .registers 5
    .param p0, "userId"    # I

    .line 1726
    sget-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_12

    .line 1727
    nop

    .line 1728
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 1730
    :cond_12
    sget-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_1f

    .line 1731
    const-string v0, "StorageManager"

    const-string v1, "Early during boot, assuming CE storage is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/4 v0, 0x0

    return v0

    .line 1734
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1736
    .local v0, "token":J
    :try_start_23
    sget-object v2, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p0}, Landroid/os/storage/IStorageManager;->isCeStorageUnlocked(I)Z

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2f
    .catchall {:try_start_23 .. :try_end_29} :catchall_2d

    .line 1740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1736
    return v2

    .line 1740
    :catchall_2d
    move-exception v2

    goto :goto_35

    .line 1737
    :catch_2f
    move-exception v2

    .line 1738
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_30
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "token":J
    .end local p0    # "userId":I
    throw v3
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2d

    .line 1740
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "token":J
    .restart local p0    # "userId":I
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1741
    throw v2
.end method

.method public static greylist-max-o isEncrypted()Z
    .registers 1

    .line 1769
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    return v0
.end method

.method private static blacklist isFatVolumeIdentifier(Ljava/lang/String;)Z
    .registers 3
    .param p0, "uuid"    # Ljava/lang/String;

    .line 2789
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static blacklist isFileEncrypted()Z
    .registers 1

    .line 1779
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1780
    const/4 v0, 0x0

    return v0

    .line 1782
    :cond_8
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    return v0
.end method

.method public static greylist-max-o maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .param p0, "path"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1815
    return-object p0
.end method

.method private blacklist noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "enforce"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "op"    # I

    .line 1920
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v1, p6

    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "featureId":Ljava/lang/String;
    .end local p6    # "op":I
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "featureId":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1921
    .local p3, "mode":I
    const/4 p4, 0x1

    packed-switch p3, :pswitch_data_7a

    .line 1941
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1942
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, " has unknown mode "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    .line 1943
    invoke-static {p3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 1929
    :pswitch_34
    iget-object p5, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p6, 0x57

    invoke-virtual {p5, p6, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p5

    if-nez p5, :cond_3f

    .line 1931
    return p4

    .line 1934
    :cond_3f
    if-nez p1, :cond_43

    .line 1938
    const/4 p4, 0x0

    return p4

    .line 1935
    :cond_43
    new-instance p4, Ljava/lang/SecurityException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Op "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, " "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    .line 1936
    invoke-static {p3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, " for package "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 1923
    :pswitch_78
    return p4

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_78
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method private static greylist-max-o setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 6
    .param p0, "path"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2692
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2695
    if-eqz p2, :cond_1f

    .line 2697
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2698
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2697
    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_18} :catch_19

    .line 2701
    goto :goto_2e

    .line 2699
    :catch_19
    move-exception v0

    .line 2700
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 2704
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/system/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_26} :catch_27

    .line 2709
    goto :goto_2e

    .line 2705
    :catch_27
    move-exception v0

    .line 2706
    .restart local v0    # "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENODATA:I

    if-ne v1, v2, :cond_2f

    .line 2711
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_2e
    return-void

    .line 2707
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :cond_2f
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 2693
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cache behavior can only be set on directories"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist setQuotaProjectId(Ljava/lang/String;J)Z
.end method


# virtual methods
.method public whitelist allocateBytes(Ljava/io/FileDescriptor;J)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2442
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 2443
    return-void
.end method

.method public whitelist allocateBytes(Ljava/io/FileDescriptor;JI)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bytes"    # J
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2451
    const-string v0, "StorageManager"

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v1

    .line 2452
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v2

    .line 2453
    .local v2, "uuid":Ljava/util/UUID;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    const/4 v4, 0x3

    if-ge v3, v4, :cond_54

    .line 2455
    :try_start_e
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v4

    iget-wide v4, v4, Landroid/system/StructStat;->st_blocks:J

    const-wide/16 v6, 0x200

    mul-long/2addr v4, v6

    .line 2456
    .local v4, "haveBytes":J
    sub-long v6, p2, v4

    .line 2458
    .local v6, "needBytes":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_22

    .line 2459
    invoke-virtual {p0, v2, v6, v7, p4}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_22} :catch_3f

    .line 2463
    :cond_22
    :try_start_22
    invoke-static {p1, v8, v9, p2, p3}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_25} :catch_26

    .line 2464
    return-void

    .line 2465
    :catch_26
    move-exception v8

    .line 2466
    .local v8, "e":Landroid/system/ErrnoException;
    :try_start_27
    iget v9, v8, Landroid/system/ErrnoException;->errno:I

    sget v10, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v9, v10, :cond_36

    iget v9, v8, Landroid/system/ErrnoException;->errno:I

    sget v10, Landroid/system/OsConstants;->ENOTSUP:I

    if-ne v9, v10, :cond_34

    goto :goto_36

    .line 2471
    :cond_34
    nop

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v3    # "i":I
    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "bytes":J
    .end local p4    # "flags":I
    throw v8

    .line 2467
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "uuid":Ljava/util/UUID;
    .restart local v3    # "i":I
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "bytes":J
    .restart local p4    # "flags":I
    :cond_36
    :goto_36
    const-string v9, "fallocate() not supported; falling back to ftruncate()"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    invoke-static {p1, p2, p3}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_3e
    .catch Landroid/system/ErrnoException; {:try_start_27 .. :try_end_3e} :catch_3f

    .line 2469
    return-void

    .line 2474
    .end local v4    # "haveBytes":J
    .end local v6    # "needBytes":J
    .end local v8    # "e":Landroid/system/ErrnoException;
    :catch_3f
    move-exception v4

    .line 2475
    .local v4, "e":Landroid/system/ErrnoException;
    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENOSPC:I

    if-ne v5, v6, :cond_4f

    .line 2476
    const-string v5, "Odd, not enough space; let\'s try again?"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    nop

    .line 2453
    .end local v4    # "e":Landroid/system/ErrnoException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2479
    .restart local v4    # "e":Landroid/system/ErrnoException;
    :cond_4f
    invoke-virtual {v4}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2482
    .end local v3    # "i":I
    .end local v4    # "e":Landroid/system/ErrnoException;
    :cond_54
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Well this is embarassing; we can\'t allocate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist allocateBytes(Ljava/util/UUID;J)V
    .registers 5
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V

    .line 2372
    return-void
.end method

.method public whitelist allocateBytes(Ljava/util/UUID;JI)V
    .registers 11
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "bytes"    # J
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2381
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 2382
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_c} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_18

    .line 2381
    move-wide v2, p2

    move v4, p4

    .end local p2    # "bytes":J
    .end local p4    # "flags":I
    .local v2, "bytes":J
    .local v4, "flags":I
    :try_start_e
    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IStorageManager;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/ParcelableException; {:try_start_e .. :try_end_11} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_2a

    .line 2385
    :catch_12
    move-exception v0

    move-object p2, v0

    goto :goto_1c

    .line 2383
    :catch_15
    move-exception v0

    move-object p2, v0

    goto :goto_25

    .line 2385
    .end local v2    # "bytes":J
    .end local v4    # "flags":I
    .restart local p2    # "bytes":J
    .restart local p4    # "flags":I
    :catch_18
    move-exception v0

    move-wide v2, p2

    move v4, p4

    move-object p2, v0

    .line 2386
    .end local p4    # "flags":I
    .restart local v2    # "bytes":J
    .restart local v4    # "flags":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3

    .line 2383
    .end local v2    # "bytes":J
    .end local v4    # "flags":I
    .local p2, "bytes":J
    .restart local p4    # "flags":I
    :catch_21
    move-exception v0

    move-wide v2, p2

    move v4, p4

    move-object p2, v0

    .line 2384
    .end local p4    # "flags":I
    .restart local v2    # "bytes":J
    .restart local v4    # "flags":I
    .local p2, "e":Landroid/os/ParcelableException;
    :goto_25
    const-class p3, Ljava/io/IOException;

    invoke-virtual {p2, p3}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2387
    .end local p2    # "e":Landroid/os/ParcelableException;
    :goto_2a
    nop

    .line 2388
    return-void
.end method

.method public greylist-max-o benchmark(Ljava/lang/String;)J
    .registers 8
    .param p1, "volId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1097
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1098
    .local v0, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/PersistableBundle;>;"
    new-instance v1, Landroid/os/storage/StorageManager$2;

    invoke-direct {v1, p0, v0}, Landroid/os/storage/StorageManager$2;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, p1, v1}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1111
    const-wide v1, 0x7fffffffffffffffL

    :try_start_12
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    const-string/jumbo v4, "run"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_28

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    return-wide v1

    .line 1112
    :catch_28
    move-exception v3

    .line 1113
    .local v3, "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public greylist-max-o benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .registers 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 1120
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1123
    nop

    .line 1124
    return-void

    .line 1121
    :catch_7
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist checkPermissionReadImages(ZIILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "enforce"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1961
    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v7, 0x3b

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "enforce":Z
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "featureId":Ljava/lang/String;
    .local v1, "enforce":Z
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "featureId":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1963
    const/4 p1, 0x0

    return p1

    .line 1965
    :cond_12
    const/16 v6, 0x55

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/storage/StorageManager;->noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public blacklist computeStorageCacheBytes(Ljava/io/File;)J
    .registers 19
    .param p1, "path"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1577
    const-string/jumbo v0, "storage_threshold_percent_high"

    const/16 v1, 0x14

    const-string/jumbo v2, "storage_native_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1580
    .local v0, "storageThresholdPercentHigh":I
    const-string v1, "cache_reserve_percent_high"

    const/16 v3, 0xa

    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1583
    .local v1, "cacheReservePercentHigh":I
    const-string v3, "cache_reserve_percent_low"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1586
    .local v2, "cacheReservePercentLow":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    .line 1587
    .local v3, "totalBytes":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v5

    .line 1588
    .local v5, "usableBytes":J
    int-to-long v7, v0

    mul-long/2addr v7, v3

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    .line 1589
    .local v7, "storageThresholdHighBytes":J
    invoke-virtual/range {p0 .. p1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v11

    .line 1591
    .local v11, "storageThresholdLowBytes":J
    cmp-long v13, v5, v7

    if-lez v13, :cond_37

    .line 1594
    int-to-long v13, v1

    mul-long/2addr v13, v3

    div-long/2addr v13, v9

    move v15, v0

    move/from16 v16, v1

    .local v13, "result":J
    goto :goto_60

    .line 1595
    .end local v13    # "result":J
    :cond_37
    cmp-long v13, v5, v11

    if-gez v13, :cond_42

    .line 1598
    int-to-long v13, v2

    mul-long/2addr v13, v3

    div-long/2addr v13, v9

    move v15, v0

    move/from16 v16, v1

    .restart local v13    # "result":J
    goto :goto_60

    .line 1601
    .end local v13    # "result":J
    :cond_42
    sub-int v9, v1, v2

    int-to-long v9, v9

    mul-long/2addr v9, v3

    long-to-double v9, v9

    sub-long v13, v7, v11

    long-to-double v13, v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    mul-double/2addr v13, v15

    div-double/2addr v9, v13

    .line 1603
    .local v9, "slope":D
    int-to-long v13, v2

    mul-long/2addr v13, v3

    long-to-double v13, v13

    div-double/2addr v13, v15

    move v15, v0

    move/from16 v16, v1

    .end local v0    # "storageThresholdPercentHigh":I
    .end local v1    # "cacheReservePercentHigh":I
    .local v15, "storageThresholdPercentHigh":I
    .local v16, "cacheReservePercentHigh":I
    long-to-double v0, v11

    mul-double/2addr v0, v9

    sub-double/2addr v13, v0

    .line 1605
    .local v13, "intercept":D
    long-to-double v0, v5

    mul-double/2addr v0, v9

    add-double/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    move-wide v13, v0

    .line 1607
    .end local v9    # "slope":D
    .local v13, "result":J
    :goto_60
    return-wide v13
.end method

.method public blacklist createUserStorageKeys(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "ephemeral"    # Z

    .line 1659
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->createUserStorageKeys(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1662
    nop

    .line 1663
    return-void

    .line 1660
    :catch_7
    move-exception v0

    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o destroyUserStorage(Ljava/lang/String;II)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 1714
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/storage/IStorageManager;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1717
    nop

    .line 1718
    return-void

    .line 1715
    :catch_7
    move-exception v0

    .line 1716
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist destroyUserStorageKeys(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1683
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->destroyUserStorageKeys(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1686
    nop

    .line 1687
    return-void

    .line 1684
    :catch_7
    move-exception v0

    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r disableUsbMassStorage()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    return-void
.end method

.method public greylist-max-r enableUsbMassStorage()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    return-void
.end method

.method public greylist findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 853
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 856
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    iget-object v2, v1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 857
    return-object v1

    .line 859
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_20
    goto :goto_b

    .line 860
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "privateVol"    # Landroid/os/storage/VolumeInfo;

    .line 918
    if-eqz p1, :cond_31

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "private"

    const-string v3, "emulated"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 920
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 922
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o findPathForUuid(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 975
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 976
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_b

    .line 977
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 979
    :cond_b
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a storage device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "emulatedVol"    # Landroid/os/storage/VolumeInfo;

    .line 903
    if-eqz p1, :cond_22

    .line 904
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "id":Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 906
    .local v1, "idx":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 907
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 909
    :cond_14
    const-string v2, "emulated"

    const-string/jumbo v3, "private"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    return-object v2

    .line 911
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "idx":I
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 5
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 891
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 894
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 895
    return-object v1

    .line 897
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_20
    goto :goto_b

    .line 898
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-r findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 866
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 869
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 870
    return-object v1

    .line 872
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_20
    goto :goto_b

    .line 873
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 928
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 929
    const-string/jumbo v0, "private"

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 930
    :cond_10
    const-string/jumbo v0, "primary_physical"

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 931
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 933
    :cond_1e
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 879
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 882
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 883
    return-object v1

    .line 885
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_20
    goto :goto_b

    .line 886
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist fixupAppDir(Ljava/io/File;)V
    .registers 5
    .param p1, "path"    # Ljava/io/File;

    .line 2681
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->fixupAppDir(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_2d

    .line 2684
    :catch_a
    move-exception v0

    .line 2685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2682
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_10
    move-exception v0

    .line 2683
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get canonical path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2686
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2d
    nop

    .line 2687
    return-void
.end method

.method public greylist-max-o forgetVolume(Ljava/lang/String;)V
    .registers 4
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 1210
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->forgetVolume(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1213
    nop

    .line 1214
    return-void

    .line 1211
    :catch_7
    move-exception v0

    .line 1212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r format(Ljava/lang/String;)V
    .registers 4
    .param p1, "volId"    # Ljava/lang/String;

    .line 1088
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->format(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1091
    nop

    .line 1092
    return-void

    .line 1089
    :catch_7
    move-exception v0

    .line 1090
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllocatableBytes(Ljava/util/UUID;)J
    .registers 4
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2322
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getAllocatableBytes(Ljava/util/UUID;I)J
    .registers 6
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2332
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 2333
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2332
    invoke-interface {v0, v1, p2, v2}, Landroid/os/storage/IStorageManager;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-wide v0

    .line 2337
    :catch_11
    move-exception v0

    .line 2338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2334
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 2335
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2336
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1032
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1035
    :cond_4
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1036
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v1

    .line 1037
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1038
    iget-object v0, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    return-object v0

    .line 1042
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1f
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1043
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1046
    :cond_2e
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_39

    .line 1047
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1050
    :cond_39
    return-object v0
.end method

.method public whitelist getCacheQuotaBytes(Ljava/util/UUID;)J
    .registers 6
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2113
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2114
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/os/storage/IStorageManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_12
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_12} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-wide v1

    .line 2118
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_13
    move-exception v0

    .line 2119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2115
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 2116
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2117
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getCacheSizeBytes(Ljava/util/UUID;)J
    .registers 6
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2148
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2149
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/os/storage/IStorageManager;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_12
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_12} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-wide v1

    .line 2153
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_13
    move-exception v0

    .line 2154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2150
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 2151
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2152
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getCloudMediaProvider()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2996
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getCloudMediaProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2997
    :catch_7
    move-exception v0

    .line 2998
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getDisks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation

    .line 844
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 845
    :catch_b
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2405
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2406
    :catch_7
    move-exception v0

    .line 2407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInternalStorageBlockDeviceSize()J
    .registers 3

    .line 1413
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getInternalStorageBlockDeviceSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1414
    :catch_7
    move-exception v0

    .line 1415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getInternalStorageRemainingLifetime()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3027
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getInternalStorageRemainingLifetime()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3028
    :catch_7
    move-exception v0

    .line 3029
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 758
    :catch_7
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 831
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :try_start_6
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 835
    :catch_d
    move-exception v0

    .line 836
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;
    .registers 5

    .line 1056
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 1057
    .local v0, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1058
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1059
    return-object v2

    .line 1061
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1b
    goto :goto_8

    .line 1062
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getPrimaryStorageSize()J
    .registers 5

    .line 1406
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 1407
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1406
    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .line 1224
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1225
    :catch_7
    move-exception v0

    .line 1226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;
    .registers 3

    .line 1394
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x600

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public greylist getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .registers 2

    .line 1477
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getProxyFileDescriptorMountPointId()I
    .registers 3

    .line 2080
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2081
    :try_start_3
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v1

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    :goto_f
    monitor-exit v0

    return v1

    .line 2082
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getRecentStorageVolumes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 1380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 1382
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0xe00

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1381
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1384
    return-object v0
.end method

.method public greylist getStorageBytesUntilLow(Ljava/io/File;)J
    .registers 6
    .param p1, "path"    # Ljava/io/File;

    .line 1542
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getStorageCacheBytes(Ljava/io/File;I)J
    .registers 7
    .param p1, "path"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 1617
    and-int/lit8 v0, p2, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 1618
    return-wide v1

    .line 1619
    :cond_7
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_c

    .line 1620
    return-wide v1

    .line 1621
    :cond_c
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_18

    .line 1622
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->computeStorageCacheBytes(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0

    .line 1624
    :cond_18
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->computeStorageCacheBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getStorageFullBytes(Ljava/io/File;)J
    .registers 6
    .param p1, "path"    # Ljava/io/File;

    .line 1636
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    sget-wide v2, Landroid/os/storage/StorageManager;->DEFAULT_FULL_THRESHOLD_BYTES:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getStorageLowBytes(Ljava/io/File;)J
    .registers 10
    .param p1, "path"    # Ljava/io/File;

    .line 1553
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 1556
    .local v0, "lowPercent":J
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    .line 1558
    .local v2, "lowBytes":J
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "sys_storage_threshold_max_bytes"

    sget-wide v6, Landroid/os/storage/StorageManager;->DEFAULT_THRESHOLD_MAX_BYTES:J

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1561
    .local v4, "maxLowBytes":J
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public whitelist getStorageVolume(Landroid/net/Uri;)Landroid/os/storage/StorageVolume;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1257
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "volumeName":Ljava/lang/String;
    const-string v1, "external"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 1262
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "volume_name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 1264
    .local v1, "c":Landroid/database/Cursor;
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1265
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_30

    move-object v0, v3

    .line 1267
    :cond_2a
    if-eqz v1, :cond_3c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 1262
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_3b

    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v2

    .line 1270
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_90

    :cond_43
    goto :goto_4d

    :pswitch_44
    const-string v1, "external_primary"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_4e

    :goto_4d
    const/4 v2, -0x1

    :goto_4e
    packed-switch v2, :pswitch_data_96

    .line 1274
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_5f

    .line 1272
    :pswitch_5a
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    return-object v1

    .line 1274
    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1275
    .local v2, "vol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1276
    return-object v2

    .line 1278
    .end local v2    # "vol":Landroid/os/storage/StorageVolume;
    :cond_76
    goto :goto_5f

    .line 1280
    :cond_77
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown volume for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_90
    .packed-switch -0x7288e272
        :pswitch_44
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_5a
    .end packed-switch
.end method

.method public whitelist getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 1249
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStorageVolumes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 1348
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x600

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1347
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1349
    return-object v0
.end method

.method public whitelist getStorageVolumesIncludingSharedProfiles()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 1366
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x1600

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1365
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1368
    return-object v0
.end method

.method public whitelist getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    .registers 9
    .param p1, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "pathString":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 952
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object v1

    .line 955
    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    array-length v3, v1

    :goto_20
    if-ge v2, v3, :cond_45

    aget-object v4, v1, v2

    .line 956
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v5, :cond_42

    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget v5, v4, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v5, :cond_42

    iget v5, v4, Landroid/os/storage/VolumeInfo;->type:I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_36} :catch_5f

    const/4 v6, 0x5

    if-eq v5, v6, :cond_42

    .line 961
    :try_start_39
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_3f} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_5f

    return-object v1

    .line 962
    :catch_40
    move-exception v5

    .line 963
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 955
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 969
    :cond_45
    nop

    .line 970
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a storage device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 967
    :catch_5f
    move-exception v1

    .line 968
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 3

    .line 1431
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVolumePaths()[Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1466
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1467
    .local v0, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    .line 1468
    .local v1, "count":I
    new-array v2, v1, [Ljava/lang/String;

    .line 1469
    .local v2, "paths":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_15

    .line 1470
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1469
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1472
    .end local v3    # "i":I
    :cond_15
    return-object v2
.end method

.method public greylist-max-o getVolumeRecords()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation

    .line 1023
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 1024
    :catch_c
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "mountPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1329
    .local v0, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_10

    .line 1330
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1332
    :cond_10
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method public greylist getVolumes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 999
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 1000
    :catch_c
    move-exception v0

    .line 1001
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getWritablePrivateVolumes()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 1008
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    array-length v3, v1

    :goto_d
    if-ge v2, v3, :cond_24

    aget-object v4, v1, v2

    .line 1010
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1011
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_25

    .line 1009
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1014
    :cond_24
    return-object v0

    .line 1015
    .end local v0    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    :catch_25
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAllocationSupported(Ljava/io/FileDescriptor;)Z
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 988
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    .line 989
    const/4 v0, 0x1

    return v0

    .line 990
    :catch_9
    move-exception v0

    .line 991
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isAppIoBlocked(Ljava/util/UUID;III)Z
    .registers 7
    .param p1, "volumeUuid"    # Ljava/util/UUID;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 2957
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2959
    :try_start_3
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    return v0

    .line 2960
    :catch_e
    move-exception v0

    .line 2961
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isCacheBehaviorGroup(Ljava/io/File;)Z
    .registers 3
    .param p1, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2753
    const-string/jumbo v0, "user.cache_group"

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isCacheBehaviorTombstone(Ljava/io/File;)Z
    .registers 3
    .param p1, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2781
    const-string/jumbo v0, "user.cache_tombstone"

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isCheckpointSupported()Z
    .registers 3

    .line 2852
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2853
    :catch_7
    move-exception v0

    .line 2854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isEncrypted(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 1749
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1750
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0

    .line 1751
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1752
    const/4 v0, 0x1

    return v0

    .line 1755
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 812
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    :try_start_6
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isObbMounted(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 816
    :catch_d
    move-exception v0

    .line 817
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r isUsbMassStorageConnected()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isUsbMassStorageEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockCeStorage(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1696
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockCeStorage(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1699
    nop

    .line 1700
    return-void

    .line 1697
    :catch_7
    move-exception v0

    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o mkdirs(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .line 1421
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1423
    :try_start_b
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/storage/IStorageManager;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1c

    .line 1426
    nop

    .line 1427
    return-void

    .line 1424
    :catch_1c
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o mount(Ljava/lang/String;)V
    .registers 4
    .param p1, "volId"    # Ljava/lang/String;

    .line 1068
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1071
    nop

    .line 1072
    return-void

    .line 1069
    :catch_7
    move-exception v0

    .line 1070
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .registers 12
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .line 719
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const/4 v0, 0x1

    if-nez p2, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-string/jumbo v2, "mounting encrypted OBBs is no longer supported"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 721
    const-string/jumbo v1, "listener cannot be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :try_start_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 725
    .local v4, "canonicalPath":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v1, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v6

    .line 726
    .local v6, "nonce":I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v5, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 727
    invoke-direct {p0, v4}, Landroid/os/storage/StorageManager;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v7
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_30} :catch_43
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_30} :catch_3b

    .line 726
    move-object v3, p1

    .end local p1    # "rawPath":Ljava/lang/String;
    .local v3, "rawPath":Ljava/lang/String;
    :try_start_31
    invoke-interface/range {v2 .. v7}, Landroid/os/storage/IStorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    .line 728
    return v0

    .line 731
    .end local v4    # "canonicalPath":Ljava/lang/String;
    .end local v6    # "nonce":I
    :catch_35
    move-exception v0

    move-object p1, v0

    goto :goto_3e

    .line 729
    :catch_38
    move-exception v0

    move-object p1, v0

    goto :goto_46

    .line 731
    .end local v3    # "rawPath":Ljava/lang/String;
    .restart local p1    # "rawPath":Ljava/lang/String;
    :catch_3b
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 732
    .restart local v3    # "rawPath":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_3e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 729
    .end local v3    # "rawPath":Ljava/lang/String;
    .local p1, "rawPath":Ljava/lang/String;
    :catch_43
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 730
    .restart local v3    # "rawPath":Ljava/lang/String;
    .local p1, "e":Ljava/io/IOException;
    :goto_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist notifyAppIoBlocked(Ljava/util/UUID;III)V
    .registers 7
    .param p1, "volumeUuid"    # Ljava/util/UUID;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2908
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    :try_start_3
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->notifyAppIoBlocked(Ljava/lang/String;III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 2913
    nop

    .line 2914
    return-void

    .line 2911
    :catch_e
    move-exception v0

    .line 2912
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyAppIoResumed(Ljava/util/UUID;III)V
    .registers 7
    .param p1, "volumeUuid"    # Ljava/util/UUID;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2934
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2936
    :try_start_3
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->notifyAppIoResumed(Ljava/lang/String;III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 2939
    nop

    .line 2940
    return-void

    .line 2937
    :catch_e
    move-exception v0

    .line 2938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "mode"    # I
    .param p2, "callback"    # Landroid/os/ProxyFileDescriptorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2043
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "mode"    # I
    .param p2, "callback"    # Landroid/os/ProxyFileDescriptorCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "mode"    # I
    .param p2, "callback"    # Landroid/os/ProxyFileDescriptorCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1992
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage_open_proxy_file_descriptor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1999
    :goto_c
    :try_start_c
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_75

    .line 2000
    const/4 v1, 0x0

    .line 2001
    .local v1, "newlyCreated":Z
    :try_start_10
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-nez v2, :cond_31

    .line 2002
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v2

    .line 2003
    .local v2, "mount":Lcom/android/internal/os/AppFuseMount;
    if-eqz v2, :cond_29

    .line 2006
    new-instance v3, Lcom/android/internal/os/FuseAppLoop;

    iget v4, v2, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    iget-object v5, v2, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v4, v5, p4}, Lcom/android/internal/os/FuseAppLoop;-><init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 2007
    const/4 v1, 0x1

    goto :goto_31

    .line 2004
    :cond_29
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to mount proxy bridge"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "mode":I
    .end local p2    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "factory":Ljava/util/concurrent/ThreadFactory;
    throw v3

    .line 2009
    .end local v2    # "mount":Lcom/android/internal/os/AppFuseMount;
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "mode":I
    .restart local p2    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "factory":Ljava/util/concurrent/ThreadFactory;
    :cond_31
    :goto_31
    if-nez p3, :cond_3d

    .line 2010
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_72

    move-object p3, v2

    .line 2013
    :cond_3d
    :try_start_3d
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/FuseAppLoop;->registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I

    move-result v2

    .line 2014
    .local v2, "fileId":I
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 2015
    invoke-virtual {v4}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v4

    .line 2014
    invoke-interface {v3, v4, v2, p1}, Landroid/os/storage/IStorageManager;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_4f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_3d .. :try_end_4f} :catch_64
    .catchall {:try_start_3d .. :try_end_4f} :catchall_72

    .line 2016
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_53

    .line 2021
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_72

    return-object v3

    .line 2017
    :cond_53
    :try_start_53
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/FuseAppLoop;->unregisterCallback(I)V

    .line 2018
    new-instance v4, Lcom/android/internal/os/FuseUnavailableMountException;

    iget-object v5, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 2019
    invoke-virtual {v5}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local v1    # "newlyCreated":Z
    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "mode":I
    .end local p2    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "factory":Ljava/util/concurrent/ThreadFactory;
    throw v4
    :try_end_64
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_53 .. :try_end_64} :catch_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_72

    .line 2022
    .end local v2    # "fileId":I
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "newlyCreated":Z
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "mode":I
    .restart local p2    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "factory":Ljava/util/concurrent/ThreadFactory;
    :catch_64
    move-exception v2

    .line 2025
    .local v2, "exception":Lcom/android/internal/os/FuseUnavailableMountException;
    if-nez v1, :cond_6c

    .line 2028
    const/4 v3, 0x0

    :try_start_68
    iput-object v3, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 2029
    monitor-exit v0

    goto :goto_c

    .line 2026
    :cond_6c
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "mode":I
    .end local p2    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "factory":Ljava/util/concurrent/ThreadFactory;
    throw v3

    .line 2031
    .end local v1    # "newlyCreated":Z
    .end local v2    # "exception":Lcom/android/internal/os/FuseUnavailableMountException;
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "mode":I
    .restart local p2    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "factory":Ljava/util/concurrent/ThreadFactory;
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_72

    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "mode":I
    .end local p2    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    .end local p4    # "factory":Ljava/util/concurrent/ThreadFactory;
    :try_start_74
    throw v1
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_75} :catch_75

    .line 2032
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "mode":I
    .restart local p2    # "callback":Landroid/os/ProxyFileDescriptorCallback;
    .restart local p3    # "handler":Landroid/os/Handler;
    .restart local p4    # "factory":Ljava/util/concurrent/ThreadFactory;
    :catch_75
    move-exception v0

    .line 2034
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o partitionMixed(Ljava/lang/String;I)V
    .registers 5
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .line 1148
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->partitionMixed(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1151
    nop

    .line 1152
    return-void

    .line 1149
    :catch_7
    move-exception v0

    .line 1150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o partitionPrivate(Ljava/lang/String;)V
    .registers 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1139
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->partitionPrivate(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1142
    nop

    .line 1143
    return-void

    .line 1140
    :catch_7
    move-exception v0

    .line 1141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r partitionPublic(Ljava/lang/String;)V
    .registers 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1130
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1133
    nop

    .line 1134
    return-void

    .line 1131
    :catch_7
    move-exception v0

    .line 1132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist prepareUserStorage(Ljava/lang/String;II)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 1705
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/storage/IStorageManager;->prepareUserStorage(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1708
    nop

    .line 1709
    return-void

    .line 1706
    :catch_7
    move-exception v0

    .line 1707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist registerListener(Landroid/os/storage/StorageEventListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    .line 547
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 548
    :try_start_3
    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-direct {v3}, Landroid/os/storage/StorageManager$StorageVolumeCallback;-><init>()V

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_27

    .line 551
    .local v1, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    :try_start_13
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, v1}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_21
    .catchall {:try_start_13 .. :try_end_18} :catchall_27

    .line 554
    nop

    .line 555
    :try_start_19
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    nop

    .end local v1    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    monitor-exit v0

    .line 557
    return-void

    .line 552
    .restart local v1    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    :catch_21
    move-exception v2

    .line 553
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "listener":Landroid/os/storage/StorageEventListener;
    throw v3

    .line 556
    .end local v1    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "listener":Landroid/os/storage/StorageEventListener;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist registerStorageVolumeCallback(Ljava/util/concurrent/Executor;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/os/storage/StorageManager$StorageVolumeCallback;

    .line 619
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 620
    :try_start_3
    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    new-instance v2, Landroid/os/storage/StorageEventListener;

    invoke-direct {v2}, Landroid/os/storage/StorageEventListener;-><init>()V

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    .line 623
    .local v1, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    :try_start_d
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, v1}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_1b
    .catchall {:try_start_d .. :try_end_12} :catchall_21

    .line 626
    nop

    .line 627
    :try_start_13
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    nop

    .end local v1    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    monitor-exit v0

    .line 629
    return-void

    .line 624
    .restart local v1    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    :catch_1b
    move-exception v2

    .line 625
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/os/storage/StorageManager$StorageVolumeCallback;
    throw v3

    .line 628
    .end local v1    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/os/storage/StorageManager$StorageVolumeCallback;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist setCacheBehaviorGroup(Ljava/io/File;Z)V
    .registers 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "group"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2745
    const-string/jumbo v0, "user.cache_group"

    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    .line 2746
    return-void
.end method

.method public whitelist setCacheBehaviorTombstone(Ljava/io/File;Z)V
    .registers 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "tombstone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2773
    const-string/jumbo v0, "user.cache_tombstone"

    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    .line 2774
    return-void
.end method

.method public blacklist setCloudMediaProvider(Ljava/lang/String;)V
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2977
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->setCloudMediaProvider(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2980
    nop

    .line 2981
    return-void

    .line 2978
    :catch_7
    move-exception v0

    .line 2979
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 1238
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1241
    nop

    .line 1242
    return-void

    .line 1239
    :catch_7
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setVolumeInited(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "inited"    # Z

    .line 1190
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x1

    if-eqz p2, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0, p1, v2, v1}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1194
    nop

    .line 1195
    return-void

    .line 1192
    :catch_d
    move-exception v0

    .line 1193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .line 1181
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1184
    nop

    .line 1185
    return-void

    .line 1182
    :catch_7
    move-exception v0

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setVolumeSnoozed(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "snoozed"    # Z

    .line 1200
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x2

    if-eqz p2, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0, p1, v2, v1}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1204
    nop

    .line 1205
    return-void

    .line 1202
    :catch_d
    move-exception v0

    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist translateAppToSystem(Ljava/io/File;II)Ljava/io/File;
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1825
    return-object p1
.end method

.method public blacklist translateSystemToApp(Ljava/io/File;II)Ljava/io/File;
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1835
    return-object p1
.end method

.method public greylist unmount(Ljava/lang/String;)V
    .registers 4
    .param p1, "volId"    # Ljava/lang/String;

    .line 1078
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1081
    nop

    .line 1082
    return-void

    .line 1079
    :catch_7
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .registers 7
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .line 793
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :try_start_c
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v0

    .line 798
    .local v0, "nonce":I
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v1, p1, p2, v2, v0}, Landroid/os/storage/IStorageManager;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_1b

    .line 799
    const/4 v1, 0x1

    return v1

    .line 800
    .end local v0    # "nonce":I
    :catch_1b
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    .line 568
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 569
    :try_start_3
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 570
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    .line 571
    .local v2, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    iget-object v3, v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2c

    if-ne v3, p1, :cond_29

    .line 573
    :try_start_19
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v2}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_23
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    .line 576
    nop

    .line 577
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 574
    :catch_23
    move-exception v3

    .line 575
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "listener":Landroid/os/storage/StorageEventListener;
    throw v4

    .line 579
    .end local v2    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "listener":Landroid/os/storage/StorageEventListener;
    :cond_29
    :goto_29
    goto :goto_9

    .line 580
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :cond_2a
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist unregisterStorageVolumeCallback(Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/os/storage/StorageManager$StorageVolumeCallback;

    .line 638
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 639
    :try_start_3
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 640
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    .line 641
    .local v2, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    iget-object v3, v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2c

    if-ne v3, p1, :cond_29

    .line 643
    :try_start_19
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v2}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_23
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    .line 646
    nop

    .line 647
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 644
    :catch_23
    move-exception v3

    .line 645
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/os/storage/StorageManager;
    .end local p1    # "callback":Landroid/os/storage/StorageManager$StorageVolumeCallback;
    throw v4

    .line 649
    .end local v2    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/storage/StorageManager;
    .restart local p1    # "callback":Landroid/os/storage/StorageManager$StorageVolumeCallback;
    :cond_29
    :goto_29
    goto :goto_9

    .line 650
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :cond_2a
    monitor-exit v0

    .line 651
    return-void

    .line 650
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist updateExternalStorageFileQuotaType(Ljava/io/File;I)V
    .registers 11
    .param p1, "path"    # Ljava/io/File;
    .param p2, "quotaType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2607
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2610
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2613
    .local v0, "filePath":Ljava/lang/String;
    sget-object v1, Landroid/os/storage/StorageManager;->PATTERN_USER_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2614
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string v3, "Failed to update quota type for "

    if-eqz v2, :cond_23

    .line 2615
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "userId":I
    goto :goto_68

    .line 2617
    .end local v2    # "userId":I
    :cond_23
    const/16 v2, 0x600

    .line 2620
    .local v2, "volFlags":I
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_31

    .line 2621
    or-int/lit16 v2, v2, 0x1000

    .line 2623
    :cond_31
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v4, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 2624
    .local v4, "availableVolumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v4, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 2625
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_58

    .line 2626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "StorageManager"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    return-void

    .line 2629
    :cond_58
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 2631
    return-void

    .line 2633
    :cond_5f
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move v2, v6

    .line 2636
    .end local v4    # "availableVolumes":[Landroid/os/storage/StorageVolume;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    .local v2, "userId":I
    :goto_68
    if-ltz v2, :cond_c0

    .line 2639
    packed-switch p2, :pswitch_data_d8

    .line 2653
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid quota type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2647
    :pswitch_86
    const/16 v4, 0x3ea

    invoke-static {v2, v4}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide v4

    .line 2648
    .local v4, "projectId":J
    goto :goto_a2

    .line 2644
    .end local v4    # "projectId":J
    :pswitch_8d
    const/16 v4, 0x3e9

    invoke-static {v2, v4}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide v4

    .line 2645
    .restart local v4    # "projectId":J
    goto :goto_a2

    .line 2650
    .end local v4    # "projectId":J
    :pswitch_94
    const/16 v4, 0x3eb

    invoke-static {v2, v4}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide v4

    .line 2651
    .restart local v4    # "projectId":J
    goto :goto_a2

    .line 2641
    .end local v4    # "projectId":J
    :pswitch_9b
    const/16 v4, 0x3e8

    invoke-static {v2, v4}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide v4

    .line 2642
    .restart local v4    # "projectId":J
    nop

    .line 2655
    :goto_a2
    invoke-static {v0, v4, v5}, Landroid/os/storage/StorageManager;->setQuotaProjectId(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 2658
    return-void

    .line 2656
    :cond_a9
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2637
    .end local v4    # "projectId":J
    :cond_c0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_94
        :pswitch_8d
        :pswitch_86
    .end packed-switch
.end method

.method public greylist-max-o wipeAdoptableDisks()V
    .registers 9

    .line 1160
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    .line 1161
    .local v0, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    .line 1162
    .local v2, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, "diskId":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v4

    const-string v5, "StorageManager"

    if-eqz v4, :cond_60

    .line 1164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found adoptable "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; wiping"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :try_start_3c
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v4, v3}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_5f

    .line 1169
    :catch_42
    move-exception v4

    .line 1170
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to wipe "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but soldiering onward"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_5f
    goto :goto_7a

    .line 1173
    :cond_60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignorning non-adoptable disk "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    .end local v2    # "disk":Landroid/os/storage/DiskInfo;
    .end local v3    # "diskId":Ljava/lang/String;
    :goto_7a
    goto :goto_8

    .line 1176
    :cond_7b
    return-void
.end method
