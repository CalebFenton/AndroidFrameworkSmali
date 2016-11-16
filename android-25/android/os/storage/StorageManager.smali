.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGE_STORAGE:Ljava/lang/String; = "android.os.storage.action.MANAGE_STORAGE"

.field public static final CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final CRYPT_TYPE_PATTERN:I = 0x2

.field public static final CRYPT_TYPE_PIN:I = 0x3

.field public static final DEBUG_EMULATE_FBE:I = 0x2

.field public static final DEBUG_FORCE_ADOPTABLE:I = 0x1

.field public static final DEBUG_SDCARDFS_FORCE_OFF:I = 0x8

.field public static final DEBUG_SDCARDFS_FORCE_ON:I = 0x4

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x100000L

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J = 0x1f400000L

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field public static final FLAG_FOR_WRITE:I = 0x100

.field public static final FLAG_INCLUDE_INVISIBLE:I = 0x400

.field public static final FLAG_REAL_STATE:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field private static final INTERNAL_STORAGE_SECTOR_SIZE:I = 0x200

.field private static final INTERNAL_STORAGE_SIZE_PATHS:[Ljava/lang/String;

.field public static final OWNER_INFO_KEY:Ljava/lang/String; = "OwnerInfo"

.field public static final PASSWORD_VISIBLE_KEY:Ljava/lang/String; = "PasswordVisible"

.field public static final PATTERN_VISIBLE_KEY:Ljava/lang/String; = "PatternVisible"

.field public static final PROP_EMULATE_FBE:Ljava/lang/String; = "persist.sys.emulate_fbe"

.field public static final PROP_FORCE_ADOPTABLE:Ljava/lang/String; = "persist.fw.force_adoptable"

.field public static final PROP_HAS_ADOPTABLE:Ljava/lang/String; = "vold.has_adoptable"

.field public static final PROP_PRIMARY_PHYSICAL:Ljava/lang/String; = "ro.vold.primary_physical"

.field public static final PROP_SDCARDFS:Ljava/lang/String; = "persist.sys.sdcardfs"

.field public static final SYSTEM_LOCALE_KEY:Ljava/lang/String; = "SystemLocale"

.field private static final TAG:Ljava/lang/String; = "StorageManager"

.field public static final UUID_PRIMARY_PHYSICAL:Ljava/lang/String; = "primary_physical"

.field public static final UUID_PRIVATE_INTERNAL:Ljava/lang/String;

.field private static volatile sMountService:Landroid/os/storage/IMountService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageManager$StorageEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mMountService:Landroid/os/storage/IMountService;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Landroid/os/storage/StorageManager;)Landroid/os/Looper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/os/storage/StorageManager;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    #@3
    .line 139
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [Ljava/lang/String;

    #@6
    .line 140
    const-string/jumbo v1, "/sys/block/mmcblk0/size"

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    .line 141
    const-string/jumbo v1, "/sys/block/sda/size"

    #@f
    const/4 v2, 0x1

    #@10
    aput-object v1, v0, v2

    #@12
    .line 139
    sput-object v0, Landroid/os/storage/StorageManager;->INTERNAL_STORAGE_SIZE_PATHS:[Ljava/lang/String;

    #@14
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@13
    .line 261
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    #@15
    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$ObbActionListener;)V

    #@18
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@1a
    .line 353
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    #@1c
    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    #@22
    .line 355
    iput-object p2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    #@24
    .line 356
    const-string/jumbo v0, "mount"

    #@27
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2a
    move-result-object v0

    #@2b
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@31
    .line 357
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@33
    if-nez v0, :cond_0

    #@35
    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    #@37
    const-string/jumbo v1, "Failed to find running mount service"

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 352
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 337
    const-class v0, Landroid/os/storage/StorageManager;

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/storage/StorageManager;

    #@8
    return-object v0
.end method

.method private getNextNonce()I
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 4
    .param p0, "volumes"    # [Landroid/os/storage/StorageVolume;

    #@0
    .prologue
    .line 1009
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_1

    #@4
    aget-object v0, p0, v1

    #@6
    .line 1010
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 1011
    return-object v0

    #@d
    .line 1009
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1014
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v2, "Missing primary storage"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
.end method

.method public static getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 865
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 7
    .param p0, "volumes"    # [Landroid/os/storage/StorageVolume;
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 870
    if-nez p1, :cond_0

    #@3
    .line 871
    return-object v6

    #@4
    .line 874
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object p1

    #@8
    .line 879
    const/4 v3, 0x0

    #@9
    array-length v4, p0

    #@a
    :goto_0
    if-ge v3, v4, :cond_2

    #@c
    aget-object v1, p0, v3

    #@e
    .line 880
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    #@11
    move-result-object v2

    #@12
    .line 882
    .local v2, "volumeFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@15
    move-result-object v2

    #@16
    .line 886
    invoke-static {v2, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 887
    return-object v1

    #@1d
    .line 875
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    .end local v2    # "volumeFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@1e
    .line 876
    .local v0, "ignored":Ljava/io/IOException;
    const-string/jumbo v3, "StorageManager"

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Could not get canonical path for "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 877
    return-object v6

    #@39
    .line 883
    .end local v0    # "ignored":Ljava/io/IOException;
    .restart local v1    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v2    # "volumeFile":Ljava/io/File;
    :catch_1
    move-exception v0

    #@3a
    .line 879
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 890
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    .end local v2    # "volumeFile":Ljava/io/File;
    :cond_2
    return-object v6
.end method

.method public static getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .locals 7
    .param p0, "userId"    # I
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 961
    const-string/jumbo v5, "mount"

    #@3
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v5

    #@7
    .line 960
    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@a
    move-result-object v1

    #@b
    .line 963
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 964
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_2

    #@11
    .line 969
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@14
    move-result-object v5

    #@15
    .line 970
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@18
    move-result v6

    #@19
    .line 969
    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 971
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_0

    #@1f
    array-length v5, v3

    #@20
    if-gtz v5, :cond_1

    #@22
    .line 972
    :cond_0
    const/4 v5, 0x0

    #@23
    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    #@25
    return-object v5

    #@26
    .line 974
    :cond_1
    const/4 v5, 0x0

    #@27
    aget-object v2, v3, v5

    #@29
    .line 976
    .end local v3    # "packageNames":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2c
    move-result-object v5

    #@2d
    .line 977
    const/high16 v6, 0x10000000

    #@2f
    .line 976
    invoke-interface {v5, v2, v6, p0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    #@32
    move-result v4

    #@33
    .line 978
    .local v4, "uid":I
    if-gtz v4, :cond_3

    #@35
    .line 979
    const/4 v5, 0x0

    #@36
    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    #@38
    return-object v5

    #@39
    .line 981
    :cond_3
    invoke-interface {v1, v4, v2, p1}, Landroid/os/storage/IMountService;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    move-result-object v5

    #@3d
    return-object v5

    #@3e
    .line 982
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :catch_0
    move-exception v0

    #@3f
    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@42
    move-result-object v5

    #@43
    throw v5
.end method

.method public static inCryptKeeperBounce()Z
    .locals 2

    #@0
    .prologue
    .line 1243
    const-string/jumbo v1, "vold.decrypt"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 1244
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public static isBlockEncrypted()Z
    .locals 3

    #@0
    .prologue
    .line 1188
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1189
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1191
    :cond_0
    const-string/jumbo v1, "ro.crypto.type"

    #@b
    const-string/jumbo v2, ""

    #@e
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1192
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "block"

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public static isBlockEncrypting()Z
    .locals 3

    #@0
    .prologue
    .line 1227
    const-string/jumbo v1, "vold.encrypt_progress"

    #@3
    const-string/jumbo v2, ""

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1228
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v1, 0x0

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    const/4 v1, 0x1

    #@16
    goto :goto_0
.end method

.method public static isEncryptable()Z
    .locals 3

    #@0
    .prologue
    .line 1154
    const-string/jumbo v1, "ro.crypto.state"

    #@3
    const-string/jumbo v2, "unsupported"

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1155
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "unsupported"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    const/4 v1, 0x0

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    const/4 v1, 0x1

    #@16
    goto :goto_0
.end method

.method public static isEncrypted()Z
    .locals 3

    #@0
    .prologue
    .line 1164
    const-string/jumbo v1, "ro.crypto.state"

    #@3
    const-string/jumbo v2, ""

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1165
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "encrypted"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method public static isFileEncryptedEmulatedOnly()Z
    .locals 2

    #@0
    .prologue
    .line 1249
    const-string/jumbo v0, "persist.sys.emulate_fbe"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isFileEncryptedNativeOnly()Z
    .locals 3

    #@0
    .prologue
    .line 1174
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1175
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1178
    :cond_0
    const-string/jumbo v1, "ro.crypto.type"

    #@b
    const-string/jumbo v2, ""

    #@e
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1179
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "file"

    #@15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public static isFileEncryptedNativeOrEmulated()Z
    .locals 1

    #@0
    .prologue
    .line 1257
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1258
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    #@9
    move-result v0

    #@a
    .line 1257
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static isNonDefaultBlockEncrypted()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1202
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 1203
    return v3

    #@9
    .line 1208
    :cond_0
    :try_start_0
    const-string/jumbo v4, "mount"

    #@c
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v4

    #@10
    .line 1207
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@13
    move-result-object v1

    #@14
    .line 1209
    .local v1, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v4

    #@18
    if-eq v4, v2, :cond_1

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_1
    move v2, v3

    #@1c
    goto :goto_0

    #@1d
    .line 1210
    :catch_0
    move-exception v0

    #@1e
    .line 1211
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StorageManager"

    #@21
    const-string/jumbo v4, "Error getting encryption type"

    #@24
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 1212
    return v3
.end method

.method public static isUserKeyUnlocked(I)Z
    .locals 5
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 1116
    sget-object v1, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1118
    const-string/jumbo v1, "mount"

    #@7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    .line 1117
    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@e
    move-result-object v1

    #@f
    sput-object v1, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    #@11
    .line 1120
    :cond_0
    sget-object v1, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    #@13
    if-nez v1, :cond_1

    #@15
    .line 1121
    const-string/jumbo v1, "StorageManager"

    #@18
    const-string/jumbo v4, "Early during boot, assuming locked"

    #@1b
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1122
    const/4 v1, 0x0

    #@1f
    return v1

    #@20
    .line 1124
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v2

    #@24
    .line 1126
    .local v2, "token":J
    :try_start_0
    sget-object v1, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    #@26
    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->isUserKeyUnlocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v1

    #@2a
    .line 1130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 1126
    return v1

    #@2e
    .line 1127
    :catch_0
    move-exception v0

    #@2f
    .line 1128
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@32
    move-result-object v1

    #@33
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 1129
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@35
    .line 1130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@38
    .line 1129
    throw v1
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1264
    const-string/jumbo v6, "mount"

    #@4
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v6

    #@8
    .line 1263
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@b
    move-result-object v2

    #@c
    .line 1266
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const/4 v6, 0x0

    #@d
    :try_start_0
    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    #@10
    move-result-object v4

    #@11
    .line 1267
    .local v4, "vols":[Landroid/os/storage/VolumeInfo;
    array-length v6, v4

    #@12
    :goto_0
    if-ge v5, v6, :cond_2

    #@14
    aget-object v3, v4, v5

    #@16
    .line 1268
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    #@19
    move-result v7

    #@1a
    const/4 v8, 0x2

    #@1b
    if-eq v7, v8, :cond_0

    #@1d
    .line 1269
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    #@20
    move-result v7

    #@21
    if-nez v7, :cond_1

    #@23
    :cond_0
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    #@26
    move-result v7

    #@27
    .line 1268
    if-eqz v7, :cond_1

    #@29
    .line 1270
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    #@2c
    move-result-object v7

    #@2d
    .line 1271
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    #@30
    move-result-object v8

    #@31
    .line 1270
    invoke-static {v7, v8, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    #@34
    move-result-object v1

    #@35
    .line 1272
    .local v1, "internalPath":Ljava/io/File;
    if-eqz v1, :cond_1

    #@37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_1

    #@3d
    .line 1273
    return-object v1

    #@3e
    .line 1267
    .end local v1    # "internalPath":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1277
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "vols":[Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v0

    #@42
    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@45
    move-result-object v5

    #@46
    throw v5

    #@47
    .line 1280
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "vols":[Landroid/os/storage/VolumeInfo;
    :cond_2
    return-object p0
.end method

.method private readLong(Ljava/lang/String;)J
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 944
    const/4 v1, 0x0

    #@2
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    #@3
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    #@5
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 945
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    #@a
    new-instance v5, Ljava/io/InputStreamReader;

    #@c
    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@f
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@12
    .line 946
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@15
    .end local v3    # "reader":Ljava/io/BufferedReader;
    move-result-object v5

    #@16
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@19
    move-result-wide v8

    #@1a
    .line 950
    if-eqz v4, :cond_0

    #@1c
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@1f
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    #@21
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@24
    :cond_1
    move-object v5, v6

    #@25
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    #@27
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@28
    .line 947
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v4

    #@2a
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    #@2b
    .line 948
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    const-string/jumbo v5, "StorageManager"

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "Could not read "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 949
    const-wide/16 v6, 0x0

    #@47
    return-wide v6

    #@48
    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    #@49
    goto :goto_0

    #@4a
    :catch_2
    move-exception v5

    #@4b
    if-eqz v6, :cond_2

    #@4d
    if-eq v6, v5, :cond_1

    #@4f
    :try_start_6
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    #@52
    move-object v5, v6

    #@53
    goto :goto_1

    #@54
    .line 946
    :cond_3
    return-wide v8

    #@55
    .line 950
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .local v3, "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    #@56
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@57
    :catchall_0
    move-exception v6

    #@58
    move-object v10, v6

    #@59
    move-object v6, v5

    #@5a
    move-object v5, v10

    #@5b
    :goto_4
    if-eqz v3, :cond_4

    #@5d
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    #@60
    :cond_4
    move-object v7, v6

    #@61
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    #@63
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    #@66
    :cond_6
    move-object v6, v7

    #@67
    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    #@69
    :try_start_a
    throw v6

    #@6a
    .line 947
    :catch_4
    move-exception v0

    #@6b
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@6c
    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    #@6d
    if-eqz v6, :cond_5

    #@6f
    if-eq v6, v7, :cond_4

    #@71
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@74
    move-object v7, v6

    #@75
    goto :goto_5

    #@76
    :catch_6
    move-exception v6

    #@77
    if-eqz v7, :cond_7

    #@79
    if-eq v7, v6, :cond_6

    #@7b
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@7e
    move-object v6, v7

    #@7f
    goto :goto_6

    #@80
    :cond_8
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    #@81
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    #@82
    goto :goto_4

    #@83
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v5

    #@84
    move-object v1, v2

    #@85
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    #@86
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v5

    #@87
    move-object v3, v4

    #@88
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    #@89
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    #@8a
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v5

    #@8b
    move-object v1, v2

    #@8c
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    #@8d
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v5

    #@8e
    move-object v3, v4

    #@8f
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    #@90
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public benchmark(Ljava/lang/String;)J
    .locals 4
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 733
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->benchmark(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-wide v2

    #@6
    return-wide v2

    #@7
    .line 734
    :catch_0
    move-exception v0

    #@8
    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public createUserKey(IIZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "ephemeral"    # Z

    #@0
    .prologue
    .line 1063
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IMountService;->createUserKey(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1061
    return-void

    #@6
    .line 1064
    :catch_0
    move-exception v0

    #@7
    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public destroyUserKey(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1072
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->destroyUserKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1070
    return-void

    #@6
    .line 1073
    :catch_0
    move-exception v0

    #@7
    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1108
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IMountService;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1106
    return-void

    #@6
    .line 1109
    :catch_0
    move-exception v0

    #@7
    .line 1110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public disableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 420
    return-void
.end method

.method public enableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 411
    return-void
.end method

.method public findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 561
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 563
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "disk$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/DiskInfo;

    #@17
    .line 564
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v2, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    #@19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 565
    return-object v0

    #@20
    .line 568
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_1
    const/4 v2, 0x0

    #@21
    return-object v2
.end method

.method public findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "privateVol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 618
    if-eqz p1, :cond_0

    #@3
    .line 619
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "private"

    #@a
    const-string/jumbo v2, "emulated"

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 621
    :cond_0
    return-object v0
.end method

.method public findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "emulatedVol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 609
    if-eqz p1, :cond_0

    #@3
    .line 610
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "emulated"

    #@a
    const-string/jumbo v2, "private"

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 612
    :cond_0
    return-object v0
.end method

.method public findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 597
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 599
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "rec$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeRecord;

    #@17
    .line 600
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 601
    return-object v0

    #@20
    .line 604
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    const/4 v2, 0x0

    #@21
    return-object v2
.end method

.method public findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 573
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 575
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeInfo;

    #@17
    .line 576
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 577
    return-object v0

    #@20
    .line 580
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x0

    #@21
    return-object v2
.end method

.method public findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 627
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 628
    const-string/jumbo v0, "private"

    #@b
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 629
    :cond_0
    const-string/jumbo v0, "primary_physical"

    #@13
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 630
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 632
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 585
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 587
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/os/storage/VolumeInfo;

    #@17
    .line 588
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 589
    return-object v0

    #@20
    .line 592
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x0

    #@21
    return-object v2
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 2
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 822
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 820
    return-void

    #@6
    .line 823
    :catch_0
    move-exception v0

    #@7
    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 724
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->format(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 722
    return-void

    #@6
    .line 725
    :catch_0
    move-exception v0

    #@7
    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 671
    if-nez p1, :cond_0

    #@3
    return-object v2

    #@4
    .line 674
    :cond_0
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 675
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@e
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    #@11
    move-result-object v0

    #@12
    .line 676
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_1

    #@14
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 681
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_3

    #@26
    .line 682
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1

    #@2b
    .line 677
    .restart local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_2
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@2d
    return-object v1

    #@2e
    .line 685
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_3
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 686
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@34
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 689
    :cond_4
    return-object v2
.end method

.method public getDisks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getDisks()[Landroid/os/storage/DiskInfo;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 554
    :catch_0
    move-exception v0

    #@c
    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 541
    const-string/jumbo v1, "rawPath cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 544
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@8
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 545
    :catch_0
    move-exception v0

    #@e
    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;
    .locals 4

    #@0
    .prologue
    .line 694
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 695
    .local v2, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/storage/VolumeInfo;

    #@14
    .line 696
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 697
    return-object v0

    #@1b
    .line 700
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method public getPrimaryStorageSize()J
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 934
    sget-object v4, Landroid/os/storage/StorageManager;->INTERNAL_STORAGE_SIZE_PATHS:[Ljava/lang/String;

    #@4
    const/4 v3, 0x0

    #@5
    array-length v5, v4

    #@6
    :goto_0
    if-ge v3, v5, :cond_1

    #@8
    aget-object v2, v4, v3

    #@a
    .line 935
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/os/storage/StorageManager;->readLong(Ljava/lang/String;)J

    #@d
    move-result-wide v0

    #@e
    .line 936
    .local v0, "numberBlocks":J
    cmp-long v6, v0, v8

    #@10
    if-lez v6, :cond_0

    #@12
    .line 937
    const-wide/16 v4, 0x200

    #@14
    mul-long/2addr v4, v0

    #@15
    return-wide v4

    #@16
    .line 934
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 940
    .end local v0    # "numberBlocks":J
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    return-wide v8
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 836
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPrimaryStorageUuid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 837
    :catch_0
    move-exception v0

    #@8
    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 2

    #@0
    .prologue
    .line 929
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x600

    #@6
    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    aget-object v0, v0, v1

    #@d
    return-object v0
.end method

.method public getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    #@0
    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getStorageBytesUntilLow(Ljava/io/File;)J
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 1029
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    #@7
    move-result-wide v2

    #@8
    sub-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method public getStorageFullBytes(Ljava/io/File;)J
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 1056
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    #@5
    .line 1057
    const-wide/32 v2, 0x100000

    #@8
    .line 1056
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getStorageLowBytes(Ljava/io/File;)J
    .locals 10
    .param p1, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 1039
    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 1040
    const-string/jumbo v7, "sys_storage_threshold_percentage"

    #@5
    const/16 v8, 0xa

    #@7
    .line 1039
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v6

    #@b
    int-to-long v2, v6

    #@c
    .line 1041
    .local v2, "lowPercent":J
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    #@f
    move-result-wide v6

    #@10
    mul-long/2addr v6, v2

    #@11
    const-wide/16 v8, 0x64

    #@13
    div-long v0, v6, v8

    #@15
    .line 1043
    .local v0, "lowBytes":J
    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    #@17
    .line 1044
    const-string/jumbo v7, "sys_storage_threshold_max_bytes"

    #@1a
    const-wide/32 v8, 0x1f400000

    #@1d
    .line 1043
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@20
    move-result-wide v4

    #@21
    .line 1046
    .local v4, "maxLowBytes":J
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@24
    move-result-wide v6

    #@25
    return-wide v6
.end method

.method public getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getStorageVolumes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 916
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 918
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@8
    move-result v1

    #@9
    const/16 v2, 0x600

    #@b
    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    #@e
    move-result-object v1

    #@f
    .line 917
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@12
    .line 919
    return-object v0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 2

    #@0
    .prologue
    .line 955
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 993
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    #@3
    move-result-object v3

    #@4
    .line 994
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v0, v3

    #@5
    .line 995
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    #@7
    .line 996
    .local v2, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 997
    aget-object v4, v3, v1

    #@c
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    aput-object v4, v2, v1

    #@12
    .line 996
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 999
    :cond_0
    return-object v2
.end method

.method public getVolumeRecords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 663
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 664
    :catch_0
    move-exception v0

    #@d
    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mountPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 899
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    #@8
    move-result-object v0

    #@9
    .line 900
    .local v0, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    #@b
    .line 901
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 903
    :cond_0
    const-string/jumbo v1, "unknown"

    #@13
    return-object v1
.end method

.method public getVolumes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 640
    :catch_0
    move-exception v0

    #@d
    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public getWritablePrivateVolumes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 648
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 649
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@8
    const/4 v5, 0x0

    #@9
    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    #@c
    move-result-object v4

    #@d
    array-length v5, v4

    #@e
    :goto_0
    if-ge v3, v5, :cond_1

    #@10
    aget-object v2, v4, v3

    #@12
    .line 650
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    #@15
    move-result v6

    #@16
    const/4 v7, 0x1

    #@17
    if-ne v6, v7, :cond_0

    #@19
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    .line 651
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 649
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 654
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    return-object v1

    #@26
    .line 655
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    :catch_0
    move-exception v0

    #@27
    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2a
    move-result-object v3

    #@2b
    throw v3
.end method

.method public isEncrypted(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 1139
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1140
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 1141
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1142
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 1145
    :cond_1
    const/4 v0, 0x0

    #@1c
    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 522
    const-string/jumbo v1, "rawPath cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 525
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@8
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->isObbMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 526
    :catch_0
    move-exception v0

    #@e
    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public isUsbMassStorageConnected()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 431
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 442
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public lockUserKey(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1090
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->lockUserKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1088
    return-void

    #@6
    .line 1091
    :catch_0
    move-exception v0

    #@7
    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public mount(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 706
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 704
    return-void

    #@6
    .line 707
    :catch_0
    move-exception v0

    #@7
    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1286
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1287
    :catch_0
    move-exception v0

    #@8
    .line 1288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    #@0
    .prologue
    .line 467
    const-string/jumbo v0, "rawPath cannot be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 468
    const-string/jumbo v0, "listener cannot be null"

    #@9
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 471
    :try_start_0
    new-instance v0, Ljava/io/File;

    #@e
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 472
    .local v2, "canonicalPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@17
    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    #@1a
    move-result v5

    #@1b
    .line 473
    .local v5, "nonce":I
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@1d
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@1f
    move-object v1, p1

    #@20
    move-object v3, p2

    #@21
    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IMountService;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 474
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 477
    .end local v2    # "canonicalPath":Ljava/lang/String;
    .end local v5    # "nonce":I
    :catch_0
    move-exception v6

    #@27
    .line 478
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2a
    move-result-object v0

    #@2b
    throw v0

    #@2c
    .line 475
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    #@2d
    .line 476
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "Failed to resolve path: "

    #@37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46
    throw v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    #@0
    .prologue
    .line 760
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->partitionMixed(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 758
    return-void

    #@6
    .line 761
    :catch_0
    move-exception v0

    #@7
    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 751
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->partitionPrivate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 749
    return-void

    #@6
    .line 752
    :catch_0
    move-exception v0

    #@7
    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 742
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 740
    return-void

    #@6
    .line 743
    :catch_0
    move-exception v0

    #@7
    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1099
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/storage/IMountService;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1097
    return-void

    #@6
    .line 1100
    :catch_0
    move-exception v0

    #@7
    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    #@0
    .prologue
    .line 370
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 371
    :try_start_0
    new-instance v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    #@5
    .line 372
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    #@7
    .line 371
    invoke-direct {v0, p1, v2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageEventListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 374
    .local v0, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@c
    invoke-interface {v2, v0}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 378
    :try_start_2
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14
    monitor-exit v3

    #@15
    .line 369
    return-void

    #@16
    .line 375
    :catch_0
    move-exception v1

    #@17
    .line 376
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1a
    move-result-object v2

    #@1b
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c
    .line 370
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit v3

    #@1e
    throw v2
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    #@0
    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 848
    return-void

    #@6
    .line 851
    :catch_0
    move-exception v0

    #@7
    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setVolumeInited(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "inited"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 802
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@3
    if-eqz p2, :cond_0

    #@5
    .line 803
    :goto_0
    const/4 v3, 0x1

    #@6
    .line 802
    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IMountService;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 800
    return-void

    #@a
    .line 802
    :cond_0
    const/4 v1, 0x0

    #@b
    goto :goto_0

    #@c
    .line 804
    :catch_0
    move-exception v0

    #@d
    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 793
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 791
    return-void

    #@6
    .line 794
    :catch_0
    move-exception v0

    #@7
    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setVolumeSnoozed(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "snoozed"    # Z

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 812
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@3
    if-eqz p2, :cond_0

    #@5
    .line 813
    :goto_0
    const/4 v3, 0x2

    #@6
    .line 812
    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IMountService;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 810
    return-void

    #@a
    .line 812
    :cond_0
    const/4 v1, 0x0

    #@b
    goto :goto_0

    #@c
    .line 814
    :catch_0
    move-exception v0

    #@d
    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public unlockUserKey(II[B[B)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    #@0
    .prologue
    .line 1081
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/storage/IMountService;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1079
    return-void

    #@6
    .line 1082
    :catch_0
    move-exception v0

    #@7
    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 713
    return-void

    #@6
    .line 716
    :catch_0
    move-exception v0

    #@7
    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    #@0
    .prologue
    .line 503
    const-string/jumbo v2, "rawPath cannot be null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 504
    const-string/jumbo v2, "listener cannot be null"

    #@9
    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 507
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@e
    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    #@11
    move-result v1

    #@12
    .line 508
    .local v1, "nonce":I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@14
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@16
    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 509
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 510
    .end local v1    # "nonce":I
    :catch_0
    move-exception v0

    #@1c
    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1f
    move-result-object v2

    #@20
    throw v2
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    #@0
    .prologue
    .line 390
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 391
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 392
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    #@15
    .line 393
    .local v0, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    iget-object v3, v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-ne v3, p1, :cond_0

    #@19
    .line 395
    :try_start_1
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@1b
    invoke-interface {v3, v0}, Landroid/os/storage/IMountService;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 399
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 390
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .line 396
    .restart local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :catch_0
    move-exception v1

    #@26
    .line 397
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@29
    move-result-object v3

    #@2a
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2b
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v4

    #@2c
    .line 389
    return-void
.end method

.method public wipeAdoptableDisks()V
    .locals 8

    #@0
    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 773
    .local v3, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "disk$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/storage/DiskInfo;

    #@14
    .line 774
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 775
    .local v2, "diskId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 776
    const-string/jumbo v5, "StorageManager"

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "Found adoptable "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    const-string/jumbo v7, "; wiping"

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 780
    :try_start_0
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@41
    invoke-interface {v5, v2}, Landroid/os/storage/IMountService;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_0

    #@45
    .line 781
    :catch_0
    move-exception v4

    #@46
    .line 782
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "StorageManager"

    #@49
    new-instance v6, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v7, "Failed to wipe "

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    const-string/jumbo v7, ", but soldiering onward"

    #@5c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    goto :goto_0

    #@68
    .line 785
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v5, "StorageManager"

    #@6b
    new-instance v6, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v7, "Ignorning non-adoptable disk "

    #@73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    goto :goto_0

    #@87
    .line 767
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    .end local v2    # "diskId":Ljava/lang/String;
    :cond_1
    return-void
.end method
