.class public abstract Ljava/nio/file/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getFileStores()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract whitelist test-api getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
.end method

.method public abstract whitelist test-api getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
.end method

.method public abstract whitelist test-api getRootDirectories()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getSeparator()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
.end method

.method public abstract whitelist test-api isOpen()Z
.end method

.method public abstract whitelist test-api isReadOnly()Z
.end method

.method public abstract whitelist test-api newWatchService()Ljava/nio/file/WatchService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api provider()Ljava/nio/file/spi/FileSystemProvider;
.end method

.method public abstract whitelist test-api supportedFileAttributeViews()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
