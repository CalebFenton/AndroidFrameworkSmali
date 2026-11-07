.class public Ljava/util/jar/JarOutputStream;
.super Ljava/util/zip/ZipOutputStream;
.source "JarOutputStream.java"


# static fields
.field private static final greylist-max-o JAR_MAGIC:I = 0xcafe


# instance fields
.field private greylist-max-o firstEntry:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    .line 75
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "man"    # Ljava/util/jar/Manifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    .line 59
    if-eqz p2, :cond_1e

    .line 62
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 64
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, v1}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 65
    invoke-virtual {p0}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    .line 66
    return-void

    .line 60
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "man"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o get16([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 138
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static greylist-max-o hasMagic([B)Z
    .registers 4
    .param p0, "edata"    # [B

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "i":I
    :goto_1
    :try_start_1
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 122
    invoke-static {p0, v0}, Ljava/util/jar/JarOutputStream;->get16([BI)I

    move-result v1

    const v2, 0xcafe

    if-ne v1, v2, :cond_f

    .line 123
    const/4 v1, 0x1

    return v1

    .line 125
    :cond_f
    add-int/lit8 v1, v0, 0x2

    invoke-static {p0, v1}, Ljava/util/jar/JarOutputStream;->get16([BI)I

    move-result v1
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_15} :catch_1a

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    goto :goto_1

    .line 129
    .end local v0    # "i":I
    :cond_19
    goto :goto_1b

    .line 127
    :catch_1a
    move-exception v0

    .line 130
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o set16([BII)V
    .registers 5
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "value"    # I

    .line 146
    add-int/lit8 v0, p1, 0x0

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 147
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist test-api putNextEntry(Ljava/util/zip/ZipEntry;)V
    .registers 7
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    if-eqz v0, :cond_2f

    .line 93
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 94
    .local v0, "edata":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-static {v0}, Ljava/util/jar/JarOutputStream;->hasMagic([B)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 95
    :cond_11
    const/4 v2, 0x4

    if-nez v0, :cond_17

    .line 96
    new-array v0, v2, [B

    goto :goto_20

    .line 99
    :cond_17
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v3, v3, [B

    .line 100
    .local v3, "tmp":[B
    array-length v4, v0

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    move-object v0, v3

    .line 103
    .end local v3    # "tmp":[B
    :goto_20
    const v2, 0xcafe

    invoke-static {v0, v1, v2}, Ljava/util/jar/JarOutputStream;->set16([BII)V

    .line 104
    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Ljava/util/jar/JarOutputStream;->set16([BII)V

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 107
    :cond_2d
    iput-boolean v1, p0, Ljava/util/jar/JarOutputStream;->firstEntry:Z

    .line 109
    .end local v0    # "edata":[B
    :cond_2f
    invoke-super {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 110
    return-void
.end method
