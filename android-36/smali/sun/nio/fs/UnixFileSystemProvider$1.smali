.class Lsun/nio/fs/UnixFileSystemProvider$1;
.super Lsun/nio/fs/AbstractFileTypeDetector;
.source "UnixFileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystemProvider;->getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystemProvider;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileSystemProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Lsun/nio/fs/AbstractFileTypeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 3
    .param p1, "file"    # Ljava/nio/file/Path;

    .line 551
    const/4 v0, 0x0

    return-object v0
.end method
