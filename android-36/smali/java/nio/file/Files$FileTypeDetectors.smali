.class Ljava/nio/file/Files$FileTypeDetectors;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileTypeDetectors"
.end annotation


# static fields
.field static final greylist-max-o defaultFileTypeDetector:Ljava/nio/file/spi/FileTypeDetector;

.field static final greylist-max-o installeDetectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1537
    invoke-static {}, Ljava/nio/file/Files$FileTypeDetectors;->createDefaultFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;

    move-result-object v0

    sput-object v0, Ljava/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Ljava/nio/file/spi/FileTypeDetector;

    .line 1539
    invoke-static {}, Ljava/nio/file/Files$FileTypeDetectors;->loadInstalledDetectors()Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/nio/file/Files$FileTypeDetectors;->installeDetectors:Ljava/util/List;

    .line 1538
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o createDefaultFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
    .registers 1

    .line 1543
    new-instance v0, Ljava/nio/file/Files$FileTypeDetectors$1;

    invoke-direct {v0}, Ljava/nio/file/Files$FileTypeDetectors$1;-><init>()V

    .line 1544
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/spi/FileTypeDetector;

    .line 1543
    return-object v0
.end method

.method private static greylist-max-o loadInstalledDetectors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileTypeDetector;",
            ">;"
        }
    .end annotation

    .line 1552
    new-instance v0, Ljava/nio/file/Files$FileTypeDetectors$2;

    invoke-direct {v0}, Ljava/nio/file/Files$FileTypeDetectors$2;-><init>()V

    .line 1553
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1552
    return-object v0
.end method
