.class Lsun/nio/fs/LinuxFileSystem$SupportedFileFileAttributeViewsHolder;
.super Ljava/lang/Object;
.source "LinuxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/LinuxFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupportedFileFileAttributeViewsHolder"
.end annotation


# static fields
.field static final blacklist supportedFileAttributeViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    invoke-static {}, Lsun/nio/fs/LinuxFileSystem$SupportedFileFileAttributeViewsHolder;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxFileSystem$SupportedFileFileAttributeViewsHolder;->supportedFileAttributeViews:Ljava/util/Set;

    .line 53
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist supportedFileAttributeViews()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 57
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lsun/nio/fs/UnixFileSystem;->standardFileAttributeViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    const-string v1, "dos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "user"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
