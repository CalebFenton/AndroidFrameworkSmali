.class Lsun/nio/fs/UnixFileSystem$FileStoreIterator;
.super Ljava/lang/Object;
.source "UnixFileSystem.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileStoreIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/file/FileStore;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist entries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist next:Ljava/nio/file/FileStore;

.field final synthetic blacklist this$0:Lsun/nio/fs/UnixFileSystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 184
    const-class v0, Lsun/nio/fs/UnixFileSystem;

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->this$0:Lsun/nio/fs/UnixFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileSystem;->getMountEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->entries:Ljava/util/Iterator;

    .line 190
    return-void
.end method

.method private blacklist readNext()Ljava/nio/file/FileStore;
    .registers 4

    .line 193
    nop

    .line 195
    :goto_1
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->entries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_b
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->entries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/UnixMountEntry;

    .line 200
    .local v0, "entry":Lsun/nio/fs/UnixMountEntry;
    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->isIgnored()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 201
    goto :goto_1

    .line 204
    :cond_1a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 205
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2e

    .line 207
    :try_start_20
    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_2b} :catch_2c

    .line 210
    goto :goto_2e

    .line 208
    :catch_2c
    move-exception v2

    .line 209
    .local v2, "x":Ljava/lang/SecurityException;
    goto :goto_1

    .line 213
    .end local v2    # "x":Ljava/lang/SecurityException;
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-object v2, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->this$0:Lsun/nio/fs/UnixFileSystem;

    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixFileSystem;->getFileStore(Lsun/nio/fs/UnixMountEntry;)Ljava/nio/file/FileStore;

    move-result-object v2
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_35

    return-object v2

    .line 214
    :catch_35
    move-exception v2

    .line 217
    .end local v0    # "entry":Lsun/nio/fs/UnixMountEntry;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api hasNext()Z
    .registers 3

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 223
    monitor-exit p0

    return v1

    .line 224
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->readNext()Ljava/nio/file/FileStore;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    .line 225
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_16

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit p0

    return v1

    .line 221
    .end local p0    # "this":Lsun/nio/fs/UnixFileSystem$FileStoreIterator;
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 184
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next()Ljava/nio/file/FileStore;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist next()Ljava/nio/file/FileStore;
    .registers 3

    monitor-enter p0

    .line 230
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    if-nez v0, :cond_b

    .line 231
    invoke-direct {p0}, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->readNext()Ljava/nio/file/FileStore;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    .line 232
    .end local p0    # "this":Lsun/nio/fs/UnixFileSystem$FileStoreIterator;
    :cond_b
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    if-eqz v0, :cond_16

    .line 235
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    .line 236
    .local v0, "result":Ljava/nio/file/FileStore;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1c

    .line 237
    monitor-exit p0

    return-object v0

    .line 233
    .end local v0    # "result":Ljava/nio/file/FileStore;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 229
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
