.class public Ljava/util/jar/JarOutputStream;
.super Ljava/util/zip/ZipOutputStream;
.source "JarOutputStream.java"


# static fields
.field private static final JAR_MAGIC:I = 0xcafe


# instance fields
.field private firstEntry:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 112
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    #@6
    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 112
    const/4 v1, 0x1

    #@4
    iput-boolean v1, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    #@6
    .line 59
    if-nez p2, :cond_0

    #@8
    .line 60
    new-instance v1, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v2, "man"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 62
    :cond_0
    new-instance v0, Ljava/util/zip/ZipEntry;

    #@13
    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    #@16
    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@19
    .line 63
    .local v0, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@1c
    .line 64
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@1e
    invoke-direct {v1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@21
    invoke-virtual {p2, v1}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    #@24
    .line 65
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    #@27
    .line 57
    return-void
.end method

.method private static get16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 138
    aget-byte v0, p0, p1

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    add-int/lit8 v1, p1, 0x1

    #@6
    aget-byte v1, p0, v1

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    shl-int/lit8 v1, v1, 0x8

    #@c
    or-int/2addr v0, v1

    #@d
    return v0
.end method

.method private static hasMagic([B)Z
    .locals 4
    .param p0, "edata"    # [B

    #@0
    .prologue
    .line 120
    const/4 v1, 0x0

    #@1
    .line 121
    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p0

    #@2
    if-ge v1, v2, :cond_1

    #@4
    .line 122
    invoke-static {p0, v1}, Ljava/util/jar/JarOutputStream;->get16([BI)I

    #@7
    move-result v2

    #@8
    const v3, 0xcafe

    #@b
    if-ne v2, v3, :cond_0

    #@d
    .line 123
    const/4 v2, 0x1

    #@e
    return v2

    #@f
    .line 125
    :cond_0
    add-int/lit8 v2, v1, 0x2

    #@11
    invoke-static {p0, v2}, Ljava/util/jar/JarOutputStream;->get16([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    add-int/lit8 v2, v2, 0x4

    #@17
    add-int/2addr v1, v2

    #@18
    goto :goto_0

    #@19
    .line 127
    :catch_0
    move-exception v0

    #@1a
    .line 130
    :cond_1
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method private static set16([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 146
    add-int/lit8 v0, p1, 0x0

    #@2
    int-to-byte v1, p2

    #@3
    aput-byte v1, p0, v0

    #@5
    .line 147
    add-int/lit8 v0, p1, 0x1

    #@7
    shr-int/lit8 v1, p2, 0x8

    #@9
    int-to-byte v1, v1

    #@a
    aput-byte v1, p0, v0

    #@c
    .line 145
    return-void
.end method


# virtual methods
.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 5
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x0

    #@2
    .line 90
    iget-boolean v2, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 93
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    #@9
    move-result-object v0

    #@a
    .line 94
    .local v0, "edata":[B
    if-eqz v0, :cond_1

    #@c
    invoke-static {v0}, Ljava/util/jar/JarOutputStream;->hasMagic([B)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 107
    :goto_0
    iput-boolean v3, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    #@14
    .line 109
    .end local v0    # "edata":[B
    :cond_0
    invoke-super {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@17
    .line 89
    return-void

    #@18
    .line 95
    .restart local v0    # "edata":[B
    :cond_1
    if-nez v0, :cond_2

    #@1a
    .line 96
    new-array v0, v4, [B

    #@1c
    .line 103
    :goto_1
    const v2, 0xcafe

    #@1f
    invoke-static {v0, v3, v2}, Ljava/util/jar/JarOutputStream;->set16([BII)V

    #@22
    .line 104
    const/4 v2, 0x2

    #@23
    invoke-static {v0, v2, v3}, Ljava/util/jar/JarOutputStream;->set16([BII)V

    #@26
    .line 105
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    #@29
    goto :goto_0

    #@2a
    .line 99
    :cond_2
    array-length v2, v0

    #@2b
    add-int/lit8 v2, v2, 0x4

    #@2d
    new-array v1, v2, [B

    #@2f
    .line 100
    .local v1, "tmp":[B
    array-length v2, v0

    #@30
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@33
    .line 101
    move-object v0, v1

    #@34
    goto :goto_1
.end method
