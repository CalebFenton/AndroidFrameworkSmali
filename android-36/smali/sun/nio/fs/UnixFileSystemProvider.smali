.class public abstract Lsun/nio/fs/UnixFileSystemProvider;
.super Lsun/nio/fs/AbstractFileSystemProvider;
.source "UnixFileSystemProvider.java"


# static fields
.field private static final blacklist EMPTY_PATH:[B

.field private static final blacklist USER_DIR:Ljava/lang/String; = "user.dir"


# instance fields
.field private final blacklist theFileSystem:Lsun/nio/fs/UnixFileSystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lsun/nio/fs/UnixFileSystemProvider;->EMPTY_PATH:[B

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Lsun/nio/fs/AbstractFileSystemProvider;-><init>()V

    .line 56
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "userDir":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileSystemProvider;->newFileSystem(Ljava/lang/String;)Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    .line 58
    return-void
.end method

.method private blacklist checkUri(Ljava/net/URI;)V
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;

    .line 75
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 77
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 79
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_47

    .line 82
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 84
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    .line 86
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 88
    return-void

    .line 87
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fragment component present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Query component present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path component should be \'/\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path component is undefined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "path":Ljava/lang/String;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI does not match this provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final varargs blacklist chain([Lsun/nio/fs/AbstractFileTypeDetector;)Ljava/nio/file/spi/FileTypeDetector;
    .registers 3
    .param p1, "detectors"    # [Lsun/nio/fs/AbstractFileTypeDetector;

    .line 563
    new-instance v0, Lsun/nio/fs/UnixFileSystemProvider$2;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileSystemProvider$2;-><init>(Lsun/nio/fs/UnixFileSystemProvider;[Lsun/nio/fs/AbstractFileTypeDetector;)V

    return-object v0
.end method

.method public varargs whitelist test-api checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .registers 13
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "modes"    # [Ljava/nio/file/AccessMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 276
    .local v0, "file":Lsun/nio/fs/UnixPath;
    const/4 v1, 0x0

    .line 277
    .local v1, "e":Z
    const/4 v2, 0x0

    .line 278
    .local v2, "r":Z
    const/4 v3, 0x0

    .line 279
    .local v3, "w":Z
    const/4 v4, 0x0

    .line 281
    .local v4, "x":Z
    array-length v5, p2

    if-nez v5, :cond_d

    .line 282
    const/4 v1, 0x1

    goto :goto_2e

    .line 284
    :cond_d
    array-length v5, p2

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_2e

    aget-object v7, p2, v6

    .line 285
    .local v7, "mode":Ljava/nio/file/AccessMode;
    sget-object v8, Lsun/nio/fs/UnixFileSystemProvider$3;->$SwitchMap$java$nio$file$AccessMode:[I

    invoke-virtual {v7}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_62

    .line 289
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Should not get here"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 288
    :pswitch_26
    const/4 v4, 0x1

    goto :goto_2b

    .line 287
    :pswitch_28
    const/4 v3, 0x1

    goto :goto_2b

    .line 286
    :pswitch_2a
    const/4 v2, 0x1

    .line 284
    .end local v7    # "mode":Ljava/nio/file/AccessMode;
    :goto_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 294
    :cond_2e
    :goto_2e
    const/4 v5, 0x0

    .line 295
    .local v5, "mode":I
    if-nez v1, :cond_33

    if-eqz v2, :cond_3e

    .line 296
    :cond_33
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 297
    if-eqz v2, :cond_3b

    sget v6, Lsun/nio/fs/UnixConstants;->R_OK:I

    goto :goto_3d

    :cond_3b
    sget v6, Lsun/nio/fs/UnixConstants;->F_OK:I

    :goto_3d
    or-int/2addr v5, v6

    .line 299
    :cond_3e
    if-eqz v3, :cond_46

    .line 300
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 301
    sget v6, Lsun/nio/fs/UnixConstants;->W_OK:I

    or-int/2addr v5, v6

    .line 303
    :cond_46
    if-eqz v4, :cond_58

    .line 304
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 305
    .local v6, "sm":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_55

    .line 307
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 309
    :cond_55
    sget v7, Lsun/nio/fs/UnixConstants;->X_OK:I

    or-int/2addr v5, v7

    .line 312
    .end local v6    # "sm":Ljava/lang/SecurityManager;
    :cond_58
    :try_start_58
    invoke-static {v0, v5}, Lsun/nio/fs/UnixNativeDispatcher;->access(Lsun/nio/fs/UnixPath;I)V
    :try_end_5b
    .catch Lsun/nio/fs/UnixException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 315
    goto :goto_60

    .line 313
    :catch_5c
    move-exception v6

    .line 314
    .local v6, "exc":Lsun/nio/fs/UnixException;
    invoke-virtual {v6, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 316
    .end local v6    # "exc":Lsun/nio/fs/UnixException;
    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_28
        :pswitch_26
    .end packed-switch
.end method

.method blacklist checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 3
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 108
    if-eqz p1, :cond_10

    .line 110
    instance-of v0, p1, Lsun/nio/fs/UnixPath;

    if-eqz v0, :cond_a

    .line 112
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixPath;

    return-object v0

    .line 111
    :cond_a
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 109
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public varargs whitelist test-api copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .registers 6
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 260
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 259
    invoke-static {v0, v1, p3}, Lsun/nio/fs/UnixCopyFile;->copy(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V

    .line 262
    return-void
.end method

.method public varargs whitelist test-api createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 8
    .param p1, "obj"    # Ljava/nio/file/Path;
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

    .line 395
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 396
    .local v0, "dir":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 398
    sget v1, Lsun/nio/fs/UnixFileModeAttribute;->ALL_PERMISSIONS:I

    invoke-static {v1, p2}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 400
    .local v1, "mode":I
    :try_start_d
    invoke-static {v0, v1}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir(Lsun/nio/fs/UnixPath;I)V
    :try_end_10
    .catch Lsun/nio/fs/UnixException; {:try_start_d .. :try_end_10} :catch_11

    .line 405
    goto :goto_1d

    .line 401
    :catch_11
    move-exception v2

    .line 402
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-eq v3, v4, :cond_1e

    .line 404
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 406
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :goto_1d
    return-void

    .line 403
    .restart local v2    # "x":Lsun/nio/fs/UnixException;
    :cond_1e
    new-instance v3, Ljava/nio/file/FileAlreadyExistsException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 8
    .param p1, "obj1"    # Ljava/nio/file/Path;
    .param p2, "obj2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 484
    .local v0, "link":Lsun/nio/fs/UnixPath;
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 487
    .local v1, "existing":Lsun/nio/fs/UnixPath;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 488
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1e

    .line 489
    new-instance v3, Ljava/nio/file/LinkPermission;

    const-string v4, "hard"

    invoke-direct {v3, v4}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 490
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 491
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 494
    :cond_1e
    :try_start_1e
    invoke-static {v1, v0}, Lsun/nio/fs/UnixNativeDispatcher;->link(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_21
    .catch Lsun/nio/fs/UnixException; {:try_start_1e .. :try_end_21} :catch_22

    .line 497
    goto :goto_26

    .line 495
    :catch_22
    move-exception v3

    .line 496
    .local v3, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v3, v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    .line 498
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :goto_26
    return-void
.end method

.method public varargs whitelist test-api createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 9
    .param p1, "obj1"    # Ljava/nio/file/Path;
    .param p2, "obj2"    # Ljava/nio/file/Path;
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

    .line 456
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 457
    .local v0, "link":Lsun/nio/fs/UnixPath;
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 460
    .local v1, "target":Lsun/nio/fs/UnixPath;
    array-length v2, p3

    if-gtz v2, :cond_2b

    .line 467
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 468
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1e

    .line 469
    new-instance v3, Ljava/nio/file/LinkPermission;

    const-string v4, "symbolic"

    invoke-direct {v3, v4}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 470
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 475
    :cond_1e
    :try_start_1e
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v3

    invoke-static {v3, v0}, Lsun/nio/fs/UnixNativeDispatcher;->symlink([BLsun/nio/fs/UnixPath;)V
    :try_end_25
    .catch Lsun/nio/fs/UnixException; {:try_start_1e .. :try_end_25} :catch_26

    .line 478
    goto :goto_2a

    .line 476
    :catch_26
    move-exception v3

    .line 477
    .local v3, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 479
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :goto_2a
    return-void

    .line 461
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_2b
    const/4 v2, 0x0

    invoke-static {v2, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    .line 462
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Initial file attributesnot supported when creating symbolic link"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final blacklist exists(Ljava/nio/file/Path;)Z
    .registers 4
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 539
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 540
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 541
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->exists(Lsun/nio/fs/UnixPath;)Z

    move-result v1

    return v1
.end method

.method public varargs whitelist test-api getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 8
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

    .line 121
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 122
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 123
    .local v1, "followLinks":Z
    const-class v2, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p2, v2, :cond_11

    .line 124
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createBasicView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Basic;

    move-result-object v2

    return-object v2

    .line 125
    :cond_11
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-ne p2, v2, :cond_1a

    .line 126
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;

    move-result-object v2

    return-object v2

    .line 127
    :cond_1a
    const-class v2, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p2, v2, :cond_23

    .line 128
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createOwnerView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/FileOwnerAttributeViewImpl;

    move-result-object v2

    return-object v2

    .line 129
    :cond_23
    if-eqz p2, :cond_2a

    .line 131
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/nio/file/attribute/FileAttributeView;

    return-object v2

    .line 130
    :cond_2a
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method protected varargs blacklist getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;
    .registers 7
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;

    .line 158
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 159
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 160
    .local v1, "followLinks":Z
    const-string v2, "basic"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 161
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createBasicView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Basic;

    move-result-object v2

    return-object v2

    .line 162
    :cond_15
    const-string v2, "posix"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 163
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;

    move-result-object v2

    return-object v2

    .line 164
    :cond_22
    const-string v2, "unix"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 165
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createUnixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Unix;

    move-result-object v2

    return-object v2

    .line 166
    :cond_2f
    const-string v2, "owner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 167
    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributeViews;->createOwnerView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/FileOwnerAttributeViewImpl;

    move-result-object v2

    return-object v2

    .line 168
    :cond_3c
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist test-api getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .registers 4
    .param p1, "obj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getFileStore"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract blacklist getFileStore(Lsun/nio/fs/UnixPath;)Ljava/nio/file/FileStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 98
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkUri(Ljava/net/URI;)V

    .line 99
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    return-object v0
.end method

.method blacklist getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
    .registers 2

    .line 548
    new-instance v0, Lsun/nio/fs/UnixFileSystemProvider$1;

    invoke-direct {v0, p0}, Lsun/nio/fs/UnixFileSystemProvider$1;-><init>(Lsun/nio/fs/UnixFileSystemProvider;)V

    return-object v0
.end method

.method public whitelist test-api getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 104
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    invoke-static {v0, p1}, Lsun/nio/fs/UnixUriUtils;->fromUri(Lsun/nio/fs/UnixFileSystem;Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getScheme()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "file"

    return-object v0
.end method

.method public blacklist getSunPathForSocketFile(Ljava/nio/file/Path;)[B
    .registers 4
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 579
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 580
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 581
    sget-object v1, Lsun/nio/fs/UnixFileSystemProvider;->EMPTY_PATH:[B

    return-object v1

    .line 583
    :cond_d
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v1

    return-object v1
.end method

.method blacklist implDelete(Ljava/nio/file/Path;Z)Z
    .registers 9
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "failIfNotExists"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 228
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkDelete()V

    .line 231
    const/4 v1, 0x0

    .line 233
    .local v1, "attrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v2, 0x0

    :try_start_9
    invoke-static {v0, v2}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v3

    move-object v1, v3

    .line 234
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 235
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V

    goto :goto_1b

    .line 237
    :cond_18
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_1b
    .catch Lsun/nio/fs/UnixException; {:try_start_9 .. :try_end_1b} :catch_1d

    .line 239
    :goto_1b
    const/4 v2, 0x1

    return v2

    .line 240
    :catch_1d
    move-exception v3

    .line 242
    .local v3, "x":Lsun/nio/fs/UnixException;
    if-nez p2, :cond_29

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ENOENT:I

    if-ne v4, v5, :cond_29

    .line 243
    return v2

    .line 246
    :cond_29
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 247
    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v4, v5, :cond_42

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-eq v4, v5, :cond_42

    goto :goto_4c

    .line 248
    :cond_42
    new-instance v2, Ljava/nio/file/DirectoryNotEmptyException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_4c
    :goto_4c
    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 251
    return v2
.end method

.method public final blacklist isDirectory(Ljava/nio/file/Path;)Z
    .registers 6
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 523
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 524
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 525
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->stat(Lsun/nio/fs/UnixPath;)I

    move-result v1

    .line 526
    .local v1, "mode":I
    sget v2, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v2, v1

    sget v3, Lsun/nio/fs/UnixConstants;->S_IFDIR:I

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method public whitelist test-api isHidden(Ljava/nio/file/Path;)Z
    .registers 8
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 352
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 353
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 354
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileName()Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 355
    .local v1, "name":Lsun/nio/fs/UnixPath;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 356
    return v2

    .line 359
    :cond_f
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 360
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixFileSystem;->defaultDirectory()[B

    move-result-object v3

    .local v3, "path":[B
    goto :goto_22

    .line 362
    .end local v3    # "path":[B
    :cond_1e
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v3

    .line 364
    .restart local v3    # "path":[B
    :goto_22
    aget-byte v4, v3, v2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_29

    const/4 v2, 0x1

    :cond_29
    return v2
.end method

.method public final blacklist isRegularFile(Ljava/nio/file/Path;)Z
    .registers 6
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 531
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 532
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 533
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->stat(Lsun/nio/fs/UnixPath;)I

    move-result v1

    .line 534
    .local v1, "mode":I
    sget v2, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v2, v1

    sget v3, Lsun/nio/fs/UnixConstants;->S_IFREG:I

    if-ne v2, v3, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method public whitelist test-api isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 8
    .param p1, "obj1"    # Ljava/nio/file/Path;
    .param p2, "obj2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 321
    .local v0, "file1":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0, p2}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 322
    return v2

    .line 323
    :cond_c
    if-eqz p2, :cond_36

    .line 325
    instance-of v1, p2, Lsun/nio/fs/UnixPath;

    const/4 v3, 0x0

    if-nez v1, :cond_14

    .line 326
    return v3

    .line 327
    :cond_14
    move-object v1, p2

    check-cast v1, Lsun/nio/fs/UnixPath;

    .line 330
    .local v1, "file2":Lsun/nio/fs/UnixPath;
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 331
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 336
    :try_start_1d
    invoke-static {v0, v2}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v4
    :try_end_21
    .catch Lsun/nio/fs/UnixException; {:try_start_1d .. :try_end_21} :catch_31

    .line 340
    .local v4, "attrs1":Lsun/nio/fs/UnixFileAttributes;
    nop

    .line 342
    :try_start_22
    invoke-static {v1, v2}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v2
    :try_end_26
    .catch Lsun/nio/fs/UnixException; {:try_start_22 .. :try_end_26} :catch_2c

    .line 346
    .local v2, "attrs2":Lsun/nio/fs/UnixFileAttributes;
    nop

    .line 347
    invoke-virtual {v4, v2}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v3

    return v3

    .line 343
    .end local v2    # "attrs2":Lsun/nio/fs/UnixFileAttributes;
    :catch_2c
    move-exception v2

    .line 344
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 345
    return v3

    .line 337
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    .end local v4    # "attrs1":Lsun/nio/fs/UnixFileAttributes;
    :catch_31
    move-exception v2

    .line 338
    .restart local v2    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 339
    return v3

    .line 324
    .end local v1    # "file2":Lsun/nio/fs/UnixPath;
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :cond_36
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public varargs whitelist test-api move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .registers 6
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "target"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 269
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 268
    invoke-static {v0, v1, p3}, Lsun/nio/fs/UnixCopyFile;->move(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V

    .line 271
    return-void
.end method

.method public varargs whitelist test-api newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 10
    .param p1, "obj"    # Ljava/nio/file/Path;
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

    .line 194
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p4, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 195
    .local v0, "file":Lsun/nio/fs/UnixPath;
    sget v1, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 196
    invoke-static {v1, p4}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 197
    .local v1, "mode":I
    const/4 v2, 0x0

    if-nez p3, :cond_f

    move-object v3, v2

    goto :goto_14

    :cond_f
    const/4 v3, 0x0

    invoke-static {p3, v3}, Lsun/nio/ch/ThreadPool;->wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;

    move-result-object v3

    .line 199
    .local v3, "pool":Lsun/nio/ch/ThreadPool;
    :goto_14
    nop

    .line 200
    :try_start_15
    invoke-static {v0, p2, v1, v3}, Lsun/nio/fs/UnixChannelFactory;->newAsynchronousFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;ILsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object v2
    :try_end_19
    .catch Lsun/nio/fs/UnixException; {:try_start_15 .. :try_end_19} :catch_1a

    .line 199
    return-object v2

    .line 201
    :catch_1a
    move-exception v4

    .line 202
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 203
    return-object v2
.end method

.method public varargs whitelist test-api newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 8
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

    .line 214
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 215
    .local v0, "file":Lsun/nio/fs/UnixPath;
    sget v1, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 216
    invoke-static {v1, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 218
    .local v1, "mode":I
    :try_start_a
    invoke-static {v0, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_e
    .catch Lsun/nio/fs/UnixException; {:try_start_a .. :try_end_e} :catch_f

    return-object v2

    .line 219
    :catch_f
    move-exception v2

    .line 220
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 221
    const/4 v3, 0x0

    return-object v3
.end method

.method public whitelist test-api newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .registers 13
    .param p1, "obj"    # Ljava/nio/file/Path;
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

    .line 413
    .local p2, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 414
    .local v1, "dir":Lsun/nio/fs/UnixPath;
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 415
    if-eqz p2, :cond_7a

    .line 420
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->openatSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-nez v0, :cond_29

    .line 422
    :cond_13
    :try_start_13
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->opendir(Lsun/nio/fs/UnixPath;)J

    move-result-wide v2

    .line 423
    .local v2, "ptr":J
    new-instance v0, Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {v0, v1, v2, v3, p2}, Lsun/nio/fs/UnixDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JLjava/nio/file/DirectoryStream$Filter;)V
    :try_end_1c
    .catch Lsun/nio/fs/UnixException; {:try_start_13 .. :try_end_1c} :catch_1d

    return-object v0

    .line 424
    .end local v2    # "ptr":J
    :catch_1d
    move-exception v0

    .line 425
    .local v0, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-eq v2, v3, :cond_70

    .line 427
    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 433
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_29
    const/4 v2, -0x1

    .line 434
    .local v2, "dfd1":I
    const/4 v3, -0x1

    .line 435
    .local v3, "dfd2":I
    const-wide/16 v4, 0x0

    .line 437
    .local v4, "dp":J
    :try_start_2d
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {v1, v0, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v0

    move v2, v0

    .line 438
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->dup(I)I

    move-result v0

    move v3, v0

    .line 439
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->fdopendir(I)J

    move-result-wide v6
    :try_end_3e
    .catch Lsun/nio/fs/UnixException; {:try_start_2d .. :try_end_3e} :catch_44

    move-wide v4, v6

    .line 448
    move v6, v2

    move-wide v8, v4

    move v4, v3

    move-wide v2, v8

    goto :goto_5f

    .line 440
    :catch_44
    move-exception v0

    .line 441
    .restart local v0    # "x":Lsun/nio/fs/UnixException;
    const/4 v6, -0x1

    if-eq v2, v6, :cond_4b

    .line 442
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 443
    :cond_4b
    if-eq v3, v6, :cond_50

    .line 444
    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 445
    :cond_50
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v6

    sget v7, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-eq v6, v7, :cond_66

    .line 447
    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    move v6, v2

    move-wide v8, v4

    move v4, v3

    move-wide v2, v8

    .line 449
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    .end local v3    # "dfd2":I
    .local v2, "dp":J
    .local v4, "dfd2":I
    .local v6, "dfd1":I
    :goto_5f
    new-instance v0, Lsun/nio/fs/UnixSecureDirectoryStream;

    move-object v5, p2

    .end local p2    # "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    .local v5, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-direct/range {v0 .. v5}, Lsun/nio/fs/UnixSecureDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V

    .end local v5    # "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    .restart local p2    # "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    return-object v0

    .line 446
    .end local v6    # "dfd1":I
    .restart local v0    # "x":Lsun/nio/fs/UnixException;
    .local v2, "dfd1":I
    .restart local v3    # "dfd2":I
    .local v4, "dp":J
    :cond_66
    new-instance v6, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 426
    .end local v2    # "dfd1":I
    .end local v3    # "dfd2":I
    .end local v4    # "dp":J
    :cond_70
    new-instance v2, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public varargs whitelist test-api newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 8
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
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 178
    .local v0, "file":Lsun/nio/fs/UnixPath;
    sget v1, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 179
    invoke-static {v1, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 181
    .local v1, "mode":I
    :try_start_a
    invoke-static {v0, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_e
    .catch Lsun/nio/fs/UnixException; {:try_start_a .. :try_end_e} :catch_f

    return-object v2

    .line 182
    :catch_f
    move-exception v2

    .line 183
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 184
    const/4 v3, 0x0

    return-object v3
.end method

.method public final whitelist test-api newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
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

    .line 92
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixFileSystemProvider;->checkUri(Ljava/net/URI;)V

    .line 93
    new-instance v0, Ljava/nio/file/FileSystemAlreadyExistsException;

    invoke-direct {v0}, Ljava/nio/file/FileSystemAlreadyExistsException;-><init>()V

    throw v0
.end method

.method abstract blacklist newFileSystem(Ljava/lang/String;)Lsun/nio/fs/UnixFileSystem;
.end method

.method public varargs whitelist test-api readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 6
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
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

    .line 142
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    if-ne p2, v0, :cond_7

    .line 143
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    .local v0, "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    goto :goto_d

    .line 144
    .end local v0    # "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    :cond_7
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributes;

    if-ne p2, v0, :cond_18

    .line 145
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 150
    .restart local v0    # "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    :goto_d
    invoke-virtual {p0, p1, v0, p3}, Lsun/nio/fs/UnixFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    return-object v1

    .line 146
    .end local v0    # "view":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/BasicFileAttributeView;>;"
    :cond_18
    if-nez p2, :cond_20

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 149
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 7
    .param p1, "obj1"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 504
    .local v0, "link":Lsun/nio/fs/UnixPath;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 505
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_18

    .line 506
    new-instance v2, Ljava/io/FilePermission;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v3

    const-string v4, "readlink"

    invoke-direct {v2, v3, v4}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .local v2, "perm":Ljava/io/FilePermission;
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 511
    .end local v2    # "perm":Ljava/io/FilePermission;
    :cond_18
    :try_start_18
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->readlink(Lsun/nio/fs/UnixPath;)[B

    move-result-object v2

    .line 512
    .local v2, "target":[B
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V
    :try_end_25
    .catch Lsun/nio/fs/UnixException; {:try_start_18 .. :try_end_25} :catch_26

    return-object v3

    .line 513
    .end local v2    # "target":[B
    :catch_26
    move-exception v2

    .line 514
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-eq v3, v4, :cond_34

    .line 516
    invoke-virtual {v2, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 517
    const/4 v3, 0x0

    return-object v3

    .line 515
    :cond_34
    new-instance v3, Ljava/nio/file/NotLinkException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/NotLinkException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method blacklist theFileSystem()Lsun/nio/fs/UnixFileSystem;
    .registers 2

    .line 61
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystemProvider;->theFileSystem:Lsun/nio/fs/UnixFileSystem;

    return-object v0
.end method
