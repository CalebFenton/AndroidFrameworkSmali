.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o AUDIO_PROPERTIES:[I

.field private static final greylist-max-o DEVICE_PROPERTIES:[I

.field private static final greylist-max-o FILE_PROPERTIES:[I

.field private static final greylist-max-o IMAGE_PROPERTIES:[I

.field private static final blacklist MAX_THUMB_SIZE:I = 0x32000

.field private static final greylist-max-o NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o PLAYBACK_FORMATS:[I

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o VIDEO_PROPERTIES:[I


# instance fields
.field private greylist-max-o mBatteryLevel:I

.field private greylist-max-o mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mBatteryScale:I

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeviceProperties:Landroid/content/SharedPreferences;

.field private greylist-max-o mDeviceType:I

.field private volatile blacklist mHostIsWindows:Z

.field private blacklist mHostType:Ljava/lang/String;

.field private greylist-max-o mManager:Landroid/mtp/MtpStorageManager;

.field private final greylist-max-o mMediaProvider:Landroid/content/ContentProviderClient;

.field private greylist-max-o mNativeContext:J

.field private final blacklist mPropertyGroupsByFormat:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPropertyGroupsByProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mServer:Landroid/mtp/MtpServer;

.field private blacklist mSkipThumbForHost:Z

.field private final greylist-max-o mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$I8VeYPyD-kH2DopPIkeUIdtMAPg(Landroid/mtp/MtpDatabase;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->lambda$addStorage$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryLevel(Landroid/mtp/MtpDatabase;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryLevel(Landroid/mtp/MtpDatabase;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryScale(Landroid/mtp/MtpDatabase;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 80
    const-class v0, Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 118
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    sput-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    .line 151
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 165
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_a0

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 181
    const v0, 0xdc46

    const v1, 0xdc9a

    const v2, 0xdc89

    const v3, 0xdc48

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 188
    filled-new-array {v3}, [I

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 192
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_be

    sput-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-void

    :array_4a
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data

    :array_86
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc41
        0xdc0b
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    :array_a0
    .array-data 4
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_be
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
        0xd407
        0xd406
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subDirectories"    # [Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 106
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 269
    new-instance v1, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 290
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 292
    const-string/jumbo v2, "media"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 293
    new-instance v1, Landroid/mtp/MtpStorageManager;

    new-instance v2, Landroid/mtp/MtpDatabase$2;

    invoke-direct {v2, p0}, Landroid/mtp/MtpDatabase$2;-><init>(Landroid/mtp/MtpDatabase;)V

    .line 311
    if-nez p2, :cond_54

    const/4 v3, 0x0

    goto :goto_58

    :cond_54
    invoke-static {p2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    :goto_58
    invoke-direct {v1, v2, v3}, Landroid/mtp/MtpStorageManager;-><init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 313
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 314
    const-string/jumbo v1, "sys.usb.mtp.device_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 315
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private greylist-max-o beginCopyObject(III)I
    .registers 7
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 635
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 636
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_f

    .line 637
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_15

    :cond_f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 638
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_15
    if-eqz v0, :cond_21

    if-nez v1, :cond_1a

    goto :goto_21

    .line 640
    :cond_1a
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I

    move-result v2

    return v2

    .line 639
    :cond_21
    :goto_21
    const/16 v2, 0x2009

    return v2
.end method

.method private greylist-max-o beginDeleteObject(I)I
    .registers 4
    .param p1, "handle"    # I

    .line 942
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 943
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_b

    .line 944
    const/16 v1, 0x2009

    return v1

    .line 946
    :cond_b
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 947
    const/16 v1, 0x2002

    return v1

    .line 949
    :cond_16
    const/16 v1, 0x2001

    return v1
.end method

.method private greylist-max-o beginMoveObject(III)I
    .registers 8
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 598
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 599
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_f

    .line 600
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_15

    :cond_f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 601
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_15
    if-eqz v0, :cond_28

    if-nez v1, :cond_1a

    goto :goto_28

    .line 604
    :cond_1a
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2

    .line 605
    .local v2, "allowed":Z
    if-eqz v2, :cond_25

    const/16 v3, 0x2001

    goto :goto_27

    :cond_25
    const/16 v3, 0x2002

    :goto_27
    return v3

    .line 602
    .end local v2    # "allowed":Z
    :cond_28
    :goto_28
    const/16 v2, 0x2009

    return v2
.end method

.method private blacklist deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V
    .registers 11
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "isDir"    # Z

    .line 965
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 968
    .local v0, "objectsUri":Landroid/net/Uri;
    if-eqz p3, :cond_50

    .line 970
    :try_start_a
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v2, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 974
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 970
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_50

    .line 983
    :catch_4e
    move-exception v1

    goto :goto_84

    .line 978
    :cond_50
    :goto_50
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v3, "_data=?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7a

    .line 980
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaProvider didn\'t delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_7a
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_83} :catch_4e

    .line 985
    .end local v1    # "whereArgs":[Ljava/lang/String;
    goto :goto_a2

    .line 984
    .local v1, "e":Ljava/lang/Exception;
    :goto_84
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from MediaProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a2
    return-void
.end method

.method private greylist-max-o endCopyObject(IZ)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 645
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 646
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_22

    .line 650
    :cond_11
    if-nez p2, :cond_14

    .line 651
    return-void

    .line 654
    :cond_14
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 655
    return-void

    .line 647
    :cond_22
    :goto_22
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end copy object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private greylist-max-o endDeleteObject(IZ)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 954
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 955
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_9

    .line 956
    return-void

    .line 958
    :cond_9
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_18

    .line 959
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end remove object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_18
    if-eqz p2, :cond_25

    .line 961
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V

    .line 962
    :cond_25
    return-void
.end method

.method private greylist-max-o endMoveObject(IIIIIZ)V
    .registers 15
    .param p1, "oldParent"    # I
    .param p2, "newParent"    # I
    .param p3, "oldStorage"    # I
    .param p4, "newStorage"    # I
    .param p5, "objId"    # I
    .param p6, "success"    # Z

    .line 611
    if-nez p1, :cond_9

    .line 612
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 613
    .local v0, "oldParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_f
    if-nez p2, :cond_18

    .line 614
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 615
    .local v1, "newParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_1e
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 616
    .local v2, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "name":Ljava/lang/String;
    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 618
    invoke-virtual {v4, v0, v1, v3, p6}, Landroid/mtp/MtpStorageManager;->endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_64

    .line 622
    :cond_35
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v4, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 623
    if-eqz p6, :cond_63

    if-nez v2, :cond_40

    goto :goto_63

    .line 626
    :cond_40
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 627
    .local v4, "path":Ljava/nio/file/Path;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 629
    .local v5, "oldPath":Ljava/nio/file/Path;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 630
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 631
    return-void

    .line 624
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "oldPath":Ljava/nio/file/Path;
    :cond_63
    :goto_63
    return-void

    .line 619
    :cond_64
    :goto_64
    sget-object v4, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v5, "Failed to end move object"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private greylist-max-o endSendObject(IZ)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "succeeded"    # Z

    .line 435
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 436
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_21

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_21

    .line 441
    :cond_11
    if-eqz p2, :cond_20

    .line 442
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 444
    :cond_20
    return-void

    .line 437
    :cond_21
    :goto_21
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to successfully end send object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method private greylist-max-o getDeviceProperty(I[J[C)I
    .registers 11
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .line 685
    const/16 v0, 0xff

    const/16 v1, 0x2001

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_8c

    .line 725
    const/16 v0, 0x200a

    return v0

    .line 718
    :sswitch_b
    iget v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 719
    return v1

    .line 698
    :sswitch_11
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 699
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 700
    .local v4, "length":I
    if-le v4, v0, :cond_1b

    .line 701
    const/16 v4, 0xff

    .line 703
    :cond_1b
    invoke-virtual {v3, v2, v4, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 704
    aput-char v2, p3, v4

    .line 705
    return v1

    .line 689
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "length":I
    :sswitch_21
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 691
    .restart local v4    # "length":I
    if-le v4, v0, :cond_35

    .line 692
    const/16 v4, 0xff

    .line 694
    :cond_35
    invoke-virtual {v3, v2, v4, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 695
    aput-char v2, p3, v4

    .line 696
    return v1

    .line 709
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "length":I
    :sswitch_3b
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 710
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 711
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v3

    .line 712
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v4

    .line 713
    .local v4, "height":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "imageSize":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 715
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v2, p3, v6

    .line 716
    return v1

    .line 721
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageSize":Ljava/lang/String;
    :sswitch_80
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 722
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    int-to-long v2, v0

    const/4 v0, 0x1

    aput-wide v2, p2, v0

    .line 723
    return v1

    :sswitch_data_8c
    .sparse-switch
        0x5001 -> :sswitch_80
        0x5003 -> :sswitch_3b
        0xd401 -> :sswitch_21
        0xd402 -> :sswitch_21
        0xd406 -> :sswitch_11
        0xd407 -> :sswitch_b
    .end sparse-switch
.end method

.method private greylist-max-o getObjectFilePath(I[C[J)I
    .registers 10
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .line 776
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 777
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_b

    .line 778
    const/16 v1, 0x2009

    return v1

    .line 781
    :cond_b
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 783
    .local v2, "pathLen":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 784
    aput-char v3, p2, v2

    .line 786
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v4

    aput-wide v4, p3, v3

    .line 787
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x1

    aput-wide v3, p3, v5

    .line 788
    const/16 v3, 0x2001

    return v3
.end method

.method private greylist-max-o getObjectFormat(I)I
    .registers 4
    .param p1, "handle"    # I

    .line 820
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 821
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_a

    .line 822
    const/4 v1, -0x1

    return v1

    .line 824
    :cond_a
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v1

    return v1
.end method

.method private greylist-max-o getObjectInfo(I[I[C[J)Z
    .registers 11
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .line 757
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 758
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 759
    return v1

    .line 761
    :cond_a
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    aput v2, p2, v1

    .line 762
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 763
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v1

    goto :goto_2b

    :cond_23
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    :goto_2b
    const/4 v4, 0x2

    aput v2, p2, v4

    .line 765
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xff

    invoke-static {v2, v4}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 766
    .local v2, "nameLen":I
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 767
    aput-char v1, p3, v2

    .line 769
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v1

    .line 770
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v3

    .line 771
    return v3
.end method

.method private greylist-max-o getObjectList(III)[I
    .registers 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 453
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v0

    .line 455
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_a

    .line 456
    const/4 v1, 0x0

    return-object v1

    .line 458
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 459
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 460
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    aput v3, v1, v2

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 462
    .end local v2    # "i":I
    :cond_26
    return-object v1
.end method

.method public static blacklist getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "format"    # I
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 230
    sparse-switch p0, :sswitch_data_18

    .line 249
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 247
    :sswitch_8
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 240
    :sswitch_d
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 236
    :sswitch_12
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x3008 -> :sswitch_12
        0x3009 -> :sswitch_12
        0x300b -> :sswitch_d
        0x3801 -> :sswitch_8
        0x3804 -> :sswitch_8
        0x3807 -> :sswitch_8
        0x380b -> :sswitch_8
        0x3811 -> :sswitch_8
        0x3812 -> :sswitch_8
        0xb901 -> :sswitch_12
        0xb902 -> :sswitch_12
        0xb903 -> :sswitch_12
        0xb981 -> :sswitch_d
        0xb984 -> :sswitch_d
    .end sparse-switch
.end method

.method private greylist-max-o getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .registers 16
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    .line 480
    if-nez p3, :cond_15

    .line 481
    if-nez p4, :cond_c

    .line 482
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const/16 v1, 0x2006

    invoke-direct {v0, v1}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 484
    :cond_c
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const v1, 0xa807

    invoke-direct {v0, v1}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 486
    :cond_15
    const/4 v0, -0x1

    if-ne p5, v0, :cond_1e

    if-eqz p1, :cond_1c

    if-ne p1, v0, :cond_1e

    .line 488
    :cond_1c
    const/4 p1, -0x1

    .line 489
    const/4 p5, 0x0

    .line 491
    :cond_1e
    const/4 v1, 0x1

    if-eqz p5, :cond_2c

    if-eq p5, v1, :cond_2c

    .line 494
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const v1, 0xa808

    invoke-direct {v0, v1}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 496
    :cond_2c
    const/4 v2, 0x0

    .line 497
    .local v2, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    const/4 v3, 0x0

    .line 498
    .local v3, "thisObj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/16 v4, 0x2009

    if-ne p1, v0, :cond_41

    .line 500
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2, v0}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v2

    .line 501
    if-nez v2, :cond_5a

    .line 502
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 504
    :cond_41
    if-eqz p1, :cond_5a

    .line 506
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v5, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    .line 507
    .local v5, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v5, :cond_51

    .line 508
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 510
    :cond_51
    invoke-virtual {v5}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v6

    if-eq v6, p2, :cond_59

    if-nez p2, :cond_5a

    .line 511
    :cond_59
    move-object v3, v5

    .line 514
    .end local v5    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_5a
    if-eqz p1, :cond_5e

    if-ne p5, v1, :cond_6f

    .line 515
    :cond_5e
    if-nez p1, :cond_61

    .line 516
    const/4 p1, -0x1

    .line 519
    :cond_61
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v2

    .line 521
    if-nez v2, :cond_6f

    .line 522
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 525
    :cond_6f
    if-nez v2, :cond_77

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 528
    :cond_77
    if-eqz v3, :cond_7c

    .line 529
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_7c
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const/16 v4, 0x2001

    invoke-direct {v1, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    .line 534
    .local v1, "ret":Landroid/mtp/MtpPropertyList;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 535
    .local v6, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-ne p3, v0, :cond_b9

    .line 536
    if-nez p2, :cond_9f

    if-eqz p1, :cond_9f

    if-eq p1, v0, :cond_9f

    .line 538
    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result p2

    .line 542
    :cond_9f
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpPropertyGroup;

    .line 543
    .local v7, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v7, :cond_d2

    .line 544
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v8

    .line 545
    .local v8, "propertyList":[I
    new-instance v9, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v9, v8}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    move-object v7, v9

    .line 546
    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v9, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    .end local v8    # "propertyList":[I
    goto :goto_d2

    .line 550
    .end local v7    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_b9
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v7, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpPropertyGroup;

    .line 551
    .restart local v7    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v7, :cond_d2

    .line 552
    filled-new-array {p3}, [I

    move-result-object v8

    .line 553
    .restart local v8    # "propertyList":[I
    new-instance v9, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v9, v8}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    move-object v7, v9

    .line 554
    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v9, p3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    .end local v8    # "propertyList":[I
    :cond_d2
    :goto_d2
    iget-object v8, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6, v1}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I

    move-result v8

    .line 558
    .local v8, "err":I
    if-eq v8, v4, :cond_e4

    .line 559
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v8}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 561
    .end local v6    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v8    # "err":I
    :cond_e4
    goto :goto_87

    .line 562
    .end local v7    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_e5
    return-object v1
.end method

.method private greylist-max-o getObjectReferences(I)[I
    .registers 3
    .param p1, "handle"    # I

    .line 990
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getSupportedCaptureFormats()[I
    .registers 2

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getSupportedDeviceProperties()[I
    .registers 2

    .line 255
    sget-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-object v0
.end method

.method private greylist-max-o getSupportedObjectProperties(I)[I
    .registers 4
    .param p1, "format"    # I

    .line 203
    sparse-switch p1, :sswitch_data_46

    .line 225
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object v0

    .line 222
    :sswitch_6
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 223
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 222
    return-object v0

    .line 214
    :sswitch_1b
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 215
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 214
    return-object v0

    .line 209
    :sswitch_30
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 210
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 209
    return-object v0

    nop

    :sswitch_data_46
    .sparse-switch
        0x3008 -> :sswitch_30
        0x3009 -> :sswitch_30
        0x300b -> :sswitch_1b
        0x3801 -> :sswitch_6
        0x3804 -> :sswitch_6
        0x3807 -> :sswitch_6
        0x380b -> :sswitch_6
        0x3811 -> :sswitch_6
        0x3812 -> :sswitch_6
        0xb901 -> :sswitch_30
        0xb902 -> :sswitch_30
        0xb903 -> :sswitch_30
        0xb981 -> :sswitch_1b
        0xb984 -> :sswitch_1b
    .end sparse-switch
.end method

.method private greylist-max-o getSupportedPlaybackFormats()[I
    .registers 2

    .line 260
    sget-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    return-object v0
.end method

.method private blacklist getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 829
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 830
    :try_start_3
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getThumbnailProcess: Fail to generate thumbnail. Probably unsupported or corrupted image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-object v0

    .line 834
    :cond_c
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 835
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 837
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const v3, 0x32000

    if-le v2, v3, :cond_3f

    .line 838
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getThumbnailProcess: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-object v0

    .line 842
    :cond_3f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_43} :catch_44

    .line 844
    .local v0, "byteArray":[B
    return-object v0

    .line 845
    .end local v0    # "byteArray":[B
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_44
    move-exception v1

    .line 846
    .local v1, "oomEx":Ljava/lang/OutOfMemoryError;
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .end local v1    # "oomEx":Ljava/lang/OutOfMemoryError;
    return-object v0
.end method

.method private greylist-max-o initDeviceProperties(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .line 382
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "device-properties"

    .line 383
    .local v3, "devicePropertiesName":Ljava/lang/String;
    const-string v4, "device-properties"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 385
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 387
    .local v6, "databaseFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 390
    const/4 v7, 0x0

    .line 391
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 393
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_1c
    invoke-virtual {v2, v4, v5, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_70
    .catchall {:try_start_1c .. :try_end_20} :catchall_6e

    move-object v9, v0

    .line 394
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v9, :cond_63

    .line 395
    :try_start_23
    const-string/jumbo v10, "properties"

    const-string v0, "_id"

    const-string v7, "code"

    const-string/jumbo v11, "value"

    filled-new-array {v0, v7, v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 397
    if-eqz v8, :cond_63

    .line 398
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    :goto_44
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 400
    const/4 v7, 0x1

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "name":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    nop

    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_44

    .line 404
    :cond_59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5c} :catch_60
    .catchall {:try_start_23 .. :try_end_5c} :catchall_5d

    goto :goto_63

    .line 410
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :catchall_5d
    move-exception v0

    move-object v7, v9

    goto :goto_88

    .line 407
    :catch_60
    move-exception v0

    move-object v7, v9

    goto :goto_71

    .line 410
    :cond_63
    :goto_63
    if-eqz v8, :cond_68

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_68
    if-eqz v9, :cond_84

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_84

    .line 410
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_6e
    move-exception v0

    goto :goto_88

    .line 407
    :catch_70
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    :goto_71
    :try_start_71
    sget-object v9, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v10, "failed to migrate device properties"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_6e

    .line 410
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_7e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_7e
    if-eqz v7, :cond_83

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 413
    :cond_83
    move-object v9, v7

    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_84
    :goto_84
    invoke-virtual {v2, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_93

    .line 410
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_88
    if-eqz v8, :cond_8d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_8d
    if-eqz v7, :cond_92

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 412
    :cond_92
    throw v0

    .line 415
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_93
    :goto_93
    const-string v0, ""

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 416
    iput-boolean v5, v1, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 417
    iput-boolean v5, v1, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 418
    return-void
.end method

.method private synthetic blacklist lambda$addStorage$0()Ljava/lang/Boolean;
    .registers 2

    .line 362
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private blacklist openFilePath(Ljava/lang/String;Z)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transcode"    # Z

    .line 793
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 794
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, -0x1

    if-nez v0, :cond_2b

    .line 795
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain URI for openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return v1

    .line 800
    :cond_2b
    :try_start_2b
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_49} :catch_82
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_49} :catch_82

    .line 802
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "video/hevc"

    const-string v4, "android.provider.extra.MEDIA_CAPABILITIES"

    if-eqz p2, :cond_61

    .line 803
    :try_start_50
    new-instance v5, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v5}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 804
    invoke-virtual {v5, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addUnsupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v3

    .line 805
    invoke-virtual {v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v3

    .line 803
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_71

    .line 807
    :cond_61
    new-instance v5, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v5}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 808
    invoke-virtual {v5, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v3

    .line 809
    invoke-virtual {v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v3

    .line 807
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 811
    :goto_71
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v4, "*/*"

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 812
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_81} :catch_82
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_81} :catch_82

    .line 811
    return v1

    .line 813
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_82
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to openFile with transcode support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    return v1
.end method

.method private greylist-max-o renameFile(ILjava/lang/String;)I
    .registers 10
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 566
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 567
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_b

    .line 568
    const/16 v1, 0x2009

    return v1

    .line 570
    :cond_b
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 573
    .local v1, "oldPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, p2}, Landroid/mtp/MtpStorageManager;->beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2002

    if-nez v2, :cond_1a

    .line 574
    return v3

    .line 575
    :cond_1a
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 576
    .local v2, "newPath":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 578
    .local v4, "success":Z
    :try_start_2a
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 579
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_3c
    .catch Landroid/system/ErrnoException; {:try_start_2a .. :try_end_3c} :catch_3d

    .line 582
    goto :goto_3e

    .line 580
    :catch_3d
    move-exception v5

    .line 584
    :goto_3e
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v4}, Landroid/mtp/MtpStorageManager;->endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_55

    .line 585
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "Failed to end rename object"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_55
    if-nez v4, :cond_58

    .line 588
    return v3

    .line 591
    :cond_58
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 592
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 593
    const/16 v3, 0x2001

    return v3
.end method

.method private greylist-max-o rescanFile(Ljava/lang/String;II)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I

    .line 448
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 449
    return-void
.end method

.method private greylist-max-o setDeviceProperty(IJLjava/lang/String;)I
    .registers 9
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 731
    const/16 v0, 0x2001

    sparse-switch p1, :sswitch_data_60

    .line 751
    const/16 v0, 0x200a

    return v0

    .line 740
    :sswitch_8
    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 741
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v1, "Android/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    .line 744
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    goto :goto_47

    .line 745
    :cond_3d
    const-string v1, "Windows/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 746
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 748
    :cond_47
    :goto_47
    return v0

    .line 735
    :sswitch_48
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 736
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_5e

    .line 738
    :cond_5c
    const/16 v0, 0x2002

    .line 737
    :goto_5e
    return v0

    nop

    :sswitch_data_60
    .sparse-switch
        0xd401 -> :sswitch_48
        0xd402 -> :sswitch_48
        0xd406 -> :sswitch_8
    .end sparse-switch
.end method

.method private greylist-max-o setObjectProperty(IIJLjava/lang/String;)I
    .registers 7
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .line 671
    packed-switch p2, :pswitch_data_c

    .line 676
    const v0, 0xa80a

    return v0

    .line 673
    :pswitch_7
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_c
    .packed-switch 0xdc07
        :pswitch_7
    .end packed-switch
.end method

.method private greylist-max-o setObjectReferences(I[I)I
    .registers 4
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .line 995
    const/16 v0, 0x2005

    return v0
.end method

.method private static blacklist updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 662
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    goto :goto_27

    .line 664
    :cond_24
    invoke-static {v0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 666
    :goto_27
    return-void
.end method


# virtual methods
.method public greylist-max-o addStorage(Landroid/os/storage/StorageVolume;)V
    .registers 5
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 362
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    new-instance v1, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;-><init>(Landroid/mtp/MtpDatabase;)V

    invoke-virtual {v0, p1, v1}, Landroid/mtp/MtpStorageManager;->addMtpStorage(Landroid/os/storage/StorageVolume;Ljava/util/function/Supplier;)Landroid/mtp/MtpStorage;

    move-result-object v0

    .line 363
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_1d

    .line 365
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 367
    :cond_1d
    return-void
.end method

.method public greylist-max-o beginSendObject(Ljava/lang/String;III)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I

    .line 424
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    if-nez p3, :cond_9

    invoke-virtual {v0, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 425
    .local v0, "parentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_d
    if-nez v0, :cond_11

    .line 426
    const/4 v1, -0x1

    return v1

    .line 429
    :cond_11
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 430
    .local v1, "objPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2}, Landroid/mtp/MtpStorageManager;->beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 339
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager;->close()V

    .line 340
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 341
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 342
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1d

    .line 343
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 345
    :cond_1d
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 347
    :cond_20
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 355
    :cond_9
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 357
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 358
    nop

    .line 359
    return-void

    .line 357
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 358
    throw v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist-max-o getNumObjects(III)I
    .registers 6
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 468
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v0

    .line 470
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_a

    .line 471
    const/4 v1, -0x1

    return v1

    .line 473
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public blacklist getThumbnailData(I)[B
    .registers 7
    .param p1, "handle"    # I

    .line 903
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 904
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 905
    return-object v1

    .line 908
    :cond_a
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 909
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    sparse-switch v3, :sswitch_data_48

    .line 937
    return-object v1

    .line 914
    :sswitch_1a
    :try_start_1a
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 916
    .local v1, "exif":Landroid/media/ExifInterface;
    iget-boolean v3, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v3, :cond_30

    .line 917
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getThumbnailData: Skip runtime thumbnail."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v3

    return-object v3

    .line 920
    :cond_30
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 921
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v3
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3a} :catch_3c

    return-object v3

    .line 924
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :cond_3b
    goto :goto_3d

    .line 922
    :catch_3c
    move-exception v1

    .line 931
    :goto_3d
    :sswitch_3d
    const/4 v1, 0x1

    invoke-static {v2, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 932
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2, v1}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 934
    .local v3, "byteArray":[B
    return-object v3

    nop

    :sswitch_data_48
    .sparse-switch
        0x3801 -> :sswitch_1a
        0x3804 -> :sswitch_3d
        0x3807 -> :sswitch_3d
        0x3808 -> :sswitch_1a
        0x380b -> :sswitch_3d
        0x3812 -> :sswitch_1a
    .end sparse-switch
.end method

.method public blacklist getThumbnailInfo(I[J)Z
    .registers 15
    .param p1, "handle"    # I
    .param p2, "outLongs"    # [J

    .line 854
    const-string v0, ","

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 855
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 856
    return v2

    .line 859
    :cond_c
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_b2

    .line 897
    return v2

    .line 865
    :sswitch_1e
    :try_start_1e
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 866
    .local v4, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v4}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v7

    .line 867
    .local v7, "thumbOffsetAndSize":[J
    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2e

    aget-wide v10, v7, v6

    goto :goto_2f

    :cond_2e
    move-wide v10, v8

    :goto_2f
    aput-wide v10, p2, v2

    .line 868
    const-string v10, "PixelXDimension"

    invoke-virtual {v4, v10, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    aput-wide v10, p2, v6

    .line 869
    const-string v10, "PixelYDimension"

    invoke-virtual {v4, v10, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    aput-wide v10, p2, v5

    .line 870
    iget-boolean v10, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v10, :cond_50

    .line 871
    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getThumbnailInfo: Skip runtime thumbnail."

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return v6

    .line 874
    :cond_50
    invoke-virtual {v4}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v10

    if-eqz v10, :cond_a2

    .line 875
    aget-wide v10, p2, v2

    cmp-long v10, v10, v8

    if-eqz v10, :cond_68

    aget-wide v10, p2, v6

    cmp-long v10, v10, v8

    if-eqz v10, :cond_68

    aget-wide v10, p2, v5

    cmp-long v8, v10, v8

    if-nez v8, :cond_a1

    .line 876
    :cond_68
    sget-object v8, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getThumbnailInfo: check thumb info:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v7, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v7, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, p2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v9, p2, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_a1} :catch_a3

    .line 881
    :cond_a1
    return v6

    .line 885
    .end local v4    # "exif":Landroid/media/ExifInterface;
    .end local v7    # "thumbOffsetAndSize":[J
    :cond_a2
    goto :goto_a4

    .line 883
    :catch_a3
    move-exception v0

    .line 891
    :goto_a4
    :sswitch_a4
    const-wide/32 v7, 0x32000

    aput-wide v7, p2, v2

    .line 893
    const-wide/16 v7, 0x140

    aput-wide v7, p2, v6

    .line 894
    const-wide/16 v7, 0xf0

    aput-wide v7, p2, v5

    .line 895
    return v6

    :sswitch_data_b2
    .sparse-switch
        0x3801 -> :sswitch_1e
        0x3804 -> :sswitch_a4
        0x3807 -> :sswitch_a4
        0x3808 -> :sswitch_1e
        0x380b -> :sswitch_a4
        0x3812 -> :sswitch_1e
    .end sparse-switch
.end method

.method public greylist-max-o removeStorage(Landroid/os/storage/StorageVolume;)V
    .registers 5
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 370
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 371
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    if-nez v0, :cond_f

    .line 372
    return-void

    .line 374
    :cond_f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_18

    .line 375
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 377
    :cond_18
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->removeMtpStorage(Landroid/mtp/MtpStorage;)V

    .line 378
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void
.end method

.method public greylist-max-o setServer(Landroid/mtp/MtpServer;)V
    .registers 6
    .param p1, "server"    # Landroid/mtp/MtpServer;

    .line 319
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 322
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_a

    .line 325
    goto :goto_b

    .line 323
    :catch_a
    move-exception v0

    .line 327
    :goto_b
    if-eqz p1, :cond_1b

    .line 328
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    :cond_1b
    return-void
.end method
