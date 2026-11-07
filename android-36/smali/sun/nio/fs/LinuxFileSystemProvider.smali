.class public Lsun/nio/fs/LinuxFileSystemProvider;
.super Lsun/nio/fs/UnixFileSystemProvider;
.source "LinuxFileSystemProvider.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lsun/nio/fs/UnixFileSystemProvider;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public varargs whitelist test-api getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 5
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

    .line 74
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-super {p0, p1, p2, p3}, Lsun/nio/fs/UnixFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;
    .registers 5
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;

    .line 94
    invoke-super {p0, p1, p2, p3}, Lsun/nio/fs/UnixFileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lsun/nio/fs/DynamicFileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getFileStore(Lsun/nio/fs/UnixPath;)Ljava/nio/file/FileStore;
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

    .line 37
    invoke-virtual {p0, p1}, Lsun/nio/fs/LinuxFileSystemProvider;->getFileStore(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/LinuxFileStore;

    move-result-object p1

    return-object p1
.end method

.method blacklist getFileStore(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/LinuxFileStore;
    .registers 4
    .param p1, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getFileStore"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
    .registers 2

    .line 133
    new-instance v0, Lsun/nio/fs/MimeTypesFileTypeDetector;

    invoke-direct {v0}, Lsun/nio/fs/MimeTypesFileTypeDetector;-><init>()V

    return-object v0
.end method

.method blacklist newFileSystem(Ljava/lang/String;)Lsun/nio/fs/LinuxFileSystem;
    .registers 3
    .param p1, "dir"    # Ljava/lang/String;

    .line 44
    new-instance v0, Lsun/nio/fs/LinuxFileSystem;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/LinuxFileSystem;-><init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V

    return-object v0
.end method

.method bridge synthetic blacklist newFileSystem(Ljava/lang/String;)Lsun/nio/fs/UnixFileSystem;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lsun/nio/fs/LinuxFileSystemProvider;->newFileSystem(Ljava/lang/String;)Lsun/nio/fs/LinuxFileSystem;

    move-result-object p1

    return-object p1
.end method

.method public varargs whitelist test-api readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 5
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

    .line 115
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-super {p0, p1, p2, p3}, Lsun/nio/fs/UnixFileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method
