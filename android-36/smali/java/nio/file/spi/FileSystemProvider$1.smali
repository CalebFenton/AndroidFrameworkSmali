.class Ljava/nio/file/spi/FileSystemProvider$1;
.super Ljava/lang/Object;
.source "FileSystemProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/List<",
        "Ljava/nio/file/spi/FileSystemProvider;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 166
    invoke-virtual {p0}, Ljava/nio/file/spi/FileSystemProvider$1;->run()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->-$$Nest$smloadInstalledProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
