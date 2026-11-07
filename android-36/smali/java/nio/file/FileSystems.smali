.class public final Ljava/nio/file/FileSystems;
.super Ljava/lang/Object;
.source "FileSystems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/FileSystems$DefaultFileSystemHolder;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static whitelist test-api getDefault()Ljava/nio/file/FileSystem;
    .registers 1

    .line 176
    sget-object v0, Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem:Ljava/nio/file/FileSystem;

    return-object v0
.end method

.method public static whitelist test-api getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .registers 5
    .param p0, "uri"    # Ljava/net/URI;

    .line 218
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/spi/FileSystemProvider;

    .line 220
    .local v2, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 221
    invoke-virtual {v2, p0}, Ljava/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object v1

    return-object v1

    .line 223
    .end local v2    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    :cond_27
    goto :goto_c

    .line 224
    :cond_28
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .registers 3
    .param p0, "uri"    # Ljava/net/URI;
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

    .line 276
    .local p1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem;
    .registers 8
    .param p0, "uri"    # Ljava/net/URI;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    .local p1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/spi/FileSystemProvider;

    .line 325
    .local v2, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 326
    invoke-virtual {v2, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v1

    return-object v1

    .line 328
    .end local v2    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    :cond_27
    goto :goto_c

    .line 331
    :cond_28
    if-eqz p2, :cond_50

    .line 332
    const-class v1, Ljava/nio/file/spi/FileSystemProvider;

    .line 333
    invoke-static {v1, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 334
    .local v1, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/spi/FileSystemProvider;

    .line 335
    .local v3, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v3}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 336
    invoke-virtual {v3, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v2

    return-object v2

    .line 338
    .end local v3    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    :cond_4f
    goto :goto_34

    .line 341
    .end local v1    # "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    :cond_50
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api newFileSystem(Ljava/nio/file/Path;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem;
    .registers 7
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    if-eqz p0, :cond_48

    .line 385
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 388
    .local v0, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/spi/FileSystemProvider;

    .line 390
    .local v2, "provider":Ljava/nio/file/spi/FileSystemProvider;
    :try_start_1a
    invoke-virtual {v2, p0, v0}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v1

    .line 391
    :catch_1f
    move-exception v3

    .line 393
    .end local v2    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    goto :goto_e

    .line 396
    :cond_21
    if-eqz p1, :cond_40

    .line 397
    const-class v1, Ljava/nio/file/spi/FileSystemProvider;

    .line 398
    invoke-static {v1, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 399
    .local v1, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/spi/FileSystemProvider;

    .line 401
    .local v3, "provider":Ljava/nio/file/spi/FileSystemProvider;
    :try_start_39
    invoke-virtual {v3, p0, v0}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v2
    :try_end_3d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_39 .. :try_end_3d} :catch_3e

    return-object v2

    .line 402
    :catch_3e
    move-exception v4

    .line 404
    .end local v3    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    goto :goto_2d

    .line 407
    .end local v1    # "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileSystemProvider;>;"
    :cond_40
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    const-string v2, "Provider not found"

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    .end local v0    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
