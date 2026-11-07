.class public Landroid/os/flagging/AconfigPackage;
.super Ljava/lang/Object;
.source "AconfigPackage.java"


# static fields
.field private static final blacklist BOOT_PATH:Ljava/lang/String; = "/metadata/aconfig/boot/"

.field private static final blacklist MAP_PATH:Ljava/lang/String; = "/metadata/aconfig/maps/"

.field private static final blacklist PMAP_FILE_EXT:Ljava/lang/String; = ".package.map"

.field private static final blacklist READ_PLATFORM_FROM_PLATFORM_API:Z

.field private static final blacklist TAG:Ljava/lang/String; = "AconfigPackage"

.field static final blacklist sStorageFilesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFlagTable:Landroid/provider/internal/aconfig/storage/FlagTable;

.field private blacklist mFlagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

.field private blacklist mPackageBooleanStartOffset:I

.field private blacklist mPackageId:I

.field private blacklist mPlatformAconfigPackage:Landroid/os/flagging/PlatformAconfigPackage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 59
    const-string v0, "AconfigPackage"

    invoke-static {}, Landroid/provider/x/android/provider/flags/Flags;->readPlatformFromPlatformApi()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-le v1, v3, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    sput-boolean v1, Landroid/os/flagging/AconfigPackage;->READ_PLATFORM_FROM_PLATFORM_API:Z

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/os/flagging/AconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    .line 75
    new-instance v1, Ljava/io/File;

    const-string v3, "/metadata/aconfig/maps/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "mapDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "mapFiles":[Ljava/lang/String;
    if-eqz v4, :cond_108

    .line 78
    array-length v5, v4

    :goto_29
    if-ge v2, v5, :cond_108

    aget-object v6, v4, v2

    .line 79
    .local v6, "file":Ljava/lang/String;
    const-string v7, ".package.map"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_104

    sget-boolean v7, Landroid/os/flagging/AconfigPackage;->READ_PLATFORM_FROM_PLATFORM_API:Z

    if-eqz v7, :cond_43

    sget-object v7, Landroid/os/flagging/PlatformAconfigPackage;->PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;

    .line 81
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 83
    goto/16 :goto_104

    .line 86
    :cond_43
    :try_start_43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/flagging/AconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/internal/aconfig/storage/PackageTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/provider/internal/aconfig/storage/PackageTable;

    move-result-object v7

    .line 87
    .local v7, "pTable":Landroid/provider/internal/aconfig/storage/PackageTable;
    invoke-virtual {v7}, Landroid/provider/internal/aconfig/storage/PackageTable;->getHeader()Landroid/provider/internal/aconfig/storage/PackageTable$Header;

    move-result-object v8

    invoke-virtual {v8}, Landroid/provider/internal/aconfig/storage/PackageTable$Header;->getContainer()Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "container":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".flag.map"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 89
    invoke-static {v9}, Landroid/os/flagging/AconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/internal/aconfig/storage/FlagTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/provider/internal/aconfig/storage/FlagTable;

    move-result-object v9

    .line 90
    .local v9, "fTable":Landroid/provider/internal/aconfig/storage/FlagTable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/metadata/aconfig/boot/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".val"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-static {v10}, Landroid/os/flagging/AconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v10

    invoke-static {v10}, Landroid/provider/internal/aconfig/storage/FlagValueList;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/provider/internal/aconfig/storage/FlagValueList;

    move-result-object v10

    .line 92
    .local v10, "fValueList":Landroid/provider/internal/aconfig/storage/FlagValueList;
    new-instance v11, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    invoke-direct {v11, v7, v9, v10}, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;-><init>(Landroid/provider/internal/aconfig/storage/PackageTable;Landroid/provider/internal/aconfig/storage/FlagTable;Landroid/provider/internal/aconfig/storage/FlagValueList;)V

    .line 93
    .local v11, "files":Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    invoke-virtual {v7}, Landroid/provider/internal/aconfig/storage/PackageTable;->getPackageList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_de

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 94
    .local v13, "packageName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is mapped to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v14, Landroid/os/flagging/AconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v14, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_dc} :catch_df

    .line 96
    nop

    .end local v13    # "packageName":Ljava/lang/String;
    goto :goto_b1

    .line 100
    .end local v7    # "pTable":Landroid/provider/internal/aconfig/storage/PackageTable;
    .end local v8    # "container":Ljava/lang/String;
    .end local v9    # "fTable":Landroid/provider/internal/aconfig/storage/FlagTable;
    .end local v10    # "fValueList":Landroid/provider/internal/aconfig/storage/FlagValueList;
    .end local v11    # "files":Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    :cond_de
    goto :goto_104

    .line 97
    :catch_df
    move-exception v7

    .line 99
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to map some package from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_104
    :goto_104
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_29

    .line 103
    .end local v1    # "mapDir":Ljava/io/File;
    .end local v4    # "mapFiles":[Ljava/lang/String;
    :cond_108
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/flagging/AconfigPackage;->mPackageBooleanStartOffset:I

    .line 65
    iput v0, p0, Landroid/os/flagging/AconfigPackage;->mPackageId:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/flagging/AconfigPackage;->mPlatformAconfigPackage:Landroid/os/flagging/PlatformAconfigPackage;

    .line 72
    return-void
.end method

.method public static whitelist load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 121
    const-string v0, "Fail to create AconfigPackage"

    :try_start_2
    new-instance v1, Landroid/os/flagging/AconfigPackage;

    invoke-direct {v1}, Landroid/os/flagging/AconfigPackage;-><init>()V

    .line 123
    .local v1, "aconfigPackage":Landroid/os/flagging/AconfigPackage;
    sget-boolean v2, Landroid/os/flagging/AconfigPackage;->READ_PLATFORM_FROM_PLATFORM_API:Z

    if-eqz v2, :cond_16

    .line 124
    invoke-static {p0}, Landroid/os/flagging/PlatformAconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/PlatformAconfigPackage;

    move-result-object v2

    iput-object v2, v1, Landroid/os/flagging/AconfigPackage;->mPlatformAconfigPackage:Landroid/os/flagging/PlatformAconfigPackage;

    .line 125
    iget-object v2, v1, Landroid/os/flagging/AconfigPackage;->mPlatformAconfigPackage:Landroid/os/flagging/PlatformAconfigPackage;

    if-eqz v2, :cond_16

    .line 126
    return-object v1

    .line 130
    :cond_16
    sget-object v2, Landroid/os/flagging/AconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    .line 131
    .local v2, "files":Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    if-eqz v2, :cond_3b

    .line 137
    iget-object v3, v2, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/provider/internal/aconfig/storage/PackageTable;

    invoke-virtual {v3, p0}, Landroid/provider/internal/aconfig/storage/PackageTable;->get(Ljava/lang/String;)Landroid/provider/internal/aconfig/storage/PackageTable$Node;

    move-result-object v3

    .line 138
    .local v3, "pNode":Landroid/provider/internal/aconfig/storage/PackageTable$Node;
    iget-object v4, v2, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagTable:Landroid/provider/internal/aconfig/storage/FlagTable;

    iput-object v4, v1, Landroid/os/flagging/AconfigPackage;->mFlagTable:Landroid/provider/internal/aconfig/storage/FlagTable;

    .line 139
    iget-object v4, v2, Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

    iput-object v4, v1, Landroid/os/flagging/AconfigPackage;->mFlagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

    .line 140
    invoke-virtual {v3}, Landroid/provider/internal/aconfig/storage/PackageTable$Node;->getBooleanStartIndex()I

    move-result v4

    iput v4, v1, Landroid/os/flagging/AconfigPackage;->mPackageBooleanStartOffset:I

    .line 141
    invoke-virtual {v3}, Landroid/provider/internal/aconfig/storage/PackageTable$Node;->getPackageId()I

    move-result v4

    iput v4, v1, Landroid/os/flagging/AconfigPackage;->mPackageId:I

    .line 142
    return-object v1

    .line 132
    .end local v3    # "pNode":Landroid/provider/internal/aconfig/storage/PackageTable$Node;
    :cond_3b
    new-instance v3, Landroid/os/flagging/AconfigStorageReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be found on the device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;)V

    .end local p0    # "packageName":Ljava/lang/String;
    throw v3
    :try_end_5b
    .catch Landroid/os/flagging/AconfigStorageReadException; {:try_start_2 .. :try_end_5b} :catch_6e
    .catch Landroid/provider/internal/aconfig/storage/AconfigStorageException; {:try_start_2 .. :try_end_5b} :catch_63
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5b} :catch_5b

    .line 148
    .end local v1    # "aconfigPackage":Landroid/os/flagging/AconfigPackage;
    .end local v2    # "files":Landroid/provider/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    .restart local p0    # "packageName":Ljava/lang/String;
    :catch_5b
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/flagging/AconfigStorageReadException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_63
    move-exception v1

    .line 146
    .local v1, "e":Landroid/provider/internal/aconfig/storage/AconfigStorageException;
    new-instance v2, Landroid/os/flagging/AconfigStorageReadException;

    .line 147
    invoke-virtual {v1}, Landroid/provider/internal/aconfig/storage/AconfigStorageException;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 143
    .end local v1    # "e":Landroid/provider/internal/aconfig/storage/AconfigStorageException;
    :catch_6e
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/flagging/AconfigStorageReadException;
    throw v0
.end method

.method private static blacklist mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .registers 9
    .param p0, "file"    # Ljava/lang/String;

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    :try_start_2
    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_2c
    .catchall {:try_start_2 .. :try_end_13} :catchall_2a

    move-object v2, v0

    .line 183
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    :try_start_14
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_27
    .catchall {:try_start_14 .. :try_end_20} :catchall_24

    .line 190
    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->quietlyDispose(Ljava/io/Closeable;)V

    .line 183
    return-object v0

    .line 190
    :catchall_24
    move-exception v0

    move-object v1, v2

    goto :goto_36

    .line 184
    :catch_27
    move-exception v0

    move-object v1, v2

    goto :goto_2d

    .line 190
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_2a
    move-exception v0

    goto :goto_36

    .line 184
    :catch_2c
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    :goto_2d
    :try_start_2d
    new-instance v2, Landroid/os/flagging/AconfigStorageReadException;

    const-string v3, "Fail to mmap storage"

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3, v0}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local p0    # "file":Ljava/lang/String;
    throw v2
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2a

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "file":Ljava/lang/String;
    :goto_36
    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->quietlyDispose(Ljava/io/Closeable;)V

    .line 191
    throw v0
.end method

.method private static blacklist quietlyDispose(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closable"    # Ljava/io/Closeable;

    .line 196
    if-eqz p0, :cond_8

    .line 197
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 199
    :catch_6
    move-exception v0

    goto :goto_9

    .line 201
    :cond_8
    :goto_8
    nop

    .line 202
    :goto_9
    return-void
.end method


# virtual methods
.method public whitelist getBooleanFlagValue(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 167
    sget-boolean v0, Landroid/os/flagging/AconfigPackage;->READ_PLATFORM_FROM_PLATFORM_API:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/os/flagging/AconfigPackage;->mPlatformAconfigPackage:Landroid/os/flagging/PlatformAconfigPackage;

    if-eqz v0, :cond_f

    .line 168
    iget-object v0, p0, Landroid/os/flagging/AconfigPackage;->mPlatformAconfigPackage:Landroid/os/flagging/PlatformAconfigPackage;

    invoke-virtual {v0, p1, p2}, Landroid/os/flagging/PlatformAconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 171
    :cond_f
    iget-object v0, p0, Landroid/os/flagging/AconfigPackage;->mFlagTable:Landroid/provider/internal/aconfig/storage/FlagTable;

    iget v1, p0, Landroid/os/flagging/AconfigPackage;->mPackageId:I

    invoke-virtual {v0, v1, p1}, Landroid/provider/internal/aconfig/storage/FlagTable;->get(ILjava/lang/String;)Landroid/provider/internal/aconfig/storage/FlagTable$Node;

    move-result-object v0

    .line 172
    .local v0, "fNode":Landroid/provider/internal/aconfig/storage/FlagTable$Node;
    if-nez v0, :cond_1a

    .line 173
    return p2

    .line 175
    :cond_1a
    iget-object v1, p0, Landroid/os/flagging/AconfigPackage;->mFlagValueList:Landroid/provider/internal/aconfig/storage/FlagValueList;

    invoke-virtual {v0}, Landroid/provider/internal/aconfig/storage/FlagTable$Node;->getFlagIndex()I

    move-result v2

    iget v3, p0, Landroid/os/flagging/AconfigPackage;->mPackageBooleanStartOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/provider/internal/aconfig/storage/FlagValueList;->getBoolean(I)Z

    move-result v1

    return v1
.end method
