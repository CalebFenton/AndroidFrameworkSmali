.class Ljava/nio/file/FileSystems$DefaultFileSystemHolder$1;
.super Ljava/lang/Object;
.source "FileSystems.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem()Ljava/nio/file/FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/nio/file/spi/FileSystemProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0}, Ljava/nio/file/FileSystems$DefaultFileSystemHolder$1;->run()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/nio/file/spi/FileSystemProvider;
    .registers 2

    .line 98
    invoke-static {}, Ljava/nio/file/FileSystems$DefaultFileSystemHolder;->-$$Nest$smgetDefaultProvider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method
