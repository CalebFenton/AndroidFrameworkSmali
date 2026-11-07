.class abstract Lsun/nio/fs/AbstractPath;
.super Ljava/lang/Object;
.source "AbstractPath.java"

# interfaces
.implements Ljava/nio/file/Path;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api endsWith(Ljava/lang/String;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPath;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/AbstractPath;->endsWith(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lsun/nio/fs/AbstractPath$1;

    invoke-direct {v0, p0}, Lsun/nio/fs/AbstractPath$1;-><init>(Lsun/nio/fs/AbstractPath;)V

    return-object v0
.end method

.method public final varargs whitelist test-api register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .registers 4
    .param p1, "watcher"    # Ljava/nio/file/WatchService;
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

    .line 104
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/WatchEvent$Modifier;

    invoke-virtual {p0, p1, p2, v0}, Lsun/nio/fs/AbstractPath;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api resolve(Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 4
    .param p1, "other"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPath;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/AbstractPath;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 4
    .param p1, "other"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPath;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/AbstractPath;->resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 4
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 58
    if-eqz p1, :cond_f

    .line 60
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPath;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    .line 61
    .local v0, "parent":Ljava/nio/file/Path;
    if-nez v0, :cond_a

    move-object v1, p1

    goto :goto_e

    :cond_a
    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    :goto_e
    return-object v1

    .line 59
    .end local v0    # "parent":Ljava/nio/file/Path;
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api startsWith(Ljava/lang/String;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPath;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/AbstractPath;->startsWith(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api toFile()Ljava/io/File;
    .registers 3

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
