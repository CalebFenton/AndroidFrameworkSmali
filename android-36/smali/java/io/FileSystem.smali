.class abstract Ljava/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final greylist-max-o ACCESS_EXECUTE:I = 0x1

.field public static final greylist-max-o ACCESS_OK:I = 0x8

.field public static final greylist-max-o ACCESS_READ:I = 0x4

.field public static final greylist-max-o ACCESS_WRITE:I = 0x2

.field public static final greylist-max-o BA_DIRECTORY:I = 0x4

.field public static final greylist-max-o BA_EXISTS:I = 0x1

.field public static final greylist-max-o BA_HIDDEN:I = 0x8

.field public static final greylist-max-o BA_REGULAR:I = 0x2

.field public static final greylist-max-o SPACE_FREE:I = 0x1

.field public static final greylist-max-o SPACE_TOTAL:I = 0x0

.field public static final greylist-max-o SPACE_USABLE:I = 0x2

.field static greylist-max-o useCanonCaches:Z

.field static greylist-max-o useCanonPrefixCache:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 240
    const/4 v0, 0x0

    sput-boolean v0, Ljava/io/FileSystem;->useCanonCaches:Z

    .line 241
    sput-boolean v0, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    .line 249
    const-string v0, "sun.io.useCanonCaches"

    sget-boolean v1, Ljava/io/FileSystem;->useCanonCaches:Z

    invoke-static {v0, v1}, Ljava/io/FileSystem;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava/io/FileSystem;->useCanonCaches:Z

    .line 251
    const-string v0, "sun.io.useCanonPrefixCache"

    sget-boolean v1, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    invoke-static {v0, v1}, Ljava/io/FileSystem;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljava/io/FileSystem;->useCanonPrefixCache:Z

    .line 253
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "defaultVal"    # Z

    .line 244
    nop

    .line 245
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract greylist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist checkAccess(Ljava/io/File;I)Z
.end method

.method public abstract greylist compare(Ljava/io/File;Ljava/io/File;)I
.end method

.method public abstract greylist createDirectory(Ljava/io/File;)Z
.end method

.method public abstract greylist createFileExclusively(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist delete(Ljava/io/File;)Z
.end method

.method public abstract greylist fromURIPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist getBooleanAttributes(Ljava/io/File;)I
.end method

.method public abstract greylist getDefaultParent()Ljava/lang/String;
.end method

.method public abstract greylist getLastModifiedTime(Ljava/io/File;)J
.end method

.method public abstract greylist getLength(Ljava/io/File;)J
.end method

.method public abstract blacklist getNameMax(Ljava/lang/String;)I
.end method

.method public abstract greylist getPathSeparator()C
.end method

.method public abstract greylist getSeparator()C
.end method

.method public abstract greylist getSpace(Ljava/io/File;I)J
.end method

.method public abstract greylist hashCode(Ljava/io/File;)I
.end method

.method public abstract greylist isAbsolute(Ljava/io/File;)Z
.end method

.method public abstract greylist list(Ljava/io/File;)[Ljava/lang/String;
.end method

.method public abstract greylist listRoots()[Ljava/io/File;
.end method

.method public abstract greylist normalize(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist prefixLength(Ljava/lang/String;)I
.end method

.method public abstract greylist rename(Ljava/io/File;Ljava/io/File;)Z
.end method

.method public abstract greylist resolve(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract greylist resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist setLastModifiedTime(Ljava/io/File;J)Z
.end method

.method public abstract greylist setPermission(Ljava/io/File;IZZ)Z
.end method

.method public abstract greylist setReadOnly(Ljava/io/File;)Z
.end method
