.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$1;
    }
.end annotation


# static fields
.field static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/mtp/MtpDatabase;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 90
    new-array v0, v3, [Ljava/lang/String;

    #@6
    .line 91
    const-string/jumbo v1, "_id"

    #@9
    aput-object v1, v0, v2

    #@b
    .line 90
    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    #@d
    .line 93
    new-array v0, v4, [Ljava/lang/String;

    #@f
    .line 94
    const-string/jumbo v1, "_id"

    #@12
    aput-object v1, v0, v2

    #@14
    .line 95
    const-string/jumbo v1, "_data"

    #@17
    aput-object v1, v0, v3

    #@19
    .line 93
    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    #@1b
    .line 97
    new-array v0, v4, [Ljava/lang/String;

    #@1d
    .line 98
    const-string/jumbo v1, "_id"

    #@20
    aput-object v1, v0, v2

    #@22
    .line 99
    const-string/jumbo v1, "format"

    #@25
    aput-object v1, v0, v3

    #@27
    .line 97
    sput-object v0, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    #@29
    .line 101
    new-array v0, v5, [Ljava/lang/String;

    #@2b
    .line 102
    const-string/jumbo v1, "_id"

    #@2e
    aput-object v1, v0, v2

    #@30
    .line 103
    const-string/jumbo v1, "_data"

    #@33
    aput-object v1, v0, v3

    #@35
    .line 104
    const-string/jumbo v1, "format"

    #@38
    aput-object v1, v0, v4

    #@3a
    .line 101
    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    #@3c
    .line 106
    const/4 v0, 0x7

    #@3d
    new-array v0, v0, [Ljava/lang/String;

    #@3f
    .line 107
    const-string/jumbo v1, "_id"

    #@42
    aput-object v1, v0, v2

    #@44
    .line 108
    const-string/jumbo v1, "storage_id"

    #@47
    aput-object v1, v0, v3

    #@49
    .line 109
    const-string/jumbo v1, "format"

    #@4c
    aput-object v1, v0, v4

    #@4e
    .line 110
    const-string/jumbo v1, "parent"

    #@51
    aput-object v1, v0, v5

    #@53
    .line 111
    const-string/jumbo v1, "_data"

    #@56
    const/4 v2, 0x4

    #@57
    aput-object v1, v0, v2

    #@59
    .line 112
    const-string/jumbo v1, "date_added"

    #@5c
    const/4 v2, 0x5

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 113
    const-string/jumbo v1, "date_modified"

    #@62
    const/4 v2, 0x6

    #@63
    aput-object v1, v0, v2

    #@65
    .line 106
    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    #@67
    .line 137
    const-string/jumbo v0, "media_jni"

    #@6a
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6d
    .line 599
    const/16 v0, 0xb

    #@6f
    new-array v0, v0, [I

    #@71
    fill-array-data v0, :array_0

    #@74
    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    #@76
    .line 615
    const/16 v0, 0x18

    #@78
    new-array v0, v0, [I

    #@7a
    fill-array-data v0, :array_1

    #@7d
    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    #@7f
    .line 645
    const/16 v0, 0xf

    #@81
    new-array v0, v0, [I

    #@83
    fill-array-data v0, :array_2

    #@86
    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    #@88
    .line 666
    const/16 v0, 0xc

    #@8a
    new-array v0, v0, [I

    #@8c
    fill-array-data v0, :array_3

    #@8f
    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    #@91
    .line 51
    return-void

    #@92
    .line 599
    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    #@ac
    .line 615
    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
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

    #@e0
    .line 645
    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    #@102
    .line 666
    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@8
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    .line 62
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@d
    move-result-object v6

    #@e
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@10
    .line 73
    new-instance v6, Ljava/util/HashMap;

    #@12
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@15
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    #@17
    .line 77
    new-instance v6, Ljava/util/HashMap;

    #@19
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@1c
    .line 76
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    #@1e
    .line 81
    new-instance v6, Ljava/util/HashMap;

    #@20
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@23
    .line 80
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    #@25
    .line 140
    new-instance v6, Landroid/mtp/MtpDatabase$1;

    #@27
    invoke-direct {v6, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    #@2a
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    #@2c
    .line 161
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    #@2f
    .line 163
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@31
    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@37
    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3a
    move-result-object v6

    #@3b
    .line 166
    const-string/jumbo v7, "media"

    #@3e
    .line 165
    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    #@41
    move-result-object v6

    #@42
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@44
    .line 167
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@46
    .line 168
    iput-object p3, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    #@48
    .line 169
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    #@4b
    move-result-object v6

    #@4c
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@4e
    .line 170
    new-instance v6, Landroid/media/MediaScanner;

    #@50
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@52
    invoke-direct {v6, p1, v7}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@55
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    #@57
    .line 172
    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@59
    .line 173
    if-eqz p4, :cond_2

    #@5b
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "("

    #@63
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 177
    array-length v1, p4

    #@67
    .line 178
    .local v1, "count":I
    const/4 v2, 0x0

    #@68
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@6a
    .line 179
    const-string/jumbo v6, "_data=? OR _data LIKE ?"

    #@6d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 181
    add-int/lit8 v6, v1, -0x1

    #@72
    if-eq v2, v6, :cond_0

    #@74
    .line 182
    const-string/jumbo v6, " OR "

    #@77
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 185
    :cond_1
    const-string/jumbo v6, ")"

    #@80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    #@89
    .line 189
    mul-int/lit8 v6, v1, 0x2

    #@8b
    new-array v6, v6, [Ljava/lang/String;

    #@8d
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@8f
    .line 190
    const/4 v2, 0x0

    #@90
    const/4 v3, 0x0

    #@91
    .local v3, "j":I
    move v4, v3

    #@92
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_1
    if-ge v2, v1, :cond_2

    #@94
    .line 191
    aget-object v5, p4, v2

    #@96
    .line 192
    .local v5, "path":Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@98
    add-int/lit8 v3, v4, 0x1

    #@9a
    .end local v4    # "j":I
    .restart local v3    # "j":I
    aput-object v5, v6, v4

    #@9c
    .line 193
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@9e
    add-int/lit8 v4, v3, 0x1

    #@a0
    .end local v3    # "j":I
    .restart local v4    # "j":I
    new-instance v7, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    const-string/jumbo v8, "/%"

    #@ac
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v7

    #@b4
    aput-object v7, v6, v3

    #@b6
    .line 190
    add-int/lit8 v2, v2, 0x1

    #@b8
    goto :goto_1

    #@b9
    .line 197
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    #@bc
    .line 199
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@be
    const-string/jumbo v7, "close"

    #@c1
    invoke-virtual {v6, v7}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@c4
    .line 160
    return-void
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    #@0
    .prologue
    .line 333
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 334
    const-string/jumbo v0, "MtpDatabase"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "attempt to put file outside of storage area: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 335
    const/4 v0, -0x1

    #@21
    return v0

    #@22
    .line 338
    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_1

    #@28
    const/4 v0, -0x1

    #@29
    return v0

    #@2a
    .line 341
    :cond_1
    if-eqz p1, :cond_4

    #@2c
    .line 342
    const/4 v7, 0x0

    #@2d
    .line 344
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@2f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@31
    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    #@33
    const-string/jumbo v3, "_data=?"

    #@36
    .line 345
    const/4 v4, 0x1

    #@37
    new-array v4, v4, [Ljava/lang/String;

    #@39
    const/4 v5, 0x0

    #@3a
    aput-object p1, v4, v5

    #@3c
    const/4 v5, 0x0

    #@3d
    const/4 v6, 0x0

    #@3e
    .line 344
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@41
    move-result-object v7

    #@42
    .line 346
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    #@44
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@47
    move-result v0

    #@48
    if-lez v0, :cond_3

    #@4a
    .line 347
    const-string/jumbo v0, "MtpDatabase"

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, "file already exists in beginSendObject: "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    .line 348
    const/4 v0, -0x1

    #@65
    .line 353
    if-eqz v7, :cond_2

    #@67
    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@6a
    .line 348
    :cond_2
    return v0

    #@6b
    .line 353
    :cond_3
    if-eqz v7, :cond_4

    #@6d
    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@70
    .line 359
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_0
    const/4 v0, 0x1

    #@71
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@73
    .line 360
    new-instance v10, Landroid/content/ContentValues;

    #@75
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    #@78
    .line 361
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "_data"

    #@7b
    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7e
    .line 362
    const-string/jumbo v0, "format"

    #@81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@88
    .line 363
    const-string/jumbo v0, "parent"

    #@8b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@92
    .line 364
    const-string/jumbo v0, "storage_id"

    #@95
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@9c
    .line 365
    const-string/jumbo v0, "_size"

    #@9f
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@a6
    .line 366
    const-string/jumbo v0, "date_modified"

    #@a9
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@b0
    .line 369
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@b2
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@b4
    invoke-virtual {v0, v1, v10}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@b7
    move-result-object v9

    #@b8
    .line 370
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_6

    #@ba
    .line 371
    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@bd
    move-result-object v0

    #@be
    const/4 v1, 0x2

    #@bf
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c2
    move-result-object v0

    #@c3
    check-cast v0, Ljava/lang/String;

    #@c5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@c8
    move-result v0

    #@c9
    return v0

    #@ca
    .line 350
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    #@cb
    .line 351
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v0, "MtpDatabase"

    #@ce
    const-string/jumbo v1, "RemoteException in beginSendObject"

    #@d1
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d4
    .line 353
    if-eqz v7, :cond_4

    #@d6
    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@d9
    goto :goto_0

    #@da
    .line 352
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@db
    .line 353
    if-eqz v7, :cond_5

    #@dd
    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@e0
    .line 352
    :cond_5
    throw v0

    #@e1
    .line 373
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_6
    const/4 v0, -0x1

    #@e2
    return v0

    #@e3
    .line 375
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v8

    #@e4
    .line 376
    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MtpDatabase"

    #@e7
    const-string/jumbo v1, "RemoteException in beginSendObject"

    #@ea
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ed
    .line 377
    const/4 v0, -0x1

    #@ee
    return v0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 10
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v0, -0x1

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 421
    if-ne p1, v0, :cond_6

    #@7
    .line 423
    if-nez p2, :cond_3

    #@9
    .line 425
    if-nez p3, :cond_1

    #@b
    .line 427
    const/4 v3, 0x0

    #@c
    .line 428
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    #@d
    .line 492
    .end local v3    # "where":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 493
    if-nez v3, :cond_c

    #@13
    .line 494
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    #@15
    .line 495
    .local v3, "where":Ljava/lang/String;
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@17
    .line 513
    .end local v3    # "where":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@19
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@1b
    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    #@1d
    move-object v6, v5

    #@1e
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 430
    :cond_1
    if-ne p3, v0, :cond_2

    #@25
    .line 432
    const/4 p3, 0x0

    #@26
    .line 434
    :cond_2
    const-string/jumbo v3, "parent=?"

    #@29
    .line 435
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    #@2b
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    aput-object v0, v4, v1

    #@31
    .local v4, "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@32
    .line 439
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    #@34
    .line 441
    const-string/jumbo v3, "format=?"

    #@37
    .line 442
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    #@39
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    aput-object v0, v4, v1

    #@3f
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@40
    .line 444
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    #@42
    .line 446
    const/4 p3, 0x0

    #@43
    .line 448
    :cond_5
    const-string/jumbo v3, "format=? AND parent=?"

    #@46
    .line 449
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    #@48
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    aput-object v0, v4, v1

    #@4e
    .line 450
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    aput-object v0, v4, v2

    #@54
    .line 449
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@55
    .line 455
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    #@57
    .line 457
    if-nez p3, :cond_7

    #@59
    .line 459
    const-string/jumbo v3, "storage_id=?"

    #@5c
    .line 460
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    #@5e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    aput-object v0, v4, v1

    #@64
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@65
    .line 462
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    #@67
    .line 464
    const/4 p3, 0x0

    #@68
    .line 466
    :cond_8
    const-string/jumbo v3, "storage_id=? AND parent=?"

    #@6b
    .line 467
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    #@6d
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    aput-object v0, v4, v1

    #@73
    .line 468
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    aput-object v0, v4, v2

    #@79
    .line 467
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@7a
    .line 472
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    #@7c
    .line 474
    const-string/jumbo v3, "storage_id=? AND format=?"

    #@7f
    .line 475
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    #@81
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    aput-object v0, v4, v1

    #@87
    .line 476
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    aput-object v0, v4, v2

    #@8d
    .line 475
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@8e
    .line 478
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    #@90
    .line 480
    const/4 p3, 0x0

    #@91
    .line 482
    :cond_b
    const-string/jumbo v3, "storage_id=? AND format=? AND parent=?"

    #@94
    .line 483
    .restart local v3    # "where":Ljava/lang/String;
    const/4 v0, 0x3

    #@95
    new-array v4, v0, [Ljava/lang/String;

    #@97
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    aput-object v0, v4, v1

    #@9d
    .line 484
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    aput-object v0, v4, v2

    #@a3
    .line 485
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    aput-object v0, v4, v6

    #@a9
    .line 483
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    #@ab
    .line 497
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    const-string/jumbo v1, " AND "

    #@b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    #@bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v0

    #@c1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    .line 501
    .restart local v3    # "where":Ljava/lang/String;
    array-length v0, v4

    #@c6
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@c8
    array-length v1, v1

    #@c9
    add-int/2addr v0, v1

    #@ca
    new-array v9, v0, [Ljava/lang/String;

    #@cc
    .line 503
    .local v9, "newWhereArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    #@cd
    .local v7, "i":I
    :goto_2
    array-length v0, v4

    #@ce
    if-ge v7, v0, :cond_d

    #@d0
    .line 504
    aget-object v0, v4, v7

    #@d2
    aput-object v0, v9, v7

    #@d4
    .line 503
    add-int/lit8 v7, v7, 0x1

    #@d6
    goto :goto_2

    #@d7
    .line 506
    :cond_d
    const/4 v8, 0x0

    #@d8
    .local v8, "j":I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@da
    array-length v0, v0

    #@db
    if-ge v8, v0, :cond_e

    #@dd
    .line 507
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@df
    aget-object v0, v0, v8

    #@e1
    aput-object v0, v9, v7

    #@e3
    .line 506
    add-int/lit8 v7, v7, 0x1

    #@e5
    add-int/lit8 v8, v8, 0x1

    #@e7
    goto :goto_3

    #@e8
    .line 509
    :cond_e
    move-object v4, v9

    #@e9
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 14
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 989
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@3
    .line 990
    const/4 v12, 0x0

    #@4
    .line 991
    .local v12, "path":Ljava/lang/String;
    const/4 v10, 0x0

    #@5
    .line 993
    .local v10, "format":I
    const/4 v7, 0x0

    #@6
    .line 995
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@8
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@a
    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    #@c
    .line 996
    const-string/jumbo v3, "_id=?"

    #@f
    const/4 v4, 0x1

    #@10
    new-array v4, v4, [Ljava/lang/String;

    #@12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    const/4 v6, 0x0

    #@17
    aput-object v5, v4, v6

    #@19
    const/4 v5, 0x0

    #@1a
    const/4 v6, 0x0

    #@1b
    .line 995
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@1e
    move-result-object v7

    #@1f
    .line 997
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    #@21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 1000
    const/4 v0, 0x1

    #@28
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2b
    move-result-object v12

    #@2c
    .line 1001
    .local v12, "path":Ljava/lang/String;
    const/4 v0, 0x2

    #@2d
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v10

    #@31
    .line 1006
    if-eqz v12, :cond_0

    #@33
    if-nez v10, :cond_4

    #@35
    .line 1007
    :cond_0
    const/16 v0, 0x2002

    #@37
    .line 1044
    if-eqz v7, :cond_1

    #@39
    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@3c
    .line 1007
    :cond_1
    return v0

    #@3d
    .line 1003
    .local v12, "path":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x2009

    #@3f
    .line 1044
    if-eqz v7, :cond_3

    #@41
    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@44
    .line 1003
    :cond_3
    return v0

    #@45
    .line 1011
    .local v12, "path":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-direct {p0, v12}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 1012
    const/16 v0, 0x200d

    #@4d
    .line 1044
    if-eqz v7, :cond_5

    #@4f
    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@52
    .line 1012
    :cond_5
    return v0

    #@53
    .line 1015
    :cond_6
    const/16 v0, 0x3001

    #@55
    if-ne v10, v0, :cond_7

    #@57
    .line 1017
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@59
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    #@5c
    move-result-object v13

    #@5d
    .line 1018
    .local v13, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@5f
    .line 1021
    const-string/jumbo v1, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    #@62
    .line 1022
    const/4 v2, 0x3

    #@63
    new-array v2, v2, [Ljava/lang/String;

    #@65
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    const-string/jumbo v4, "/%"

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    const/4 v4, 0x0

    #@7a
    aput-object v3, v2, v4

    #@7c
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@7f
    move-result v3

    #@80
    add-int/lit8 v3, v3, 0x1

    #@82
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    const/4 v4, 0x1

    #@87
    aput-object v3, v2, v4

    #@89
    new-instance v3, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    const-string/jumbo v4, "/"

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v3

    #@9d
    const/4 v4, 0x2

    #@9e
    aput-object v3, v2, v4

    #@a0
    .line 1018
    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@a3
    move-result v8

    #@a4
    .line 1025
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_7
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@a6
    int-to-long v2, p1

    #@a7
    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    #@aa
    move-result-object v13

    #@ab
    .line 1026
    .restart local v13    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@ad
    const/4 v1, 0x0

    #@ae
    const/4 v2, 0x0

    #@af
    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@b2
    move-result v0

    #@b3
    if-lez v0, :cond_b

    #@b5
    .line 1027
    const/16 v0, 0x3001

    #@b7
    if-eq v10, v0, :cond_8

    #@b9
    .line 1028
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@bb
    invoke-virtual {v12, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    const-string/jumbo v1, "/.nomedia"

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c5
    move-result v0

    #@c6
    .line 1027
    if-eqz v0, :cond_8

    #@c8
    .line 1030
    :try_start_3
    const-string/jumbo v0, "/"

    #@cb
    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@ce
    move-result v0

    #@cf
    const/4 v1, 0x0

    #@d0
    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d3
    move-result-object v11

    #@d4
    .line 1031
    .local v11, "parentPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@d6
    const-string/jumbo v1, "unhide"

    #@d9
    const/4 v2, 0x0

    #@da
    invoke-virtual {v0, v1, v11, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@dd
    .line 1036
    .end local v11    # "parentPath":Ljava/lang/String;
    :cond_8
    :goto_0
    const/16 v0, 0x2001

    #@df
    .line 1044
    if-eqz v7, :cond_9

    #@e1
    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@e4
    .line 1036
    :cond_9
    return v0

    #@e5
    .line 1032
    :catch_0
    move-exception v9

    #@e6
    .line 1033
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v0, "MtpDatabase"

    #@e9
    new-instance v1, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v2, "failed to unhide/rescan for "

    #@f1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v1

    #@f5
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v1

    #@f9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v1

    #@fd
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@100
    goto :goto_0

    #@101
    .line 1040
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    #@102
    .line 1041
    .restart local v9    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v0, "MtpDatabase"

    #@105
    const-string/jumbo v1, "RemoteException in deleteFile"

    #@108
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@10b
    .line 1042
    const/16 v0, 0x2002

    #@10d
    .line 1044
    if-eqz v7, :cond_a

    #@10f
    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@112
    .line 1042
    :cond_a
    return v0

    #@113
    .line 1038
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_b
    const/16 v0, 0x2009

    #@115
    .line 1044
    if-eqz v7, :cond_c

    #@117
    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@11a
    .line 1038
    :cond_c
    return v0

    #@11b
    .line 1043
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    #@11c
    .line 1044
    if-eqz v7, :cond_d

    #@11e
    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@121
    .line 1043
    :cond_d
    throw v0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "succeeded"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 382
    if-eqz p4, :cond_3

    #@3
    .line 385
    const v5, 0xba05

    #@6
    if-ne p3, v5, :cond_2

    #@8
    .line 387
    move-object v2, p1

    #@9
    .line 388
    .local v2, "name":Ljava/lang/String;
    const/16 v5, 0x2f

    #@b
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v1

    #@f
    .line 389
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    #@11
    .line 390
    add-int/lit8 v5, v1, 0x1

    #@13
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 393
    :cond_0
    const-string/jumbo v5, ".pla"

    #@1a
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 394
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@23
    move-result v5

    #@24
    add-int/lit8 v5, v5, -0x4

    #@26
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 397
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    #@2c
    const/4 v5, 0x1

    #@2d
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@30
    .line 398
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "_data"

    #@33
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 399
    const-string/jumbo v5, "name"

    #@39
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 400
    const-string/jumbo v5, "format"

    #@3f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@46
    .line 401
    const-string/jumbo v5, "date_modified"

    #@49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4c
    move-result-wide v6

    #@4d
    const-wide/16 v8, 0x3e8

    #@4f
    div-long/2addr v6, v8

    #@50
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@57
    .line 402
    const-string/jumbo v5, "media_scanner_new_object_id"

    #@5a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@61
    .line 404
    :try_start_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@63
    .line 405
    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@65
    .line 404
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    move-result-object v3

    #@69
    .line 381
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    #@6a
    .line 406
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    #@6b
    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "MtpDatabase"

    #@6e
    const-string/jumbo v6, "RemoteException in endSendObject"

    #@71
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@74
    goto :goto_0

    #@75
    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    #@77
    invoke-virtual {v5, p1, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;II)V

    #@7a
    goto :goto_0

    #@7b
    .line 413
    :cond_3
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    #@7e
    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    #@0
    .prologue
    const/16 v10, 0x2001

    #@2
    const/4 v9, 0x0

    #@3
    .line 848
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 875
    const/16 v6, 0x200a

    #@8
    return v6

    #@9
    .line 852
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    #@b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v7

    #@f
    const-string/jumbo v8, ""

    #@12
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 853
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    .line 854
    .local v3, "length":I
    const/16 v6, 0xff

    #@1c
    if-le v3, v6, :cond_0

    #@1e
    .line 855
    const/16 v3, 0xff

    #@20
    .line 857
    :cond_0
    invoke-virtual {v4, v9, v3, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    #@23
    .line 858
    aput-char v9, p3, v3

    #@25
    .line 859
    return v10

    #@26
    .line 863
    .end local v3    # "length":I
    .end local v4    # "value":Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@28
    .line 864
    const-string/jumbo v7, "window"

    #@2b
    .line 863
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2e
    move-result-object v6

    #@2f
    check-cast v6, Landroid/view/WindowManager;

    #@31
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@34
    move-result-object v0

    #@35
    .line 865
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    #@38
    move-result v5

    #@39
    .line 866
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    #@3c
    move-result v1

    #@3d
    .line 867
    .local v1, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    const-string/jumbo v7, "x"

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    .line 868
    .local v2, "imageSize":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@60
    move-result v6

    #@61
    invoke-virtual {v2, v9, v6, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    #@64
    .line 869
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@67
    move-result v6

    #@68
    aput-char v9, p3, v6

    #@6a
    .line 870
    return v10

    #@6b
    .line 848
    nop

    #@6c
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    #@0
    .prologue
    .line 544
    const/4 v0, 0x0

    #@1
    .line 546
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    #@4
    move-result-object v0

    #@5
    .line 547
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    #@7
    .line 548
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v2

    #@b
    .line 553
    if-eqz v0, :cond_0

    #@d
    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@10
    .line 548
    :cond_0
    return v2

    #@11
    .line 553
    :cond_1
    if-eqz v0, :cond_2

    #@13
    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@16
    .line 557
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v2, -0x1

    #@17
    return v2

    #@18
    .line 550
    :catch_0
    move-exception v1

    #@19
    .line 551
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "MtpDatabase"

    #@1c
    const-string/jumbo v3, "RemoteException in getNumObjects"

    #@1f
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 553
    if-eqz v0, :cond_2

    #@24
    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@27
    goto :goto_0

    #@28
    .line 552
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@29
    .line 553
    if-eqz v0, :cond_3

    #@2b
    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@2e
    .line 552
    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 11
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    #@0
    .prologue
    const/16 v10, 0x2001

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 934
    if-nez p1, :cond_0

    #@6
    .line 936
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    #@8
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    #@a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@11
    .line 937
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    #@13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@16
    move-result v0

    #@17
    aput-char v2, p2, v0

    #@19
    .line 938
    const-wide/16 v0, 0x0

    #@1b
    aput-wide v0, p3, v2

    #@1d
    .line 939
    const-wide/16 v0, 0x3001

    #@1f
    aput-wide v0, p3, v3

    #@21
    .line 940
    return v10

    #@22
    .line 942
    :cond_0
    const/4 v7, 0x0

    #@23
    .line 944
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@25
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@27
    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    #@29
    .line 945
    const-string/jumbo v3, "_id=?"

    #@2c
    const/4 v4, 0x1

    #@2d
    new-array v4, v4, [Ljava/lang/String;

    #@2f
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    const/4 v6, 0x0

    #@34
    aput-object v5, v4, v6

    #@36
    const/4 v5, 0x0

    #@37
    const/4 v6, 0x0

    #@38
    .line 944
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@3b
    move-result-object v7

    #@3c
    .line 946
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    #@3e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_2

    #@44
    .line 947
    const/4 v0, 0x1

    #@45
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    .line 948
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@4c
    move-result v0

    #@4d
    const/4 v1, 0x0

    #@4e
    const/4 v2, 0x0

    #@4f
    invoke-virtual {v9, v1, v0, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@52
    .line 949
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@55
    move-result v0

    #@56
    const/4 v1, 0x0

    #@57
    aput-char v1, p2, v0

    #@59
    .line 952
    new-instance v0, Ljava/io/File;

    #@5b
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5e
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@61
    move-result-wide v0

    #@62
    const/4 v2, 0x0

    #@63
    aput-wide v0, p3, v2

    #@65
    .line 953
    const/4 v0, 0x2

    #@66
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    #@69
    move-result-wide v0

    #@6a
    const/4 v2, 0x1

    #@6b
    aput-wide v0, p3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    .line 962
    if-eqz v7, :cond_1

    #@6f
    .line 963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@72
    .line 954
    :cond_1
    return v10

    #@73
    .line 956
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x2009

    #@75
    .line 962
    if-eqz v7, :cond_3

    #@77
    .line 963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@7a
    .line 956
    :cond_3
    return v0

    #@7b
    .line 958
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    #@7c
    .line 959
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "MtpDatabase"

    #@7f
    const-string/jumbo v1, "RemoteException in getObjectFilePath"

    #@82
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@85
    .line 960
    const/16 v0, 0x2002

    #@87
    .line 962
    if-eqz v7, :cond_4

    #@89
    .line 963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@8c
    .line 960
    :cond_4
    return v0

    #@8d
    .line 961
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@8e
    .line 962
    if-eqz v7, :cond_5

    #@90
    .line 963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@93
    .line 961
    :cond_5
    throw v0
.end method

.method private getObjectFormat(I)I
    .locals 10
    .param p1, "handle"    # I

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 969
    const/4 v7, 0x0

    #@2
    .line 971
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@4
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@6
    sget-object v2, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    #@8
    .line 972
    const-string/jumbo v3, "_id=?"

    #@b
    const/4 v4, 0x1

    #@c
    new-array v4, v4, [Ljava/lang/String;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    const/4 v6, 0x0

    #@13
    aput-object v5, v4, v6

    #@15
    const/4 v5, 0x0

    #@16
    const/4 v6, 0x0

    #@17
    .line 971
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@1a
    move-result-object v7

    #@1b
    .line 973
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@1d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 974
    const/4 v0, 0x1

    #@24
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v0

    #@28
    .line 982
    if-eqz v7, :cond_0

    #@2a
    .line 983
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@2d
    .line 974
    :cond_0
    return v0

    #@2e
    .line 982
    :cond_1
    if-eqz v7, :cond_2

    #@30
    .line 983
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@33
    .line 976
    :cond_2
    return v9

    #@34
    .line 978
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    #@35
    .line 979
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "MtpDatabase"

    #@38
    const-string/jumbo v1, "RemoteException in getObjectFilePath"

    #@3b
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 982
    if-eqz v7, :cond_3

    #@40
    .line 983
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@43
    .line 980
    :cond_3
    return v9

    #@44
    .line 981
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@45
    .line 982
    if-eqz v7, :cond_4

    #@47
    .line 983
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@4a
    .line 981
    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 15
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    #@0
    .prologue
    .line 895
    const/4 v9, 0x0

    #@1
    .line 897
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@3
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@5
    sget-object v4, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    #@7
    .line 898
    const-string/jumbo v5, "_id=?"

    #@a
    const/4 v6, 0x1

    #@b
    new-array v6, v6, [Ljava/lang/String;

    #@d
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10
    move-result-object v7

    #@11
    const/4 v8, 0x0

    #@12
    aput-object v7, v6, v8

    #@14
    const/4 v7, 0x0

    #@15
    const/4 v8, 0x0

    #@16
    .line 897
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@19
    move-result-object v9

    #@1a
    .line 899
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    #@1c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_4

    #@22
    .line 900
    const/4 v2, 0x1

    #@23
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    #@26
    move-result v2

    #@27
    const/4 v3, 0x0

    #@28
    aput v2, p2, v3

    #@2a
    .line 901
    const/4 v2, 0x2

    #@2b
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    #@2e
    move-result v2

    #@2f
    const/4 v3, 0x1

    #@30
    aput v2, p2, v3

    #@32
    .line 902
    const/4 v2, 0x3

    #@33
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    #@36
    move-result v2

    #@37
    const/4 v3, 0x2

    #@38
    aput v2, p2, v3

    #@3a
    .line 905
    const/4 v2, 0x4

    #@3b
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@3e
    move-result-object v13

    #@3f
    .line 906
    .local v13, "path":Ljava/lang/String;
    const/16 v2, 0x2f

    #@41
    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@44
    move-result v12

    #@45
    .line 907
    .local v12, "lastSlash":I
    if-ltz v12, :cond_3

    #@47
    add-int/lit8 v14, v12, 0x1

    #@49
    .line 908
    .local v14, "start":I
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@4c
    move-result v11

    #@4d
    .line 909
    .local v11, "end":I
    sub-int v2, v11, v14

    #@4f
    const/16 v3, 0xff

    #@51
    if-le v2, v3, :cond_0

    #@53
    .line 910
    add-int/lit16 v11, v14, 0xff

    #@55
    .line 912
    :cond_0
    const/4 v2, 0x0

    #@56
    move-object/from16 v0, p3

    #@58
    invoke-virtual {v13, v14, v11, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@5b
    .line 913
    sub-int v2, v11, v14

    #@5d
    const/4 v3, 0x0

    #@5e
    aput-char v3, p3, v2

    #@60
    .line 915
    const/4 v2, 0x5

    #@61
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    #@64
    move-result-wide v2

    #@65
    const/4 v4, 0x0

    #@66
    aput-wide v2, p4, v4

    #@68
    .line 916
    const/4 v2, 0x6

    #@69
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    #@6c
    move-result-wide v2

    #@6d
    const/4 v4, 0x1

    #@6e
    aput-wide v2, p4, v4

    #@70
    .line 918
    const/4 v2, 0x0

    #@71
    aget-wide v2, p4, v2

    #@73
    const-wide/16 v4, 0x0

    #@75
    cmp-long v2, v2, v4

    #@77
    if-nez v2, :cond_1

    #@79
    .line 919
    const/4 v2, 0x1

    #@7a
    aget-wide v2, p4, v2

    #@7c
    const/4 v4, 0x0

    #@7d
    aput-wide v2, p4, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    .line 921
    :cond_1
    const/4 v2, 0x1

    #@80
    .line 926
    if-eqz v9, :cond_2

    #@82
    .line 927
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@85
    .line 921
    :cond_2
    return v2

    #@86
    .line 907
    .end local v11    # "end":I
    .end local v14    # "start":I
    :cond_3
    const/4 v14, 0x0

    #@87
    .restart local v14    # "start":I
    goto :goto_0

    #@88
    .line 926
    .end local v12    # "lastSlash":I
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "start":I
    :cond_4
    if-eqz v9, :cond_5

    #@8a
    .line 927
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@8d
    .line 930
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_1
    const/4 v2, 0x0

    #@8e
    return v2

    #@8f
    .line 923
    :catch_0
    move-exception v10

    #@90
    .line 924
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "MtpDatabase"

    #@93
    const-string/jumbo v3, "RemoteException in getObjectInfo"

    #@96
    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@99
    .line 926
    if-eqz v9, :cond_5

    #@9b
    .line 927
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@9e
    goto :goto_1

    #@9f
    .line 925
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@a0
    .line 926
    if-eqz v9, :cond_6

    #@a2
    .line 927
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@a5
    .line 925
    :cond_6
    throw v2
.end method

.method private getObjectList(III)[I
    .locals 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 518
    const/4 v0, 0x0

    #@2
    .line 520
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v0

    #@6
    .line 521
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_1

    #@8
    .line 536
    if-eqz v0, :cond_0

    #@a
    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@d
    .line 522
    :cond_0
    return-object v7

    #@e
    .line 524
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    #@11
    move-result v1

    #@12
    .line 525
    .local v1, "count":I
    if-lez v1, :cond_4

    #@14
    .line 526
    new-array v4, v1, [I

    #@16
    .line 527
    .local v4, "result":[I
    const/4 v3, 0x0

    #@17
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@19
    .line 528
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    #@1c
    .line 529
    const/4 v5, 0x0

    #@1d
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    #@20
    move-result v5

    #@21
    aput v5, v4, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 527
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 536
    :cond_2
    if-eqz v0, :cond_3

    #@28
    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@2b
    .line 531
    :cond_3
    return-object v4

    #@2c
    .line 536
    .end local v3    # "i":I
    .end local v4    # "result":[I
    :cond_4
    if-eqz v0, :cond_5

    #@2e
    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@31
    .line 540
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "count":I
    :cond_5
    :goto_1
    return-object v7

    #@32
    .line 533
    :catch_0
    move-exception v2

    #@33
    .line 534
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "MtpDatabase"

    #@36
    const-string/jumbo v6, "RemoteException in getObjectList"

    #@39
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    .line 536
    if-eqz v0, :cond_5

    #@3e
    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@41
    goto :goto_1

    #@42
    .line 535
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@43
    .line 536
    if-eqz v0, :cond_6

    #@45
    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@48
    .line 535
    :cond_6
    throw v5
.end method

.method private getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 5
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 719
    if-eqz p4, :cond_0

    #@4
    .line 720
    new-instance v2, Landroid/mtp/MtpPropertyList;

    #@6
    const v3, 0xa807

    #@9
    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    #@c
    return-object v2

    #@d
    .line 724
    :cond_0
    if-ne p3, v2, :cond_3

    #@f
    .line 725
    if-nez p2, :cond_1

    #@11
    if-eqz p1, :cond_1

    #@13
    if-eq p1, v2, :cond_1

    #@15
    .line 727
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->getObjectFormat(I)I

    #@18
    move-result p2

    #@19
    .line 729
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    #@1b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    #@25
    .line 730
    .local v0, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_2

    #@27
    .line 731
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    #@2a
    move-result-object v1

    #@2b
    .line 732
    .local v1, "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    #@2d
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@2f
    .line 733
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@31
    .line 732
    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    #@34
    .line 734
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    #@36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 746
    .end local v1    # "propertyList":[I
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2, p5}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    #@40
    move-result-object v2

    #@41
    return-object v2

    #@42
    .line 737
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_3
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    #@44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    #@4e
    .line 738
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_2

    #@50
    .line 739
    const/4 v2, 0x1

    #@51
    new-array v1, v2, [I

    #@53
    aput p3, v1, v4

    #@55
    .line 740
    .restart local v1    # "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    #@57
    .line 741
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@59
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@5b
    .line 740
    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    #@5e
    .line 742
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    #@60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    goto :goto_0
.end method

.method private getObjectReferences(I)[I
    .locals 13
    .param p1, "handle"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1051
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@3
    int-to-long v2, p1

    #@4
    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    #@7
    move-result-object v1

    #@8
    .line 1052
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    #@9
    .line 1054
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@b
    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v6, 0x0

    #@11
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v7

    #@15
    .line 1055
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_1

    #@17
    .line 1070
    if-eqz v7, :cond_0

    #@19
    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@1c
    .line 1056
    :cond_0
    return-object v12

    #@1d
    .line 1058
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@20
    move-result v8

    #@21
    .line 1059
    .local v8, "count":I
    if-lez v8, :cond_4

    #@23
    .line 1060
    new-array v11, v8, [I

    #@25
    .line 1061
    .local v11, "result":[I
    const/4 v10, 0x0

    #@26
    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    #@28
    .line 1062
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    #@2b
    .line 1063
    const/4 v0, 0x0

    #@2c
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    #@2f
    move-result v0

    #@30
    aput v0, v11, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 1061
    add-int/lit8 v10, v10, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1070
    :cond_2
    if-eqz v7, :cond_3

    #@37
    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@3a
    .line 1065
    :cond_3
    return-object v11

    #@3b
    .line 1070
    .end local v10    # "i":I
    .end local v11    # "result":[I
    :cond_4
    if-eqz v7, :cond_5

    #@3d
    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@40
    .line 1074
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "count":I
    :cond_5
    :goto_1
    return-object v12

    #@41
    .line 1067
    :catch_0
    move-exception v9

    #@42
    .line 1068
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v0, "MtpDatabase"

    #@45
    const-string/jumbo v2, "RemoteException in getObjectList"

    #@48
    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    .line 1070
    if-eqz v7, :cond_5

    #@4d
    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@50
    goto :goto_1

    #@51
    .line 1069
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@52
    .line 1070
    if-eqz v7, :cond_6

    #@54
    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@57
    .line 1069
    :cond_6
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    #@0
    .prologue
    .line 596
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 4

    #@0
    .prologue
    .line 709
    const v0, 0xd401

    #@3
    .line 710
    const v1, 0xd402

    #@6
    .line 711
    const/16 v2, 0x5003

    #@8
    .line 712
    const/16 v3, 0x5001

    #@a
    .line 708
    filled-new-array {v0, v1, v2, v3}, [I

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 685
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 703
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    #@5
    return-object v0

    #@6
    .line 691
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    #@8
    return-object v0

    #@9
    .line 695
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    #@b
    return-object v0

    #@c
    .line 701
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    #@e
    return-object v0

    #@f
    .line 685
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0x3811 -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    #@0
    .prologue
    .line 561
    const/16 v0, 0x1b

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    return-object v0

    #@8
    :array_0
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
    .end array-data
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 317
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@2
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 318
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 319
    .local v0, "canonical":Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    #@b
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v5

    #@f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v4

    #@13
    .local v4, "root$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_1

    #@19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Ljava/lang/String;

    #@1f
    .line 320
    .local v3, "root":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 321
    const/4 v5, 0x1

    #@26
    return v5

    #@27
    .line 324
    .end local v0    # "canonical":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "root":Ljava/lang/String;
    .end local v4    # "root$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@28
    .line 327
    :cond_1
    const/4 v5, 0x0

    #@29
    return v5
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 285
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@2
    if-nez v5, :cond_0

    #@4
    const/4 v5, 0x1

    #@5
    return v5

    #@6
    .line 286
    :cond_0
    if-nez p1, :cond_1

    #@8
    const/4 v5, 0x0

    #@9
    return v5

    #@a
    .line 288
    :cond_1
    const/4 v0, 0x0

    #@b
    .line 289
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    .line 290
    .local v2, "pathLength":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@12
    array-length v5, v5

    #@13
    if-ge v1, v5, :cond_2

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 299
    :cond_2
    return v0

    #@18
    .line 291
    :cond_3
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@1a
    aget-object v3, v5, v1

    #@1c
    .line 292
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1f
    move-result v4

    #@20
    .line 293
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_4

    #@22
    .line 294
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v5

    #@26
    const/16 v6, 0x2f

    #@28
    if-ne v5, v6, :cond_4

    #@2a
    .line 295
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v5

    #@2e
    .line 293
    if-eqz v5, :cond_4

    #@30
    .line 296
    const/4 v0, 0x1

    #@31
    .line 290
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 248
    const-string/jumbo v11, "device-properties"

    #@3
    .line 249
    .local v11, "devicePropertiesName":Ljava/lang/String;
    const-string/jumbo v2, "device-properties"

    #@6
    const/4 v3, 0x0

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@c
    move-result-object v2

    #@d
    move-object/from16 v0, p0

    #@f
    iput-object v2, v0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    #@11
    .line 250
    const-string/jumbo v2, "device-properties"

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@19
    move-result-object v10

    #@1a
    .line 252
    .local v10, "databaseFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 255
    const/4 v1, 0x0

    #@21
    .line 256
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    #@22
    .line 258
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "device-properties"

    #@25
    const/4 v3, 0x0

    #@26
    const/4 v4, 0x0

    #@27
    move-object/from16 v0, p1

    #@29
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    #@2c
    move-result-object v1

    #@2d
    .line 259
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_4

    #@2f
    .line 260
    const-string/jumbo v2, "properties"

    #@32
    const/4 v3, 0x3

    #@33
    new-array v3, v3, [Ljava/lang/String;

    #@35
    const-string/jumbo v4, "_id"

    #@38
    const/4 v5, 0x0

    #@39
    aput-object v4, v3, v5

    #@3b
    const-string/jumbo v4, "code"

    #@3e
    const/4 v5, 0x1

    #@3f
    aput-object v4, v3, v5

    #@41
    const-string/jumbo v4, "value"

    #@44
    const/4 v5, 0x2

    #@45
    aput-object v4, v3, v5

    #@47
    .line 261
    const/4 v4, 0x0

    #@48
    const/4 v5, 0x0

    #@49
    const/4 v6, 0x0

    #@4a
    const/4 v7, 0x0

    #@4b
    const/4 v8, 0x0

    #@4c
    .line 260
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@4f
    move-result-object v9

    #@50
    .line 262
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    #@52
    .line 263
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    #@56
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@59
    move-result-object v12

    #@5a
    .line 264
    .local v12, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_3

    #@60
    .line 265
    const/4 v2, 0x1

    #@61
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@64
    move-result-object v14

    #@65
    .line 266
    .local v14, "name":Ljava/lang/String;
    const/4 v2, 0x2

    #@66
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@69
    move-result-object v15

    #@6a
    .line 267
    .local v15, "value":Ljava/lang/String;
    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 272
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@6f
    .line 273
    .local v13, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "MtpDatabase"

    #@72
    const-string/jumbo v3, "failed to migrate device properties"

    #@75
    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    .line 275
    if-eqz v9, :cond_0

    #@7a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@7d
    .line 276
    :cond_0
    if-eqz v1, :cond_1

    #@7f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@82
    .line 278
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string/jumbo v2, "device-properties"

    #@85
    move-object/from16 v0, p1

    #@87
    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    #@8a
    .line 247
    :cond_2
    return-void

    #@8b
    .line 269
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8e
    .line 275
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v9, :cond_5

    #@90
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@93
    .line 276
    :cond_5
    if-eqz v1, :cond_1

    #@95
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@98
    goto :goto_1

    #@99
    .line 274
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    #@9a
    .line 275
    if-eqz v9, :cond_6

    #@9c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@9f
    .line 276
    :cond_6
    if-eqz v1, :cond_7

    #@a1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@a4
    .line 274
    :cond_7
    throw v2
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 305
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    return v2

    #@6
    .line 306
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 307
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 308
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 311
    :cond_2
    return v2
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 18
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 750
    const/4 v8, 0x0

    #@1
    .line 753
    .local v8, "c":Landroid/database/Cursor;
    const/4 v14, 0x0

    #@2
    .line 754
    .local v14, "path":Ljava/lang/String;
    const/4 v1, 0x1

    #@3
    new-array v5, v1, [Ljava/lang/String;

    #@5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v5, v2

    #@c
    .line 756
    .local v5, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@e
    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@14
    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    #@16
    const-string/jumbo v4, "_id=?"

    #@19
    .line 757
    const/4 v6, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    .line 756
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@1e
    move-result-object v8

    #@1f
    .line 758
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    #@21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 759
    const/4 v1, 0x1

    #@28
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v14

    #@2c
    .line 765
    .end local v14    # "path":Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    #@2e
    .line 766
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@31
    .line 769
    :cond_1
    if-nez v14, :cond_4

    #@33
    .line 770
    const/16 v1, 0x2009

    #@35
    return v1

    #@36
    .line 761
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v14    # "path":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@37
    .line 762
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MtpDatabase"

    #@3a
    const-string/jumbo v2, "RemoteException in getObjectFilePath"

    #@3d
    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 763
    const/16 v1, 0x2002

    #@42
    .line 765
    if-eqz v8, :cond_2

    #@44
    .line 766
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@47
    .line 763
    :cond_2
    return v1

    #@48
    .line 764
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@49
    .line 765
    if-eqz v8, :cond_3

    #@4b
    .line 766
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4e
    .line 764
    :cond_3
    throw v1

    #@4f
    .line 774
    .end local v14    # "path":Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, p0

    #@51
    invoke-direct {v0, v14}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_5

    #@57
    .line 775
    const/16 v1, 0x200d

    #@59
    return v1

    #@5a
    .line 779
    :cond_5
    new-instance v13, Ljava/io/File;

    #@5c
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5f
    .line 780
    .local v13, "oldFile":Ljava/io/File;
    const/16 v1, 0x2f

    #@61
    invoke-virtual {v14, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@64
    move-result v10

    #@65
    .line 781
    .local v10, "lastSlash":I
    const/4 v1, 0x1

    #@66
    if-gt v10, v1, :cond_6

    #@68
    .line 782
    const/16 v1, 0x2002

    #@6a
    return v1

    #@6b
    .line 784
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    add-int/lit8 v2, v10, 0x1

    #@72
    const/4 v3, 0x0

    #@73
    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    move-object/from16 v0, p2

    #@7d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v12

    #@85
    .line 785
    .local v12, "newPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    #@87
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8a
    .line 786
    .local v11, "newFile":Ljava/io/File;
    invoke-virtual {v13, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@8d
    move-result v15

    #@8e
    .line 787
    .local v15, "success":Z
    if-nez v15, :cond_7

    #@90
    .line 788
    const-string/jumbo v1, "MtpDatabase"

    #@93
    new-instance v2, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v3, "renaming "

    #@9b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v2

    #@a3
    const-string/jumbo v3, " to "

    #@a6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    const-string/jumbo v3, " failed"

    #@b1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 789
    const/16 v1, 0x2002

    #@be
    return v1

    #@bf
    .line 793
    :cond_7
    new-instance v17, Landroid/content/ContentValues;

    #@c1
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    #@c4
    .line 794
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_data"

    #@c7
    move-object/from16 v0, v17

    #@c9
    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@cc
    .line 795
    const/16 v16, 0x0

    #@ce
    .line 799
    .local v16, "updated":I
    :try_start_2
    move-object/from16 v0, p0

    #@d0
    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@d6
    const-string/jumbo v3, "_id=?"

    #@d9
    move-object/from16 v0, v17

    #@db
    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@de
    move-result v16

    #@df
    .line 803
    :goto_0
    if-nez v16, :cond_8

    #@e1
    .line 804
    const-string/jumbo v1, "MtpDatabase"

    #@e4
    new-instance v2, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v3, "Unable to update path for "

    #@ec
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v2

    #@f0
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v2

    #@f4
    const-string/jumbo v3, " to "

    #@f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v2

    #@ff
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v2

    #@103
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 806
    invoke-virtual {v11, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@109
    .line 807
    const/16 v1, 0x2002

    #@10b
    return v1

    #@10c
    .line 800
    :catch_1
    move-exception v9

    #@10d
    .line 801
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    #@110
    const-string/jumbo v2, "RemoteException in mMediaProvider.update"

    #@113
    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@116
    goto :goto_0

    #@117
    .line 811
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    #@11a
    move-result v1

    #@11b
    if-eqz v1, :cond_b

    #@11d
    .line 813
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    #@120
    move-result-object v1

    #@121
    const-string/jumbo v2, "."

    #@124
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@127
    move-result v1

    #@128
    if-eqz v1, :cond_9

    #@12a
    const-string/jumbo v1, "."

    #@12d
    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@130
    move-result v1

    #@131
    if-eqz v1, :cond_a

    #@133
    .line 833
    :cond_9
    :goto_1
    const/16 v1, 0x2001

    #@135
    return v1

    #@136
    .line 816
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    #@138
    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@13a
    const-string/jumbo v2, "unhide"

    #@13d
    const/4 v3, 0x0

    #@13e
    invoke-virtual {v1, v2, v12, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@141
    goto :goto_1

    #@142
    .line 817
    :catch_2
    move-exception v9

    #@143
    .line 818
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    #@146
    new-instance v2, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v3, "failed to unhide/rescan for "

    #@14e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v2

    #@152
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v2

    #@156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v2

    #@15a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15d
    goto :goto_1

    #@15e
    .line 823
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_b
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    #@161
    move-result-object v1

    #@162
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@164
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@167
    move-result-object v1

    #@168
    const-string/jumbo v2, ".nomedia"

    #@16b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16e
    move-result v1

    #@16f
    if-eqz v1, :cond_9

    #@171
    .line 824
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@173
    invoke-virtual {v12, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@176
    move-result-object v1

    #@177
    const-string/jumbo v2, ".nomedia"

    #@17a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17d
    move-result v1

    #@17e
    if-nez v1, :cond_9

    #@180
    .line 826
    :try_start_4
    move-object/from16 v0, p0

    #@182
    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@184
    const-string/jumbo v2, "unhide"

    #@187
    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@18a
    move-result-object v3

    #@18b
    const/4 v4, 0x0

    #@18c
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@18f
    goto :goto_1

    #@190
    .line 827
    :catch_3
    move-exception v9

    #@191
    .line 828
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    #@194
    new-instance v2, Ljava/lang/StringBuilder;

    #@196
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    const-string/jumbo v3, "failed to unhide/rescan for "

    #@19c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v2

    #@1a0
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v2

    #@1a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v2

    #@1a8
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ab
    goto :goto_1
.end method

.method private sessionEnded()V
    .locals 3

    #@0
    .prologue
    .line 1102
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1103
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@6
    new-instance v1, Landroid/content/Intent;

    #@8
    const-string/jumbo v2, "android.provider.action.MTP_SESSION_END"

    #@b
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@11
    .line 1104
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@14
    .line 1101
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    #@0
    .prologue
    .line 1098
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@3
    .line 1097
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 880
    packed-switch p1, :pswitch_data_0

    #@3
    .line 890
    const/16 v1, 0x200a

    #@5
    return v1

    #@6
    .line 884
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    #@8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 885
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@13
    .line 886
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    const/16 v1, 0x2001

    #@1b
    :goto_0
    return v1

    #@1c
    .line 887
    :cond_0
    const/16 v1, 0x2002

    #@1e
    goto :goto_0

    #@1f
    .line 880
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 838
    packed-switch p2, :pswitch_data_0

    #@3
    .line 843
    const v0, 0xa80a

    #@6
    return v0

    #@7
    .line 840
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 838
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 10
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    #@0
    .prologue
    .line 1078
    const/4 v6, 0x1

    #@1
    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@3
    .line 1079
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@5
    int-to-long v8, p1

    #@6
    invoke-static {v6, v8, v9}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    #@9
    move-result-object v3

    #@a
    .line 1080
    .local v3, "uri":Landroid/net/Uri;
    array-length v0, p2

    #@b
    .line 1081
    .local v0, "count":I
    new-array v5, v0, [Landroid/content/ContentValues;

    #@d
    .line 1082
    .local v5, "valuesList":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@10
    .line 1083
    new-instance v4, Landroid/content/ContentValues;

    #@12
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    #@15
    .line 1084
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "_id"

    #@18
    aget v7, p2, v2

    #@1a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@21
    .line 1085
    aput-object v4, v5, v2

    #@23
    .line 1082
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1088
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@28
    invoke-virtual {v6, v3, v5}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result v6

    #@2c
    if-lez v6, :cond_1

    #@2e
    .line 1089
    const/16 v6, 0x2001

    #@30
    return v6

    #@31
    .line 1091
    :catch_0
    move-exception v1

    #@32
    .line 1092
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MtpDatabase"

    #@35
    const-string/jumbo v7, "RemoteException in setObjectReferences"

    #@38
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 1094
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    #@3d
    return v6
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 239
    return-void
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 222
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 223
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    #@11
    invoke-virtual {v0}, Landroid/media/MediaScanner;->close()V

    #@14
    .line 224
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    #@16
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    #@19
    .line 225
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    #@1c
    .line 220
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 233
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 235
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 230
    return-void

    #@c
    .line 234
    :catchall_0
    move-exception v0

    #@d
    .line 235
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 234
    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 243
    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 5
    .param p1, "server"    # Landroid/mtp/MtpServer;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    #@2
    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@4
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 213
    :goto_0
    if-eqz p1, :cond_0

    #@b
    .line 214
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@d
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    #@f
    .line 215
    new-instance v3, Landroid/content/IntentFilter;

    #@11
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    #@14
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@17
    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1a
    .line 202
    :cond_0
    return-void

    #@1b
    .line 208
    :catch_0
    move-exception v0

    #@1c
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
