.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/File$PathStatus;,
        Ljava/io/File$TempDirectory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist CANONICALIZE_PARENT_OF_ROOT_DIR:J = 0x129ed651L

.field private static final greylist-max-o PATH_OFFSET:J

.field private static final greylist-max-o PREFIX_LENGTH_OFFSET:J

.field private static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;

.field private static final greylist fs:Ljava/io/FileSystem;

.field public static final whitelist test-api pathSeparator:Ljava/lang/String;

.field public static final whitelist test-api pathSeparatorChar:C

.field public static final whitelist test-api separator:Ljava/lang/String;

.field public static final whitelist test-api separatorChar:C

.field private static final whitelist serialVersionUID:J = 0x42da4450e0de4ffL


# instance fields
.field private volatile transient greylist-max-r filePath:Ljava/nio/file/Path;

.field private final greylist-max-r path:Ljava/lang/String;

.field private final transient greylist-max-r prefixLength:I

.field private transient greylist-max-r status:Ljava/io/File$PathStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 160
    const-class v0, Ljava/io/File;

    .line 167
    invoke-static {}, Ljava/io/DefaultFileSystem;->getFileSystem()Ljava/io/FileSystem;

    move-result-object v1

    sput-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    .line 226
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1}, Ljava/io/FileSystem;->getSeparator()C

    move-result v1

    sput-char v1, Ljava/io/File;->separatorChar:C

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 245
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1}, Ljava/io/FileSystem;->getPathSeparator()C

    move-result v1

    sput-char v1, Ljava/io/File;->pathSeparatorChar:C

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 2182
    :try_start_44
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v1

    .line 2183
    .local v1, "unsafe":Ljdk/internal/misc/Unsafe;
    const-string v2, "path"

    .line 2184
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2183
    invoke-virtual {v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/io/File;->PATH_OFFSET:J

    .line 2185
    const-string v2, "prefixLength"

    .line 2186
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2185
    invoke-virtual {v1, v0}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/io/File;->PREFIX_LENGTH_OFFSET:J

    .line 2187
    sput-object v1, Ljava/io/File;->UNSAFE:Ljdk/internal/misc/Unsafe;
    :try_end_62
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_44 .. :try_end_62} :catch_64

    .line 2190
    .end local v1    # "unsafe":Ljdk/internal/misc/Unsafe;
    nop

    .line 2191
    return-void

    .line 2188
    :catch_64
    move-exception v0

    .line 2189
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "child"    # Ljava/lang/String;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 367
    if-eqz p2, :cond_4d

    .line 370
    if-eqz p1, :cond_3a

    .line 371
    iget-object v0, p1, Ljava/io/File;->path:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 372
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1}, Ljava/io/FileSystem;->getDefaultParent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    .line 373
    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_42

    .line 375
    :cond_29
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    .line 376
    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_42

    .line 379
    :cond_3a
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 381
    :goto_42
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 382
    return-void

    .line 368
    :cond_4d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pathname"    # Ljava/lang/String;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 287
    if-eqz p1, :cond_1b

    .line 290
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 291
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 292
    return-void

    .line 288
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 261
    iput-object p1, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 262
    iput p2, p0, Ljava/io/File;->prefixLength:I

    .line 263
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/io/File;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 271
    nop

    .line 272
    nop

    .line 273
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p2, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 274
    iget v0, p2, Ljava/io/File;->prefixLength:I

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 275
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 327
    if-eqz p2, :cond_38

    .line 331
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 332
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    .line 333
    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_2d

    .line 336
    :cond_25
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 338
    :goto_2d
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/io/File;->prefixLength:I

    .line 339
    return-void

    .line 328
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/net/URI;)V
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 423
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 425
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 427
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_83

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 430
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7b

    .line 432
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_73

    .line 434
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 436
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "p":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 441
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v1}, Ljava/io/FileSystem;->fromURIPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_50

    .line 443
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 444
    :cond_50
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 445
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljava/io/File;->prefixLength:I

    .line 446
    return-void

    .line 438
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "URI path component is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    .end local v1    # "p":Ljava/lang/String;
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a query component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a fragment component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has an authority component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI scheme is not \"file\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not hierarchical"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2069
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 7
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1995
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_43

    .line 1997
    if-nez p1, :cond_d

    .line 1998
    const-string p1, ".tmp"

    move-object v0, p1

    goto :goto_e

    .line 1997
    :cond_d
    move-object v0, p1

    .line 2001
    .end local p1    # "suffix":Ljava/lang/String;
    .local v0, "suffix":Ljava/lang/String;
    :goto_e
    if-eqz p2, :cond_12

    move-object p1, p2

    goto :goto_1f

    .line 2002
    :cond_12
    new-instance p1, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    const-string v2, "."

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1f
    move-object v1, p1

    .line 2006
    .local v1, "tmpdir":Ljava/io/File;
    :cond_20
    invoke-static {p0, v0, v1}, Ljava/io/File$TempDirectory;->generateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 2021
    .local p1, "f":Ljava/io/File;
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, p1}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_20

    .line 2023
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileSystem;->createFileExclusively(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2026
    return-object p1

    .line 2024
    :cond_3b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to create temporary file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1996
    .end local v0    # "suffix":Ljava/lang/String;
    .end local v1    # "tmpdir":Ljava/io/File;
    .local p1, "suffix":Ljava/lang/String;
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prefix string too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api listRoots()[Ljava/io/File;
    .registers 1

    .line 1759
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0}, Ljava/io/FileSystem;->listRoots()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 2167
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 2168
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "path"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2169
    .local v1, "pathField":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v2

    .line 2170
    .local v2, "sep":C
    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_1d

    .line 2171
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2172
    .end local p0    # "this":Ljava/io/File;
    :cond_1d
    sget-object v3, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v3, v1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2173
    .local v3, "path":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide v5, Ljava/io/File;->PATH_OFFSET:J

    invoke-virtual {v4, p0, v5, v6, v3}, Ljdk/internal/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2174
    sget-object v4, Ljava/io/File;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide v5, Ljava/io/File;->PREFIX_LENGTH_OFFSET:J

    sget-object v7, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v7, v3}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, p0, v5, v6, v7}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 2175
    monitor-exit p0

    return-void

    .line 2166
    .end local v0    # "fields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "pathField":Ljava/lang/String;
    .end local v2    # "sep":C
    .end local v3    # "path":Ljava/lang/String;
    .end local p1    # "s":Ljava/io/ObjectInputStream;
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method private static greylist-max-o slashify(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isDirectory"    # Z

    .line 657
    move-object v0, p0

    .line 658
    .local v0, "p":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_d

    .line 659
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 660
    :cond_d
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    :cond_26
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    if-eqz p1, :cond_3f

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    :cond_3f
    return-object v0
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2154
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2155
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2156
    monitor-exit p0

    return-void

    .line 2153
    .end local p0    # "this":Ljava/io/File;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method


# virtual methods
.method public whitelist test-api canExecute()Z
    .registers 4

    .line 1740
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1741
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1742
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 1744
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1745
    const/4 v1, 0x0

    return v1

    .line 1747
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api canRead()Z
    .registers 4

    .line 771
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 772
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 773
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 775
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 776
    const/4 v1, 0x0

    return v1

    .line 778
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api canWrite()Z
    .registers 4

    .line 797
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 798
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 799
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 801
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 802
    const/4 v1, 0x0

    return v1

    .line 804
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api compareTo(Ljava/io/File;)I
    .registers 3
    .param p1, "pathname"    # Ljava/io/File;

    .line 2092
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0, p1}, Ljava/io/FileSystem;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 160
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api createNewFile()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1018
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1019
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1022
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/FileSystem;->createFileExclusively(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1020
    :cond_1a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid file path"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api delete()Z
    .registers 3

    .line 1044
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1045
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1046
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 1048
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1049
    const/4 v1, 0x0

    return v1

    .line 1051
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->delete(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api deleteOnExit()V
    .registers 3

    .line 1095
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1096
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1097
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 1099
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1100
    return-void

    .line 1102
    :cond_12
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/io/DeleteOnExitHook;->add(Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2110
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_12

    .line 2111
    move-object v1, p1

    check-cast v1, Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 2113
    :cond_12
    return v0
.end method

.method public whitelist test-api exists()Z
    .registers 4

    .line 820
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 821
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 822
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 824
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 825
    const/4 v1, 0x0

    return v1

    .line 829
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api getAbsoluteFile()Ljava/io/File;
    .registers 4

    .line 570
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "absPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public whitelist test-api getAbsolutePath()Ljava/lang/String;
    .registers 2

    .line 554
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCanonicalFile()Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "canonPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public whitelist test-api getCanonicalPath()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_13

    .line 616
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 614
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid file path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getFreeSpace()J
    .registers 4

    .line 1819
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1820
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 1821
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1822
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1824
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1825
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1827
    :cond_1e
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 4

    .line 462
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 463
    .local v0, "index":I
    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 464
    :cond_15
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getParent()Ljava/lang/String;
    .registers 5

    .line 481
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 482
    .local v0, "index":I
    iget v1, p0, Ljava/io/File;->prefixLength:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_26

    .line 483
    iget v1, p0, Ljava/io/File;->prefixLength:I

    if-lez v1, :cond_24

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Ljava/io/File;->prefixLength:I

    if-le v1, v3, :cond_24

    .line 484
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget v3, p0, Ljava/io/File;->prefixLength:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 485
    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 487
    :cond_26
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getParentFile()Ljava/io/File;
    .registers 4

    .line 507
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "p":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 509
    :cond_8
    new-instance v1, Ljava/io/File;

    iget v2, p0, Ljava/io/File;->prefixLength:I

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public whitelist test-api getPath()Ljava/lang/String;
    .registers 2

    .line 520
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getPrefixLength()I
    .registers 2

    .line 215
    iget v0, p0, Ljava/io/File;->prefixLength:I

    return v0
.end method

.method public whitelist test-api getTotalSpace()J
    .registers 4

    .line 1781
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1782
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 1783
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1784
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1786
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1787
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1789
    :cond_1e
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api getUsableSpace()J
    .registers 4

    .line 1866
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1867
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 1868
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getFileSystemAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1869
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1871
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1872
    const-wide/16 v1, 0x0

    return-wide v1

    .line 1874
    :cond_1e
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2131
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->hashCode(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isAbsolute()Z
    .registers 2

    .line 536
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->isAbsolute(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isDirectory()Z
    .registers 4

    .line 852
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 853
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 854
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 856
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 857
    return v2

    .line 859
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method public whitelist test-api isFile()Z
    .registers 4

    .line 885
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 886
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 887
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 889
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 890
    return v2

    .line 892
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method public whitelist test-api isHidden()Z
    .registers 4

    .line 914
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 915
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 916
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 918
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 919
    return v2

    .line 921
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method final greylist-max-o isInvalid()Z
    .registers 4

    .line 197
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 198
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_10

    sget-object v0, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    goto :goto_12

    .line 199
    :cond_10
    sget-object v0, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    :goto_12
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    .line 201
    :cond_14
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    sget-object v2, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    if-ne v0, v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public whitelist test-api lastModified()J
    .registers 4

    .line 946
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 947
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 948
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 950
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 951
    const-wide/16 v1, 0x0

    return-wide v1

    .line 953
    :cond_14
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLastModifiedTime(Ljava/io/File;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api length()J
    .registers 4

    .line 977
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 978
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 979
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 981
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 982
    const-wide/16 v1, 0x0

    return-wide v1

    .line 984
    :cond_14
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLength(Ljava/io/File;)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api list()[Ljava/lang/String;
    .registers 3

    .line 1138
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1139
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1140
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1142
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1143
    const/4 v1, 0x0

    return-object v1

    .line 1145
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->list(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .registers 6
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 1178
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "names":[Ljava/lang/String;
    if-eqz v0, :cond_2f

    if-nez p1, :cond_9

    goto :goto_2f

    .line 1182
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_22

    .line 1184
    aget-object v3, v0, v2

    invoke-interface {p1, p0, v3}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1185
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1188
    .end local v2    # "i":I
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 1180
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public whitelist test-api listFiles()[Ljava/io/File;
    .registers 7

    .line 1230
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1232
    :cond_8
    array-length v1, v0

    .line 1233
    .local v1, "n":I
    new-array v2, v1, [Ljava/io/File;

    .line 1234
    .local v2, "fs":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_1a

    .line 1235
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v2, v3

    .line 1234
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1237
    .end local v3    # "i":I
    :cond_1a
    return-object v2
.end method

.method public whitelist test-api listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 9
    .param p1, "filter"    # Ljava/io/FileFilter;

    .line 1309
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1311
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-object v4, v0, v3

    .line 1313
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 1314
    .local v5, "f":Ljava/io/File;
    if-eqz p1, :cond_20

    invoke-interface {p1, v5}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1315
    :cond_20
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1317
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    return-object v2
.end method

.method public whitelist test-api listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 8
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 1271
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 1273
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-object v4, v0, v3

    .line 1275
    .local v4, "s":Ljava/lang/String;
    if-eqz p1, :cond_1b

    invoke-interface {p1, p0, v4}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1276
    :cond_1b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    .end local v4    # "s":Ljava/lang/String;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1277
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    return-object v2
.end method

.method public whitelist test-api mkdir()Z
    .registers 3

    .line 1332
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1333
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1334
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1336
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1337
    const/4 v1, 0x0

    return v1

    .line 1339
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->createDirectory(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api mkdirs()Z
    .registers 6

    .line 1363
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1364
    return v1

    .line 1366
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 1367
    return v2

    .line 1369
    :cond_10
    const/4 v0, 0x0

    .line 1371
    .local v0, "canonFile":Ljava/io/File;
    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_32

    .line 1374
    .end local v0    # "canonFile":Ljava/io/File;
    .local v3, "canonFile":Ljava/io/File;
    nop

    .line 1376
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1377
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1378
    :cond_28
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_30

    move v1, v2

    goto :goto_31

    :cond_30
    nop

    .line 1377
    :goto_31
    return v1

    .line 1372
    .end local v3    # "canonFile":Ljava/io/File;
    .local v0, "canonFile":Ljava/io/File;
    :catch_32
    move-exception v2

    .line 1373
    .local v2, "e":Ljava/io/IOException;
    return v1
.end method

.method public whitelist test-api renameTo(Ljava/io/File;)Z
    .registers 4
    .param p1, "dest"    # Ljava/io/File;

    .line 1415
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1416
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1417
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1418
    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1420
    :cond_10
    if-eqz p1, :cond_28

    .line 1423
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_26

    .line 1426
    :cond_1f
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0, p1}, Ljava/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1

    .line 1424
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return v1

    .line 1421
    :cond_28
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public whitelist test-api setExecutable(Z)Z
    .registers 3
    .param p1, "executable"    # Z

    .line 1721
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setExecutable(ZZ)Z
    .registers 6
    .param p1, "executable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 1681
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1682
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1683
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1685
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1686
    const/4 v1, 0x0

    return v1

    .line 1688
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api setLastModified(J)Z
    .registers 5
    .param p1, "time"    # J

    .line 1456
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_20

    .line 1457
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1458
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_11

    .line 1459
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1461
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1462
    const/4 v1, 0x0

    return v1

    .line 1464
    :cond_19
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0, p1, p2}, Ljava/io/FileSystem;->setLastModifiedTime(Ljava/io/File;J)Z

    move-result v1

    return v1

    .line 1456
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setReadOnly()Z
    .registers 3

    .line 1486
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1487
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1488
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1490
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1491
    const/4 v1, 0x0

    return v1

    .line 1493
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->setReadOnly(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api setReadable(Z)Z
    .registers 3
    .param p1, "readable"    # Z

    .line 1643
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setReadable(ZZ)Z
    .registers 6
    .param p1, "readable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 1603
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1604
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1605
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1607
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1608
    const/4 v1, 0x0

    return v1

    .line 1610
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api setWritable(Z)Z
    .registers 3
    .param p1, "writable"    # Z

    .line 1565
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setWritable(ZZ)Z
    .registers 6
    .param p1, "writable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 1528
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1529
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1530
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1532
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1533
    const/4 v1, 0x0

    return v1

    .line 1535
    :cond_13
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api toPath()Ljava/nio/file/Path;
    .registers 5

    .line 2228
    iget-object v0, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;

    .line 2229
    .local v0, "result":Ljava/nio/file/Path;
    if-nez v0, :cond_1f

    .line 2230
    monitor-enter p0

    .line 2231
    :try_start_5
    iget-object v1, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;

    move-object v0, v1

    .line 2232
    if-nez v0, :cond_1a

    .line 2233
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    move-object v0, v1

    .line 2234
    iput-object v0, p0, Ljava/io/File;->filePath:Ljava/nio/file/Path;

    .line 2236
    :cond_1a
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1

    .line 2238
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2141
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toURI()Ljava/net/URI;
    .registers 6

    .line 743
    const-string v0, "//"

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .line 744
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-static {v2, v3}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "sp":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 747
    :cond_2a
    new-instance v0, Ljava/net/URI;

    const-string v3, "file"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_32} :catch_33

    return-object v0

    .line 748
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "sp":Ljava/lang/String;
    :catch_33
    move-exception v0

    .line 749
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api toURL()Ljava/net/URL;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 692
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_20

    .line 697
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 697
    invoke-static {v1, v2}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 693
    :cond_20
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Invalid file path"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
