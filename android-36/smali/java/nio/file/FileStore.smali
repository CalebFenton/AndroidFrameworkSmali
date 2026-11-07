.class public abstract Ljava/nio/file/FileStore;
.super Ljava/lang/Object;
.source "FileStore.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api getBlockSize()J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileStoreAttributeView;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getTotalSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getUnallocatedSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getUsableSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isReadOnly()Z
.end method

.method public abstract whitelist test-api name()Ljava/lang/String;
.end method

.method public abstract whitelist test-api supportsFileAttributeView(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api supportsFileAttributeView(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api type()Ljava/lang/String;
.end method
