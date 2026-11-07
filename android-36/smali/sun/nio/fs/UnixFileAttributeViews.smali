.class Lsun/nio/fs/UnixFileAttributeViews;
.super Ljava/lang/Object;
.source "UnixFileAttributeViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileAttributeViews$Basic;,
        Lsun/nio/fs/UnixFileAttributeViews$Posix;,
        Lsun/nio/fs/UnixFileAttributeViews$Unix;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createBasicView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Basic;
    .registers 3
    .param p0, "file"    # Lsun/nio/fs/UnixPath;
    .param p1, "followLinks"    # Z

    .line 368
    new-instance v0, Lsun/nio/fs/UnixFileAttributeViews$Basic;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileAttributeViews$Basic;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-object v0
.end method

.method static blacklist createOwnerView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/FileOwnerAttributeViewImpl;
    .registers 4
    .param p0, "file"    # Lsun/nio/fs/UnixPath;
    .param p1, "followLinks"    # Z

    .line 380
    new-instance v0, Lsun/nio/fs/FileOwnerAttributeViewImpl;

    invoke-static {p0, p1}, Lsun/nio/fs/UnixFileAttributeViews;->createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/nio/fs/FileOwnerAttributeViewImpl;-><init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V

    return-object v0
.end method

.method static blacklist createPosixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Posix;
    .registers 3
    .param p0, "file"    # Lsun/nio/fs/UnixPath;
    .param p1, "followLinks"    # Z

    .line 372
    new-instance v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileAttributeViews$Posix;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-object v0
.end method

.method static blacklist createUnixView(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributeViews$Unix;
    .registers 3
    .param p0, "file"    # Lsun/nio/fs/UnixPath;
    .param p1, "followLinks"    # Z

    .line 376
    new-instance v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixFileAttributeViews$Unix;-><init>(Lsun/nio/fs/UnixPath;Z)V

    return-object v0
.end method
