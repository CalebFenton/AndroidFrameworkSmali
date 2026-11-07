.class Lsun/nio/fs/UnixCopyFile;
.super Ljava/lang/Object;
.source "UnixCopyFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixCopyFile$Flags;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcopyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs blacklist copy(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
    .registers 13
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "target"    # Lsun/nio/fs/UnixPath;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 511
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_c

    .line 512
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 513
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 517
    :cond_c
    invoke-static {p2}, Lsun/nio/fs/UnixCopyFile$Flags;->fromCopyOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;

    move-result-object v5

    .line 519
    .local v5, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    const/4 v2, 0x0

    .line 520
    .local v2, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v3, 0x0

    .line 524
    .local v3, "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :try_start_12
    iget-boolean v0, v5, Lsun/nio/fs/UnixCopyFile$Flags;->followLinks:Z

    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0
    :try_end_18
    .catch Lsun/nio/fs/UnixException; {:try_start_12 .. :try_end_18} :catch_1a

    move-object v2, v0

    .line 527
    goto :goto_1e

    .line 525
    :catch_1a
    move-exception v0

    .line 526
    .local v0, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 530
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :goto_1e
    if-eqz v1, :cond_30

    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 531
    new-instance v0, Ljava/nio/file/LinkPermission;

    const-string v4, "symbolic"

    invoke-direct {v0, v4}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 536
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    invoke-static {p1, v4}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0
    :try_end_35
    .catch Lsun/nio/fs/UnixException; {:try_start_31 .. :try_end_35} :catch_38

    move-object v3, v0

    .line 539
    move-object v8, v3

    goto :goto_3a

    .line 537
    :catch_38
    move-exception v0

    move-object v8, v3

    .line 540
    .end local v3    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    .local v8, "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_3a
    if-eqz v8, :cond_3d

    const/4 v4, 0x1

    :cond_3d
    move v9, v4

    .line 546
    .local v9, "targetExists":Z
    if-eqz v9, :cond_89

    .line 547
    invoke-virtual {v2, v8}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 548
    return-void

    .line 549
    :cond_47
    iget-boolean v0, v5, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    if-eqz v0, :cond_7f

    .line 553
    :try_start_4b
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 554
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V

    goto :goto_58

    .line 556
    :cond_55
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_58
    .catch Lsun/nio/fs/UnixException; {:try_start_4b .. :try_end_58} :catch_59

    .line 567
    :goto_58
    goto :goto_89

    .line 558
    :catch_59
    move-exception v0

    .line 560
    .restart local v0    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 561
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v3, v4, :cond_71

    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-eq v3, v4, :cond_71

    goto :goto_7b

    .line 563
    :cond_71
    new-instance v3, Ljava/nio/file/DirectoryNotEmptyException;

    .line 564
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 566
    :cond_7b
    :goto_7b
    invoke-virtual {v0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_89

    .line 550
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_7f
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    .line 551
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_89
    :goto_89
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 572
    invoke-static {p0, v2, p1, v5}, Lsun/nio/fs/UnixCopyFile;->copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 573
    return-void

    .line 575
    :cond_93
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 576
    invoke-static {p0, v2, p1, v5}, Lsun/nio/fs/UnixCopyFile;->copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 577
    return-void

    .line 579
    :cond_9d
    iget-boolean v0, v5, Lsun/nio/fs/UnixCopyFile$Flags;->interruptible:Z

    if-nez v0, :cond_aa

    .line 581
    const-wide/16 v6, 0x0

    move-object v4, p1

    move-object v3, v2

    move-object v2, p0

    .end local p0    # "source":Lsun/nio/fs/UnixPath;
    .end local p1    # "target":Lsun/nio/fs/UnixPath;
    .local v2, "source":Lsun/nio/fs/UnixPath;
    .local v3, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .local v4, "target":Lsun/nio/fs/UnixPath;
    invoke-static/range {v2 .. v7}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    .line 582
    return-void

    .line 586
    .end local v3    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v4    # "target":Lsun/nio/fs/UnixPath;
    .local v2, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local p0    # "source":Lsun/nio/fs/UnixPath;
    .restart local p1    # "target":Lsun/nio/fs/UnixPath;
    :cond_aa
    move-object v4, p1

    move-object v3, v2

    move-object v2, p0

    .end local p0    # "source":Lsun/nio/fs/UnixPath;
    .end local p1    # "target":Lsun/nio/fs/UnixPath;
    .local v2, "source":Lsun/nio/fs/UnixPath;
    .restart local v3    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local v4    # "target":Lsun/nio/fs/UnixPath;
    move-object p0, v3

    .line 587
    .local p0, "attrsToCopy":Lsun/nio/fs/UnixFileAttributes;
    new-instance p1, Lsun/nio/fs/UnixCopyFile$1;

    invoke-direct {p1, v2, p0, v4, v5}, Lsun/nio/fs/UnixCopyFile$1;-><init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 594
    .local p1, "copyTask":Lsun/nio/fs/Cancellable;
    :try_start_b3
    invoke-static {p1}, Lsun/nio/fs/Cancellable;->runInterruptibly(Lsun/nio/fs/Cancellable;)V
    :try_end_b6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b3 .. :try_end_b6} :catch_b8

    .line 600
    nop

    .line 601
    return-void

    .line 595
    :catch_b8
    move-exception v0

    .line 596
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 597
    .local v6, "t":Ljava/lang/Throwable;
    instance-of v7, v6, Ljava/io/IOException;

    if-eqz v7, :cond_c5

    .line 598
    move-object v7, v6

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 599
    :cond_c5
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static blacklist copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .registers 11
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v0

    invoke-static {p2, v0}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir(Lsun/nio/fs/UnixPath;I)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_7} :catch_8

    .line 137
    goto :goto_c

    .line 135
    :catch_8
    move-exception v0

    .line 136
    .local v0, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 140
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :goto_c
    iget-boolean v0, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z

    if-nez v0, :cond_19

    iget-boolean v0, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z

    if-nez v0, :cond_19

    iget-boolean v0, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-nez v0, :cond_19

    .line 142
    return-void

    .line 146
    :cond_19
    const/4 v0, -0x1

    .line 148
    .local v0, "dfd":I
    const/4 v1, 0x0

    :try_start_1b
    sget v2, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    invoke-static {p2, v2, v1}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v2
    :try_end_21
    .catch Lsun/nio/fs/UnixException; {:try_start_1b .. :try_end_21} :catch_23

    move v0, v2

    .line 155
    goto :goto_34

    .line 149
    :catch_23
    move-exception v2

    .line 151
    .local v2, "x":Lsun/nio/fs/UnixException;
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-eqz v3, :cond_34

    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyNonPosix:Z

    if-eqz v3, :cond_34

    .line 152
    :try_start_2c
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_2f
    .catch Lsun/nio/fs/UnixException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    move-exception v3

    .line 153
    :goto_31
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 157
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :cond_34
    :goto_34
    const/4 v2, 0x0

    .line 160
    .local v2, "done":Z
    :try_start_35
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_e0

    if-eqz v3, :cond_69

    .line 162
    if-ltz v0, :cond_4e

    .line 163
    :try_start_3b
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v4

    invoke-static {v0, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V

    .line 164
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {v0, v3}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V

    goto :goto_60

    .line 166
    :cond_4e
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v4

    invoke-static {p2, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    .line 167
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {p2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V
    :try_end_60
    .catch Lsun/nio/fs/UnixException; {:try_start_3b .. :try_end_60} :catch_61
    .catchall {:try_start_3b .. :try_end_60} :catchall_e0

    .line 173
    :goto_60
    goto :goto_69

    .line 169
    :catch_61
    move-exception v3

    .line 171
    .local v3, "x":Lsun/nio/fs/UnixException;
    :try_start_62
    iget-boolean v4, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v4, :cond_69

    .line 172
    invoke-virtual {v3, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 176
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :cond_69
    :goto_69
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_e0

    if-eqz v3, :cond_8c

    if-ltz v0, :cond_8c

    .line 177
    const/4 v3, -0x1

    .line 179
    .local v3, "sfd":I
    :try_start_70
    sget v4, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    invoke-static {p0, v4, v1}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v1
    :try_end_76
    .catch Lsun/nio/fs/UnixException; {:try_start_70 .. :try_end_76} :catch_78
    .catchall {:try_start_70 .. :try_end_76} :catchall_e0

    move v3, v1

    .line 183
    goto :goto_80

    .line 180
    :catch_78
    move-exception v1

    .line 181
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_79
    iget-boolean v4, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyNonPosix:Z

    if-eqz v4, :cond_80

    .line 182
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 184
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_80
    :goto_80
    if-ltz v3, :cond_8c

    .line 185
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lsun/nio/fs/UnixFileSystem;->copyNonPosixAttributes(II)V

    .line 186
    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 190
    .end local v3    # "sfd":I
    :cond_8c
    iget-boolean v1, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_8e
    .catchall {:try_start_79 .. :try_end_8e} :catchall_e0

    if-eqz v1, :cond_d2

    .line 192
    if-ltz v0, :cond_b1

    :try_start_92
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 193
    nop

    .line 194
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 195
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 193
    invoke-static {v0, v3, v4, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V

    goto :goto_c9

    .line 197
    :cond_b1
    nop

    .line 198
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 199
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 197
    invoke-static {p2, v3, v4, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_c9
    .catch Lsun/nio/fs/UnixException; {:try_start_92 .. :try_end_c9} :catch_ca
    .catchall {:try_start_92 .. :try_end_c9} :catchall_e0

    .line 205
    :goto_c9
    goto :goto_d2

    .line 201
    :catch_ca
    move-exception v1

    .line 203
    .restart local v1    # "x":Lsun/nio/fs/UnixException;
    :try_start_cb
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v3, :cond_d2

    .line 204
    invoke-virtual {v1, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_e0

    .line 207
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_d2
    :goto_d2
    const/4 v1, 0x1

    .line 209
    .end local v2    # "done":Z
    .local v1, "done":Z
    if-ltz v0, :cond_d8

    .line 210
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 211
    :cond_d8
    if-nez v1, :cond_df

    .line 213
    :try_start_da
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_dd
    .catch Lsun/nio/fs/UnixException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_df

    :catch_de
    move-exception v2

    .line 216
    :cond_df
    :goto_df
    return-void

    .line 209
    .end local v1    # "done":Z
    .restart local v2    # "done":Z
    :catchall_e0
    move-exception v1

    if-ltz v0, :cond_e6

    .line 210
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 211
    :cond_e6
    if-nez v2, :cond_ed

    .line 213
    :try_start_e8
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_eb
    .catch Lsun/nio/fs/UnixException; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_ed

    :catch_ec
    move-exception v3

    .line 215
    :cond_ed
    :goto_ed
    throw v1
.end method

.method private static blacklist copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V
    .registers 13
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .param p4, "addressToPollForCancel"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const/4 v0, -0x1

    .line 228
    .local v0, "fi":I
    :try_start_1
    sget v1, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v1
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_8} :catch_a

    move v0, v1

    .line 231
    goto :goto_e

    .line 229
    :catch_a
    move-exception v1

    .line 230
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 235
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :goto_e
    const/4 v1, -0x1

    .line 237
    .local v1, "fo":I
    :try_start_f
    sget v2, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    sget v3, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    or-int/2addr v2, v3

    sget v3, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    or-int/2addr v2, v3

    .line 241
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    .line 237
    invoke-static {p2, v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v2
    :try_end_1f
    .catch Lsun/nio/fs/UnixException; {:try_start_f .. :try_end_1f} :catch_24
    .catchall {:try_start_f .. :try_end_1f} :catchall_21

    move v1, v2

    .line 244
    goto :goto_28

    .line 298
    .end local v1    # "fo":I
    :catchall_21
    move-exception v1

    goto/16 :goto_c0

    .line 242
    .restart local v1    # "fo":I
    :catch_24
    move-exception v2

    .line 243
    .local v2, "x":Lsun/nio/fs/UnixException;
    :try_start_25
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_21

    .line 247
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :goto_28
    const/4 v2, 0x0

    .line 251
    .local v2, "complete":Z
    :try_start_29
    invoke-static {v1, v0, p4, p5}, Lsun/nio/fs/UnixCopyFile;->transfer(IIJ)V
    :try_end_2c
    .catch Lsun/nio/fs/UnixException; {:try_start_29 .. :try_end_2c} :catch_30
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    .line 254
    goto :goto_34

    .line 288
    :catchall_2d
    move-exception v3

    goto/16 :goto_b3

    .line 252
    :catch_30
    move-exception v3

    .line 253
    .local v3, "x":Lsun/nio/fs/UnixException;
    :try_start_31
    invoke-virtual {v3, p0, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    .line 256
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :goto_34
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2d

    if-eqz v3, :cond_53

    .line 258
    :try_start_38
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v4

    invoke-static {v1, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V

    .line 259
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {v1, v3}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_4a
    .catch Lsun/nio/fs/UnixException; {:try_start_38 .. :try_end_4a} :catch_4b
    .catchall {:try_start_38 .. :try_end_4a} :catchall_2d

    .line 263
    goto :goto_53

    .line 260
    :catch_4b
    move-exception v3

    .line 261
    .restart local v3    # "x":Lsun/nio/fs/UnixException;
    :try_start_4c
    iget-boolean v4, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v4, :cond_53

    .line 262
    invoke-virtual {v3, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 266
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :cond_53
    :goto_53
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-eqz v3, :cond_5e

    .line 267
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lsun/nio/fs/UnixFileSystem;->copyNonPosixAttributes(II)V

    .line 270
    :cond_5e
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_2d

    if-eqz v3, :cond_a2

    .line 272
    :try_start_62
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 273
    nop

    .line 274
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 275
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 273
    invoke-static {v1, v3, v4, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V

    goto :goto_99

    .line 277
    :cond_81
    nop

    .line 278
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 279
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 277
    invoke-static {p2, v3, v4, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_99
    .catch Lsun/nio/fs/UnixException; {:try_start_62 .. :try_end_99} :catch_9a
    .catchall {:try_start_62 .. :try_end_99} :catchall_2d

    .line 284
    :goto_99
    goto :goto_a2

    .line 281
    :catch_9a
    move-exception v3

    .line 282
    .restart local v3    # "x":Lsun/nio/fs/UnixException;
    :try_start_9b
    iget-boolean v4, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v4, :cond_a2

    .line 283
    invoke-virtual {v3, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_2d

    .line 286
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :cond_a2
    :goto_a2
    const/4 v2, 0x1

    .line 288
    :try_start_a3
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_21

    .line 291
    if-nez v2, :cond_ae

    .line 293
    :try_start_a8
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_ab
    .catch Lsun/nio/fs/UnixException; {:try_start_a8 .. :try_end_ab} :catch_ac
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_21

    .line 294
    :goto_ab
    goto :goto_ae

    :catch_ac
    move-exception v3

    goto :goto_ab

    .line 298
    .end local v1    # "fo":I
    .end local v2    # "complete":Z
    :cond_ae
    :goto_ae
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 299
    nop

    .line 300
    return-void

    .line 288
    .restart local v1    # "fo":I
    .restart local v2    # "complete":Z
    :goto_b3
    :try_start_b3
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_21

    .line 291
    if-nez v2, :cond_be

    .line 293
    :try_start_b8
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_bb
    .catch Lsun/nio/fs/UnixException; {:try_start_b8 .. :try_end_bb} :catch_bc
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_21

    .line 294
    :goto_bb
    goto :goto_be

    :catch_bc
    move-exception v4

    goto :goto_bb

    .line 296
    :cond_be
    :goto_be
    nop

    .end local v0    # "fi":I
    .end local p0    # "source":Lsun/nio/fs/UnixPath;
    .end local p1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .end local p2    # "target":Lsun/nio/fs/UnixPath;
    .end local p3    # "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    .end local p4    # "addressToPollForCancel":J
    :try_start_bf
    throw v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_21

    .line 298
    .end local v1    # "fo":I
    .end local v2    # "complete":Z
    .restart local v0    # "fi":I
    .restart local p0    # "source":Lsun/nio/fs/UnixPath;
    .restart local p1    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local p2    # "target":Lsun/nio/fs/UnixPath;
    .restart local p3    # "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    .restart local p4    # "addressToPollForCancel":J
    :goto_c0
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 299
    throw v1
.end method

.method private static blacklist copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .registers 7
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "linktarget":[B
    :try_start_1
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->readlink(Lsun/nio/fs/UnixPath;)[B

    move-result-object v1
    :try_end_5
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 314
    goto :goto_b

    .line 312
    :catch_7
    move-exception v1

    .line 313
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 316
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :goto_b
    :try_start_b
    invoke-static {v0, p2}, Lsun/nio/fs/UnixNativeDispatcher;->symlink([BLsun/nio/fs/UnixPath;)V

    .line 318
    iget-boolean v1, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_10
    .catch Lsun/nio/fs/UnixException; {:try_start_b .. :try_end_10} :catch_20

    if-eqz v1, :cond_1f

    .line 320
    :try_start_12
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v1

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v2

    invoke-static {p2, v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->lchown(Lsun/nio/fs/UnixPath;II)V
    :try_end_1d
    .catch Lsun/nio/fs/UnixException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 323
    goto :goto_1f

    .line 321
    :catch_1e
    move-exception v1

    .line 327
    :cond_1f
    :goto_1f
    goto :goto_24

    .line 325
    :catch_20
    move-exception v1

    .line 326
    .restart local v1    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 328
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :goto_24
    return-void
.end method

.method private static blacklist copySpecial(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .registers 9
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    :try_start_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v0

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->rdev()J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->mknod(Lsun/nio/fs/UnixPath;IJ)V
    :try_end_b
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_b} :catch_c

    .line 341
    goto :goto_10

    .line 339
    :catch_c
    move-exception v0

    .line 340
    .local v0, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 342
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :goto_10
    const/4 v0, 0x0

    .line 344
    .local v0, "done":Z
    :try_start_11
    iget-boolean v1, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_5e

    if-eqz v1, :cond_30

    .line 346
    :try_start_15
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v1

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v2

    invoke-static {p2, v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    .line 347
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v1

    invoke-static {p2, v1}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V
    :try_end_27
    .catch Lsun/nio/fs/UnixException; {:try_start_15 .. :try_end_27} :catch_28
    .catchall {:try_start_15 .. :try_end_27} :catchall_5e

    .line 351
    goto :goto_30

    .line 348
    :catch_28
    move-exception v1

    .line 349
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_29
    iget-boolean v2, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v2, :cond_30

    .line 350
    invoke-virtual {v1, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 353
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_30
    :goto_30
    iget-boolean v1, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_5e

    if-eqz v1, :cond_55

    .line 355
    nop

    .line 356
    :try_start_35
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 357
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 355
    invoke-static {p2, v1, v2, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_4c
    .catch Lsun/nio/fs/UnixException; {:try_start_35 .. :try_end_4c} :catch_4d
    .catchall {:try_start_35 .. :try_end_4c} :catchall_5e

    .line 361
    goto :goto_55

    .line 358
    :catch_4d
    move-exception v1

    .line 359
    .restart local v1    # "x":Lsun/nio/fs/UnixException;
    :try_start_4e
    iget-boolean v2, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v2, :cond_55

    .line 360
    invoke-virtual {v1, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_5e

    .line 363
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_55
    :goto_55
    const/4 v0, 0x1

    .line 365
    if-nez v0, :cond_5d

    .line 366
    :try_start_58
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_5b
    .catch Lsun/nio/fs/UnixException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception v1

    .line 369
    :cond_5d
    :goto_5d
    return-void

    .line 365
    :catchall_5e
    move-exception v1

    if-nez v0, :cond_66

    .line 366
    :try_start_61
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_64
    .catch Lsun/nio/fs/UnixException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v2

    .line 368
    :cond_66
    :goto_66
    throw v1
.end method

.method static varargs blacklist move(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
    .registers 13
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "target"    # Lsun/nio/fs/UnixPath;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 377
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_c

    .line 378
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 379
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 383
    :cond_c
    invoke-static {p2}, Lsun/nio/fs/UnixCopyFile$Flags;->fromMoveOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;

    move-result-object v5

    .line 386
    .local v5, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    iget-boolean v0, v5, Lsun/nio/fs/UnixCopyFile$Flags;->atomicMove:Z

    if-eqz v0, :cond_37

    .line 388
    :try_start_14
    invoke-static {p0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_17
    .catch Lsun/nio/fs/UnixException; {:try_start_14 .. :try_end_17} :catch_18

    .line 397
    goto :goto_24

    .line 389
    :catch_18
    move-exception v0

    .line 390
    .local v0, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-eq v2, v3, :cond_25

    .line 396
    invoke-virtual {v0, p0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    .line 398
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :goto_24
    return-void

    .line 391
    .restart local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_25
    new-instance v2, Ljava/nio/file/AtomicMoveNotSupportedException;

    .line 392
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 402
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_37
    const/4 v2, 0x0

    .line 403
    .local v2, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v3, 0x0

    .line 407
    .local v3, "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v4, 0x0

    :try_start_3a
    invoke-static {p0, v4}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0
    :try_end_3e
    .catch Lsun/nio/fs/UnixException; {:try_start_3a .. :try_end_3e} :catch_40

    move-object v2, v0

    .line 410
    goto :goto_44

    .line 408
    :catch_40
    move-exception v0

    .line 409
    .restart local v0    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 414
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :goto_44
    :try_start_44
    invoke-static {p1, v4}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0
    :try_end_48
    .catch Lsun/nio/fs/UnixException; {:try_start_44 .. :try_end_48} :catch_4b

    move-object v3, v0

    .line 417
    move-object v8, v3

    goto :goto_4d

    .line 415
    :catch_4b
    move-exception v0

    move-object v8, v3

    .line 418
    .end local v3    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    .local v8, "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_4d
    if-eqz v8, :cond_50

    const/4 v4, 0x1

    :cond_50
    move v9, v4

    .line 424
    .local v9, "targetExists":Z
    if-eqz v9, :cond_9c

    .line 425
    invoke-virtual {v2, v8}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 426
    return-void

    .line 427
    :cond_5a
    iget-boolean v0, v5, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    if-eqz v0, :cond_92

    .line 434
    :try_start_5e
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 435
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V

    goto :goto_6b

    .line 437
    :cond_68
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_6b
    .catch Lsun/nio/fs/UnixException; {:try_start_5e .. :try_end_6b} :catch_6c

    .line 448
    :goto_6b
    goto :goto_9c

    .line 439
    :catch_6c
    move-exception v0

    .line 441
    .restart local v0    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 442
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v3, v4, :cond_84

    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-eq v3, v4, :cond_84

    goto :goto_8e

    .line 444
    :cond_84
    new-instance v3, Ljava/nio/file/DirectoryNotEmptyException;

    .line 445
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_8e
    :goto_8e
    invoke-virtual {v0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_9c

    .line 428
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_92
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    .line 429
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-static {p0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_9f
    .catch Lsun/nio/fs/UnixException; {:try_start_9c .. :try_end_9f} :catch_a0

    .line 454
    return-void

    .line 455
    :catch_a0
    move-exception v0

    .line 456
    .restart local v0    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-eq v3, v4, :cond_b4

    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v3

    sget v4, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-eq v3, v4, :cond_b4

    .line 457
    invoke-virtual {v0, p0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    .line 462
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_b4
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 463
    invoke-static {p0, v2, p1, v5}, Lsun/nio/fs/UnixCopyFile;->copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    move-object v4, p1

    move-object v3, v2

    move-object v2, p0

    goto :goto_e3

    .line 465
    :cond_c1
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 466
    invoke-static {p0, v2, p1, v5}, Lsun/nio/fs/UnixCopyFile;->copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    move-object v4, p1

    move-object v3, v2

    move-object v2, p0

    goto :goto_e3

    .line 468
    :cond_ce
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isDevice()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 469
    invoke-static {p0, v2, p1, v5}, Lsun/nio/fs/UnixCopyFile;->copySpecial(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    move-object v4, p1

    move-object v3, v2

    move-object v2, p0

    goto :goto_e3

    .line 471
    :cond_db
    const-wide/16 v6, 0x0

    move-object v4, p1

    move-object v3, v2

    move-object v2, p0

    .end local p0    # "source":Lsun/nio/fs/UnixPath;
    .end local p1    # "target":Lsun/nio/fs/UnixPath;
    .local v2, "source":Lsun/nio/fs/UnixPath;
    .local v3, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .local v4, "target":Lsun/nio/fs/UnixPath;
    invoke-static/range {v2 .. v7}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    .line 478
    :goto_e3
    :try_start_e3
    invoke-virtual {v3}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_ed

    .line 479
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V

    goto :goto_f0

    .line 481
    :cond_ed
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_f0
    .catch Lsun/nio/fs/UnixException; {:try_start_e3 .. :try_end_f0} :catch_f1

    .line 501
    :goto_f0
    goto :goto_127

    .line 483
    :catch_f1
    move-exception v0

    move-object p0, v0

    .line 487
    .local p0, "x":Lsun/nio/fs/UnixException;
    :try_start_f3
    invoke-virtual {v3}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 488
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V

    goto :goto_102

    .line 490
    :cond_fd
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_100
    .catch Lsun/nio/fs/UnixException; {:try_start_f3 .. :try_end_100} :catch_101

    goto :goto_102

    .line 492
    :catch_101
    move-exception v0

    :goto_102
    nop

    .line 494
    invoke-virtual {v3}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_124

    .line 495
    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result p1

    sget v0, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq p1, v0, :cond_11a

    invoke-virtual {p0}, Lsun/nio/fs/UnixException;->errno()I

    move-result p1

    sget v0, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-eq p1, v0, :cond_11a

    goto :goto_124

    .line 497
    :cond_11a
    new-instance p1, Ljava/nio/file/DirectoryNotEmptyException;

    .line 498
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 500
    :cond_124
    :goto_124
    invoke-virtual {p0, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 502
    .end local p0    # "x":Lsun/nio/fs/UnixException;
    :goto_127
    return-void
.end method

.method static native blacklist transfer(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
