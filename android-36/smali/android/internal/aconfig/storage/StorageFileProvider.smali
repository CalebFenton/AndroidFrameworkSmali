.class public Landroid/internal/aconfig/storage/StorageFileProvider;
.super Ljava/lang/Object;
.source "StorageFileProvider.java"


# static fields
.field private static final blacklist DEFAULT_BOOT_PATH:Ljava/lang/String; = "/metadata/aconfig/boot/"

.field private static final blacklist DEFAULT_INSTANCE:Landroid/internal/aconfig/storage/StorageFileProvider;

.field private static final blacklist DEFAULT_MAP_PATH:Ljava/lang/String; = "/metadata/aconfig/maps/"

.field private static final blacklist FMAP_FILE_EXT:Ljava/lang/String; = ".flag.map"

.field private static final blacklist PMAP_FILE_EXT:Ljava/lang/String; = ".package.map"

.field private static final blacklist VAL_FILE_EXT:Ljava/lang/String; = ".val"


# instance fields
.field private final blacklist mBootPath:Ljava/lang/String;

.field private final blacklist mMapPath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Landroid/internal/aconfig/storage/StorageFileProvider;

    const-string v1, "/metadata/aconfig/maps/"

    const-string v2, "/metadata/aconfig/boot/"

    invoke-direct {v0, v1, v2}, Landroid/internal/aconfig/storage/StorageFileProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/internal/aconfig/storage/StorageFileProvider;->DEFAULT_INSTANCE:Landroid/internal/aconfig/storage/StorageFileProvider;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "mapPath"    # Ljava/lang/String;
    .param p2, "bootPath"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mBootPath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static blacklist getDefaultProvider()Landroid/internal/aconfig/storage/StorageFileProvider;
    .registers 1

    .line 50
    sget-object v0, Landroid/internal/aconfig/storage/StorageFileProvider;->DEFAULT_INSTANCE:Landroid/internal/aconfig/storage/StorageFileProvider;

    return-object v0
.end method

.method private static blacklist mapStorageFile(Ljava/nio/file/Path;Landroid/internal/aconfig/storage/FileType;)Ljava/nio/MappedByteBuffer;
    .registers 10
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "type"    # Landroid/internal/aconfig/storage/FileType;

    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p0, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_26
    .catchall {:try_start_2 .. :try_end_d} :catchall_24

    move-object v2, v0

    .line 109
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    :try_start_e
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_21
    .catchall {:try_start_e .. :try_end_1a} :catchall_1e

    .line 116
    invoke-static {v2}, Landroid/internal/aconfig/storage/StorageFileProvider;->quietlyDispose(Ljava/io/Closeable;)V

    .line 109
    return-object v0

    .line 116
    :catchall_1e
    move-exception v0

    move-object v1, v2

    goto :goto_3c

    .line 110
    :catch_21
    move-exception v0

    move-object v1, v2

    goto :goto_27

    .line 116
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_24
    move-exception v0

    goto :goto_3c

    .line 110
    :catch_26
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :goto_27
    :try_start_27
    new-instance v2, Landroid/internal/aconfig/storage/AconfigStorageException;

    const-string v3, "Fail to mmap storage %s file %s"

    .line 113
    invoke-virtual {p1}, Landroid/internal/aconfig/storage/FileType;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3, v0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local p0    # "file":Ljava/nio/file/Path;
    .end local p1    # "type":Landroid/internal/aconfig/storage/FileType;
    throw v2
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_24

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "file":Ljava/nio/file/Path;
    .restart local p1    # "type":Landroid/internal/aconfig/storage/FileType;
    :goto_3c
    invoke-static {v1}, Landroid/internal/aconfig/storage/StorageFileProvider;->quietlyDispose(Ljava/io/Closeable;)V

    .line 117
    throw v0
.end method

.method private static blacklist quietlyDispose(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closable"    # Ljava/io/Closeable;

    .line 122
    if-eqz p0, :cond_8

    .line 123
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 125
    :catch_6
    move-exception v0

    goto :goto_9

    .line 127
    :cond_8
    :goto_8
    nop

    .line 128
    :goto_9
    return-void
.end method


# virtual methods
.method public blacklist getFlagTable(Ljava/lang/String;)Landroid/internal/aconfig/storage/FlagTable;
    .registers 5
    .param p1, "container"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".flag.map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    invoke-static {v0, v1}, Landroid/internal/aconfig/storage/StorageFileProvider;->mapStorageFile(Ljava/nio/file/Path;Landroid/internal/aconfig/storage/FileType;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagTable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlagValueList(Ljava/lang/String;)Landroid/internal/aconfig/storage/FlagValueList;
    .registers 5
    .param p1, "container"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mBootPath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".val"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    invoke-static {v0, v1}, Landroid/internal/aconfig/storage/StorageFileProvider;->mapStorageFile(Ljava/nio/file/Path;Landroid/internal/aconfig/storage/FileType;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagValueList;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagValueList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageTable(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable;
    .registers 5
    .param p1, "container"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".package.map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    .line 88
    invoke-static {v0, v1}, Landroid/internal/aconfig/storage/StorageFileProvider;->mapStorageFile(Ljava/nio/file/Path;Landroid/internal/aconfig/storage/FileType;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/internal/aconfig/storage/PackageTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/PackageTable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist listContainers([Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "excludes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 65
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_e
    iget-object v2, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 66
    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const-string v4, "*.package.map"

    invoke-static {v2, v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v2

    .line 67
    .local v2, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 68
    .local v5, "entry":Ljava/nio/file/Path;
    invoke-interface {v5}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "fileName":Ljava/lang/String;
    nop

    .line 70
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, ".package.map"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "container":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    .line 72
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_e .. :try_end_4e} :catch_64
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4e} :catch_51

    .line 74
    .end local v5    # "entry":Ljava/nio/file/Path;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "container":Ljava/lang/String;
    :cond_4e
    goto :goto_21

    .line 80
    .end local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_4f
    nop

    .line 82
    return-object v0

    .line 77
    :catch_51
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/internal/aconfig/storage/AconfigStorageException;

    iget-object v4, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 79
    const-string v5, "Fail to list map files in path %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_64
    move-exception v2

    .line 76
    .local v2, "e":Ljava/nio/file/NoSuchFileException;
    return-object v0
.end method
