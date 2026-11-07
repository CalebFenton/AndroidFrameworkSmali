.class Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
.super Ljava/lang/Object;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixSecureDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicFileAttributeViewImpl"
.end annotation


# instance fields
.field final blacklist file:Lsun/nio/fs/UnixPath;

.field final blacklist followLinks:Z

.field final synthetic blacklist this$0:Lsun/nio/fs/UnixSecureDirectoryStream;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcheckWriteAccess(Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;)V
    .registers 1

    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->checkWriteAccess()V

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V
    .registers 4
    .param p2, "file"    # Lsun/nio/fs/UnixPath;
    .param p3, "followLinks"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    .line 337
    iput-boolean p3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    .line 338
    return-void
.end method

.method private blacklist checkWriteAccess()V
    .registers 4

    .line 353
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 354
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2b

    .line 355
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v1, :cond_18

    .line 356
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    goto :goto_2b

    .line 358
    :cond_18
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 361
    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 365
    const-string v0, "basic"

    return-object v0
.end method

.method blacklist open()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 342
    .local v0, "oflags":I
    iget-boolean v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    if-nez v1, :cond_9

    .line 343
    sget v1, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v1

    .line 345
    :cond_9
    :try_start_9
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I

    move-result v1
    :try_end_1a
    .catch Lsun/nio/fs/UnixException; {:try_start_9 .. :try_end_1a} :catch_1b

    return v1

    .line 346
    :catch_1b
    move-exception v1

    .line 347
    .local v1, "x":Lsun/nio/fs/UnixException;
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 348
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist test-api readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 372
    :try_start_d
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 375
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 376
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_44

    .line 377
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v1, :cond_31

    .line 378
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    goto :goto_44

    .line 380
    :cond_31
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_90

    .line 384
    :cond_44
    :goto_44
    :try_start_44
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v1, :cond_53

    .line 385
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v1

    invoke-static {v1}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    goto :goto_61

    .line 386
    :cond_53
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->followLinks:Z

    invoke-static {v1, v2, v3}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    :goto_61
    nop

    .line 389
    .local v1, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->asBasicFileAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v2
    :try_end_66
    .catch Lsun/nio/fs/UnixException; {:try_start_44 .. :try_end_66} :catch_74
    .catchall {:try_start_44 .. :try_end_66} :catchall_90

    .line 395
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    return-object v2

    .line 390
    .end local v1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_74
    move-exception v1

    .line 391
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_75
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_90

    .line 392
    nop

    .line 395
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 392
    const/4 v2, 0x0

    return-object v2

    .line 373
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_8a
    :try_start_8a
    new-instance v0, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v0}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
    throw v0
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_90

    .line 395
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
    :catchall_90
    move-exception v0

    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 396
    throw v0
.end method

.method public whitelist test-api setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .registers 9
    .param p1, "lastModifiedTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Ljava/nio/file/attribute/FileTime;
    .param p3, "createTime"    # Ljava/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->checkWriteAccess()V

    .line 407
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 409
    :try_start_10
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 412
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v0, :cond_27

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v0

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->open()I

    move-result v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_85

    .line 415
    .local v0, "fd":I
    :goto_2b
    if-eqz p1, :cond_2f

    if-nez p2, :cond_4a

    .line 417
    :cond_2f
    :try_start_2f
    invoke-static {v0}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    .line 418
    .local v1, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-nez p1, :cond_3a

    .line 419
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    move-object p1, v2

    .line 420
    :cond_3a
    if-nez p2, :cond_41

    .line 421
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2
    :try_end_40
    .catch Lsun/nio/fs/UnixException; {:try_start_2f .. :try_end_40} :catch_44
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    move-object p2, v2

    .line 424
    .end local v1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_41
    goto :goto_4a

    .line 435
    :catchall_42
    move-exception v1

    goto :goto_76

    .line 422
    :catch_44
    move-exception v1

    .line 423
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_45
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_42

    .line 428
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_4a
    :goto_4a
    :try_start_4a
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 429
    invoke-virtual {p2, v1}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 430
    invoke-virtual {p1, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 428
    invoke-static {v0, v1, v2, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_59
    .catch Lsun/nio/fs/UnixException; {:try_start_4a .. :try_end_59} :catch_5a
    .catchall {:try_start_4a .. :try_end_59} :catchall_42

    .line 433
    goto :goto_60

    .line 431
    :catch_5a
    move-exception v1

    .line 432
    .restart local v1    # "x":Lsun/nio/fs/UnixException;
    :try_start_5b
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_42

    .line 435
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :goto_60
    :try_start_60
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v1, :cond_67

    .line 436
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_85

    .line 439
    .end local v0    # "fd":I
    :cond_67
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 440
    nop

    .line 441
    return-void

    .line 435
    .restart local v0    # "fd":I
    :goto_76
    :try_start_76
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_7d

    .line 436
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 437
    :cond_7d
    nop

    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
    .end local p1    # "lastModifiedTime":Ljava/nio/file/attribute/FileTime;
    .end local p2    # "lastAccessTime":Ljava/nio/file/attribute/FileTime;
    .end local p3    # "createTime":Ljava/nio/file/attribute/FileTime;
    throw v1

    .line 410
    .end local v0    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
    .restart local p1    # "lastModifiedTime":Ljava/nio/file/attribute/FileTime;
    .restart local p2    # "lastAccessTime":Ljava/nio/file/attribute/FileTime;
    .restart local p3    # "createTime":Ljava/nio/file/attribute/FileTime;
    :cond_7f
    new-instance v0, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v0}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
    .end local p1    # "lastModifiedTime":Ljava/nio/file/attribute/FileTime;
    .end local p2    # "lastAccessTime":Ljava/nio/file/attribute/FileTime;
    .end local p3    # "createTime":Ljava/nio/file/attribute/FileTime;
    throw v0
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_85

    .line 439
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
    .restart local p1    # "lastModifiedTime":Ljava/nio/file/attribute/FileTime;
    .restart local p2    # "lastAccessTime":Ljava/nio/file/attribute/FileTime;
    .restart local p3    # "createTime":Ljava/nio/file/attribute/FileTime;
    :catchall_85
    move-exception v0

    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 440
    throw v0
.end method
