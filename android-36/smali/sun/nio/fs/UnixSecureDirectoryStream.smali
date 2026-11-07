.class Lsun/nio/fs/UnixSecureDirectoryStream;
.super Ljava/lang/Object;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/SecureDirectoryStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;,
        Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/SecureDirectoryStream<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist dfd:I
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist ds:Lsun/nio/fs/UnixDirectoryStream;

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    .registers 1

    iget p0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;
    .registers 1

    iget-object p0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    return-object p0
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V
    .registers 8
    .param p1, "dir"    # Lsun/nio/fs/UnixPath;
    .param p2, "dp"    # J
    .param p4, "dfd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "JI",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p5, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    nop

    .line 56
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    .line 63
    new-instance v0, Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {v0, p1, p2, p3, p5}, Lsun/nio/fs/UnixDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JLjava/nio/file/DirectoryStream$Filter;)V

    iput-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    .line 64
    iput p4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    .line 66
    const/4 v0, -0x1

    if-eq p4, v0, :cond_1d

    .line 67
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 69
    :cond_1d
    return-void
.end method

.method private blacklist getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;
    .registers 7
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p3, "followLinks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/lang/Class<",
            "TV;>;Z)TV;"
        }
    .end annotation

    .line 291
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    if-eqz p2, :cond_21

    .line 293
    move-object v0, p2

    .line 294
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne v0, v1, :cond_d

    .line 295
    new-instance v1, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;

    invoke-direct {v1, p0, p1, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    return-object v1

    .line 297
    :cond_d
    const-class v1, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eq v0, v1, :cond_1b

    const-class v1, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne v0, v1, :cond_16

    goto :goto_1b

    .line 301
    :cond_16
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/nio/file/attribute/FileAttributeView;

    return-object v1

    .line 298
    :cond_1b
    :goto_1b
    new-instance v1, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;

    invoke-direct {v1, p0, p1, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    return-object v1

    .line 292
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 3
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 93
    if-eqz p1, :cond_10

    .line 95
    instance-of v0, p1, Lsun/nio/fs/UnixPath;

    if-eqz v0, :cond_a

    .line 97
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixPath;

    return-object v0

    .line 96
    :cond_a
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 94
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private blacklist implDelete(Ljava/nio/file/Path;ZI)V
    .registers 9
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "haveFlags"    # Z
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 191
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 192
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_17

    .line 193
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkDelete()V

    .line 196
    :cond_17
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_20
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_7c

    if-eqz v2, :cond_76

    .line 201
    if-nez p2, :cond_41

    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v3, 0x0

    :try_start_2c
    iget v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-static {v4, v0, v3}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v4
    :try_end_32
    .catch Lsun/nio/fs/UnixException; {:try_start_2c .. :try_end_32} :catch_34
    .catchall {:try_start_2c .. :try_end_32} :catchall_7c

    move-object v2, v4

    .line 211
    goto :goto_38

    .line 209
    :catch_34
    move-exception v4

    .line 210
    .local v4, "x":Lsun/nio/fs/UnixException;
    :try_start_35
    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 212
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :goto_38
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v4
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_7c

    if-eqz v4, :cond_40

    const/16 v3, 0x200

    :cond_40
    move p3, v3

    .line 216
    .end local v2    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_41
    :try_start_41
    iget v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v3

    invoke-static {v2, v3, p3}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat(I[BI)V
    :try_end_4a
    .catch Lsun/nio/fs/UnixException; {:try_start_41 .. :try_end_4a} :catch_4b
    .catchall {:try_start_41 .. :try_end_4a} :catchall_7c

    .line 224
    goto :goto_6b

    .line 217
    :catch_4b
    move-exception v2

    .line 218
    .local v2, "x":Lsun/nio/fs/UnixException;
    and-int/lit16 v3, p3, 0x200

    if-eqz v3, :cond_68

    .line 219
    :try_start_50
    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v3, v4, :cond_61

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-eq v3, v4, :cond_61

    goto :goto_68

    .line 220
    :cond_61
    new-instance v3, Ljava/nio/file/DirectoryNotEmptyException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Lsun/nio/fs/UnixPath;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local p1    # "obj":Ljava/nio/file/Path;
    .end local p2    # "haveFlags":Z
    .end local p3    # "flags":I
    throw v3

    .line 223
    .restart local v0    # "file":Lsun/nio/fs/UnixPath;
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local p1    # "obj":Ljava/nio/file/Path;
    .restart local p2    # "haveFlags":Z
    .restart local p3    # "flags":I
    :cond_68
    :goto_68
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_7c

    .line 226
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :goto_6b
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 227
    nop

    .line 228
    return-void

    .line 199
    :cond_76
    :try_start_76
    new-instance v2, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v2}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local v0    # "file":Lsun/nio/fs/UnixPath;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local p1    # "obj":Ljava/nio/file/Path;
    .end local p2    # "haveFlags":Z
    .end local p3    # "flags":I
    throw v2
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7c

    .line 226
    .restart local v0    # "file":Lsun/nio/fs/UnixPath;
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local p1    # "obj":Ljava/nio/file/Path;
    .restart local p2    # "haveFlags":Z
    .restart local p3    # "flags":I
    :catchall_7c
    move-exception v2

    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 227
    throw v2
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    :try_start_9
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->closeImpl()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 78
    iget v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_26

    .line 81
    :cond_16
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 82
    nop

    .line 84
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 85
    return-void

    .line 81
    :catchall_26
    move-exception v0

    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 82
    throw v0
.end method

.method public bridge synthetic whitelist test-api deleteDirectory(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->deleteDirectory(Ljava/nio/file/Path;)V

    return-void
.end method

.method public blacklist deleteDirectory(Ljava/nio/file/Path;)V
    .registers 4
    .param p1, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x1

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->implDelete(Ljava/nio/file/Path;ZI)V

    .line 238
    return-void
.end method

.method public bridge synthetic whitelist test-api deleteFile(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->deleteFile(Ljava/nio/file/Path;)V

    return-void
.end method

.method public blacklist deleteFile(Ljava/nio/file/Path;)V
    .registers 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->implDelete(Ljava/nio/file/Path;ZI)V

    .line 233
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 580
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 583
    :cond_9
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream;->close()V

    .line 584
    return-void
.end method

.method public whitelist test-api getFileAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 309
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 7
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
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

    .line 320
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 321
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 322
    .local v1, "followLinks":Z
    invoke-direct {p0, v0, p2, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0, p0}, Lsun/nio/fs/UnixDirectoryStream;->iterator(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api move(Ljava/lang/Object;Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->move(Ljava/nio/file/Path;Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)V

    return-void
.end method

.method public blacklist move(Ljava/nio/file/Path;Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)V
    .registers 13
    .param p1, "fromObj"    # Ljava/nio/file/Path;
    .param p3, "toObj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    .local p2, "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 248
    .local v0, "from":Lsun/nio/fs/UnixPath;
    invoke-direct {p0, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 249
    .local v1, "to":Lsun/nio/fs/UnixPath;
    if-eqz p2, :cond_b9

    .line 251
    instance-of v2, p2, Lsun/nio/fs/UnixSecureDirectoryStream;

    if-eqz v2, :cond_b3

    .line 253
    move-object v2, p2

    check-cast v2, Lsun/nio/fs/UnixSecureDirectoryStream;

    .line 256
    .local v2, "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 257
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_31

    .line 258
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 259
    iget-object v4, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4, v1}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 263
    :cond_31
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 265
    :try_start_3a
    iget-object v4, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_a8

    .line 267
    :try_start_43
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_96

    iget-object v4, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v4
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_9c

    if-eqz v4, :cond_96

    .line 270
    :try_start_53
    iget v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    iget v6, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lsun/nio/fs/UnixNativeDispatcher;->renameat(I[BI[B)V
    :try_end_62
    .catch Lsun/nio/fs/UnixException; {:try_start_53 .. :try_end_62} :catch_63
    .catchall {:try_start_53 .. :try_end_62} :catchall_9c

    .line 277
    goto :goto_6f

    .line 271
    :catch_63
    move-exception v4

    .line 272
    .local v4, "x":Lsun/nio/fs/UnixException;
    :try_start_64
    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errno()I

    move-result v5

    sget v6, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-eq v5, v6, :cond_84

    .line 276
    invoke-virtual {v4, v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_9c

    .line 279
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :goto_6f
    :try_start_6f
    iget-object v4, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_a8

    .line 280
    nop

    .line 282
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    nop

    .line 284
    return-void

    .line 273
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :cond_84
    :try_start_84
    new-instance v5, Ljava/nio/file/AtomicMoveNotSupportedException;

    .line 274
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "from":Lsun/nio/fs/UnixPath;
    .end local v1    # "to":Lsun/nio/fs/UnixPath;
    .end local v2    # "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local p1    # "fromObj":Ljava/nio/file/Path;
    .end local p2    # "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .end local p3    # "toObj":Ljava/nio/file/Path;
    throw v5

    .line 268
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "from":Lsun/nio/fs/UnixPath;
    .restart local v1    # "to":Lsun/nio/fs/UnixPath;
    .restart local v2    # "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local p1    # "fromObj":Ljava/nio/file/Path;
    .restart local p2    # "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p3    # "toObj":Ljava/nio/file/Path;
    :cond_96
    new-instance v4, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v4}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local v0    # "from":Lsun/nio/fs/UnixPath;
    .end local v1    # "to":Lsun/nio/fs/UnixPath;
    .end local v2    # "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local p1    # "fromObj":Ljava/nio/file/Path;
    .end local p2    # "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .end local p3    # "toObj":Ljava/nio/file/Path;
    throw v4
    :try_end_9c
    .catchall {:try_start_84 .. :try_end_9c} :catchall_9c

    .line 279
    .restart local v0    # "from":Lsun/nio/fs/UnixPath;
    .restart local v1    # "to":Lsun/nio/fs/UnixPath;
    .restart local v2    # "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local p1    # "fromObj":Ljava/nio/file/Path;
    .restart local p2    # "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p3    # "toObj":Ljava/nio/file/Path;
    :catchall_9c
    move-exception v4

    :try_start_9d
    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 280
    nop

    .end local v0    # "from":Lsun/nio/fs/UnixPath;
    .end local v1    # "to":Lsun/nio/fs/UnixPath;
    .end local v2    # "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local p1    # "fromObj":Ljava/nio/file/Path;
    .end local p2    # "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .end local p3    # "toObj":Ljava/nio/file/Path;
    throw v4
    :try_end_a8
    .catchall {:try_start_9d .. :try_end_a8} :catchall_a8

    .line 282
    .restart local v0    # "from":Lsun/nio/fs/UnixPath;
    .restart local v1    # "to":Lsun/nio/fs/UnixPath;
    .restart local v2    # "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local p1    # "fromObj":Ljava/nio/file/Path;
    .restart local p2    # "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    .restart local p3    # "toObj":Ljava/nio/file/Path;
    :catchall_a8
    move-exception v4

    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    throw v4

    .line 252
    .end local v2    # "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_b3
    new-instance v2, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v2}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v2

    .line 250
    :cond_b9
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public bridge synthetic whitelist test-api newByteChannel(Ljava/lang/Object;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 9
    .param p1, "obj"    # Ljava/nio/file/Path;
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

    .line 158
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 160
    .local v0, "file":Lsun/nio/fs/UnixPath;
    sget v1, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 161
    invoke-static {v1, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 164
    .local v1, "mode":I
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "pathToCheck":Ljava/lang/String;
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 168
    :try_start_21
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_4f

    if-eqz v3, :cond_49

    .line 171
    :try_start_29
    iget v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-static {v3, v0, v2, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_2f
    .catch Lsun/nio/fs/UnixException; {:try_start_29 .. :try_end_2f} :catch_39
    .catchall {:try_start_29 .. :try_end_2f} :catchall_4f

    .line 177
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    return-object v3

    .line 172
    :catch_39
    move-exception v3

    .line 173
    .local v3, "x":Lsun/nio/fs/UnixException;
    :try_start_3a
    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4f

    .line 174
    nop

    .line 177
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    const/4 v4, 0x0

    return-object v4

    .line 169
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :cond_49
    :try_start_49
    new-instance v3, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v3}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local v0    # "file":Lsun/nio/fs/UnixPath;
    .end local v1    # "mode":I
    .end local v2    # "pathToCheck":Ljava/lang/String;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local p1    # "obj":Ljava/nio/file/Path;
    .end local p2    # "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .end local p3    # "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    throw v3
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4f

    .line 177
    .restart local v0    # "file":Lsun/nio/fs/UnixPath;
    .restart local v1    # "mode":I
    .restart local v2    # "pathToCheck":Ljava/lang/String;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local p1    # "obj":Ljava/nio/file/Path;
    .restart local p2    # "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .restart local p3    # "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :catchall_4f
    move-exception v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 178
    throw v3
.end method

.method public bridge synthetic whitelist test-api newDirectoryStream(Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixSecureDirectoryStream;->newDirectoryStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist newDirectoryStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;
    .registers 17
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct/range {p0 .. p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 109
    .local v1, "file":Lsun/nio/fs/UnixPath;
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v3

    .line 110
    .local v3, "child":Lsun/nio/fs/UnixPath;
    invoke-static/range {p2 .. p2}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v8

    .line 113
    .local v8, "followLinks":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    .line 114
    .local v9, "sm":Ljava/lang/SecurityManager;
    if-eqz v9, :cond_1b

    .line 115
    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 118
    :cond_1b
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 120
    :try_start_24
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_8d

    if-eqz v0, :cond_87

    .line 124
    const/4 v2, -0x1

    .line 125
    .local v2, "newdfd1":I
    const/4 v4, -0x1

    .line 126
    .local v4, "newdfd2":I
    const-wide/16 v5, 0x0

    .line 128
    .local v5, "ptr":J
    :try_start_30
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 129
    .local v0, "flags":I
    if-nez v8, :cond_37

    .line 130
    sget v7, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v7

    .line 131
    :cond_37
    iget v7, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v7, v10, v0, v11}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I

    move-result v7

    move v2, v7

    .line 132
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->dup(I)I

    move-result v7

    move v4, v7

    .line 133
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->fdopendir(I)J

    move-result-wide v10
    :try_end_4c
    .catch Lsun/nio/fs/UnixException; {:try_start_30 .. :try_end_4c} :catch_52
    .catchall {:try_start_30 .. :try_end_4c} :catchall_8d

    move-wide v5, v10

    .line 142
    .end local v0    # "flags":I
    move-wide v12, v5

    move v6, v4

    move-wide v4, v12

    move v0, v2

    goto :goto_6d

    .line 134
    :catch_52
    move-exception v0

    .line 135
    .local v0, "x":Lsun/nio/fs/UnixException;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_59

    .line 136
    :try_start_56
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 137
    :cond_59
    if-eq v4, v7, :cond_5e

    .line 138
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 139
    :cond_5e
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v7

    sget v10, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-eq v7, v10, :cond_7d

    .line 141
    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    move-wide v12, v5

    move v6, v4

    move-wide v4, v12

    move v0, v2

    .line 143
    .end local v2    # "newdfd1":I
    .end local v5    # "ptr":J
    .local v0, "newdfd1":I
    .local v4, "ptr":J
    .local v6, "newdfd2":I
    :goto_6d
    new-instance v2, Lsun/nio/fs/UnixSecureDirectoryStream;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lsun/nio/fs/UnixSecureDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_8d

    .line 145
    iget-object v7, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v7}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 143
    return-object v2

    .line 140
    .end local v6    # "newdfd2":I
    .local v0, "x":Lsun/nio/fs/UnixException;
    .restart local v2    # "newdfd1":I
    .local v4, "newdfd2":I
    .restart local v5    # "ptr":J
    :cond_7d
    :try_start_7d
    new-instance v7, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    .end local v1    # "file":Lsun/nio/fs/UnixPath;
    .end local v3    # "child":Lsun/nio/fs/UnixPath;
    .end local v8    # "followLinks":Z
    .end local v9    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local p1    # "obj":Ljava/nio/file/Path;
    .end local p2    # "options":[Ljava/nio/file/LinkOption;
    throw v7

    .line 121
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    .end local v2    # "newdfd1":I
    .end local v4    # "newdfd2":I
    .end local v5    # "ptr":J
    .restart local v1    # "file":Lsun/nio/fs/UnixPath;
    .restart local v3    # "child":Lsun/nio/fs/UnixPath;
    .restart local v8    # "followLinks":Z
    .restart local v9    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local p1    # "obj":Ljava/nio/file/Path;
    .restart local p2    # "options":[Ljava/nio/file/LinkOption;
    :cond_87
    new-instance v0, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v0}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local v1    # "file":Lsun/nio/fs/UnixPath;
    .end local v3    # "child":Lsun/nio/fs/UnixPath;
    .end local v8    # "followLinks":Z
    .end local v9    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .end local p1    # "obj":Ljava/nio/file/Path;
    .end local p2    # "options":[Ljava/nio/file/LinkOption;
    throw v0
    :try_end_8d
    .catchall {:try_start_7d .. :try_end_8d} :catchall_8d

    .line 145
    .restart local v1    # "file":Lsun/nio/fs/UnixPath;
    .restart local v3    # "child":Lsun/nio/fs/UnixPath;
    .restart local v8    # "followLinks":Z
    .restart local v9    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream;
    .restart local p1    # "obj":Ljava/nio/file/Path;
    .restart local p2    # "options":[Ljava/nio/file/LinkOption;
    :catchall_8d
    move-exception v0

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 146
    throw v0
.end method
