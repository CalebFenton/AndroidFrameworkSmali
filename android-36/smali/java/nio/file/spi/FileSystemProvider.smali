.class public abstract Ljava/nio/file/spi/FileSystemProvider;
.super Ljava/lang/Object;
.source "FileSystemProvider.java"


# static fields
.field private static volatile greylist-max-o installedProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o loadingProviders:Z

.field private static final greylist-max-o lock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smloadInstalledProviders()Ljava/util/List;
    .registers 1

    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->loadInstalledProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/nio/file/spi/FileSystemProvider;->lock:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Ljava/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 108
    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->checkPermission()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/file/spi/FileSystemProvider;-><init>(Ljava/lang/Void;)V

    .line 109
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Void;)V
    .registers 2
    .param p1, "ignore"    # Ljava/lang/Void;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o checkPermission()Ljava/lang/Void;
    .registers 3

    .line 88
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 89
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 90
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "fileSystemProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 91
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist test-api installedProviders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation

    .line 154
    sget-object v0, Ljava/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    if-nez v0, :cond_3d

    .line 156
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 158
    .local v0, "defaultProvider":Ljava/nio/file/spi/FileSystemProvider;
    sget-object v1, Ljava/nio/file/spi/FileSystemProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_f
    sget-object v2, Ljava/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    if-nez v2, :cond_38

    .line 160
    sget-boolean v2, Ljava/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    if-nez v2, :cond_30

    .line 163
    const/4 v2, 0x1

    sput-boolean v2, Ljava/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    .line 165
    new-instance v2, Ljava/nio/file/spi/FileSystemProvider$1;

    invoke-direct {v2}, Ljava/nio/file/spi/FileSystemProvider$1;-><init>()V

    .line 166
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 173
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileSystemProvider;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 175
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Ljava/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    goto :goto_38

    .line 161
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileSystemProvider;>;"
    :cond_30
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Circular loading of installed providers detected"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local v0    # "defaultProvider":Ljava/nio/file/spi/FileSystemProvider;
    throw v2

    .line 177
    .restart local v0    # "defaultProvider":Ljava/nio/file/spi/FileSystemProvider;
    :cond_38
    :goto_38
    monitor-exit v1

    goto :goto_3d

    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_3a

    throw v2

    .line 179
    .end local v0    # "defaultProvider":Ljava/nio/file/spi/FileSystemProvider;
    :cond_3d
    :goto_3d
    sget-object v0, Ljava/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    return-object v0
.end method

.method private static greylist-max-o loadInstalledProviders()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileSystemProvider;>;"
    nop

    .line 116
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {v2, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 119
    .local v1, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/spi/FileSystemProvider;

    .line 120
    .local v3, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v3}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "scheme":Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 124
    const/4 v5, 0x0

    .line 125
    .local v5, "found":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/spi/FileSystemProvider;

    .line 126
    .local v7, "p":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v7}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 127
    const/4 v5, 0x1

    .line 128
    goto :goto_4a

    .line 130
    .end local v7    # "p":Ljava/nio/file/spi/FileSystemProvider;
    :cond_49
    goto :goto_31

    .line 131
    :cond_4a
    :goto_4a
    if-nez v5, :cond_4f

    .line 132
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v3    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "found":Z
    :cond_4f
    goto :goto_14

    .line 136
    :cond_50
    return-object v0
.end method


# virtual methods
.method public varargs abstract whitelist test-api checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract whitelist test-api copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract whitelist test-api createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 4
    .param p1, "link"    # Ljava/nio/file/Path;
    .param p2, "existing"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs whitelist test-api createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 5
    .param p1, "link"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api delete(Ljava/nio/file/Path;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api deleteIfExists(Ljava/nio/file/Path;)Z
    .registers 4
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->delete(Ljava/nio/file/Path;)V
    :try_end_3
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_3} :catch_5

    .line 740
    const/4 v0, 0x1

    return v0

    .line 741
    :catch_5
    move-exception v0

    .line 742
    .local v0, "ignore":Ljava/nio/file/NoSuchFileException;
    const/4 v1, 0x0

    return v1
.end method

.method public varargs abstract whitelist test-api getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
.end method

.method public abstract whitelist test-api getPath(Ljava/net/URI;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api getScheme()Ljava/lang/String;
.end method

.method public abstract whitelist test-api isHidden(Ljava/nio/file/Path;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract whitelist test-api move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs whitelist test-api newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 6
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p3, "executor"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/AsynchronousFileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p4, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs abstract whitelist test-api newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs whitelist test-api newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 5
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .registers 4
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs whitelist test-api newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .registers 7
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    array-length v0, p2

    if-lez v0, :cond_33

    .line 377
    array-length v0, p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    aget-object v2, p2, v1

    .line 379
    .local v2, "opt":Ljava/nio/file/OpenOption;
    sget-object v3, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    if-eq v2, v3, :cond_14

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    if-eq v2, v3, :cond_14

    .line 377
    .end local v2    # "opt":Ljava/nio/file/OpenOption;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 381
    .restart local v2    # "opt":Ljava/nio/file/OpenOption;
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' not allowed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    .end local v2    # "opt":Ljava/nio/file/OpenOption;
    :cond_33
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .registers 10
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    array-length v0, p2

    .line 422
    .local v0, "len":I
    new-instance v1, Ljava/util/HashSet;

    add-int/lit8 v2, v0, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 423
    .local v1, "opts":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 424
    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v3, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 427
    :cond_16
    array-length v3, p2

    move v4, v2

    :goto_18
    if-ge v4, v3, :cond_2e

    aget-object v5, p2, v4

    .line 428
    .local v5, "opt":Ljava/nio/file/OpenOption;
    sget-object v6, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    if-eq v5, v6, :cond_26

    .line 430
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v5    # "opt":Ljava/nio/file/OpenOption;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 429
    .restart local v5    # "opt":Ljava/nio/file/OpenOption;
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "READ not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    .end local v5    # "opt":Ljava/nio/file/OpenOption;
    :cond_2e
    :goto_2e
    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-virtual {p0, p1, v1, v2}, Ljava/nio/file/spi/FileSystemProvider;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v2

    return-object v2
.end method

.method public varargs abstract whitelist test-api readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract whitelist test-api readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 3
    .param p1, "link"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs abstract whitelist test-api setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
