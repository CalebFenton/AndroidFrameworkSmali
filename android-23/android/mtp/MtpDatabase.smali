.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


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

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/IContentProvider;

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
    .line 83
    new-array v0, v3, [Ljava/lang/String;

    #@6
    .line 84
    const-string/jumbo v1, "_id"

    #@9
    aput-object v1, v0, v2

    #@b
    .line 83
    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    #@d
    .line 86
    new-array v0, v4, [Ljava/lang/String;

    #@f
    .line 87
    const-string/jumbo v1, "_id"

    #@12
    aput-object v1, v0, v2

    #@14
    .line 88
    const-string/jumbo v1, "_data"

    #@17
    aput-object v1, v0, v3

    #@19
    .line 86
    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    #@1b
    .line 90
    new-array v0, v4, [Ljava/lang/String;

    #@1d
    .line 91
    const-string/jumbo v1, "_id"

    #@20
    aput-object v1, v0, v2

    #@22
    .line 92
    const-string/jumbo v1, "format"

    #@25
    aput-object v1, v0, v3

    #@27
    .line 90
    sput-object v0, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    #@29
    .line 94
    new-array v0, v5, [Ljava/lang/String;

    #@2b
    .line 95
    const-string/jumbo v1, "_id"

    #@2e
    aput-object v1, v0, v2

    #@30
    .line 96
    const-string/jumbo v1, "_data"

    #@33
    aput-object v1, v0, v3

    #@35
    .line 97
    const-string/jumbo v1, "format"

    #@38
    aput-object v1, v0, v4

    #@3a
    .line 94
    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    #@3c
    .line 99
    const/4 v0, 0x7

    #@3d
    new-array v0, v0, [Ljava/lang/String;

    #@3f
    .line 100
    const-string/jumbo v1, "_id"

    #@42
    aput-object v1, v0, v2

    #@44
    .line 101
    const-string/jumbo v1, "storage_id"

    #@47
    aput-object v1, v0, v3

    #@49
    .line 102
    const-string/jumbo v1, "format"

    #@4c
    aput-object v1, v0, v4

    #@4e
    .line 103
    const-string/jumbo v1, "parent"

    #@51
    aput-object v1, v0, v5

    #@53
    .line 104
    const-string/jumbo v1, "_data"

    #@56
    const/4 v2, 0x4

    #@57
    aput-object v1, v0, v2

    #@59
    .line 105
    const-string/jumbo v1, "date_added"

    #@5c
    const/4 v2, 0x5

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 106
    const-string/jumbo v1, "date_modified"

    #@62
    const/4 v2, 0x6

    #@63
    aput-object v1, v0, v2

    #@65
    .line 99
    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    #@67
    .line 131
    const-string/jumbo v0, "media_jni"

    #@6a
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6d
    .line 591
    const/16 v0, 0xb

    #@6f
    new-array v0, v0, [I

    #@71
    fill-array-data v0, :array_0

    #@74
    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    #@76
    .line 607
    const/16 v0, 0x18

    #@78
    new-array v0, v0, [I

    #@7a
    fill-array-data v0, :array_1

    #@7d
    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    #@7f
    .line 637
    const/16 v0, 0xf

    #@81
    new-array v0, v0, [I

    #@83
    fill-array-data v0, :array_2

    #@86
    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    #@88
    .line 658
    const/16 v0, 0xc

    #@8a
    new-array v0, v0, [I

    #@8c
    fill-array-data v0, :array_3

    #@8f
    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    #@91
    .line 48
    return-void

    #@92
    .line 591
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
    .line 607
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
    .line 637
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
    .line 658
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
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    new-instance v10, Ljava/util/HashMap;

    #@5
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    #@a
    .line 70
    new-instance v10, Ljava/util/HashMap;

    #@c
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 69
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    #@11
    .line 74
    new-instance v10, Ljava/util/HashMap;

    #@13
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@16
    .line 73
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    #@18
    .line 134
    new-instance v10, Landroid/mtp/MtpDatabase$1;

    #@1a
    invoke-direct {v10, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    #@1d
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    #@1f
    .line 155
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    #@22
    .line 157
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@24
    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@2a
    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2d
    move-result-object v10

    #@2e
    const-string/jumbo v11, "media"

    #@31
    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    #@34
    move-result-object v10

    #@35
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@37
    .line 160
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@39
    .line 161
    move-object/from16 v0, p3

    #@3b
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    #@3d
    .line 162
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    #@40
    move-result-object v10

    #@41
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@43
    .line 163
    new-instance v10, Landroid/media/MediaScanner;

    #@45
    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    #@48
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    #@4a
    .line 165
    move-object/from16 v0, p4

    #@4c
    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@4e
    .line 166
    if-eqz p4, :cond_2

    #@50
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    .line 169
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "("

    #@58
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 170
    move-object/from16 v0, p4

    #@5d
    array-length v2, v0

    #@5e
    .line 171
    .local v2, "count":I
    const/4 v4, 0x0

    #@5f
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    #@61
    .line 172
    const-string/jumbo v10, "_data=? OR _data LIKE ?"

    #@64
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 174
    add-int/lit8 v10, v2, -0x1

    #@69
    if-eq v4, v10, :cond_0

    #@6b
    .line 175
    const-string/jumbo v10, " OR "

    #@6e
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 171
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@73
    goto :goto_0

    #@74
    .line 178
    :cond_1
    const-string/jumbo v10, ")"

    #@77
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v10

    #@7e
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    #@80
    .line 182
    mul-int/lit8 v10, v2, 0x2

    #@82
    new-array v10, v10, [Ljava/lang/String;

    #@84
    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@86
    .line 183
    const/4 v4, 0x0

    #@87
    const/4 v5, 0x0

    #@88
    .local v5, "j":I
    move v6, v5

    #@89
    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    #@8b
    .line 184
    aget-object v9, p4, v4

    #@8d
    .line 185
    .local v9, "path":Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@8f
    add-int/lit8 v5, v6, 0x1

    #@91
    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v9, v10, v6

    #@93
    .line 186
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@95
    add-int/lit8 v6, v5, 0x1

    #@97
    .end local v5    # "j":I
    .restart local v6    # "j":I
    new-instance v11, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v11

    #@a0
    const-string/jumbo v12, "/%"

    #@a3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v11

    #@a7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v11

    #@ab
    aput-object v11, v10, v5

    #@ad
    .line 183
    add-int/lit8 v4, v4, 0x1

    #@af
    goto :goto_1

    #@b0
    .line 191
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b3
    move-result-object v10

    #@b4
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b7
    move-result-object v10

    #@b8
    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@ba
    .line 192
    .local v8, "locale":Ljava/util/Locale;
    if-eqz v8, :cond_3

    #@bc
    .line 193
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@bf
    move-result-object v7

    #@c0
    .line 194
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    .line 195
    .local v3, "country":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@c6
    .line 196
    if-eqz v3, :cond_4

    #@c8
    .line 197
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    #@ca
    new-instance v11, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v11

    #@d3
    const-string/jumbo v12, "_"

    #@d6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v11

    #@da
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v11

    #@de
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v11

    #@e2
    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    #@e5
    .line 203
    .end local v3    # "country":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    #@e8
    .line 154
    return-void

    #@e9
    .line 199
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v7    # "language":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    #@eb
    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    #@ee
    goto :goto_2
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    #@0
    .prologue
    .line 326
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 327
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
    .line 328
    const/4 v0, -0x1

    #@21
    return v0

    #@22
    .line 331
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
    .line 334
    :cond_1
    if-eqz p1, :cond_4

    #@2c
    .line 335
    const/4 v8, 0x0

    #@2d
    .line 337
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@2f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@31
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@33
    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    #@35
    const-string/jumbo v4, "_data=?"

    #@38
    .line 338
    const/4 v5, 0x1

    #@39
    new-array v5, v5, [Ljava/lang/String;

    #@3b
    const/4 v6, 0x0

    #@3c
    aput-object p1, v5, v6

    #@3e
    const/4 v6, 0x0

    #@3f
    const/4 v7, 0x0

    #@40
    .line 337
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@43
    move-result-object v8

    #@44
    .line 339
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    #@46
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    #@49
    move-result v0

    #@4a
    if-lez v0, :cond_3

    #@4c
    .line 340
    const-string/jumbo v0, "MtpDatabase"

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "file already exists in beginSendObject: "

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    .line 341
    const/4 v0, -0x1

    #@67
    .line 346
    if-eqz v8, :cond_2

    #@69
    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@6c
    .line 341
    :cond_2
    return v0

    #@6d
    .line 346
    :cond_3
    if-eqz v8, :cond_4

    #@6f
    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@72
    .line 352
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_0
    const/4 v0, 0x1

    #@73
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@75
    .line 353
    new-instance v11, Landroid/content/ContentValues;

    #@77
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    #@7a
    .line 354
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "_data"

    #@7d
    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@80
    .line 355
    const-string/jumbo v0, "format"

    #@83
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@8a
    .line 356
    const-string/jumbo v0, "parent"

    #@8d
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@94
    .line 357
    const-string/jumbo v0, "storage_id"

    #@97
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@9e
    .line 358
    const-string/jumbo v0, "_size"

    #@a1
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@a8
    .line 359
    const-string/jumbo v0, "date_modified"

    #@ab
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@b2
    .line 362
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@b4
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@b6
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@b8
    invoke-interface {v0, v1, v2, v11}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@bb
    move-result-object v10

    #@bc
    .line 363
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_6

    #@be
    .line 364
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@c1
    move-result-object v0

    #@c2
    const/4 v1, 0x2

    #@c3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c6
    move-result-object v0

    #@c7
    check-cast v0, Ljava/lang/String;

    #@c9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@cc
    move-result v0

    #@cd
    return v0

    #@ce
    .line 343
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    #@cf
    .line 344
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v0, "MtpDatabase"

    #@d2
    const-string/jumbo v1, "RemoteException in beginSendObject"

    #@d5
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d8
    .line 346
    if-eqz v8, :cond_4

    #@da
    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@dd
    goto :goto_0

    #@de
    .line 345
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@df
    .line 346
    if-eqz v8, :cond_5

    #@e1
    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@e4
    .line 345
    :cond_5
    throw v0

    #@e5
    .line 366
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_6
    const/4 v0, -0x1

    #@e6
    return v0

    #@e7
    .line 368
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    #@e8
    .line 369
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MtpDatabase"

    #@eb
    const-string/jumbo v1, "RemoteException in beginSendObject"

    #@ee
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f1
    .line 370
    const/4 v0, -0x1

    #@f2
    return v0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 11
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
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v0, -0x1

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 414
    if-ne p1, v0, :cond_6

    #@7
    .line 416
    if-nez p2, :cond_3

    #@9
    .line 418
    if-nez p3, :cond_1

    #@b
    .line 420
    const/4 v4, 0x0

    #@c
    .line 421
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    #@d
    .line 485
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 486
    if-nez v4, :cond_c

    #@13
    .line 487
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    #@15
    .line 488
    .local v4, "where":Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@17
    .line 506
    .end local v4    # "where":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@19
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@1b
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@1d
    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    #@1f
    move-object v7, v6

    #@20
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 423
    :cond_1
    if-ne p3, v0, :cond_2

    #@27
    .line 425
    const/4 p3, 0x0

    #@28
    .line 427
    :cond_2
    const-string/jumbo v4, "parent=?"

    #@2b
    .line 428
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    #@2d
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    aput-object v0, v5, v1

    #@33
    .local v5, "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@34
    .line 432
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    #@36
    .line 434
    const-string/jumbo v4, "format=?"

    #@39
    .line 435
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    #@3b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    aput-object v0, v5, v1

    #@41
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@42
    .line 437
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    #@44
    .line 439
    const/4 p3, 0x0

    #@45
    .line 441
    :cond_5
    const-string/jumbo v4, "format=? AND parent=?"

    #@48
    .line 442
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    #@4a
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    aput-object v0, v5, v1

    #@50
    .line 443
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    aput-object v0, v5, v2

    #@56
    .line 442
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@57
    .line 448
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    #@59
    .line 450
    if-nez p3, :cond_7

    #@5b
    .line 452
    const-string/jumbo v4, "storage_id=?"

    #@5e
    .line 453
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    #@60
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    aput-object v0, v5, v1

    #@66
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@67
    .line 455
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    #@69
    .line 457
    const/4 p3, 0x0

    #@6a
    .line 459
    :cond_8
    const-string/jumbo v4, "storage_id=? AND parent=?"

    #@6d
    .line 460
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    #@6f
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    aput-object v0, v5, v1

    #@75
    .line 461
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    aput-object v0, v5, v2

    #@7b
    .line 460
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    #@7c
    .line 465
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    #@7e
    .line 467
    const-string/jumbo v4, "storage_id=? AND format=?"

    #@81
    .line 468
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    #@83
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    aput-object v0, v5, v1

    #@89
    .line 469
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    aput-object v0, v5, v2

    #@8f
    .line 468
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    #@91
    .line 471
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    #@93
    .line 473
    const/4 p3, 0x0

    #@94
    .line 475
    :cond_b
    const-string/jumbo v4, "storage_id=? AND format=? AND parent=?"

    #@97
    .line 476
    .restart local v4    # "where":Ljava/lang/String;
    const/4 v0, 0x3

    #@98
    new-array v5, v0, [Ljava/lang/String;

    #@9a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    aput-object v0, v5, v1

    #@a0
    .line 477
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    aput-object v0, v5, v2

    #@a6
    .line 478
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a9
    move-result-object v0

    #@aa
    aput-object v0, v5, v3

    #@ac
    .line 476
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    #@ae
    .line 490
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    const-string/jumbo v1, " AND "

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v4

    #@c8
    .line 494
    .restart local v4    # "where":Ljava/lang/String;
    array-length v0, v5

    #@c9
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@cb
    array-length v1, v1

    #@cc
    add-int/2addr v0, v1

    #@cd
    new-array v10, v0, [Ljava/lang/String;

    #@cf
    .line 496
    .local v10, "newWhereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    #@d0
    .local v8, "i":I
    :goto_2
    array-length v0, v5

    #@d1
    if-ge v8, v0, :cond_d

    #@d3
    .line 497
    aget-object v0, v5, v8

    #@d5
    aput-object v0, v10, v8

    #@d7
    .line 496
    add-int/lit8 v8, v8, 0x1

    #@d9
    goto :goto_2

    #@da
    .line 499
    :cond_d
    const/4 v9, 0x0

    #@db
    .local v9, "j":I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@dd
    array-length v0, v0

    #@de
    if-ge v9, v0, :cond_e

    #@e0
    .line 500
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    #@e2
    aget-object v0, v0, v9

    #@e4
    aput-object v0, v10, v8

    #@e6
    .line 499
    add-int/lit8 v8, v8, 0x1

    #@e8
    add-int/lit8 v9, v9, 0x1

    #@ea
    goto :goto_3

    #@eb
    .line 502
    :cond_e
    move-object v5, v10

    #@ec
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 17
    .param p1, "handle"    # I

    #@0
    .prologue
    .line 981
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p0

    #@3
    iput-boolean v2, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@5
    .line 982
    const/4 v15, 0x0

    #@6
    .line 983
    .local v15, "path":Ljava/lang/String;
    const/4 v13, 0x0

    #@7
    .line 985
    .local v13, "format":I
    const/4 v10, 0x0

    #@8
    .line 987
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@14
    sget-object v5, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    #@16
    .line 988
    const-string/jumbo v6, "_id=?"

    #@19
    const/4 v7, 0x1

    #@1a
    new-array v7, v7, [Ljava/lang/String;

    #@1c
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    const/4 v9, 0x0

    #@21
    aput-object v8, v7, v9

    #@23
    const/4 v8, 0x0

    #@24
    const/4 v9, 0x0

    #@25
    .line 987
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@28
    move-result-object v10

    #@29
    .line 989
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    #@2b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 992
    const/4 v2, 0x1

    #@32
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@35
    move-result-object v15

    #@36
    .line 993
    .local v15, "path":Ljava/lang/String;
    const/4 v2, 0x2

    #@37
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result v13

    #@3b
    .line 998
    if-eqz v15, :cond_0

    #@3d
    if-nez v13, :cond_4

    #@3f
    .line 999
    :cond_0
    const/16 v2, 0x2002

    #@41
    .line 1036
    if-eqz v10, :cond_1

    #@43
    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@46
    .line 999
    :cond_1
    return v2

    #@47
    .line 995
    .local v15, "path":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x2009

    #@49
    .line 1036
    if-eqz v10, :cond_3

    #@4b
    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@4e
    .line 995
    :cond_3
    return v2

    #@4f
    .line 1003
    .local v15, "path":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    #@51
    invoke-direct {v0, v15}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_6

    #@57
    .line 1004
    const/16 v2, 0x200d

    #@59
    .line 1036
    if-eqz v10, :cond_5

    #@5b
    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@5e
    .line 1004
    :cond_5
    return v2

    #@5f
    .line 1007
    :cond_6
    const/16 v2, 0x3001

    #@61
    if-ne v13, v2, :cond_7

    #@63
    .line 1009
    :try_start_2
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@67
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    #@6a
    move-result-object v16

    #@6b
    .line 1010
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@6d
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@6f
    move-object/from16 v0, p0

    #@71
    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@73
    .line 1013
    const-string/jumbo v4, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    #@76
    .line 1014
    const/4 v5, 0x3

    #@77
    new-array v5, v5, [Ljava/lang/String;

    #@79
    new-instance v6, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    const-string/jumbo v7, "/%"

    #@85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    const/4 v7, 0x0

    #@8e
    aput-object v6, v5, v7

    #@90
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@93
    move-result v6

    #@94
    add-int/lit8 v6, v6, 0x1

    #@96
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@99
    move-result-object v6

    #@9a
    const/4 v7, 0x1

    #@9b
    aput-object v6, v5, v7

    #@9d
    new-instance v6, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    const-string/jumbo v7, "/"

    #@a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    const/4 v7, 0x2

    #@b2
    aput-object v6, v5, v7

    #@b4
    .line 1010
    move-object/from16 v0, v16

    #@b6
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@b9
    move-result v11

    #@ba
    .line 1017
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    #@bc
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@be
    move/from16 v0, p1

    #@c0
    int-to-long v4, v0

    #@c1
    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    #@c4
    move-result-object v16

    #@c5
    .line 1018
    .restart local v16    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@c7
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@c9
    move-object/from16 v0, p0

    #@cb
    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@cd
    const/4 v4, 0x0

    #@ce
    const/4 v5, 0x0

    #@cf
    move-object/from16 v0, v16

    #@d1
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@d4
    move-result v2

    #@d5
    if-lez v2, :cond_b

    #@d7
    .line 1019
    const/16 v2, 0x3001

    #@d9
    if-eq v13, v2, :cond_8

    #@db
    .line 1020
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@dd
    invoke-virtual {v15, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e0
    move-result-object v2

    #@e1
    const-string/jumbo v3, "/.nomedia"

    #@e4
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e7
    move-result v2

    #@e8
    .line 1019
    if-eqz v2, :cond_8

    #@ea
    .line 1022
    :try_start_3
    const-string/jumbo v2, "/"

    #@ed
    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@f0
    move-result v2

    #@f1
    const/4 v3, 0x0

    #@f2
    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f5
    move-result-object v14

    #@f6
    .line 1023
    .local v14, "parentPath":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f8
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@fe
    const-string/jumbo v4, "unhide"

    #@101
    const/4 v5, 0x0

    #@102
    invoke-interface {v2, v3, v4, v14, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@105
    .line 1028
    .end local v14    # "parentPath":Ljava/lang/String;
    :cond_8
    :goto_0
    const/16 v2, 0x2001

    #@107
    .line 1036
    if-eqz v10, :cond_9

    #@109
    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@10c
    .line 1028
    :cond_9
    return v2

    #@10d
    .line 1024
    :catch_0
    move-exception v12

    #@10e
    .line 1025
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "MtpDatabase"

    #@111
    new-instance v3, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v4, "failed to unhide/rescan for "

    #@119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v3

    #@11d
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v3

    #@121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v3

    #@125
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@128
    goto :goto_0

    #@129
    .line 1032
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v12

    #@12a
    .line 1033
    .restart local v12    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "MtpDatabase"

    #@12d
    const-string/jumbo v3, "RemoteException in deleteFile"

    #@130
    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@133
    .line 1034
    const/16 v2, 0x2002

    #@135
    .line 1036
    if-eqz v10, :cond_a

    #@137
    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@13a
    .line 1034
    :cond_a
    return v2

    #@13b
    .line 1030
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "uri":Landroid/net/Uri;
    :cond_b
    const/16 v2, 0x2009

    #@13d
    .line 1036
    if-eqz v10, :cond_c

    #@13f
    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@142
    .line 1030
    :cond_c
    return v2

    #@143
    .line 1035
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    #@144
    .line 1036
    if-eqz v10, :cond_d

    #@146
    .line 1037
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@149
    .line 1035
    :cond_d
    throw v2
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
    .line 375
    if-eqz p4, :cond_3

    #@3
    .line 378
    const v5, 0xba05

    #@6
    if-ne p3, v5, :cond_2

    #@8
    .line 380
    move-object v2, p1

    #@9
    .line 381
    .local v2, "name":Ljava/lang/String;
    const/16 v5, 0x2f

    #@b
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@e
    move-result v1

    #@f
    .line 382
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    #@11
    .line 383
    add-int/lit8 v5, v1, 0x1

    #@13
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 386
    :cond_0
    const-string/jumbo v5, ".pla"

    #@1a
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 387
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
    .line 390
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    #@2c
    const/4 v5, 0x1

    #@2d
    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@30
    .line 391
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "_data"

    #@33
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 392
    const-string/jumbo v5, "name"

    #@39
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 393
    const-string/jumbo v5, "format"

    #@3f
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@46
    .line 394
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
    .line 395
    const-string/jumbo v5, "media_scanner_new_object_id"

    #@5a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@61
    .line 397
    :try_start_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@63
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@65
    .line 398
    sget-object v7, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@67
    .line 397
    invoke-interface {v5, v6, v7, v4}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    move-result-object v3

    #@6b
    .line 374
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    #@6c
    .line 399
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    #@6d
    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "MtpDatabase"

    #@70
    const-string/jumbo v6, "RemoteException in endSendObject"

    #@73
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    goto :goto_0

    #@77
    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    #@79
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@7b
    invoke-virtual {v5, p1, v6, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    #@7e
    goto :goto_0

    #@7f
    .line 406
    :cond_3
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    #@82
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
    .line 840
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 867
    const/16 v6, 0x200a

    #@8
    return v6

    #@9
    .line 844
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
    .line 845
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    .line 846
    .local v3, "length":I
    const/16 v6, 0xff

    #@1c
    if-le v3, v6, :cond_0

    #@1e
    .line 847
    const/16 v3, 0xff

    #@20
    .line 849
    :cond_0
    invoke-virtual {v4, v9, v3, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    #@23
    .line 850
    aput-char v9, p3, v3

    #@25
    .line 851
    return v10

    #@26
    .line 855
    .end local v3    # "length":I
    .end local v4    # "value":Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@28
    .line 856
    const-string/jumbo v7, "window"

    #@2b
    .line 855
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
    .line 857
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    #@38
    move-result v5

    #@39
    .line 858
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    #@3c
    move-result v1

    #@3d
    .line 859
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
    .line 860
    .local v2, "imageSize":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@60
    move-result v6

    #@61
    invoke-virtual {v2, v9, v6, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    #@64
    .line 861
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@67
    move-result v6

    #@68
    aput-char v9, p3, v6

    #@6a
    .line 862
    return v10

    #@6b
    .line 840
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
    .line 537
    const/4 v0, 0x0

    #@1
    .line 539
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    #@4
    move-result-object v0

    #@5
    .line 540
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    #@7
    .line 541
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v2

    #@b
    .line 546
    if-eqz v0, :cond_0

    #@d
    .line 547
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@10
    .line 541
    :cond_0
    return v2

    #@11
    .line 546
    :cond_1
    if-eqz v0, :cond_2

    #@13
    .line 547
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@16
    .line 550
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v2, -0x1

    #@17
    return v2

    #@18
    .line 543
    :catch_0
    move-exception v1

    #@19
    .line 544
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
    .line 546
    if-eqz v0, :cond_2

    #@24
    .line 547
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@27
    goto :goto_0

    #@28
    .line 545
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@29
    .line 546
    if-eqz v0, :cond_3

    #@2b
    .line 547
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@2e
    .line 545
    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 12
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    #@0
    .prologue
    const/16 v11, 0x2001

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 926
    if-nez p1, :cond_0

    #@6
    .line 928
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
    .line 929
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    #@13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@16
    move-result v0

    #@17
    aput-char v2, p2, v0

    #@19
    .line 930
    const-wide/16 v0, 0x0

    #@1b
    aput-wide v0, p3, v2

    #@1d
    .line 931
    const-wide/16 v0, 0x3001

    #@1f
    aput-wide v0, p3, v3

    #@21
    .line 932
    return v11

    #@22
    .line 934
    :cond_0
    const/4 v8, 0x0

    #@23
    .line 936
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@25
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@27
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@29
    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    #@2b
    .line 937
    const-string/jumbo v4, "_id=?"

    #@2e
    const/4 v5, 0x1

    #@2f
    new-array v5, v5, [Ljava/lang/String;

    #@31
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    const/4 v7, 0x0

    #@36
    aput-object v6, v5, v7

    #@38
    const/4 v6, 0x0

    #@39
    const/4 v7, 0x0

    #@3a
    .line 936
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@3d
    move-result-object v8

    #@3e
    .line 938
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    #@40
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 939
    const/4 v0, 0x1

    #@47
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4a
    move-result-object v10

    #@4b
    .line 940
    .local v10, "path":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@4e
    move-result v0

    #@4f
    const/4 v1, 0x0

    #@50
    const/4 v2, 0x0

    #@51
    invoke-virtual {v10, v1, v0, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@54
    .line 941
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@57
    move-result v0

    #@58
    const/4 v1, 0x0

    #@59
    aput-char v1, p2, v0

    #@5b
    .line 944
    new-instance v0, Ljava/io/File;

    #@5d
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@60
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@63
    move-result-wide v0

    #@64
    const/4 v2, 0x0

    #@65
    aput-wide v0, p3, v2

    #@67
    .line 945
    const/4 v0, 0x2

    #@68
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    #@6b
    move-result-wide v0

    #@6c
    const/4 v2, 0x1

    #@6d
    aput-wide v0, p3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6f
    .line 954
    if-eqz v8, :cond_1

    #@71
    .line 955
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@74
    .line 946
    :cond_1
    return v11

    #@75
    .line 948
    .end local v10    # "path":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x2009

    #@77
    .line 954
    if-eqz v8, :cond_3

    #@79
    .line 955
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@7c
    .line 948
    :cond_3
    return v0

    #@7d
    .line 950
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    #@7e
    .line 951
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "MtpDatabase"

    #@81
    const-string/jumbo v1, "RemoteException in getObjectFilePath"

    #@84
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    .line 952
    const/16 v0, 0x2002

    #@89
    .line 954
    if-eqz v8, :cond_4

    #@8b
    .line 955
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@8e
    .line 952
    :cond_4
    return v0

    #@8f
    .line 953
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@90
    .line 954
    if-eqz v8, :cond_5

    #@92
    .line 955
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@95
    .line 953
    :cond_5
    throw v0
.end method

.method private getObjectFormat(I)I
    .locals 11
    .param p1, "handle"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 961
    const/4 v8, 0x0

    #@2
    .line 963
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@4
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@6
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@8
    sget-object v3, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    #@a
    .line 964
    const-string/jumbo v4, "_id=?"

    #@d
    const/4 v5, 0x1

    #@e
    new-array v5, v5, [Ljava/lang/String;

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    const/4 v7, 0x0

    #@15
    aput-object v6, v5, v7

    #@17
    const/4 v6, 0x0

    #@18
    const/4 v7, 0x0

    #@19
    .line 963
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@1c
    move-result-object v8

    #@1d
    .line 965
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    #@1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 966
    const/4 v0, 0x1

    #@26
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v0

    #@2a
    .line 974
    if-eqz v8, :cond_0

    #@2c
    .line 975
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@2f
    .line 966
    :cond_0
    return v0

    #@30
    .line 974
    :cond_1
    if-eqz v8, :cond_2

    #@32
    .line 975
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@35
    .line 968
    :cond_2
    return v10

    #@36
    .line 970
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    #@37
    .line 971
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "MtpDatabase"

    #@3a
    const-string/jumbo v1, "RemoteException in getObjectFilePath"

    #@3d
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 974
    if-eqz v8, :cond_3

    #@42
    .line 975
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@45
    .line 972
    :cond_3
    return v10

    #@46
    .line 973
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@47
    .line 974
    if-eqz v8, :cond_4

    #@49
    .line 975
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@4c
    .line 973
    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 16
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    #@0
    .prologue
    .line 887
    const/4 v10, 0x0

    #@1
    .line 889
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@5
    move-object/from16 v0, p0

    #@7
    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@9
    move-object/from16 v0, p0

    #@b
    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@d
    sget-object v5, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    #@f
    .line 890
    const-string/jumbo v6, "_id=?"

    #@12
    const/4 v7, 0x1

    #@13
    new-array v7, v7, [Ljava/lang/String;

    #@15
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@18
    move-result-object v8

    #@19
    const/4 v9, 0x0

    #@1a
    aput-object v8, v7, v9

    #@1c
    const/4 v8, 0x0

    #@1d
    const/4 v9, 0x0

    #@1e
    .line 889
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@21
    move-result-object v10

    #@22
    .line 891
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_4

    #@24
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_4

    #@2a
    .line 892
    const/4 v2, 0x1

    #@2b
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    #@2e
    move-result v2

    #@2f
    const/4 v3, 0x0

    #@30
    aput v2, p2, v3

    #@32
    .line 893
    const/4 v2, 0x2

    #@33
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    #@36
    move-result v2

    #@37
    const/4 v3, 0x1

    #@38
    aput v2, p2, v3

    #@3a
    .line 894
    const/4 v2, 0x3

    #@3b
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    #@3e
    move-result v2

    #@3f
    const/4 v3, 0x2

    #@40
    aput v2, p2, v3

    #@42
    .line 897
    const/4 v2, 0x4

    #@43
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@46
    move-result-object v14

    #@47
    .line 898
    .local v14, "path":Ljava/lang/String;
    const/16 v2, 0x2f

    #@49
    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@4c
    move-result v13

    #@4d
    .line 899
    .local v13, "lastSlash":I
    if-ltz v13, :cond_3

    #@4f
    add-int/lit8 v15, v13, 0x1

    #@51
    .line 900
    .local v15, "start":I
    :goto_0
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@54
    move-result v12

    #@55
    .line 901
    .local v12, "end":I
    sub-int v2, v12, v15

    #@57
    const/16 v3, 0xff

    #@59
    if-le v2, v3, :cond_0

    #@5b
    .line 902
    add-int/lit16 v12, v15, 0xff

    #@5d
    .line 904
    :cond_0
    const/4 v2, 0x0

    #@5e
    move-object/from16 v0, p3

    #@60
    invoke-virtual {v14, v15, v12, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@63
    .line 905
    sub-int v2, v12, v15

    #@65
    const/4 v3, 0x0

    #@66
    aput-char v3, p3, v2

    #@68
    .line 907
    const/4 v2, 0x5

    #@69
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    #@6c
    move-result-wide v2

    #@6d
    const/4 v4, 0x0

    #@6e
    aput-wide v2, p4, v4

    #@70
    .line 908
    const/4 v2, 0x6

    #@71
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    #@74
    move-result-wide v2

    #@75
    const/4 v4, 0x1

    #@76
    aput-wide v2, p4, v4

    #@78
    .line 910
    const/4 v2, 0x0

    #@79
    aget-wide v2, p4, v2

    #@7b
    const-wide/16 v4, 0x0

    #@7d
    cmp-long v2, v2, v4

    #@7f
    if-nez v2, :cond_1

    #@81
    .line 911
    const/4 v2, 0x1

    #@82
    aget-wide v2, p4, v2

    #@84
    const/4 v4, 0x0

    #@85
    aput-wide v2, p4, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@87
    .line 913
    :cond_1
    const/4 v2, 0x1

    #@88
    .line 918
    if-eqz v10, :cond_2

    #@8a
    .line 919
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@8d
    .line 913
    :cond_2
    return v2

    #@8e
    .line 899
    .end local v12    # "end":I
    .end local v15    # "start":I
    :cond_3
    const/4 v15, 0x0

    #@8f
    .restart local v15    # "start":I
    goto :goto_0

    #@90
    .line 918
    .end local v13    # "lastSlash":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "start":I
    :cond_4
    if-eqz v10, :cond_5

    #@92
    .line 919
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@95
    .line 922
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_1
    const/4 v2, 0x0

    #@96
    return v2

    #@97
    .line 915
    :catch_0
    move-exception v11

    #@98
    .line 916
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "MtpDatabase"

    #@9b
    const-string/jumbo v3, "RemoteException in getObjectInfo"

    #@9e
    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a1
    .line 918
    if-eqz v10, :cond_5

    #@a3
    .line 919
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@a6
    goto :goto_1

    #@a7
    .line 917
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@a8
    .line 918
    if-eqz v10, :cond_6

    #@aa
    .line 919
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@ad
    .line 917
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
    .line 511
    const/4 v0, 0x0

    #@2
    .line 513
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    move-result-object v0

    #@6
    .line 514
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_1

    #@8
    .line 529
    if-eqz v0, :cond_0

    #@a
    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@d
    .line 515
    :cond_0
    return-object v7

    #@e
    .line 517
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    #@11
    move-result v1

    #@12
    .line 518
    .local v1, "count":I
    if-lez v1, :cond_4

    #@14
    .line 519
    new-array v4, v1, [I

    #@16
    .line 520
    .local v4, "result":[I
    const/4 v3, 0x0

    #@17
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@19
    .line 521
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    #@1c
    .line 522
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
    .line 520
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 529
    :cond_2
    if-eqz v0, :cond_3

    #@28
    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@2b
    .line 524
    :cond_3
    return-object v4

    #@2c
    .line 529
    .end local v3    # "i":I
    .end local v4    # "result":[I
    :cond_4
    if-eqz v0, :cond_5

    #@2e
    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@31
    .line 533
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "count":I
    :cond_5
    :goto_1
    return-object v7

    #@32
    .line 526
    :catch_0
    move-exception v2

    #@33
    .line 527
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
    .line 529
    if-eqz v0, :cond_5

    #@3e
    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@41
    goto :goto_1

    #@42
    .line 528
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@43
    .line 529
    if-eqz v0, :cond_6

    #@45
    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@48
    .line 528
    :cond_6
    throw v5
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 6
    .param p1, "handle"    # J
    .param p3, "format"    # I
    .param p4, "property"    # J
    .param p6, "groupCode"    # I
    .param p7, "depth"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 711
    if-eqz p6, :cond_0

    #@3
    .line 712
    new-instance v1, Landroid/mtp/MtpPropertyList;

    #@5
    const v2, 0xa807

    #@8
    invoke-direct {v1, v4, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    #@b
    return-object v1

    #@c
    .line 716
    :cond_0
    const-wide v2, 0xffffffffL

    #@11
    cmp-long v1, p4, v2

    #@13
    if-nez v1, :cond_3

    #@15
    .line 717
    if-nez p3, :cond_1

    #@17
    const-wide/16 v2, 0x0

    #@19
    cmp-long v1, p1, v2

    #@1b
    if-lez v1, :cond_1

    #@1d
    .line 719
    long-to-int v1, p1

    #@1e
    invoke-direct {p0, v1}, Landroid/mtp/MtpDatabase;->getObjectFormat(I)I

    #@21
    move-result p3

    #@22
    .line 721
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    #@24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    #@2e
    .line 722
    .local v0, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_2

    #@30
    .line 723
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    #@33
    move-result-object v5

    #@34
    .line 724
    .local v5, "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    #@36
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@38
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@3a
    .line 725
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@3c
    move-object v1, p0

    #@3d
    .line 724
    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    #@40
    .line 726
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    #@42
    new-instance v2, Ljava/lang/Integer;

    #@44
    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    #@47
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 738
    .end local v5    # "propertyList":[I
    :cond_2
    :goto_0
    long-to-int v1, p1

    #@4b
    invoke-virtual {v0, v1, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    #@4e
    move-result-object v1

    #@4f
    return-object v1

    #@50
    .line 729
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_3
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    #@52
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    #@5c
    .line 730
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_2

    #@5e
    .line 731
    const/4 v1, 0x1

    #@5f
    new-array v5, v1, [I

    #@61
    long-to-int v1, p4

    #@62
    aput v1, v5, v4

    #@64
    .line 732
    .restart local v5    # "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    #@66
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@68
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@6a
    .line 733
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@6c
    move-object v1, p0

    #@6d
    .line 732
    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    #@70
    .line 734
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    #@72
    new-instance v2, Ljava/lang/Integer;

    #@74
    long-to-int v3, p4

    #@75
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@78
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    goto :goto_0
.end method

.method private getObjectReferences(I)[I
    .locals 14
    .param p1, "handle"    # I

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1043
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@3
    int-to-long v4, p1

    #@4
    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    #@7
    move-result-object v2

    #@8
    .line 1044
    .local v2, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    #@9
    .line 1046
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@b
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@d
    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    #@f
    const/4 v4, 0x0

    #@10
    const/4 v5, 0x0

    #@11
    const/4 v6, 0x0

    #@12
    const/4 v7, 0x0

    #@13
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v8

    #@17
    .line 1047
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_1

    #@19
    .line 1062
    if-eqz v8, :cond_0

    #@1b
    .line 1063
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@1e
    .line 1048
    :cond_0
    return-object v13

    #@1f
    .line 1050
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    #@22
    move-result v9

    #@23
    .line 1051
    .local v9, "count":I
    if-lez v9, :cond_4

    #@25
    .line 1052
    new-array v12, v9, [I

    #@27
    .line 1053
    .local v12, "result":[I
    const/4 v11, 0x0

    #@28
    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_2

    #@2a
    .line 1054
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    #@2d
    .line 1055
    const/4 v0, 0x0

    #@2e
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    #@31
    move-result v0

    #@32
    aput v0, v12, v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 1053
    add-int/lit8 v11, v11, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1062
    :cond_2
    if-eqz v8, :cond_3

    #@39
    .line 1063
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3c
    .line 1057
    :cond_3
    return-object v12

    #@3d
    .line 1062
    .end local v11    # "i":I
    .end local v12    # "result":[I
    :cond_4
    if-eqz v8, :cond_5

    #@3f
    .line 1063
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@42
    .line 1066
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "count":I
    :cond_5
    :goto_1
    return-object v13

    #@43
    .line 1059
    :catch_0
    move-exception v10

    #@44
    .line 1060
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v0, "MtpDatabase"

    #@47
    const-string/jumbo v1, "RemoteException in getObjectList"

    #@4a
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    .line 1062
    if-eqz v8, :cond_5

    #@4f
    .line 1063
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@52
    goto :goto_1

    #@53
    .line 1061
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@54
    .line 1062
    if-eqz v8, :cond_6

    #@56
    .line 1063
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@59
    .line 1061
    :cond_6
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    #@0
    .prologue
    .line 588
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 4

    #@0
    .prologue
    .line 700
    const v0, 0xd401

    #@3
    .line 701
    const v1, 0xd402

    #@6
    .line 702
    const/16 v2, 0x5003

    #@8
    .line 703
    const/16 v3, 0x5001

    #@a
    .line 699
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
    .line 677
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 694
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    #@5
    return-object v0

    #@6
    .line 683
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    #@8
    return-object v0

    #@9
    .line 687
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    #@b
    return-object v0

    #@c
    .line 692
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    #@e
    return-object v0

    #@f
    .line 677
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
    .line 554
    const/16 v0, 0x1a

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
    .end array-data
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@2
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 311
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 312
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
    .line 313
    .local v3, "root":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 314
    const/4 v5, 0x1

    #@26
    return v5

    #@27
    .line 317
    .end local v0    # "canonical":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "root":Ljava/lang/String;
    .end local v4    # "root$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@28
    .line 320
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
    .line 278
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@2
    if-nez v5, :cond_0

    #@4
    const/4 v5, 0x1

    #@5
    return v5

    #@6
    .line 279
    :cond_0
    if-nez p1, :cond_1

    #@8
    const/4 v5, 0x0

    #@9
    return v5

    #@a
    .line 281
    :cond_1
    const/4 v0, 0x0

    #@b
    .line 282
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    .line 283
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
    .line 292
    :cond_2
    return v0

    #@18
    .line 284
    :cond_3
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@1a
    aget-object v3, v5, v1

    #@1c
    .line 285
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1f
    move-result v4

    #@20
    .line 286
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_4

    #@22
    .line 287
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v5

    #@26
    const/16 v6, 0x2f

    #@28
    if-ne v5, v6, :cond_4

    #@2a
    .line 288
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2d
    move-result v5

    #@2e
    .line 286
    if-eqz v5, :cond_4

    #@30
    .line 289
    const/4 v0, 0x1

    #@31
    .line 283
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
    .line 241
    const-string/jumbo v11, "device-properties"

    #@3
    .line 242
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
    .line 243
    const-string/jumbo v2, "device-properties"

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@19
    move-result-object v10

    #@1a
    .line 245
    .local v10, "databaseFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 248
    const/4 v1, 0x0

    #@21
    .line 249
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    #@22
    .line 251
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
    .line 252
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_4

    #@2f
    .line 253
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
    .line 254
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
    .line 253
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@4f
    move-result-object v9

    #@50
    .line 255
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    #@52
    .line 256
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    #@56
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@59
    move-result-object v12

    #@5a
    .line 257
    .local v12, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_3

    #@60
    .line 258
    const/4 v2, 0x1

    #@61
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@64
    move-result-object v14

    #@65
    .line 259
    .local v14, "name":Ljava/lang/String;
    const/4 v2, 0x2

    #@66
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@69
    move-result-object v15

    #@6a
    .line 260
    .local v15, "value":Ljava/lang/String;
    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 265
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@6f
    .line 266
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
    .line 268
    if-eqz v9, :cond_0

    #@7a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@7d
    .line 269
    :cond_0
    if-eqz v1, :cond_1

    #@7f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@82
    .line 271
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string/jumbo v2, "device-properties"

    #@85
    move-object/from16 v0, p1

    #@87
    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    #@8a
    .line 240
    :cond_2
    return-void

    #@8b
    .line 262
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
    .line 268
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v9, :cond_5

    #@90
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@93
    .line 269
    :cond_5
    if-eqz v1, :cond_1

    #@95
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@98
    goto :goto_1

    #@99
    .line 267
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    #@9a
    .line 268
    if-eqz v9, :cond_6

    #@9c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@9f
    .line 269
    :cond_6
    if-eqz v1, :cond_7

    #@a1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    #@a4
    .line 267
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
    .line 298
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    return v2

    #@6
    .line 299
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
    .line 300
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
    .line 301
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 299
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 304
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
    .line 742
    const/4 v9, 0x0

    #@1
    .line 745
    .local v9, "c":Landroid/database/Cursor;
    const/4 v15, 0x0

    #@2
    .line 746
    .local v15, "path":Ljava/lang/String;
    const/4 v1, 0x1

    #@3
    new-array v6, v1, [Ljava/lang/String;

    #@5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v6, v2

    #@c
    .line 748
    .local v6, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@e
    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@14
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@18
    sget-object v4, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    #@1a
    const-string/jumbo v5, "_id=?"

    #@1d
    .line 749
    const/4 v7, 0x0

    #@1e
    const/4 v8, 0x0

    #@1f
    .line 748
    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    #@22
    move-result-object v9

    #@23
    .line 750
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    #@25
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 751
    const/4 v1, 0x1

    #@2c
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v15

    #@30
    .line 757
    .end local v15    # "path":Ljava/lang/String;
    :cond_0
    if-eqz v9, :cond_1

    #@32
    .line 758
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@35
    .line 761
    :cond_1
    if-nez v15, :cond_4

    #@37
    .line 762
    const/16 v1, 0x2009

    #@39
    return v1

    #@3a
    .line 753
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v15    # "path":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@3b
    .line 754
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MtpDatabase"

    #@3e
    const-string/jumbo v2, "RemoteException in getObjectFilePath"

    #@41
    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    .line 755
    const/16 v1, 0x2002

    #@46
    .line 757
    if-eqz v9, :cond_2

    #@48
    .line 758
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@4b
    .line 755
    :cond_2
    return v1

    #@4c
    .line 756
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@4d
    .line 757
    if-eqz v9, :cond_3

    #@4f
    .line 758
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@52
    .line 756
    :cond_3
    throw v1

    #@53
    .line 766
    .end local v15    # "path":Ljava/lang/String;
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, p0

    #@55
    invoke-direct {v0, v15}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_5

    #@5b
    .line 767
    const/16 v1, 0x200d

    #@5d
    return v1

    #@5e
    .line 771
    :cond_5
    new-instance v14, Ljava/io/File;

    #@60
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@63
    .line 772
    .local v14, "oldFile":Ljava/io/File;
    const/16 v1, 0x2f

    #@65
    invoke-virtual {v15, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@68
    move-result v11

    #@69
    .line 773
    .local v11, "lastSlash":I
    const/4 v1, 0x1

    #@6a
    if-gt v11, v1, :cond_6

    #@6c
    .line 774
    const/16 v1, 0x2002

    #@6e
    return v1

    #@6f
    .line 776
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    add-int/lit8 v2, v11, 0x1

    #@76
    const/4 v3, 0x0

    #@77
    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v13

    #@89
    .line 777
    .local v13, "newPath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    #@8b
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8e
    .line 778
    .local v12, "newFile":Ljava/io/File;
    invoke-virtual {v14, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@91
    move-result v16

    #@92
    .line 779
    .local v16, "success":Z
    if-nez v16, :cond_7

    #@94
    .line 780
    const-string/jumbo v1, "MtpDatabase"

    #@97
    new-instance v2, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v3, "renaming "

    #@9f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    const-string/jumbo v3, " to "

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    const-string/jumbo v3, " failed"

    #@b5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v2

    #@bd
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 781
    const/16 v1, 0x2002

    #@c2
    return v1

    #@c3
    .line 785
    :cond_7
    new-instance v4, Landroid/content/ContentValues;

    #@c5
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    #@c8
    .line 786
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_data"

    #@cb
    invoke-virtual {v4, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@ce
    .line 787
    const/16 v17, 0x0

    #@d0
    .line 791
    .local v17, "updated":I
    :try_start_2
    move-object/from16 v0, p0

    #@d2
    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    #@dc
    const-string/jumbo v5, "_id=?"

    #@df
    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@e2
    move-result v17

    #@e3
    .line 795
    :goto_0
    if-nez v17, :cond_8

    #@e5
    .line 796
    const-string/jumbo v1, "MtpDatabase"

    #@e8
    new-instance v2, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v3, "Unable to update path for "

    #@f0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v2

    #@f4
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v2

    #@f8
    const-string/jumbo v3, " to "

    #@fb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v2

    #@ff
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v2

    #@103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v2

    #@107
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    .line 798
    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@10d
    .line 799
    const/16 v1, 0x2002

    #@10f
    return v1

    #@110
    .line 792
    :catch_1
    move-exception v10

    #@111
    .line 793
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    #@114
    const-string/jumbo v2, "RemoteException in mMediaProvider.update"

    #@117
    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11a
    goto :goto_0

    #@11b
    .line 803
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    #@11e
    move-result v1

    #@11f
    if-eqz v1, :cond_b

    #@121
    .line 805
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    #@124
    move-result-object v1

    #@125
    const-string/jumbo v2, "."

    #@128
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12b
    move-result v1

    #@12c
    if-eqz v1, :cond_9

    #@12e
    const-string/jumbo v1, "."

    #@131
    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@134
    move-result v1

    #@135
    if-eqz v1, :cond_a

    #@137
    .line 825
    :cond_9
    :goto_1
    const/16 v1, 0x2001

    #@139
    return v1

    #@13a
    .line 808
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    #@13c
    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@13e
    move-object/from16 v0, p0

    #@140
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@142
    const-string/jumbo v3, "unhide"

    #@145
    const/4 v5, 0x0

    #@146
    invoke-interface {v1, v2, v3, v13, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@149
    goto :goto_1

    #@14a
    .line 809
    :catch_2
    move-exception v10

    #@14b
    .line 810
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    #@14e
    new-instance v2, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v3, "failed to unhide/rescan for "

    #@156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v2

    #@15a
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v2

    #@15e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v2

    #@162
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@165
    goto :goto_1

    #@166
    .line 815
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_b
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    #@169
    move-result-object v1

    #@16a
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@16c
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@16f
    move-result-object v1

    #@170
    const-string/jumbo v2, ".nomedia"

    #@173
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@176
    move-result v1

    #@177
    if-eqz v1, :cond_9

    #@179
    .line 816
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@17b
    invoke-virtual {v13, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@17e
    move-result-object v1

    #@17f
    const-string/jumbo v2, ".nomedia"

    #@182
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@185
    move-result v1

    #@186
    if-nez v1, :cond_9

    #@188
    .line 818
    :try_start_4
    move-object/from16 v0, p0

    #@18a
    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@190
    const-string/jumbo v3, "unhide"

    #@193
    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@196
    move-result-object v5

    #@197
    const/4 v7, 0x0

    #@198
    invoke-interface {v1, v2, v3, v5, v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@19b
    goto :goto_1

    #@19c
    .line 819
    :catch_3
    move-exception v10

    #@19d
    .line 820
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    #@1a0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a5
    const-string/jumbo v3, "failed to unhide/rescan for "

    #@1a8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v2

    #@1ac
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v2

    #@1b0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b3
    move-result-object v2

    #@1b4
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b7
    goto :goto_1
.end method

.method private sessionEnded()V
    .locals 3

    #@0
    .prologue
    .line 1094
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1095
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
    .line 1096
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@14
    .line 1093
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    #@0
    .prologue
    .line 1090
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@3
    .line 1089
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 872
    packed-switch p1, :pswitch_data_0

    #@3
    .line 882
    const/16 v1, 0x200a

    #@5
    return v1

    #@6
    .line 876
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    #@8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object v0

    #@c
    .line 877
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@13
    .line 878
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
    .line 879
    :cond_0
    const/16 v1, 0x2002

    #@1e
    goto :goto_0

    #@1f
    .line 872
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
    .line 830
    packed-switch p2, :pswitch_data_0

    #@3
    .line 835
    const v0, 0xa80a

    #@6
    return v0

    #@7
    .line 832
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 830
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
    .line 1070
    const/4 v6, 0x1

    #@1
    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    #@3
    .line 1071
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    #@5
    int-to-long v8, p1

    #@6
    invoke-static {v6, v8, v9}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    #@9
    move-result-object v3

    #@a
    .line 1072
    .local v3, "uri":Landroid/net/Uri;
    array-length v0, p2

    #@b
    .line 1073
    .local v0, "count":I
    new-array v5, v0, [Landroid/content/ContentValues;

    #@d
    .line 1074
    .local v5, "valuesList":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@10
    .line 1075
    new-instance v4, Landroid/content/ContentValues;

    #@12
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    #@15
    .line 1076
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
    .line 1077
    aput-object v4, v5, v2

    #@23
    .line 1074
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1080
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    #@28
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    #@2a
    invoke-interface {v6, v7, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result v6

    #@2e
    if-lez v6, :cond_1

    #@30
    .line 1081
    const/16 v6, 0x2001

    #@32
    return v6

    #@33
    .line 1083
    :catch_0
    move-exception v1

    #@34
    .line 1084
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MtpDatabase"

    #@37
    const-string/jumbo v7, "RemoteException in setObjectReferences"

    #@3a
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 1086
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    #@3f
    return v6
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 232
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
    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 228
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 224
    return-void

    #@7
    .line 227
    :catchall_0
    move-exception v0

    #@8
    .line 228
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 227
    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 236
    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 5
    .param p1, "server"    # Landroid/mtp/MtpServer;

    #@0
    .prologue
    .line 207
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    #@2
    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@4
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 217
    :goto_0
    if-eqz p1, :cond_0

    #@b
    .line 218
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    #@d
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    #@f
    .line 219
    new-instance v3, Landroid/content/IntentFilter;

    #@11
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    #@14
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@17
    .line 218
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1a
    .line 206
    :cond_0
    return-void

    #@1b
    .line 212
    :catch_0
    move-exception v0

    #@1c
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
