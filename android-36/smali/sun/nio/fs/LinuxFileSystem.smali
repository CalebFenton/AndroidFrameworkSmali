.class Lsun/nio/fs/LinuxFileSystem;
.super Lsun/nio/fs/UnixFileSystem;
.source "LinuxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/LinuxFileSystem$SupportedFileFileAttributeViewsHolder;
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Lsun/nio/fs/UnixFileSystemProvider;
    .param p2, "dir"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileSystem;-><init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method blacklist copyNonPosixAttributes(II)V
    .registers 3
    .param p1, "ofd"    # I
    .param p2, "nfd"    # I

    .line 72
    invoke-static {p1, p2}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->copyExtendedAttributes(II)V

    .line 73
    return-void
.end method

.method blacklist getFileStore(Lsun/nio/fs/UnixMountEntry;)Ljava/nio/file/FileStore;
    .registers 3
    .param p1, "entry"    # Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lsun/nio/fs/LinuxFileStore;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/LinuxFileStore;-><init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V

    return-object v0
.end method

.method blacklist getMountEntries()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation

    .line 107
    const-string v0, "/proc/mounts"

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxFileSystem;->getMountEntries(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method blacklist getMountEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 7
    .param p1, "fstab"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/nio/fs/UnixMountEntry;>;"
    :try_start_5
    invoke-static {p1}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "r"

    invoke-static {v2}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lsun/nio/fs/LinuxNativeDispatcher;->setmntent([B[B)J

    move-result-wide v1
    :try_end_13
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_13} :catch_2f

    .line 84
    .local v1, "fp":J
    :goto_13
    :try_start_13
    new-instance v3, Lsun/nio/fs/UnixMountEntry;

    invoke-direct {v3}, Lsun/nio/fs/UnixMountEntry;-><init>()V

    .line 85
    .local v3, "entry":Lsun/nio/fs/UnixMountEntry;
    invoke-static {v1, v2, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->getmntent(JLsun/nio/fs/UnixMountEntry;)I

    move-result v4
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_29

    .line 86
    .local v4, "res":I
    if-gez v4, :cond_24

    .line 87
    nop

    .line 91
    .end local v3    # "entry":Lsun/nio/fs/UnixMountEntry;
    .end local v4    # "res":I
    :try_start_1f
    invoke-static {v1, v2}, Lsun/nio/fs/LinuxNativeDispatcher;->endmntent(J)V
    :try_end_22
    .catch Lsun/nio/fs/UnixException; {:try_start_1f .. :try_end_22} :catch_2f

    .line 92
    nop

    .line 96
    .end local v1    # "fp":J
    goto :goto_30

    .line 88
    .restart local v1    # "fp":J
    .restart local v3    # "entry":Lsun/nio/fs/UnixMountEntry;
    .restart local v4    # "res":I
    :cond_24
    :try_start_24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_29

    .line 89
    nop

    .end local v3    # "entry":Lsun/nio/fs/UnixMountEntry;
    .end local v4    # "res":I
    goto :goto_13

    .line 91
    :catchall_29
    move-exception v3

    :try_start_2a
    invoke-static {v1, v2}, Lsun/nio/fs/LinuxNativeDispatcher;->endmntent(J)V

    .line 92
    nop

    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/nio/fs/UnixMountEntry;>;"
    .end local p0    # "this":Lsun/nio/fs/LinuxFileSystem;
    .end local p1    # "fstab":Ljava/lang/String;
    throw v3
    :try_end_2f
    .catch Lsun/nio/fs/UnixException; {:try_start_2a .. :try_end_2f} :catch_2f

    .line 94
    .end local v1    # "fp":J
    .restart local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/nio/fs/UnixMountEntry;>;"
    .restart local p0    # "this":Lsun/nio/fs/LinuxFileSystem;
    .restart local p1    # "fstab":Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 97
    :goto_30
    return-object v0
.end method

.method public whitelist test-api newWatchService()Ljava/nio/file/WatchService;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Lsun/nio/fs/LinuxWatchService;

    invoke-direct {v0, p0}, Lsun/nio/fs/LinuxWatchService;-><init>(Lsun/nio/fs/UnixFileSystem;)V

    return-object v0
.end method

.method public whitelist test-api supportedFileAttributeViews()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lsun/nio/fs/LinuxFileSystem$SupportedFileFileAttributeViewsHolder;->supportedFileAttributeViews:Ljava/util/Set;

    return-object v0
.end method
