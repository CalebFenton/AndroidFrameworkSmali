.class public final Ljava/nio/file/Paths;
.super Ljava/lang/Object;
.source "Paths.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs whitelist test-api get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 3
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "more"    # [Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api get(Ljava/net/URI;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "uri"    # Ljava/net/URI;

    .line 132
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_5e

    .line 137
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 138
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 141
    :cond_1b
    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/spi/FileSystemProvider;

    .line 142
    .local v2, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 143
    invoke-virtual {v2, p0}, Ljava/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 145
    .end local v2    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    :cond_3e
    goto :goto_23

    .line 147
    :cond_3f
    new-instance v1, Ljava/nio/file/FileSystemNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/FileSystemNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_5e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
