.class Lsun/nio/fs/UnixFileSystemProvider$2;
.super Lsun/nio/fs/AbstractFileTypeDetector;
.source "UnixFileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystemProvider;->chain([Lsun/nio/fs/AbstractFileTypeDetector;)Ljava/nio/file/spi/FileTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystemProvider;[Lsun/nio/fs/AbstractFileTypeDetector;)V
    .registers 3
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileSystemProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 563
    iput-object p2, p0, Lsun/nio/fs/UnixFileSystemProvider$2;->val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;

    invoke-direct {p0}, Lsun/nio/fs/AbstractFileTypeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 8
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystemProvider$2;->val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 567
    .local v3, "detector":Lsun/nio/fs/AbstractFileTypeDetector;
    invoke-virtual {v3, p1}, Lsun/nio/fs/AbstractFileTypeDetector;->implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 569
    return-object v4

    .line 566
    .end local v3    # "detector":Lsun/nio/fs/AbstractFileTypeDetector;
    .end local v4    # "result":Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 572
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method
