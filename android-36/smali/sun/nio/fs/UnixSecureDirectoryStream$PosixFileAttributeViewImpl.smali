.class Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
.super Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixSecureDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PosixFileAttributeViewImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/fs/UnixSecureDirectoryStream;


# direct methods
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

    .line 450
    iput-object p1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    .line 451
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    .line 452
    return-void
.end method

.method private blacklist checkWriteAndUserAccess()V
    .registers 4

    .line 455
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 456
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 457
    invoke-static {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->-$$Nest$mcheckWriteAccess(Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;)V

    .line 458
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 460
    :cond_13
    return-void
.end method

.method private blacklist setOwners(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->checkWriteAndUserAccess()V

    .line 527
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 529
    :try_start_10
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 532
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v0, :cond_27

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v0

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->open()I

    move-result v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_67

    .line 534
    .local v0, "fd":I
    :goto_2b
    :try_start_2b
    invoke-static {v0, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V
    :try_end_2e
    .catch Lsun/nio/fs/UnixException; {:try_start_2b .. :try_end_2e} :catch_3a
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    .line 538
    :try_start_2e
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v1, :cond_47

    if-ltz v0, :cond_47

    .line 539
    :goto_34
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_67

    goto :goto_47

    .line 538
    :catchall_38
    move-exception v1

    goto :goto_56

    .line 535
    :catch_3a
    move-exception v1

    .line 536
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_3b
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 538
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :try_start_40
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_67

    if-eqz v1, :cond_47

    if-ltz v0, :cond_47

    .line 539
    goto :goto_34

    .line 542
    .end local v0    # "fd":I
    :cond_47
    :goto_47
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 543
    nop

    .line 544
    return-void

    .line 538
    .restart local v0    # "fd":I
    :goto_56
    :try_start_56
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_5f

    if-ltz v0, :cond_5f

    .line 539
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 540
    :cond_5f
    nop

    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    .end local p1    # "uid":I
    .end local p2    # "gid":I
    throw v1

    .line 530
    .end local v0    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    .restart local p1    # "uid":I
    .restart local p2    # "gid":I
    :cond_61
    new-instance v0, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v0}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    .end local p1    # "uid":I
    .end local p2    # "gid":I
    throw v0
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_67

    .line 542
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    .restart local p1    # "uid":I
    .restart local p2    # "gid":I
    :catchall_67
    move-exception v0

    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 543
    throw v0
.end method


# virtual methods
.method public whitelist test-api getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 464
    const-string v0, "posix"

    return-object v0
.end method

.method public bridge synthetic whitelist test-api readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 470
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_35

    .line 471
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v1, :cond_18

    .line 472
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    goto :goto_2b

    .line 474
    :cond_18
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 475
    :goto_2b
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 478
    :cond_35
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 480
    :try_start_42
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v1
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_97

    if-eqz v1, :cond_91

    .line 484
    :try_start_4e
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v1, :cond_5d

    .line 485
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v1

    invoke-static {v1}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    goto :goto_6b

    .line 486
    :cond_5d
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->followLinks:Z

    invoke-static {v1, v2, v3}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1
    :try_end_6b
    .catch Lsun/nio/fs/UnixException; {:try_start_4e .. :try_end_6b} :catch_7b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_97

    :goto_6b
    nop

    .line 487
    .local v1, "attrs":Lsun/nio/fs/UnixFileAttributes;
    nop

    .line 493
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 487
    return-object v1

    .line 488
    .end local v1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_7b
    move-exception v1

    .line 489
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_7c
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_97

    .line 490
    nop

    .line 493
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 490
    const/4 v2, 0x0

    return-object v2

    .line 481
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_91
    :try_start_91
    new-instance v1, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v1}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local v0    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    throw v1
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_97

    .line 493
    .restart local v0    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    :catchall_97
    move-exception v1

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 494
    throw v1
.end method

.method public whitelist test-api setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    .registers 4
    .param p1, "group"    # Ljava/nio/file/attribute/GroupPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    instance-of v0, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-eqz v0, :cond_10

    .line 569
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-virtual {v0}, Lsun/nio/fs/UnixUserPrincipals$Group;->gid()I

    move-result v0

    .line 570
    .local v0, "gid":I
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->setOwners(II)V

    .line 571
    return-void

    .line 568
    .end local v0    # "gid":I
    :cond_10
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .registers 4
    .param p1, "owner"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    instance-of v0, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    if-eqz v0, :cond_1c

    .line 557
    instance-of v0, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-nez v0, :cond_14

    .line 559
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v0}, Lsun/nio/fs/UnixUserPrincipals$User;->uid()I

    move-result v0

    .line 560
    .local v0, "uid":I
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->setOwners(II)V

    .line 561
    return-void

    .line 558
    .end local v0    # "uid":I
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\'owner\' parameter can\'t be a group"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_1c
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setPermissions(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->checkWriteAndUserAccess()V

    .line 504
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 506
    :try_start_10
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 509
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v0, :cond_27

    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetdfd(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v0

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->open()I

    move-result v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_6b

    .line 511
    .local v0, "fd":I
    :goto_2b
    :try_start_2b
    invoke-static {p1}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v1

    invoke-static {v0, v1}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_32
    .catch Lsun/nio/fs/UnixException; {:try_start_2b .. :try_end_32} :catch_3e
    .catchall {:try_start_2b .. :try_end_32} :catchall_3c

    .line 515
    :try_start_32
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v1, :cond_4b

    if-ltz v0, :cond_4b

    .line 516
    :goto_38
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_6b

    goto :goto_4b

    .line 515
    :catchall_3c
    move-exception v1

    goto :goto_5a

    .line 512
    :catch_3e
    move-exception v1

    .line 513
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_3f
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 515
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :try_start_44
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_6b

    if-eqz v1, :cond_4b

    if-ltz v0, :cond_4b

    .line 516
    goto :goto_38

    .line 519
    .end local v0    # "fd":I
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v0}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 520
    nop

    .line 521
    return-void

    .line 515
    .restart local v0    # "fd":I
    :goto_5a
    :try_start_5a
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_63

    if-ltz v0, :cond_63

    .line 516
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 517
    :cond_63
    nop

    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    .end local p1    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    throw v1

    .line 507
    .end local v0    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    .restart local p1    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :cond_65
    new-instance v0, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v0}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    .end local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    .end local p1    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    throw v0
    :try_end_6b
    .catchall {:try_start_5a .. :try_end_6b} :catchall_6b

    .line 519
    .restart local p0    # "this":Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    .restart local p1    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :catchall_6b
    move-exception v0

    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->-$$Nest$fgetds(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 520
    throw v0
.end method
