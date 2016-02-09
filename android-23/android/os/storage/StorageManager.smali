.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$StorageEventListenerDelegate;,
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;
    }
.end annotation


# static fields
.field public static final CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final CRYPT_TYPE_PATTERN:I = 0x2

.field public static final CRYPT_TYPE_PIN:I = 0x3

.field public static final DEBUG_FORCE_ADOPTABLE:I = 0x1

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x100000L

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J = 0x1f400000L

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field public static final FLAG_FOR_WRITE:I = 0x1

.field public static final OWNER_INFO_KEY:Ljava/lang/String; = "OwnerInfo"

.field public static final PASSWORD_VISIBLE_KEY:Ljava/lang/String; = "PasswordVisible"

.field public static final PATTERN_VISIBLE_KEY:Ljava/lang/String; = "PatternVisible"

.field public static final PROP_FORCE_ADOPTABLE:Ljava/lang/String; = "persist.fw.force_adoptable"

.field public static final PROP_HAS_ADOPTABLE:Ljava/lang/String; = "vold.has_adoptable"

.field public static final PROP_PRIMARY_PHYSICAL:Ljava/lang/String; = "ro.vold.primary_physical"

.field public static final SYSTEM_LOCALE_KEY:Ljava/lang/String; = "SystemLocale"

.field private static final TAG:Ljava/lang/String; = "StorageManager"

.field public static final UUID_PRIMARY_PHYSICAL:Ljava/lang/String; = "primary_physical"

.field public static final UUID_PRIVATE_INTERNAL:Ljava/lang/String;


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

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@13
    .line 208
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    #@15
    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$ObbActionListener;)V

    #@18
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@1a
    .line 300
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    #@1c
    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    #@22
    .line 302
    iput-object p2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    #@24
    .line 303
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
    .line 304
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@33
    if-nez v0, :cond_0

    #@35
    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    #@37
    const-string/jumbo v1, "Failed to find running mount service"

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 299
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
    .line 284
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
    .line 241
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
    .line 911
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_1

    #@4
    aget-object v0, p0, v1

    #@6
    .line 912
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 913
    return-object v0

    #@d
    .line 911
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 916
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
    .line 818
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
    .line 824
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object p1

    #@5
    .line 828
    const/4 v3, 0x0

    #@6
    array-length v4, p0

    #@7
    :goto_0
    if-ge v3, v4, :cond_1

    #@9
    aget-object v1, p0, v3

    #@b
    .line 829
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    #@e
    move-result-object v2

    #@f
    .line 831
    .local v2, "volumeFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@12
    move-result-object v2

    #@13
    .line 835
    invoke-static {v2, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 836
    return-object v1

    #@1a
    .line 825
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    .end local v2    # "volumeFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@1b
    .line 826
    .local v0, "ignored":Ljava/io/IOException;
    return-object v6

    #@1c
    .line 832
    .end local v0    # "ignored":Ljava/io/IOException;
    .restart local v1    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v2    # "volumeFile":Ljava/io/File;
    :catch_1
    move-exception v0

    #@1d
    .line 828
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 839
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    .end local v2    # "volumeFile":Ljava/io/File;
    :cond_1
    return-object v6
.end method

.method public static getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .locals 7
    .param p0, "userId"    # I
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 864
    const-string/jumbo v5, "mount"

    #@3
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v5

    #@7
    .line 863
    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@a
    move-result-object v1

    #@b
    .line 866
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 867
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_2

    #@11
    .line 872
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@14
    move-result-object v5

    #@15
    .line 873
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@18
    move-result v6

    #@19
    .line 872
    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 874
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_0

    #@1f
    array-length v5, v3

    #@20
    if-gtz v5, :cond_1

    #@22
    .line 875
    :cond_0
    const/4 v5, 0x0

    #@23
    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    #@25
    return-object v5

    #@26
    .line 877
    :cond_1
    const/4 v5, 0x0

    #@27
    aget-object v2, v3, v5

    #@29
    .line 879
    .end local v3    # "packageNames":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2c
    move-result-object v5

    #@2d
    invoke-interface {v5, v2, p0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    #@30
    move-result v4

    #@31
    .line 880
    .local v4, "uid":I
    if-gtz v4, :cond_3

    #@33
    .line 881
    const/4 v5, 0x0

    #@34
    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    #@36
    return-object v5

    #@37
    .line 883
    :cond_3
    invoke-interface {v1, v4, v2, p1}, Landroid/os/storage/IMountService;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result-object v5

    #@3b
    return-object v5

    #@3c
    .line 884
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :catch_0
    move-exception v0

    #@3d
    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@40
    move-result-object v5

    #@41
    throw v5
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 965
    const-string/jumbo v6, "mount"

    #@4
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v6

    #@8
    .line 964
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@b
    move-result-object v2

    #@c
    .line 967
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const/4 v6, 0x0

    #@d
    :try_start_0
    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    #@10
    move-result-object v4

    #@11
    .line 968
    .local v4, "vols":[Landroid/os/storage/VolumeInfo;
    array-length v6, v4

    #@12
    :goto_0
    if-ge v5, v6, :cond_2

    #@14
    aget-object v3, v4, v5

    #@16
    .line 969
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    #@19
    move-result v7

    #@1a
    const/4 v8, 0x2

    #@1b
    if-eq v7, v8, :cond_0

    #@1d
    .line 970
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
    .line 969
    if-eqz v7, :cond_1

    #@29
    .line 971
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    #@2c
    move-result-object v7

    #@2d
    .line 972
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    #@30
    move-result-object v8

    #@31
    .line 971
    invoke-static {v7, v8, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    #@34
    move-result-object v1

    #@35
    .line 973
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
    .line 974
    return-object v1

    #@3e
    .line 968
    .end local v1    # "internalPath":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_0

    #@41
    .line 978
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "vols":[Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v0

    #@42
    .line 980
    :cond_2
    return-object p0
.end method


# virtual methods
.method public benchmark(Ljava/lang/String;)J
    .locals 4
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 688
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
    .line 689
    :catch_0
    move-exception v0

    #@8
    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public disableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 367
    return-void
.end method

.method public enableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 358
    return-void
.end method

.method public findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 516
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 518
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
    .line 519
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v2, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    #@19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 520
    return-object v0

    #@20
    .line 523
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
    .line 573
    if-eqz p1, :cond_0

    #@3
    .line 574
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
    .line 576
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
    .line 564
    if-eqz p1, :cond_0

    #@3
    .line 565
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
    .line 567
    :cond_0
    return-object v0
.end method

.method public findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 552
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 554
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
    .line 555
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    #@19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 556
    return-object v0

    #@20
    .line 559
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
    .line 528
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 530
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
    .line 531
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 532
    return-object v0

    #@20
    .line 535
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
    .line 582
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 583
    const-string/jumbo v0, "private"

    #@b
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 584
    :cond_0
    const-string/jumbo v0, "primary_physical"

    #@13
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 585
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 587
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
    .line 540
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 542
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
    .line 543
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 544
    return-object v0

    #@20
    .line 547
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
    .line 777
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 775
    return-void

    #@6
    .line 778
    :catch_0
    move-exception v0

    #@7
    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 679
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->format(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 677
    return-void

    #@6
    .line 680
    :catch_0
    move-exception v0

    #@7
    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 626
    if-nez p1, :cond_0

    #@3
    return-object v2

    #@4
    .line 629
    :cond_0
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 630
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@e
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    #@11
    move-result-object v0

    #@12
    .line 631
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
    .line 636
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
    .line 637
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1

    #@2b
    .line 632
    .restart local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_2
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    #@2d
    return-object v1

    #@2e
    .line 640
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_3
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 641
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    #@34
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 644
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
    .line 508
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
    .line 509
    :catch_0
    move-exception v0

    #@c
    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "rawPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 494
    const-string/jumbo v1, "rawPath cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 497
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
    .line 498
    :catch_0
    move-exception v0

    #@e
    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StorageManager"

    #@11
    const-string/jumbo v2, "Failed to find mounted path for OBB"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 502
    const/4 v1, 0x0

    #@18
    return-object v1
.end method

.method public getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;
    .locals 4

    #@0
    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 650
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
    .line 651
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 652
    return-object v0

    #@1b
    .line 655
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 791
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
    .line 792
    :catch_0
    move-exception v0

    #@8
    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    #@0
    .prologue
    .line 906
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
    .line 931
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
    .line 958
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    #@5
    .line 959
    const-wide/32 v2, 0x100000

    #@8
    .line 958
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
    .line 941
    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    #@2
    .line 942
    const-string/jumbo v7, "sys_storage_threshold_percentage"

    #@5
    const/16 v8, 0xa

    #@7
    .line 941
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v6

    #@b
    int-to-long v2, v6

    #@c
    .line 943
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
    .line 945
    .local v0, "lowBytes":J
    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    #@17
    .line 946
    const-string/jumbo v7, "sys_storage_threshold_max_bytes"

    #@1a
    const-wide/32 v8, 0x1f400000

    #@1d
    .line 945
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@20
    move-result-wide v4

    #@21
    .line 948
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
    .line 813
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

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 2

    #@0
    .prologue
    .line 858
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
    .line 895
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    #@3
    move-result-object v3

    #@4
    .line 896
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v0, v3

    #@5
    .line 897
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    #@7
    .line 898
    .local v2, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 899
    aget-object v4, v3, v1

    #@c
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    aput-object v4, v2, v1

    #@12
    .line 898
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 901
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
    .line 618
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
    .line 619
    :catch_0
    move-exception v0

    #@d
    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 848
    new-instance v1, Ljava/io/File;

    #@2
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    #@8
    move-result-object v0

    #@9
    .line 849
    .local v0, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    #@b
    .line 850
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 852
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
    .line 594
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
    .line 595
    :catch_0
    move-exception v0

    #@d
    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 603
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 604
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
    .line 605
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
    .line 606
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 604
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 609
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    return-object v1

    #@26
    .line 610
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    :catch_0
    move-exception v0

    #@27
    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@2a
    move-result-object v3

    #@2b
    throw v3
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "rawPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 473
    const-string/jumbo v1, "rawPath cannot be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 476
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
    .line 477
    :catch_0
    move-exception v0

    #@e
    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StorageManager"

    #@11
    const-string/jumbo v2, "Failed to check if OBB is mounted"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 481
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public isUsbMassStorageConnected()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 378
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
    .line 389
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public mount(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 661
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 659
    return-void

    #@6
    .line 662
    :catch_0
    move-exception v0

    #@7
    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    #@0
    .prologue
    .line 414
    const-string/jumbo v0, "rawPath cannot be null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 415
    const-string/jumbo v0, "listener cannot be null"

    #@9
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 418
    :try_start_0
    new-instance v0, Ljava/io/File;

    #@e
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 419
    .local v2, "canonicalPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@17
    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    #@1a
    move-result v5

    #@1b
    .line 420
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
    .line 421
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 424
    .end local v2    # "canonicalPath":Ljava/lang/String;
    .end local v5    # "nonce":I
    :catch_0
    move-exception v6

    #@27
    .line 425
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "StorageManager"

    #@2a
    const-string/jumbo v1, "Failed to mount OBB"

    #@2d
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    .line 428
    const/4 v0, 0x0

    #@31
    return v0

    #@32
    .line 422
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    #@33
    .line 423
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, "Failed to resolve path: "

    #@3d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    throw v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    #@0
    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->partitionMixed(Ljava/lang/String;I)V
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
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 706
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->partitionPrivate(Ljava/lang/String;)V
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
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 695
    return-void

    #@6
    .line 698
    :catch_0
    move-exception v0

    #@7
    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 317
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 318
    :try_start_0
    new-instance v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    #@5
    .line 319
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    #@7
    .line 318
    invoke-direct {v0, p1, v2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageEventListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 321
    .local v0, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@c
    invoke-interface {v2, v0}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 325
    :try_start_2
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14
    monitor-exit v3

    #@15
    .line 316
    return-void

    #@16
    .line 322
    :catch_0
    move-exception v1

    #@17
    .line 323
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@1a
    move-result-object v2

    #@1b
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1c
    .line 317
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
    .line 805
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 803
    return-void

    #@6
    .line 806
    :catch_0
    move-exception v0

    #@7
    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 757
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@3
    if-eqz p2, :cond_0

    #@5
    .line 758
    :goto_0
    const/4 v3, 0x1

    #@6
    .line 757
    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IMountService;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 755
    return-void

    #@a
    .line 757
    :cond_0
    const/4 v1, 0x0

    #@b
    goto :goto_0

    #@c
    .line 759
    :catch_0
    move-exception v0

    #@d
    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 748
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 746
    return-void

    #@6
    .line 749
    :catch_0
    move-exception v0

    #@7
    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 767
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@3
    if-eqz p2, :cond_0

    #@5
    .line 768
    :goto_0
    const/4 v3, 0x2

    #@6
    .line 767
    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IMountService;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 765
    return-void

    #@a
    .line 767
    :cond_0
    const/4 v1, 0x0

    #@b
    goto :goto_0

    #@c
    .line 769
    :catch_0
    move-exception v0

    #@d
    .line 770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 670
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@2
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 668
    return-void

    #@6
    .line 671
    :catch_0
    move-exception v0

    #@7
    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 452
    const-string/jumbo v2, "rawPath cannot be null"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 453
    const-string/jumbo v2, "listener cannot be null"

    #@9
    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 456
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@e
    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    #@11
    move-result v1

    #@12
    .line 457
    .local v1, "nonce":I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@14
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    #@16
    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 458
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 459
    .end local v1    # "nonce":I
    :catch_0
    move-exception v0

    #@1c
    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StorageManager"

    #@1f
    const-string/jumbo v3, "Failed to mount OBB"

    #@22
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 463
    const/4 v2, 0x0

    #@26
    return v2
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    #@0
    .prologue
    .line 337
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 338
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
    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    #@15
    .line 340
    .local v0, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    iget-object v3, v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-ne v3, p1, :cond_0

    #@19
    .line 342
    :try_start_1
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@1b
    invoke-interface {v3, v0}, Landroid/os/storage/IMountService;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 346
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 337
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .line 343
    .restart local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :catch_0
    move-exception v1

    #@26
    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

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
    .line 336
    return-void
.end method

.method public wipeAdoptableDisks()V
    .locals 8

    #@0
    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    #@3
    move-result-object v3

    #@4
    .line 728
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
    .line 729
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 730
    .local v2, "diskId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 731
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
    .line 735
    :try_start_0
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    #@41
    invoke-interface {v5, v2}, Landroid/os/storage/IMountService;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_0

    #@45
    .line 736
    :catch_0
    move-exception v4

    #@46
    .line 737
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
    .line 740
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
    .line 722
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    .end local v2    # "diskId":Ljava/lang/String;
    :cond_1
    return-void
.end method
