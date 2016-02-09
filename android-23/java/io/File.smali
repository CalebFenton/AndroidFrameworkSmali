.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
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
.field public static final pathSeparator:Ljava/lang/String;

.field public static final pathSeparatorChar:C

.field public static final separator:Ljava/lang/String;

.field public static final separatorChar:C

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 101
    const-string/jumbo v0, "file.separator"

    #@4
    const-string/jumbo v1, "/"

    #@7
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    sput-char v0, Ljava/io/File;->separatorChar:C

    #@11
    .line 102
    const-string/jumbo v0, "path.separator"

    #@14
    const-string/jumbo v1, ":"

    #@17
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    sput-char v0, Ljava/io/File;->pathSeparatorChar:C

    #@21
    .line 103
    sget-char v0, Ljava/io/File;->separatorChar:C

    #@23
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    sput-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    #@29
    .line 104
    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    #@2b
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    sput-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    #@31
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 118
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 117
    return-void

    #@7
    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 130
    invoke-static {p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@9
    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 145
    if-nez p2, :cond_0

    #@5
    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "name == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 148
    :cond_0
    if-eqz p1, :cond_1

    #@10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 149
    :cond_1
    invoke-static {p2}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@1c
    .line 144
    :goto_0
    return-void

    #@1d
    .line 150
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 151
    invoke-static {p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@29
    goto :goto_0

    #@2a
    .line 153
    :cond_3
    invoke-static {p1, p2}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@34
    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 175
    invoke-static {p1}, Ljava/io/File;->checkURI(Ljava/net/URI;)V

    #@6
    .line 176
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@10
    .line 173
    return-void
.end method

.method private static native canonicalizePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static checkURI(Ljava/net/URI;)V
    .locals 4
    .param p0, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "URI is not absolute: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 219
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, "/"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_1

    #@2d
    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, "URI is not hierarchical: "

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v1

    #@47
    .line 222
    :cond_1
    const-string/jumbo v1, "file"

    #@4a
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v1

    #@52
    if-nez v1, :cond_2

    #@54
    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@56
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v3, "Expected file scheme in URI: "

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v1

    #@6e
    .line 225
    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    .line 226
    .local v0, "rawPath":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@74
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_4

    #@7a
    .line 227
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7c
    new-instance v2, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v3, "Expected non-empty path in URI: "

    #@84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@93
    throw v1

    #@94
    .line 229
    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    if-eqz v1, :cond_5

    #@9a
    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9c
    new-instance v2, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v3, "Found authority in URI: "

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v2

    #@b0
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v1

    #@b4
    .line 232
    :cond_5
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    #@b7
    move-result-object v1

    #@b8
    if-eqz v1, :cond_6

    #@ba
    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@bc
    new-instance v2, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v3, "Found query in URI: "

    #@c4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v1

    #@d4
    .line 235
    :cond_6
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    if-eqz v1, :cond_7

    #@da
    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@dc
    new-instance v2, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v3, "Found fragment in URI: "

    #@e4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v2

    #@e8
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v2

    #@ec
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v2

    #@f0
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f3
    throw v1

    #@f4
    .line 216
    :cond_7
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
    .line 961
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
    .line 990
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    const/4 v4, 0x3

    #@5
    if-ge v3, v4, :cond_0

    #@7
    .line 991
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v4, "prefix must be at least 3 characters"

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 993
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 994
    const-string/jumbo p1, ".tmp"

    #@15
    .line 996
    :cond_1
    move-object v2, p2

    #@16
    .line 997
    .local v2, "tmpDirFile":Ljava/io/File;
    if-nez v2, :cond_2

    #@18
    .line 998
    const-string/jumbo v3, "java.io.tmpdir"

    #@1b
    const-string/jumbo v4, "."

    #@1e
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 999
    .local v1, "tmpDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@24
    .end local v2    # "tmpDirFile":Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@27
    .line 1003
    .end local v1    # "tmpDir":Ljava/lang/String;
    .restart local v2    # "tmpDirFile":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-static {}, Ljava/lang/Math;->randomIntInternal()I

    #@35
    move-result v4

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@45
    .line 1004
    .local v0, "result":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_2

    #@4b
    .line 1005
    return-object v0
.end method

.method private doAccess(I)Z
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 281
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 282
    :catch_0
    move-exception v0

    #@a
    .line 283
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method private doChmod(IZ)Z
    .locals 5
    .param p1, "mask"    # I
    .param p2, "set"    # Z

    #@0
    .prologue
    .line 704
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v3, v4}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@7
    move-result-object v2

    #@8
    .line 705
    .local v2, "sb":Landroid/system/StructStat;
    if-eqz p2, :cond_0

    #@a
    iget v3, v2, Landroid/system/StructStat;->st_mode:I

    #@c
    or-int v1, v3, p1

    #@e
    .line 706
    .local v1, "newMode":I
    :goto_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@10
    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@12
    invoke-interface {v3, v4, v1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    #@15
    .line 707
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 705
    .end local v1    # "newMode":I
    :cond_0
    iget v3, v2, Landroid/system/StructStat;->st_mode:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    not-int v4, p1

    #@1a
    and-int v1, v3, v4

    #@1c
    .restart local v1    # "newMode":I
    goto :goto_0

    #@1d
    .line 708
    .end local v1    # "newMode":I
    .end local v2    # "sb":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    #@1e
    .line 709
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v3, 0x0

    #@1f
    return v3
.end method

.method private filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .param p1, "filenames"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 837
    if-nez p1, :cond_0

    #@3
    .line 838
    return-object v3

    #@4
    .line 840
    :cond_0
    array-length v0, p1

    #@5
    .line 841
    .local v0, "count":I
    new-array v2, v0, [Ljava/io/File;

    #@7
    .line 842
    .local v2, "result":[Ljava/io/File;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 843
    new-instance v3, Ljava/io/File;

    #@c
    aget-object v4, p1, v1

    #@e
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    aput-object v3, v2, v1

    #@13
    .line 842
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 845
    :cond_1
    return-object v2
.end method

.method private static fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "origPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    const/4 v2, 0x0

    #@1
    .line 183
    .local v2, "lastWasSlash":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@4
    move-result-object v6

    #@5
    .line 184
    .local v6, "newPath":[C
    array-length v3, v6

    #@6
    .line 185
    .local v3, "length":I
    const/4 v4, 0x0

    #@7
    .line 186
    .local v4, "newLength":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    move v5, v4

    #@9
    .end local v4    # "newLength":I
    .local v5, "newLength":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@b
    .line 187
    aget-char v0, v6, v1

    #@d
    .line 188
    .local v0, "ch":C
    const/16 v7, 0x2f

    #@f
    if-ne v0, v7, :cond_0

    #@11
    .line 189
    if-nez v2, :cond_4

    #@13
    .line 190
    add-int/lit8 v4, v5, 0x1

    #@15
    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    sget-char v7, Ljava/io/File;->separatorChar:C

    #@17
    aput-char v7, v6, v5

    #@19
    .line 191
    const/4 v2, 0x1

    #@1a
    .line 186
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    move v5, v4

    #@1d
    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    goto :goto_0

    #@1e
    .line 194
    :cond_0
    add-int/lit8 v4, v5, 0x1

    #@20
    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    aput-char v0, v6, v5

    #@22
    .line 195
    const/4 v2, 0x0

    #@23
    goto :goto_1

    #@24
    .line 199
    .end local v0    # "ch":C
    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    :cond_1
    if-eqz v2, :cond_3

    #@26
    const/4 v7, 0x1

    #@27
    if-le v5, v7, :cond_3

    #@29
    .line 200
    add-int/lit8 v4, v5, -0x1

    #@2b
    .line 203
    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    :goto_2
    if-eq v4, v3, :cond_2

    #@2d
    new-instance p0, Ljava/lang/String;

    #@2f
    .end local p0    # "origPath":Ljava/lang/String;
    const/4 v7, 0x0

    #@30
    invoke-direct {p0, v6, v7, v4}, Ljava/lang/String;-><init>([CII)V

    #@33
    :cond_2
    return-object p0

    #@34
    .end local v4    # "newLength":I
    .restart local v5    # "newLength":I
    .restart local p0    # "origPath":Ljava/lang/String;
    :cond_3
    move v4, v5

    #@35
    .line 199
    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    goto :goto_2

    #@36
    .end local v4    # "newLength":I
    .restart local v0    # "ch":C
    .restart local v5    # "newLength":I
    :cond_4
    move v4, v5

    #@37
    .end local v5    # "newLength":I
    .restart local v4    # "newLength":I
    goto :goto_1
.end method

.method private getAbsoluteName()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x2f

    #@2
    .line 1095
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    .line 1096
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1097
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v2

    #@1a
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@1c
    if-eq v2, v3, :cond_0

    #@1e
    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, "/"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 1101
    :cond_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@34
    if-eq v2, v4, :cond_1

    #@36
    .line 1102
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@38
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 1104
    :cond_1
    return-object v1
.end method

.method private static join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    .line 209
    .local v1, "prefixLength":I
    if-lez v1, :cond_1

    #@7
    add-int/lit8 v2, v1, -0x1

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@f
    if-ne v2, v3, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    .line 210
    .local v0, "haveSlash":Z
    :goto_0
    if-nez v0, :cond_0

    #@14
    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v2

    #@18
    if-lez v2, :cond_2

    #@1a
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v2

    #@1e
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@20
    if-ne v2, v3, :cond_2

    #@22
    const/4 v0, 0x1

    #@23
    .line 213
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    :goto_2
    return-object v2

    #@37
    .line 209
    .end local v0    # "haveSlash":Z
    :cond_1
    const/4 v0, 0x0

    #@38
    .restart local v0    # "haveSlash":Z
    goto :goto_0

    #@39
    .line 211
    :cond_2
    const/4 v0, 0x0

    #@3a
    goto :goto_1

    #@3b
    .line 213
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    goto :goto_2
.end method

.method private static native listImpl(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static listRoots()[Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 245
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/io/File;

    #@3
    new-instance v1, Ljava/io/File;

    #@5
    const-string/jumbo v2, "/"

    #@8
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    return-object v0
.end method

.method private mkdirErrno()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 872
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    sget v2, Landroid/system/OsConstants;->S_IRWXU:I

    #@6
    invoke-interface {v0, v1, v2}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    #@9
    .line 870
    return-void
.end method

.method private mkdirs(Z)Z
    .locals 6
    .param p1, "resultIfExists"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 896
    :try_start_0
    invoke-direct {p0}, Ljava/io/File;->mkdirErrno()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 897
    return v5

    #@6
    .line 898
    :catch_0
    move-exception v0

    #@7
    .line 899
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v3, v0, Landroid/system/ErrnoException;->errno:I

    #@9
    sget v4, Landroid/system/OsConstants;->ENOENT:I

    #@b
    if-ne v3, v4, :cond_1

    #@d
    .line 901
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@10
    move-result-object v1

    #@11
    .line 902
    .local v1, "parent":Ljava/io/File;
    if-eqz v1, :cond_0

    #@13
    invoke-direct {v1, v5}, Ljava/io/File;->mkdirs(Z)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    #@1c
    move-result v2

    #@1d
    :cond_0
    return v2

    #@1e
    .line 903
    .end local v1    # "parent":Ljava/io/File;
    :cond_1
    iget v3, v0, Landroid/system/ErrnoException;->errno:I

    #@20
    sget v4, Landroid/system/OsConstants;->EEXIST:I

    #@22
    if-ne v3, v4, :cond_2

    #@24
    .line 904
    return p1

    #@25
    .line 906
    :cond_2
    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1113
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1114
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    #@6
    move-result v0

    #@7
    .line 1115
    .local v0, "inSeparator":C
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@9
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@b
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@15
    .line 1112
    return-void
.end method

.method private static native setLastModifiedImpl(Ljava/lang/String;J)Z
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1108
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 1109
    sget-char v0, Ljava/io/File;->separatorChar:C

    #@5
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    #@8
    .line 1107
    return-void
.end method


# virtual methods
.method public canExecute()Z
    .locals 1

    #@0
    .prologue
    .line 257
    sget v0, Landroid/system/OsConstants;->X_OK:I

    #@2
    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canRead()Z
    .locals 1

    #@0
    .prologue
    .line 266
    sget v0, Landroid/system/OsConstants;->R_OK:I

    #@2
    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canWrite()Z
    .locals 1

    #@0
    .prologue
    .line 276
    sget v0, Landroid/system/OsConstants;->W_OK:I

    #@2
    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/io/File;)I
    .locals 2
    .param p1, "another"    # Ljava/io/File;

    #@0
    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 297
    check-cast p1, Ljava/io/File;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public createNewFile()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 929
    const/4 v1, 0x0

    #@1
    .line 932
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@5
    sget v4, Landroid/system/OsConstants;->O_RDWR:I

    #@7
    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    #@9
    or-int/2addr v4, v5

    #@a
    sget v5, Landroid/system/OsConstants;->O_EXCL:I

    #@c
    or-int/2addr v4, v5

    #@d
    const/16 v5, 0x180

    #@f
    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v1

    #@13
    .line 933
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v2, 0x1

    #@14
    .line 941
    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    #@17
    .line 933
    return v2

    #@18
    .line 934
    .local v1, "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    #@19
    .line 935
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :try_start_1
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    #@1b
    sget v3, Landroid/system/OsConstants;->EEXIST:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    if-ne v2, v3, :cond_0

    #@1f
    .line 937
    const/4 v2, 0x0

    #@20
    .line 941
    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    #@23
    .line 937
    return v2

    #@24
    .line 939
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@27
    move-result-object v2

    #@28
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    .line 940
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v2

    #@2a
    .line 941
    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    #@2d
    .line 940
    throw v2
.end method

.method public delete()Z
    .locals 3

    #@0
    .prologue
    .line 311
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 312
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 313
    :catch_0
    move-exception v0

    #@a
    .line 314
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public deleteOnExit()V
    .locals 2

    #@0
    .prologue
    .line 334
    invoke-static {}, Llibcore/io/DeleteOnExit;->getInstance()Llibcore/io/DeleteOnExit;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Llibcore/io/DeleteOnExit;->addFile(Ljava/lang/String;)V

    #@b
    .line 333
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 348
    instance-of v0, p1, Ljava/io/File;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 349
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 351
    :cond_0
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    check-cast p1, Ljava/io/File;

    #@a
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public exists()Z
    .locals 1

    #@0
    .prologue
    .line 361
    sget v0, Landroid/system/OsConstants;->F_OK:I

    #@2
    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 385
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 374
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@8
    return-object v1

    #@9
    .line 376
    :cond_0
    const-string/jumbo v1, "user.dir"

    #@c
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 377
    .local v0, "userDir":Ljava/lang/String;
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .end local v0    # "userDir":Ljava/lang/String;
    :goto_0
    return-object v0

    #@19
    .restart local v0    # "userDir":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@1b
    invoke-static {v0, v1}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    goto :goto_0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 426
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/io/File;->canonicalizePath(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFreeSpace()J
    .locals 6

    #@0
    .prologue
    .line 1166
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v2, v3}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    #@7
    move-result-object v1

    #@8
    .line 1167
    .local v1, "sb":Landroid/system/StructStatVfs;
    iget-wide v2, v1, Landroid/system/StructStatVfs;->f_bfree:J

    #@a
    iget-wide v4, v1, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    mul-long/2addr v2, v4

    #@d
    return-wide v2

    #@e
    .line 1168
    .end local v1    # "sb":Landroid/system/StructStatVfs;
    :catch_0
    move-exception v0

    #@f
    .line 1169
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    #@11
    return-wide v2
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 436
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 437
    .local v0, "separatorIndex":I
    if-gez v0, :cond_0

    #@a
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@f
    add-int/lit8 v2, v0, 0x1

    #@11
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@16
    move-result v3

    #@17
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_0
.end method

.method public getParent()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 448
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .local v2, "length":I
    const/4 v0, 0x0

    #@9
    .line 449
    .local v0, "firstInPath":I
    sget-char v3, Ljava/io/File;->separatorChar:C

    #@b
    const/16 v4, 0x5c

    #@d
    if-ne v3, v4, :cond_0

    #@f
    const/4 v3, 0x2

    #@10
    if-le v2, v3, :cond_0

    #@12
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@14
    const/4 v4, 0x1

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v3

    #@19
    const/16 v4, 0x3a

    #@1b
    if-ne v3, v4, :cond_0

    #@1d
    .line 450
    const/4 v0, 0x2

    #@1e
    .line 452
    :cond_0
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@20
    sget-char v4, Ljava/io/File;->separatorChar:C

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@25
    move-result v1

    #@26
    .line 453
    .local v1, "index":I
    if-ne v1, v6, :cond_1

    #@28
    if-lez v0, :cond_1

    #@2a
    .line 454
    const/4 v1, 0x2

    #@2b
    .line 456
    :cond_1
    if-eq v1, v6, :cond_2

    #@2d
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2f
    add-int/lit8 v4, v2, -0x1

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v3

    #@35
    sget-char v4, Ljava/io/File;->separatorChar:C

    #@37
    if-ne v3, v4, :cond_3

    #@39
    .line 457
    :cond_2
    const/4 v3, 0x0

    #@3a
    return-object v3

    #@3b
    .line 459
    :cond_3
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@3d
    sget-char v4, Ljava/io/File;->separatorChar:C

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    #@42
    move-result v3

    #@43
    if-ne v3, v1, :cond_4

    #@45
    .line 460
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@47
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v3

    #@4b
    sget-char v4, Ljava/io/File;->separatorChar:C

    #@4d
    if-ne v3, v4, :cond_4

    #@4f
    .line 461
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@51
    add-int/lit8 v4, v1, 0x1

    #@53
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    return-object v3

    #@58
    .line 463
    :cond_4
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@5a
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    return-object v3
.end method

.method public getParentFile()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 474
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 475
    .local v0, "tempParent":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 476
    return-object v1

    #@8
    .line 478
    :cond_0
    new-instance v1, Ljava/io/File;

    #@a
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTotalSpace()J
    .locals 6

    #@0
    .prologue
    .line 1126
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v2, v3}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    #@7
    move-result-object v1

    #@8
    .line 1127
    .local v1, "sb":Landroid/system/StructStatVfs;
    iget-wide v2, v1, Landroid/system/StructStatVfs;->f_blocks:J

    #@a
    iget-wide v4, v1, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    mul-long/2addr v2, v4

    #@d
    return-wide v2

    #@e
    .line 1128
    .end local v1    # "sb":Landroid/system/StructStatVfs;
    :catch_0
    move-exception v0

    #@f
    .line 1129
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    #@11
    return-wide v2
.end method

.method public getUsableSpace()J
    .locals 6

    #@0
    .prologue
    .line 1148
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v2, v3}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    #@7
    move-result-object v1

    #@8
    .line 1149
    .local v1, "sb":Landroid/system/StructStatVfs;
    iget-wide v2, v1, Landroid/system/StructStatVfs;->f_bavail:J

    #@a
    iget-wide v4, v1, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    mul-long/2addr v2, v4

    #@d
    return-wide v2

    #@e
    .line 1150
    .end local v1    # "sb":Landroid/system/StructStatVfs;
    :catch_0
    move-exception v0

    #@f
    .line 1151
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    #@11
    return-wide v2
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 497
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    const v1, 0x12d591

    #@b
    xor-int/2addr v0, v1

    #@c
    return v0
.end method

.method public isAbsolute()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 510
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@11
    if-ne v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method

.method public isDirectory()Z
    .locals 3

    #@0
    .prologue
    .line 522
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@7
    move-result-object v1

    #@8
    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    #@a
    invoke-static {v1}, Landroid/system/OsConstants;->S_ISDIR(I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 523
    :catch_0
    move-exception v0

    #@10
    .line 525
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public isFile()Z
    .locals 3

    #@0
    .prologue
    .line 537
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@7
    move-result-object v1

    #@8
    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    #@a
    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 538
    :catch_0
    move-exception v0

    #@10
    .line 540
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public isHidden()Z
    .locals 2

    #@0
    .prologue
    .line 554
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 555
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 557
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, "."

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public lastModified()J
    .locals 6

    #@0
    .prologue
    .line 569
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@7
    move-result-object v1

    #@8
    iget-wide v2, v1, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    const-wide/16 v4, 0x3e8

    #@c
    mul-long/2addr v2, v4

    #@d
    return-wide v2

    #@e
    .line 570
    :catch_0
    move-exception v0

    #@f
    .line 572
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    #@11
    return-wide v2
.end method

.method public length()J
    .locals 4

    #@0
    .prologue
    .line 722
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    #@7
    move-result-object v1

    #@8
    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return-wide v2

    #@b
    .line 723
    :catch_0
    move-exception v0

    #@c
    .line 725
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const-wide/16 v2, 0x0

    #@e
    return-wide v2
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 740
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/io/File;->listImpl(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 6
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    #@0
    .prologue
    .line 760
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 761
    .local v1, "filenames":[Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    if-nez v1, :cond_1

    #@8
    .line 762
    :cond_0
    return-object v1

    #@9
    .line 764
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@b
    array-length v3, v1

    #@c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 765
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@10
    array-length v4, v1

    #@11
    :goto_0
    if-ge v3, v4, :cond_3

    #@13
    aget-object v0, v1, v3

    #@15
    .line 766
    .local v0, "filename":Ljava/lang/String;
    invoke-interface {p1, p0, v0}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 767
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 765
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 770
    .end local v0    # "filename":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@24
    move-result v3

    #@25
    new-array v3, v3, [Ljava/lang/String;

    #@27
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, [Ljava/lang/String;

    #@2d
    return-object v3
.end method

.method public listFiles()[Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 782
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 6
    .param p1, "filter"    # Ljava/io/FileFilter;

    #@0
    .prologue
    .line 817
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 818
    .local v1, "files":[Ljava/io/File;
    if-eqz p1, :cond_0

    #@6
    if-nez v1, :cond_1

    #@8
    .line 819
    :cond_0
    return-object v1

    #@9
    .line 821
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@b
    array-length v3, v1

    #@c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 822
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v3, 0x0

    #@10
    array-length v4, v1

    #@11
    :goto_0
    if-ge v3, v4, :cond_3

    #@13
    aget-object v0, v1, v3

    #@15
    .line 823
    .local v0, "file":Ljava/io/File;
    invoke-interface {p1, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 824
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 822
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 827
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@24
    move-result v3

    #@25
    new-array v3, v3, [Ljava/io/File;

    #@27
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, [Ljava/io/File;

    #@2d
    return-object v3
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    #@0
    .prologue
    .line 800
    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public mkdir()Z
    .locals 2

    #@0
    .prologue
    .line 863
    :try_start_0
    invoke-direct {p0}, Ljava/io/File;->mkdirErrno()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 864
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 865
    :catch_0
    move-exception v0

    #@6
    .line 866
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method public mkdirs()Z
    .locals 1

    #@0
    .prologue
    .line 890
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/io/File;->mkdirs(Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 4
    .param p1, "newPath"    # Ljava/io/File;

    #@0
    .prologue
    .line 1029
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@4
    iget-object v3, p1, Ljava/io/File;->path:Ljava/lang/String;

    #@6
    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1030
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 1031
    :catch_0
    move-exception v0

    #@c
    .line 1032
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public setExecutable(Z)Z
    .locals 1
    .param p1, "executable"    # Z

    #@0
    .prologue
    .line 639
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setExecutable(ZZ)Z
    .locals 2
    .param p1, "executable"    # Z
    .param p2, "ownerOnly"    # Z

    #@0
    .prologue
    .line 630
    if-eqz p2, :cond_0

    #@2
    sget v0, Landroid/system/OsConstants;->S_IXUSR:I

    #@4
    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_0
    sget v0, Landroid/system/OsConstants;->S_IXUSR:I

    #@b
    sget v1, Landroid/system/OsConstants;->S_IXGRP:I

    #@d
    or-int/2addr v0, v1

    #@e
    sget v1, Landroid/system/OsConstants;->S_IXOTH:I

    #@10
    or-int/2addr v0, v1

    #@11
    goto :goto_0
.end method

.method public setLastModified(J)Z
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 591
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "time < 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 594
    :cond_0
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@11
    invoke-static {v0, p1, p2}, Ljava/io/File;->setLastModifiedImpl(Ljava/lang/String;J)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public setReadOnly()Z
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 605
    invoke-virtual {p0, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setReadable(Z)Z
    .locals 1
    .param p1, "readable"    # Z

    #@0
    .prologue
    .line 670
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setReadable(ZZ)Z
    .locals 2
    .param p1, "readable"    # Z
    .param p2, "ownerOnly"    # Z

    #@0
    .prologue
    .line 661
    if-eqz p2, :cond_0

    #@2
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    #@4
    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_0
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    #@b
    sget v1, Landroid/system/OsConstants;->S_IRGRP:I

    #@d
    or-int/2addr v0, v1

    #@e
    sget v1, Landroid/system/OsConstants;->S_IROTH:I

    #@10
    or-int/2addr v0, v1

    #@11
    goto :goto_0
.end method

.method public setWritable(Z)Z
    .locals 1
    .param p1, "writable"    # Z

    #@0
    .prologue
    .line 699
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setWritable(ZZ)Z
    .locals 2
    .param p1, "writable"    # Z
    .param p2, "ownerOnly"    # Z

    #@0
    .prologue
    .line 690
    if-eqz p2, :cond_0

    #@2
    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    #@4
    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_0
    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    #@b
    sget v1, Landroid/system/OsConstants;->S_IWGRP:I

    #@d
    or-int/2addr v0, v1

    #@e
    sget v1, Landroid/system/OsConstants;->S_IWOTH:I

    #@10
    or-int/2addr v0, v1

    #@11
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1044
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1055
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 1057
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v0, "/"

    #@8
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1059
    new-instance v0, Ljava/net/URI;

    #@10
    const-string/jumbo v1, "file"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "/"

    #@1b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .end local v3    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    #@28
    const/4 v4, 0x0

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    return-object v0

    #@2e
    .line 1060
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "//"

    #@31
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 1061
    new-instance v0, Ljava/net/URI;

    #@39
    const-string/jumbo v1, "file"

    #@3c
    const-string/jumbo v2, ""

    #@3f
    const/4 v4, 0x0

    #@40
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@43
    return-object v0

    #@44
    .line 1063
    :cond_1
    new-instance v0, Ljava/net/URI;

    #@46
    const-string/jumbo v1, "file"

    #@49
    const/4 v2, 0x0

    #@4a
    const/4 v4, 0x0

    #@4b
    const/4 v5, 0x0

    #@4c
    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    return-object v0

    #@50
    .line 1064
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@51
    .line 1066
    .local v6, "e":Ljava/net/URISyntaxException;
    return-object v7
.end method

.method public toURL()Ljava/net/URL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 1083
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    .line 1084
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v0, "/"

    #@9
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1086
    new-instance v0, Ljava/net/URL;

    #@11
    const-string/jumbo v1, "file"

    #@14
    const-string/jumbo v2, ""

    #@17
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v7, "/"

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .end local v4    # "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    #@2e
    return-object v0

    #@2f
    .line 1087
    .restart local v4    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "//"

    #@32
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 1088
    new-instance v0, Ljava/net/URL;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "file:"

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@51
    return-object v0

    #@52
    .line 1090
    :cond_1
    new-instance v0, Ljava/net/URL;

    #@54
    const-string/jumbo v1, "file"

    #@57
    const-string/jumbo v2, ""

    #@5a
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    #@5d
    return-object v0
.end method
