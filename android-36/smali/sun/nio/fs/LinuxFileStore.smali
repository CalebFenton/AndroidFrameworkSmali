.class Lsun/nio/fs/LinuxFileStore;
.super Lsun/nio/fs/UnixFileStore;
.source "LinuxFileStore.java"


# instance fields
.field private volatile blacklist xattrChecked:Z

.field private volatile blacklist xattrEnabled:Z


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V
    .registers 3
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "entry"    # Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileStore;-><init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V

    .line 49
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;)V
    .registers 2
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixFileStore;-><init>(Lsun/nio/fs/UnixPath;)V

    .line 45
    return-void
.end method

.method private blacklist isExtendedAttributesEnabled(Lsun/nio/fs/UnixPath;)Z
    .registers 8
    .param p1, "path"    # Lsun/nio/fs/UnixPath;

    .line 98
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_30

    .line 101
    .local v1, "fd":I
    const/4 v2, 0x1

    :try_start_6
    const-string v3, "user.java"

    invoke-static {v3}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 102
    .local v3, "name":[B
    const-wide/16 v4, 0x0

    invoke-static {v1, v3, v4, v5, v0}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I
    :try_end_11
    .catch Lsun/nio/fs/UnixException; {:try_start_6 .. :try_end_11} :catch_18
    .catchall {:try_start_6 .. :try_end_11} :catchall_16

    .line 103
    nop

    .line 109
    :try_start_12
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_30

    .line 103
    return v2

    .line 109
    .end local v3    # "name":[B
    :catchall_16
    move-exception v2

    goto :goto_2b

    .line 104
    :catch_18
    move-exception v3

    .line 106
    .local v3, "e":Lsun/nio/fs/UnixException;
    :try_start_19
    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ENODATA:I
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    if-ne v4, v5, :cond_26

    .line 107
    nop

    .line 109
    :try_start_22
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 107
    return v2

    .line 109
    .end local v3    # "e":Lsun/nio/fs/UnixException;
    :cond_26
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 110
    nop

    .line 113
    .end local v1    # "fd":I
    goto :goto_31

    .line 109
    .restart local v1    # "fd":I
    :goto_2b
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 110
    nop

    .end local p0    # "this":Lsun/nio/fs/LinuxFileStore;
    .end local p1    # "path":Lsun/nio/fs/UnixPath;
    throw v2
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_30} :catch_30

    .line 111
    .end local v1    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/LinuxFileStore;
    .restart local p1    # "path":Lsun/nio/fs/UnixPath;
    :catch_30
    move-exception v1

    .line 114
    :goto_31
    return v0
.end method


# virtual methods
.method blacklist findMountEntry()Lsun/nio/fs/UnixMountEntry;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->file()Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/LinuxFileSystem;

    .line 60
    .local v0, "fs":Lsun/nio/fs/LinuxFileSystem;
    const/4 v1, 0x0

    .line 62
    .local v1, "path":Lsun/nio/fs/UnixPath;
    :try_start_b
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->file()Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->realpath(Lsun/nio/fs/UnixPath;)[B

    move-result-object v2

    .line 63
    .local v2, "rp":[B
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-direct {v3, v0, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V
    :try_end_18
    .catch Lsun/nio/fs/UnixException; {:try_start_b .. :try_end_18} :catch_1a

    move-object v1, v3

    .line 66
    .end local v2    # "rp":[B
    goto :goto_22

    .line 64
    :catch_1a
    move-exception v2

    .line 65
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->file()Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 69
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :goto_22
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v2

    .line 70
    .local v2, "parent":Lsun/nio/fs/UnixPath;
    :goto_26
    if-eqz v2, :cond_47

    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, "attrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v4, 0x1

    :try_start_2a
    invoke-static {v2, v4}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v4
    :try_end_2e
    .catch Lsun/nio/fs/UnixException; {:try_start_2a .. :try_end_2e} :catch_30

    move-object v3, v4

    .line 76
    goto :goto_34

    .line 74
    :catch_30
    move-exception v4

    .line 75
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 77
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :goto_34
    invoke-virtual {v3}, Lsun/nio/fs/UnixFileAttributes;->dev()J

    move-result-wide v4

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->dev()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_41

    .line 78
    goto :goto_47

    .line 79
    :cond_41
    move-object v1, v2

    .line 80
    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v2

    .line 81
    .end local v3    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    goto :goto_26

    .line 85
    :cond_47
    :goto_47
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v3

    .line 86
    .local v3, "dir":[B
    const-string v4, "/proc/mounts"

    invoke-virtual {v0, v4}, Lsun/nio/fs/LinuxFileSystem;->getMountEntries(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/nio/fs/UnixMountEntry;

    .line 87
    .local v5, "entry":Lsun/nio/fs/UnixMountEntry;
    invoke-virtual {v5}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 88
    return-object v5

    .line 89
    .end local v5    # "entry":Lsun/nio/fs/UnixMountEntry;
    :cond_6c
    goto :goto_55

    .line 91
    :cond_6d
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Mount point not found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist test-api supportsFileAttributeView(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">;)Z"
        }
    .end annotation

    .line 121
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/FileAttributeView;>;"
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_24

    const-class v0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    if-ne p1, v0, :cond_a

    goto :goto_24

    .line 150
    :cond_a
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-ne p1, v0, :cond_1f

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vfat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 151
    return v1

    .line 152
    :cond_1f
    invoke-super {p0, p1}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 125
    :cond_24
    :goto_24
    const-string v0, "user_xattr"

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxFileStore;->checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;

    move-result-object v2

    .line 126
    .local v2, "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    sget-object v3, Lsun/nio/fs/UnixFileStore$FeatureStatus;->PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_30

    .line 127
    return v4

    .line 128
    :cond_30
    sget-object v3, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    if-ne v2, v3, :cond_35

    .line 129
    return v1

    .line 133
    :cond_35
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v3

    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixMountEntry;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 134
    return v4

    .line 138
    :cond_40
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ext3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ext4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_85

    .line 142
    :cond_61
    iget-boolean v0, p0, Lsun/nio/fs/LinuxFileStore;->xattrChecked:Z

    if-nez v0, :cond_82

    .line 143
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->file()Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    .line 144
    .local v0, "dir":Lsun/nio/fs/UnixPath;
    invoke-direct {p0, v0}, Lsun/nio/fs/LinuxFileStore;->isExtendedAttributesEnabled(Lsun/nio/fs/UnixPath;)Z

    move-result v1

    iput-boolean v1, p0, Lsun/nio/fs/LinuxFileStore;->xattrEnabled:Z

    .line 145
    iput-boolean v4, p0, Lsun/nio/fs/LinuxFileStore;->xattrChecked:Z

    .line 147
    .end local v0    # "dir":Lsun/nio/fs/UnixPath;
    :cond_82
    iget-boolean v0, p0, Lsun/nio/fs/LinuxFileStore;->xattrEnabled:Z

    return v0

    .line 139
    :cond_85
    :goto_85
    return v1
.end method

.method public whitelist test-api supportsFileAttributeView(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 157
    const-string v0, "dos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 159
    :cond_f
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 160
    const-class v0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 161
    :cond_1e
    invoke-super {p0, p1}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
