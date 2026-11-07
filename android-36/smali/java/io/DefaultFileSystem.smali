.class Ljava/io/DefaultFileSystem;
.super Ljava/lang/Object;
.source "DefaultFileSystem.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFileSystem()Ljava/io/FileSystem;
    .registers 1

    .line 38
    new-instance v0, Ljava/io/UnixFileSystem;

    invoke-direct {v0}, Ljava/io/UnixFileSystem;-><init>()V

    return-object v0
.end method
