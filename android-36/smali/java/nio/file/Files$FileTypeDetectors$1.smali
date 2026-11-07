.class Ljava/nio/file/Files$FileTypeDetectors$1;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/file/Files$FileTypeDetectors;->createDefaultFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/nio/file/spi/FileTypeDetector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 1544
    invoke-virtual {p0}, Ljava/nio/file/Files$FileTypeDetectors$1;->run()Ljava/nio/file/spi/FileTypeDetector;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/nio/file/spi/FileTypeDetector;
    .registers 2

    .line 1546
    invoke-static {}, Lsun/nio/fs/DefaultFileTypeDetector;->create()Ljava/nio/file/spi/FileTypeDetector;

    move-result-object v0

    return-object v0
.end method
