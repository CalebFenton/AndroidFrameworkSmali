.class public interface abstract Ljava/nio/file/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;
.implements Ljava/nio/file/Watchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/file/Path;",
        ">;",
        "Ljava/lang/Iterable<",
        "Ljava/nio/file/Path;",
        ">;",
        "Ljava/nio/file/Watchable;"
    }
.end annotation


# direct methods
.method public static varargs whitelist test-api of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 3
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "more"    # [Ljava/lang/String;

    .line 147
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/net/URI;)Ljava/nio/file/Path;
    .registers 5
    .param p0, "uri"    # Ljava/net/URI;

    .line 197
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_5e

    .line 202
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 203
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 206
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

    .line 207
    .local v2, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v2}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 208
    invoke-virtual {v2, p0}, Ljava/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 210
    .end local v2    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    :cond_3e
    goto :goto_23

    .line 212
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

    .line 199
    :cond_5e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    check-cast p1, Ljava/nio/file/Path;

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public abstract whitelist test-api compareTo(Ljava/nio/file/Path;)I
.end method

.method public abstract whitelist test-api endsWith(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api endsWith(Ljava/nio/file/Path;)Z
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api getFileName()Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api getFileSystem()Ljava/nio/file/FileSystem;
.end method

.method public abstract whitelist test-api getName(I)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api getNameCount()I
.end method

.method public abstract whitelist test-api getParent()Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api getRoot()Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract whitelist test-api isAbsolute()Z
.end method

.method public abstract whitelist test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api normalize()Ljava/nio/file/Path;
.end method

.method public varargs abstract whitelist test-api register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;)",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract whitelist test-api register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api resolve(Ljava/lang/String;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api startsWith(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api startsWith(Ljava/nio/file/Path;)Z
.end method

.method public abstract whitelist test-api subpath(II)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api toAbsolutePath()Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api toFile()Ljava/io/File;
.end method

.method public varargs abstract whitelist test-api toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public abstract whitelist test-api toUri()Ljava/net/URI;
.end method
