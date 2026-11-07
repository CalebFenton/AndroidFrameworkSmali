.class Ljava/nio/file/CopyMoveHelper;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/CopyMoveHelper$CopyOptions;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs blacklist convertMoveToCopyOptions([Ljava/nio/file/CopyOption;)[Ljava/nio/file/CopyOption;
    .registers 8
    .param p0, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/file/AtomicMoveNotSupportedException;
        }
    .end annotation

    .line 81
    array-length v0, p0

    .line 82
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    .line 83
    .local v1, "newOptions":[Ljava/nio/file/CopyOption;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_1c

    .line 84
    aget-object v3, p0, v2

    .line 85
    .local v3, "option":Ljava/nio/file/CopyOption;
    sget-object v4, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    if-eq v3, v4, :cond_13

    .line 89
    aput-object v3, v1, v2

    .line 83
    .end local v3    # "option":Ljava/nio/file/CopyOption;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 86
    .restart local v3    # "option":Ljava/nio/file/CopyOption;
    :cond_13
    new-instance v4, Ljava/nio/file/AtomicMoveNotSupportedException;

    const-string v5, "Atomic move between providers is not supported"

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 91
    .end local v2    # "i":I
    .end local v3    # "option":Ljava/nio/file/CopyOption;
    :cond_1c
    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v2, v1, v0

    .line 92
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v1, v2

    .line 93
    return-object v1
.end method

.method static varargs blacklist copyToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .registers 10
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p2}, Ljava/nio/file/CopyMoveHelper$CopyOptions;->parse([Ljava/nio/file/CopyOption;)Ljava/nio/file/CopyMoveHelper$CopyOptions;

    move-result-object v0

    .line 105
    .local v0, "opts":Ljava/nio/file/CopyMoveHelper$CopyOptions;
    iget-boolean v1, v0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    new-array v1, v2, [Ljava/nio/file/LinkOption;

    goto :goto_13

    .line 106
    :cond_c
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v1, v2

    :goto_13
    nop

    .line 109
    .local v1, "linkOptions":[Ljava/nio/file/LinkOption;
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v3, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    .line 112
    .local v3, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v4

    if-nez v4, :cond_8b

    .line 116
    iget-boolean v4, v0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    if-eqz v4, :cond_28

    .line 117
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    goto :goto_30

    .line 118
    :cond_28
    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 122
    :goto_30
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 123
    new-array v4, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v4}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_4c

    .line 125
    :cond_3c
    new-array v4, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v4

    .line 126
    .local v4, "in":Ljava/io/InputStream;
    :try_start_42
    new-array v5, v2, [Ljava/nio/file/CopyOption;

    invoke-static {v4, p1, v5}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_75

    .line 127
    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 131
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_4c
    :goto_4c
    iget-boolean v4, v0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    if-eqz v4, :cond_74

    .line 132
    const-class v4, Ljava/nio/file/attribute/BasicFileAttributeView;

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    .line 133
    invoke-static {p1, v4, v2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/BasicFileAttributeView;

    .line 135
    .local v2, "view":Ljava/nio/file/attribute/BasicFileAttributeView;
    :try_start_5a
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    .line 136
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    .line 137
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    .line 135
    invoke-interface {v2, v4, v5, v6}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_6a

    .line 146
    goto :goto_74

    .line 138
    :catchall_6a
    move-exception v4

    .line 141
    .local v4, "x":Ljava/lang/Throwable;
    :try_start_6b
    invoke-static {p1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    .line 144
    goto :goto_73

    .line 142
    :catchall_6f
    move-exception v5

    .line 143
    .local v5, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    .end local v5    # "suppressed":Ljava/lang/Throwable;
    :goto_73
    throw v4

    .line 148
    .end local v2    # "view":Ljava/nio/file/attribute/BasicFileAttributeView;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_74
    :goto_74
    return-void

    .line 125
    .local v4, "in":Ljava/io/InputStream;
    :catchall_75
    move-exception v2

    if-eqz v4, :cond_80

    :try_start_78
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception v5

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw v2

    .line 119
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_81
    new-instance v2, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_8b
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Copying of symbolic links not supported"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static varargs blacklist moveToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .registers 4
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-static {p2}, Ljava/nio/file/CopyMoveHelper;->convertMoveToCopyOptions([Ljava/nio/file/CopyOption;)[Ljava/nio/file/CopyOption;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/nio/file/CopyMoveHelper;->copyToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 158
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 159
    return-void
.end method
