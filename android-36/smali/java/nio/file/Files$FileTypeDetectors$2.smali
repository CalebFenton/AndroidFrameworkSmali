.class Ljava/nio/file/Files$FileTypeDetectors$2;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/file/Files$FileTypeDetectors;->loadInstalledDetectors()Ljava/util/List;
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
        "Ljava/nio/file/spi/FileTypeDetector;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 1553
    invoke-virtual {p0}, Ljava/nio/file/Files$FileTypeDetectors$2;->run()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation

    .line 1555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileTypeDetector;>;"
    const-class v1, Ljava/nio/file/spi/FileTypeDetector;

    .line 1557
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 1558
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/file/spi/FileTypeDetector;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/spi/FileTypeDetector;

    .line 1559
    .local v3, "detector":Ljava/nio/file/spi/FileTypeDetector;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    .end local v3    # "detector":Ljava/nio/file/spi/FileTypeDetector;
    goto :goto_13

    .line 1561
    :cond_23
    return-object v0
.end method
