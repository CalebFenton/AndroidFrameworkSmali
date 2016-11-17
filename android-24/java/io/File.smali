.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/File$PathStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final fs:Ljava/io/FileSystem;

.field public static final pathSeparator:Ljava/lang/String;

.field public static final pathSeparatorChar:C

.field public static final separator:Ljava/lang/String;

.field public static final separatorChar:C

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL


# instance fields
.field private path:Ljava/lang/String;

.field private transient prefixLength:I

.field private transient status:Ljava/io/File$PathStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/io/File;->-assertionsDisabled:Z

    #@b
    .line 141
    invoke-static {}, Ljava/io/FileSystem;->getFileSystem()Ljava/io/FileSystem;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@11
    .line 200
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@13
    invoke-virtual {v0}, Ljava/io/FileSystem;->getSeparator()C

    #@16
    move-result v0

    #@17
    sput-char v0, Ljava/io/File;->separatorChar:C

    #@19
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, ""

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    sget-char v1, Ljava/io/File;->separatorChar:C

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    sput-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    #@31
    .line 219
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@33
    invoke-virtual {v0}, Ljava/io/FileSystem;->getPathSeparator()C

    #@36
    move-result v0

    #@37
    sput-char v0, Ljava/io/File;->pathSeparatorChar:C

    #@39
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v1, ""

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    sput-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@51
    .line 134
    return-void

    #@52
    :cond_0
    const/4 v0, 0x1

    #@53
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "child"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 160
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@6
    .line 339
    if-nez p2, :cond_0

    #@8
    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 342
    :cond_0
    if-eqz p1, :cond_2

    #@10
    .line 343
    iget-object v0, p1, Ljava/io/File;->path:Ljava/lang/String;

    #@12
    const-string/jumbo v1, ""

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 344
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@1d
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@1f
    invoke-virtual {v1}, Ljava/io/FileSystem;->getDefaultParent()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 345
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@25
    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 344
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2f
    .line 353
    :goto_0
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@31
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    #@36
    move-result v0

    #@37
    iput v0, p0, Ljava/io/File;->prefixLength:I

    #@39
    .line 338
    return-void

    #@3a
    .line 347
    :cond_1
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@3c
    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    #@3e
    .line 348
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@40
    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 347
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4a
    goto :goto_0

    #@4b
    .line 351
    :cond_2
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@4d
    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@53
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 160
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@6
    .line 261
    if-nez p1, :cond_0

    #@8
    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 264
    :cond_0
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@10
    invoke-virtual {v0, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@16
    .line 265
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@18
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Ljava/io/File;->prefixLength:I

    #@20
    .line 260
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 160
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@6
    .line 235
    iput-object p1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    .line 236
    iput p2, p0, Ljava/io/File;->prefixLength:I

    #@a
    .line 234
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 160
    iput-object v2, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@8
    .line 245
    sget-boolean v2, Ljava/io/File;->-assertionsDisabled:Z

    #@a
    if-nez v2, :cond_1

    #@c
    iget-object v2, p2, Ljava/io/File;->path:Ljava/lang/String;

    #@e
    if-eqz v2, :cond_0

    #@10
    move v2, v1

    #@11
    :goto_0
    if-nez v2, :cond_1

    #@13
    new-instance v0, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v0

    #@19
    :cond_0
    move v2, v0

    #@1a
    goto :goto_0

    #@1b
    .line 246
    :cond_1
    sget-boolean v2, Ljava/io/File;->-assertionsDisabled:Z

    #@1d
    if-nez v2, :cond_3

    #@1f
    iget-object v2, p2, Ljava/io/File;->path:Ljava/lang/String;

    #@21
    const-string/jumbo v3, ""

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_2

    #@2a
    :goto_1
    if-nez v0, :cond_3

    #@2c
    new-instance v0, Ljava/lang/AssertionError;

    #@2e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@31
    throw v0

    #@32
    :cond_2
    move v0, v1

    #@33
    goto :goto_1

    #@34
    .line 247
    :cond_3
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@36
    iget-object v1, p2, Ljava/io/File;->path:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v1, p1}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@3e
    .line 248
    iget v0, p2, Ljava/io/File;->prefixLength:I

    #@40
    iput v0, p0, Ljava/io/File;->prefixLength:I

    #@42
    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 160
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@6
    .line 301
    if-nez p2, :cond_0

    #@8
    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 304
    :cond_0
    if-eqz p1, :cond_1

    #@10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 308
    :cond_1
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@18
    invoke-virtual {v0, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@1e
    .line 310
    :goto_0
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@20
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    iput v0, p0, Ljava/io/File;->prefixLength:I

    #@28
    .line 300
    return-void

    #@29
    .line 305
    :cond_2
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@2b
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@2d
    invoke-virtual {v1, p1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 306
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@33
    invoke-virtual {v2, p2}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 305
    invoke-virtual {v0, v1, v2}, Ljava/io/FileSystem;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@3d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    const/16 v3, 0x2f

    #@2
    const/4 v2, 0x0

    #@3
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 160
    iput-object v2, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@8
    .line 395
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 396
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v3, "URI is not absolute"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 397
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 398
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v3, "URI is not hierarchical"

    #@22
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 399
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 400
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@2c
    const-string/jumbo v2, "file"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_2

    #@35
    .line 402
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    if-eqz v2, :cond_3

    #@3b
    .line 403
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3d
    const-string/jumbo v3, "URI has an authority component"

    #@40
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v2

    #@44
    .line 401
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v3, "URI scheme is not \"file\""

    #@49
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v2

    #@4d
    .line 404
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    if-eqz v2, :cond_4

    #@53
    .line 405
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@55
    const-string/jumbo v3, "URI has a fragment component"

    #@58
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2

    #@5c
    .line 406
    :cond_4
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    if-eqz v2, :cond_5

    #@62
    .line 407
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@64
    const-string/jumbo v3, "URI has a query component"

    #@67
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2

    #@6b
    .line 408
    :cond_5
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    .line 409
    .local v0, "p":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    if-eqz v2, :cond_6

    #@78
    .line 410
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7a
    const-string/jumbo v3, "URI path component is empty"

    #@7d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v2

    #@81
    .line 413
    :cond_6
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@83
    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->fromURIPath(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    .line 414
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@89
    if-eq v2, v3, :cond_7

    #@8b
    .line 415
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@8d
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    .line 416
    :cond_7
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@93
    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    iput-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@99
    .line 417
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@9b
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@9d
    invoke-virtual {v2, v3}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    #@a0
    move-result v2

    #@a1
    iput v2, p0, Ljava/io/File;->prefixLength:I

    #@a3
    .line 392
    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1905
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1850
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    const/4 v4, 0x3

    #@5
    if-ge v3, v4, :cond_0

    #@7
    .line 1851
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v4, "Prefix string too short"

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 1852
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 1853
    const-string/jumbo p1, ".tmp"

    #@15
    .line 1855
    :cond_1
    if-eqz p2, :cond_3

    #@17
    move-object v2, p2

    #@18
    .line 1860
    .local v2, "tmpdir":Ljava/io/File;
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p0, p1, v2}, Ljava/io/File;->generateTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@1b
    move-result-object v0

    #@1c
    .line 1861
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_2

    #@22
    .line 1862
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_5

    #@28
    .line 1863
    new-instance v3, Ljava/io/IOException;

    #@2a
    const-string/jumbo v4, "Unable to create temporary file"

    #@2d
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 1864
    .end local v0    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    #@32
    .line 1866
    .local v1, "se":Ljava/lang/SecurityException;
    if-nez p2, :cond_4

    #@34
    .line 1867
    new-instance v3, Ljava/lang/SecurityException;

    #@36
    const-string/jumbo v4, "Unable to create temporary file"

    #@39
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3

    #@3d
    .line 1856
    .end local v1    # "se":Ljava/lang/SecurityException;
    .end local v2    # "tmpdir":Ljava/io/File;
    :cond_3
    new-instance v2, Ljava/io/File;

    #@3f
    const-string/jumbo v3, "java.io.tmpdir"

    #@42
    const-string/jumbo v4, "."

    #@45
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4c
    .restart local v2    # "tmpdir":Ljava/io/File;
    goto :goto_0

    #@4d
    .line 1868
    .restart local v1    # "se":Ljava/lang/SecurityException;
    :cond_4
    throw v1

    #@4e
    .line 1870
    .end local v1    # "se":Ljava/lang/SecurityException;
    .restart local v0    # "f":Ljava/io/File;
    :cond_5
    return-object v0
.end method

.method private static generateTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1764
    invoke-static {}, Ljava/lang/Math;->randomIntInternal()I

    #@3
    move-result v1

    #@4
    .line 1765
    .local v1, "n":I
    const/high16 v3, -0x80000000

    #@6
    if-ne v1, v3, :cond_0

    #@8
    .line 1766
    const/4 v1, 0x0

    #@9
    .line 1770
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 1771
    .local v2, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@24
    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27
    .line 1772
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_1

    #@31
    .line 1773
    new-instance v3, Ljava/io/IOException;

    #@33
    const-string/jumbo v4, "Unable to create temporary file"

    #@36
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 1768
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@3d
    move-result v1

    #@3e
    goto :goto_0

    #@3f
    .line 1774
    .restart local v0    # "f":Ljava/io/File;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static listRoots()[Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 1639
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@2
    invoke-virtual {v0}, Ljava/io/FileSystem;->listRoots()[Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2003
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v0

    #@5
    .line 2004
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v3, "path"

    #@8
    const/4 v4, 0x0

    #@9
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/String;

    #@f
    .line 2005
    .local v1, "pathField":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    #@12
    move-result v2

    #@13
    .line 2006
    .local v2, "sep":C
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@15
    if-eq v2, v3, :cond_0

    #@17
    .line 2007
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@19
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 2008
    :cond_0
    sget-object v3, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@1f
    invoke-virtual {v3, v1}, Ljava/io/FileSystem;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    iput-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@25
    .line 2009
    sget-object v3, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@27
    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@29
    invoke-virtual {v3, v4}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    #@2c
    move-result v3

    #@2d
    iput v3, p0, Ljava/io/File;->prefixLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit p0

    #@30
    .line 2001
    return-void

    #@31
    .end local v0    # "fields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "pathField":Ljava/lang/String;
    .end local v2    # "sep":C
    :catchall_0
    move-exception v3

    #@32
    monitor-exit p0

    #@33
    throw v3
.end method

.method private static slashify(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isDirectory"    # Z

    #@0
    .prologue
    const/16 v2, 0x2f

    #@2
    .line 616
    move-object v0, p0

    #@3
    .line 617
    .local v0, "p":Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 618
    sget-char v1, Ljava/io/File;->separatorChar:C

    #@9
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 619
    :cond_0
    const-string/jumbo v1, "/"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "/"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 621
    :cond_1
    const-string/jumbo v1, "/"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_2

    #@33
    if-eqz p1, :cond_2

    #@35
    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, "/"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    .line 623
    :cond_2
    return-object v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1990
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 1991
    sget-char v0, Ljava/io/File;->separatorChar:C

    #@6
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 1988
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method


# virtual methods
.method public canExecute()Z
    .locals 3

    #@0
    .prologue
    .line 1620
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1621
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1622
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    #@b
    .line 1624
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1625
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 1627
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public canRead()Z
    .locals 3

    #@0
    .prologue
    .line 724
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 725
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 726
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@b
    .line 728
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 729
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 731
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    const/4 v2, 0x4

    #@16
    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public canWrite()Z
    .locals 3

    #@0
    .prologue
    .line 749
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 750
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 751
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@b
    .line 753
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 754
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 756
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    const/4 v2, 0x2

    #@16
    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public compareTo(Ljava/io/File;)I
    .locals 1
    .param p1, "pathname"    # Ljava/io/File;

    #@0
    .prologue
    .line 1928
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@2
    invoke-virtual {v0, p0, p1}, Ljava/io/FileSystem;->compare(Ljava/io/File;Ljava/io/File;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "pathname"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1927
    check-cast p1, Ljava/io/File;

    #@2
    .end local p1    # "pathname":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public createNewFile()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 943
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 944
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@b
    .line 945
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 946
    new-instance v1, Ljava/io/IOException;

    #@13
    const-string/jumbo v2, "Invalid file path"

    #@16
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 948
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@1c
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v2}, Ljava/io/FileSystem;->createFileExclusively(Ljava/lang/String;)Z

    #@21
    move-result v1

    #@22
    return v1
.end method

.method public delete()Z
    .locals 2

    #@0
    .prologue
    .line 965
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 966
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 967
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    #@b
    .line 969
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 970
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 972
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->delete(Ljava/io/File;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public deleteOnExit()V
    .locals 2

    #@0
    .prologue
    .line 1015
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1016
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1017
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    #@b
    .line 1019
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1020
    return-void

    #@12
    .line 1022
    :cond_1
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@14
    invoke-static {v1}, Ljava/io/DeleteOnExitHook;->add(Ljava/lang/String;)V

    #@17
    .line 1014
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1946
    if-eqz p1, :cond_1

    #@3
    instance-of v1, p1, Ljava/io/File;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1947
    check-cast p1, Ljava/io/File;

    #@9
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0

    #@11
    .line 1949
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public exists()Z
    .locals 3

    #@0
    .prologue
    .line 772
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 773
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 774
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@b
    .line 776
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 777
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 780
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    const/16 v2, 0x8

    #@17
    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->checkAccess(Ljava/io/File;I)Z

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 540
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 541
    .local v0, "absPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@6
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@8
    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    #@f
    return-object v1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 524
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@2
    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 611
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 612
    .local v0, "canonPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@6
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@8
    invoke-virtual {v2, v0}, Ljava/io/FileSystem;->prefixLength(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    #@f
    return-object v1
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 583
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 584
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "Invalid file path"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 586
    :cond_0
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@11
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@13
    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->resolve(Ljava/io/File;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/io/FileSystem;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public getFreeSpace()J
    .locals 4

    #@0
    .prologue
    .line 1699
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1700
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1701
    new-instance v1, Ljava/lang/RuntimePermission;

    #@8
    const-string/jumbo v2, "getFileSystemAttributes"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@11
    .line 1702
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@16
    .line 1704
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1705
    const-wide/16 v2, 0x0

    #@1e
    return-wide v2

    #@1f
    .line 1707
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@21
    const/4 v2, 0x1

    #@22
    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    #@25
    move-result-wide v2

    #@26
    return-wide v2
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 434
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@7
    move-result v0

    #@8
    .line 435
    .local v0, "index":I
    iget v1, p0, Ljava/io/File;->prefixLength:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@e
    iget v2, p0, Ljava/io/File;->prefixLength:I

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 436
    :cond_0
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@17
    add-int/lit8 v2, v0, 0x1

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public getParent()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 453
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@3
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@8
    move-result v0

    #@9
    .line 454
    .local v0, "index":I
    iget v1, p0, Ljava/io/File;->prefixLength:I

    #@b
    if-ge v0, v1, :cond_1

    #@d
    .line 455
    iget v1, p0, Ljava/io/File;->prefixLength:I

    #@f
    if-lez v1, :cond_0

    #@11
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@16
    move-result v1

    #@17
    iget v2, p0, Ljava/io/File;->prefixLength:I

    #@19
    if-le v1, v2, :cond_0

    #@1b
    .line 456
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@1d
    iget v2, p0, Ljava/io/File;->prefixLength:I

    #@1f
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    return-object v1

    #@24
    .line 457
    :cond_0
    const/4 v1, 0x0

    #@25
    return-object v1

    #@26
    .line 459
    :cond_1
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@28
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method public getParentFile()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 479
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 480
    .local v0, "p":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    return-object v1

    #@8
    .line 481
    :cond_0
    new-instance v1, Ljava/io/File;

    #@a
    iget v2, p0, Ljava/io/File;->prefixLength:I

    #@c
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;I)V

    #@f
    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getPrefixLength()I
    .locals 1

    #@0
    .prologue
    .line 189
    iget v0, p0, Ljava/io/File;->prefixLength:I

    #@2
    return v0
.end method

.method public getTotalSpace()J
    .locals 4

    #@0
    .prologue
    .line 1661
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1662
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1663
    new-instance v1, Ljava/lang/RuntimePermission;

    #@8
    const-string/jumbo v2, "getFileSystemAttributes"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@11
    .line 1664
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@16
    .line 1666
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1667
    const-wide/16 v2, 0x0

    #@1e
    return-wide v2

    #@1f
    .line 1669
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@21
    const/4 v2, 0x0

    #@22
    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    #@25
    move-result-wide v2

    #@26
    return-wide v2
.end method

.method public getUsableSpace()J
    .locals 4

    #@0
    .prologue
    .line 1745
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1746
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1747
    new-instance v1, Ljava/lang/RuntimePermission;

    #@8
    const-string/jumbo v2, "getFileSystemAttributes"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@11
    .line 1748
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@16
    .line 1750
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1751
    const-wide/16 v2, 0x0

    #@1e
    return-wide v2

    #@1f
    .line 1753
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@21
    const/4 v2, 0x2

    #@22
    invoke-virtual {v1, p0, v2}, Ljava/io/FileSystem;->getSpace(Ljava/io/File;I)J

    #@25
    move-result-wide v2

    #@26
    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1967
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@2
    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->hashCode(Ljava/io/File;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    #@0
    .prologue
    .line 507
    sget-object v0, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@2
    invoke-virtual {v0, p0}, Ljava/io/FileSystem;->isAbsolute(Ljava/io/File;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDirectory()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 797
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v0

    #@5
    .line 798
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@7
    .line 799
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@c
    .line 801
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 802
    return v1

    #@13
    .line 804
    :cond_1
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    #@18
    move-result v2

    #@19
    and-int/lit8 v2, v2, 0x4

    #@1b
    if-eqz v2, :cond_2

    #@1d
    const/4 v1, 0x1

    #@1e
    :cond_2
    return v1
.end method

.method public isFile()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 824
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v0

    #@5
    .line 825
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@7
    .line 826
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@c
    .line 828
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 829
    return v1

    #@13
    .line 831
    :cond_1
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    #@18
    move-result v2

    #@19
    and-int/lit8 v2, v2, 0x2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    const/4 v1, 0x1

    #@1e
    :cond_2
    return v1
.end method

.method public isHidden()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 853
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v0

    #@5
    .line 854
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@7
    .line 855
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@c
    .line 857
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 858
    return v1

    #@13
    .line 860
    :cond_1
    sget-object v2, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    invoke-virtual {v2, p0}, Ljava/io/FileSystem;->getBooleanAttributes(Ljava/io/File;)I

    #@18
    move-result v2

    #@19
    and-int/lit8 v2, v2, 0x8

    #@1b
    if-eqz v2, :cond_2

    #@1d
    const/4 v1, 0x1

    #@1e
    :cond_2
    return v1
.end method

.method final isInvalid()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 171
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 172
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v0

    #@b
    if-gez v0, :cond_1

    #@d
    sget-object v0, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    #@f
    :goto_0
    iput-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@11
    .line 175
    :cond_0
    iget-object v0, p0, Ljava/io/File;->status:Ljava/io/File$PathStatus;

    #@13
    sget-object v2, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    #@15
    if-ne v0, v2, :cond_2

    #@17
    const/4 v0, 0x1

    #@18
    :goto_1
    return v0

    #@19
    .line 173
    :cond_1
    sget-object v0, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    #@1b
    goto :goto_0

    #@1c
    :cond_2
    move v0, v1

    #@1d
    .line 175
    goto :goto_1
.end method

.method public lastModified()J
    .locals 4

    #@0
    .prologue
    .line 878
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 879
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 880
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@b
    .line 882
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 883
    const-wide/16 v2, 0x0

    #@13
    return-wide v2

    #@14
    .line 885
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@16
    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLastModifiedTime(Ljava/io/File;)J

    #@19
    move-result-wide v2

    #@1a
    return-wide v2
.end method

.method public length()J
    .locals 4

    #@0
    .prologue
    .line 903
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 904
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 905
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@b
    .line 907
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 908
    const-wide/16 v2, 0x0

    #@13
    return-wide v2

    #@14
    .line 910
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@16
    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->getLength(Ljava/io/File;)J

    #@19
    move-result-wide v2

    #@1a
    return-wide v2
.end method

.method public list()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1052
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v0

    #@5
    .line 1053
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@7
    .line 1054
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    #@c
    .line 1056
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1057
    return-object v2

    #@13
    .line 1059
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->list(Ljava/io/File;)[Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 4
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    #@0
    .prologue
    .line 1091
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1092
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    if-nez p1, :cond_1

    #@8
    .line 1093
    :cond_0
    return-object v1

    #@9
    .line 1095
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@e
    .line 1096
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@10
    if-ge v0, v3, :cond_3

    #@12
    .line 1097
    aget-object v3, v1, v0

    #@14
    invoke-interface {p1, p0, v3}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 1098
    aget-object v3, v1, v0

    #@1c
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 1096
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1101
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@25
    move-result v3

    #@26
    new-array v3, v3, [Ljava/lang/String;

    #@28
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, [Ljava/lang/String;

    #@2e
    return-object v3
.end method

.method public listFiles()[Ljava/io/File;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1137
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 1138
    .local v3, "ss":[Ljava/lang/String;
    if-nez v3, :cond_0

    #@7
    return-object v4

    #@8
    .line 1139
    :cond_0
    array-length v2, v3

    #@9
    .line 1140
    .local v2, "n":I
    new-array v0, v2, [Ljava/io/File;

    #@b
    .line 1141
    .local v0, "fs":[Ljava/io/File;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@e
    .line 1142
    new-instance v4, Ljava/io/File;

    #@10
    aget-object v5, v3, v1

    #@12
    invoke-direct {v4, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    #@15
    aput-object v4, v0, v1

    #@17
    .line 1141
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1144
    :cond_1
    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 7
    .param p1, "filter"    # Ljava/io/FileFilter;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1214
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 1215
    .local v3, "ss":[Ljava/lang/String;
    if-nez v3, :cond_0

    #@7
    return-object v4

    #@8
    .line 1216
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 1217
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v4, 0x0

    #@e
    array-length v5, v3

    #@f
    :goto_0
    if-ge v4, v5, :cond_3

    #@11
    aget-object v2, v3, v4

    #@13
    .line 1218
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    #@15
    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    #@18
    .line 1219
    .local v0, "f":Ljava/io/File;
    if-eqz p1, :cond_1

    #@1a
    invoke-interface {p1, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_2

    #@20
    .line 1220
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 1217
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1222
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v4

    #@2a
    new-array v4, v4, [Ljava/io/File;

    #@2c
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, [Ljava/io/File;

    #@32
    return-object v4
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 6
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1177
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 1178
    .local v2, "ss":[Ljava/lang/String;
    if-nez v2, :cond_0

    #@7
    return-object v3

    #@8
    .line 1179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 1180
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v3, 0x0

    #@e
    array-length v4, v2

    #@f
    :goto_0
    if-ge v3, v4, :cond_3

    #@11
    aget-object v1, v2, v3

    #@13
    .line 1181
    .local v1, "s":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@15
    invoke-interface {p1, p0, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 1182
    :cond_1
    new-instance v5, Ljava/io/File;

    #@1d
    invoke-direct {v5, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/io/File;)V

    #@20
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 1180
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1183
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    new-array v3, v3, [Ljava/io/File;

    #@2c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, [Ljava/io/File;

    #@32
    return-object v3
.end method

.method public mkdir()Z
    .locals 2

    #@0
    .prologue
    .line 1237
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1238
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1239
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@b
    .line 1241
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1242
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 1244
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->createDirectory(Ljava/io/File;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public mkdirs()Z
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1268
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 1269
    return v3

    #@8
    .line 1271
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 1272
    const/4 v3, 0x1

    #@f
    return v3

    #@10
    .line 1274
    :cond_1
    const/4 v0, 0x0

    #@11
    .line 1276
    .local v0, "canonFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v0

    #@15
    .line 1281
    .local v0, "canonFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@18
    move-result-object v2

    #@19
    .line 1282
    .local v2, "parent":Ljava/io/File;
    if-eqz v2, :cond_3

    #@1b
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_2

    #@21
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 1283
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    #@2a
    move-result v3

    #@2b
    .line 1282
    :cond_3
    return v3

    #@2c
    .line 1277
    .end local v2    # "parent":Ljava/io/File;
    .local v0, "canonFile":Ljava/io/File;
    :catch_0
    move-exception v1

    #@2d
    .line 1278
    .local v1, "e":Ljava/io/IOException;
    return v3
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 2
    .param p1, "dest"    # Ljava/io/File;

    #@0
    .prologue
    .line 1315
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1316
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1317
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@b
    .line 1318
    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@10
    .line 1320
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 1321
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@17
    throw v1

    #@18
    .line 1323
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_2

    #@1e
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 1324
    :cond_2
    const/4 v1, 0x0

    #@25
    return v1

    #@26
    .line 1326
    :cond_3
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@28
    invoke-virtual {v1, p0, p1}, Ljava/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)Z

    #@2b
    move-result v1

    #@2c
    return v1
.end method

.method public setExecutable(Z)Z
    .locals 1
    .param p1, "executable"    # Z

    #@0
    .prologue
    .line 1602
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setExecutable(ZZ)Z
    .locals 3
    .param p1, "executable"    # Z
    .param p2, "ownerOnly"    # Z

    #@0
    .prologue
    .line 1563
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1564
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1565
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@b
    .line 1567
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1568
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 1570
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public setLastModified(J)Z
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    .line 1356
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Negative time"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1357
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@12
    move-result-object v0

    #@13
    .line 1358
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@15
    .line 1359
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@1a
    .line 1361
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 1362
    const/4 v1, 0x0

    #@21
    return v1

    #@22
    .line 1364
    :cond_2
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@24
    invoke-virtual {v1, p0, p1, p2}, Ljava/io/FileSystem;->setLastModifiedTime(Ljava/io/File;J)Z

    #@27
    move-result v1

    #@28
    return v1
.end method

.method public setReadOnly()Z
    .locals 2

    #@0
    .prologue
    .line 1385
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1386
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1387
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@b
    .line 1389
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1390
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 1392
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    invoke-virtual {v1, p0}, Ljava/io/FileSystem;->setReadOnly(Ljava/io/File;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public setReadable(Z)Z
    .locals 1
    .param p1, "readable"    # Z

    #@0
    .prologue
    .line 1530
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setReadable(ZZ)Z
    .locals 3
    .param p1, "readable"    # Z
    .param p2, "ownerOnly"    # Z

    #@0
    .prologue
    .line 1491
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1492
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1493
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@b
    .line 1495
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1496
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 1498
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    const/4 v2, 0x4

    #@16
    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public setWritable(Z)Z
    .locals 1
    .param p1, "writable"    # Z

    #@0
    .prologue
    .line 1458
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setWritable(ZZ)Z
    .locals 3
    .param p1, "writable"    # Z
    .param p2, "ownerOnly"    # Z

    #@0
    .prologue
    .line 1422
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 1423
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 1424
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    #@b
    .line 1426
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1427
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 1429
    :cond_1
    sget-object v1, Ljava/io/File;->fs:Ljava/io/FileSystem;

    #@15
    const/4 v2, 0x2

    #@16
    invoke-virtual {v1, p0, v2, p1, p2}, Ljava/io/FileSystem;->setPermission(Ljava/io/File;IZZ)Z

    #@19
    move-result v1

    #@1a
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1977
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 7

    #@0
    .prologue
    .line 697
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 698
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@b
    move-result v4

    #@c
    invoke-static {v3, v4}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 699
    .local v1, "sp":Ljava/lang/String;
    const-string/jumbo v3, "//"

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "//"

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 701
    :cond_0
    new-instance v3, Ljava/net/URI;

    #@2f
    const-string/jumbo v4, "file"

    #@32
    const/4 v5, 0x0

    #@33
    const/4 v6, 0x0

    #@34
    invoke-direct {v3, v4, v5, v1, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    return-object v3

    #@38
    .line 702
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "sp":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@39
    .line 703
    .local v2, "x":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/Error;

    #@3b
    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@3e
    throw v3
.end method

.method public toURL()Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 651
    invoke-virtual {p0}, Ljava/io/File;->isInvalid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 652
    new-instance v0, Ljava/net/MalformedURLException;

    #@8
    const-string/jumbo v1, "Invalid file path"

    #@b
    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 654
    :cond_0
    new-instance v0, Ljava/net/URL;

    #@11
    const-string/jumbo v1, "file"

    #@14
    const-string/jumbo v2, ""

    #@17
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 655
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    #@22
    move-result v4

    #@23
    .line 654
    invoke-static {v3, v4}, Ljava/io/File;->slashify(Ljava/lang/String;Z)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    return-object v0
.end method
