.class Ljava/io/ObjectOutputStream$BlockDataOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockDataOutputStream"
.end annotation


# static fields
.field private static final CHAR_BUF_SIZE:I = 0x100

.field private static final MAX_BLOCK_SIZE:I = 0x400

.field private static final MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private blkmode:Z

.field private final buf:[B

.field private final cbuf:[C

.field private final dout:Ljava/io/DataOutputStream;

.field private final hbuf:[B

.field private final out:Ljava/io/OutputStream;

.field private pos:I

.field private warnOnceWhenWriting:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1817
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@4
    .line 1786
    const/16 v0, 0x400

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@a
    .line 1788
    const/4 v0, 0x5

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    #@f
    .line 1790
    const/16 v0, 0x100

    #@11
    new-array v0, v0, [C

    #@13
    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@15
    .line 1793
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    #@17
    .line 1795
    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@19
    .line 1818
    iput-object p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    #@1b
    .line 1819
    new-instance v0, Ljava/io/DataOutputStream;

    #@1d
    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@20
    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@22
    .line 1817
    return-void
.end method

.method private warnIfClosed()V
    .locals 3

    #@0
    .prologue
    .line 1855
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1856
    const-string/jumbo v0, "The app is relying on undefined behavior. Attempting to write to a closed ObjectOutputStream could produce corrupt output in a future release of Android."

    #@7
    .line 1858
    new-instance v1, Ljava/io/IOException;

    #@9
    const-string/jumbo v2, "Stream Closed"

    #@c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    .line 1856
    invoke-static {v0, v1}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    .line 1861
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    #@15
    .line 1854
    :cond_0
    return-void
.end method

.method private writeBlockHeader(I)V
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1957
    const/16 v0, 0xff

    #@4
    if-gt p1, v0, :cond_0

    #@6
    .line 1958
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    #@8
    const/16 v1, 0x77

    #@a
    aput-byte v1, v0, v3

    #@c
    .line 1959
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    #@e
    int-to-byte v1, p1

    #@f
    aput-byte v1, v0, v2

    #@11
    .line 1960
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    #@13
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    #@15
    const/4 v2, 0x2

    #@16
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@19
    .line 1966
    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    #@1c
    .line 1956
    return-void

    #@1d
    .line 1962
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    #@1f
    const/16 v1, 0x7a

    #@21
    aput-byte v1, v0, v3

    #@23
    .line 1963
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    #@25
    invoke-static {v0, v2, p1}, Ljava/io/Bits;->putInt([BII)V

    #@28
    .line 1964
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    #@2a
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    #@2c
    const/4 v2, 0x5

    #@2d
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@30
    goto :goto_0
.end method

.method private writeUTFBody(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x7f

    #@2
    const/4 v8, 0x0

    #@3
    .line 2273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    .line 2274
    .local v3, "len":I
    const/4 v4, 0x0

    #@8
    .local v4, "off":I
    :goto_0
    if-ge v4, v3, :cond_6

    #@a
    .line 2275
    sub-int v5, v3, v4

    #@c
    const/16 v6, 0x100

    #@e
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 2276
    .local v2, "csize":I
    add-int v5, v4, v2

    #@14
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@16
    invoke-virtual {p1, v4, v5, v6, v8}, Ljava/lang/String;->getChars(II[CI)V

    #@19
    .line 2277
    const/4 v1, 0x0

    #@1a
    .local v1, "cpos":I
    :goto_1
    if-ge v1, v2, :cond_5

    #@1c
    .line 2278
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@1e
    aget-char v0, v5, v1

    #@20
    .line 2279
    .local v0, "c":C
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@22
    .line 2272
    const/16 v6, 0x3fd

    #@24
    .line 2279
    if-gt v5, v6, :cond_2

    #@26
    .line 2280
    if-gt v0, v9, :cond_0

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 2281
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@2c
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2e
    add-int/lit8 v7, v6, 0x1

    #@30
    iput v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@32
    int-to-byte v7, v0

    #@33
    aput-byte v7, v5, v6

    #@35
    .line 2277
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_1

    #@38
    .line 2282
    :cond_0
    const/16 v5, 0x7ff

    #@3a
    if-le v0, v5, :cond_1

    #@3c
    .line 2283
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@3e
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@40
    add-int/lit8 v6, v6, 0x2

    #@42
    shr-int/lit8 v7, v0, 0x0

    #@44
    and-int/lit8 v7, v7, 0x3f

    #@46
    or-int/lit16 v7, v7, 0x80

    #@48
    int-to-byte v7, v7

    #@49
    aput-byte v7, v5, v6

    #@4b
    .line 2284
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@4d
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@4f
    add-int/lit8 v6, v6, 0x1

    #@51
    shr-int/lit8 v7, v0, 0x6

    #@53
    and-int/lit8 v7, v7, 0x3f

    #@55
    or-int/lit16 v7, v7, 0x80

    #@57
    int-to-byte v7, v7

    #@58
    aput-byte v7, v5, v6

    #@5a
    .line 2285
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@5c
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@5e
    add-int/lit8 v6, v6, 0x0

    #@60
    shr-int/lit8 v7, v0, 0xc

    #@62
    and-int/lit8 v7, v7, 0xf

    #@64
    or-int/lit16 v7, v7, 0xe0

    #@66
    int-to-byte v7, v7

    #@67
    aput-byte v7, v5, v6

    #@69
    .line 2286
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@6b
    add-int/lit8 v5, v5, 0x3

    #@6d
    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@6f
    goto :goto_2

    #@70
    .line 2288
    :cond_1
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@72
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@74
    add-int/lit8 v6, v6, 0x1

    #@76
    shr-int/lit8 v7, v0, 0x0

    #@78
    and-int/lit8 v7, v7, 0x3f

    #@7a
    or-int/lit16 v7, v7, 0x80

    #@7c
    int-to-byte v7, v7

    #@7d
    aput-byte v7, v5, v6

    #@7f
    .line 2289
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@81
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@83
    add-int/lit8 v6, v6, 0x0

    #@85
    shr-int/lit8 v7, v0, 0x6

    #@87
    and-int/lit8 v7, v7, 0x1f

    #@89
    or-int/lit16 v7, v7, 0xc0

    #@8b
    int-to-byte v7, v7

    #@8c
    aput-byte v7, v5, v6

    #@8e
    .line 2290
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@90
    add-int/lit8 v5, v5, 0x2

    #@92
    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@94
    goto :goto_2

    #@95
    .line 2293
    :cond_2
    if-gt v0, v9, :cond_3

    #@97
    if-eqz v0, :cond_3

    #@99
    .line 2294
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    #@9c
    goto :goto_2

    #@9d
    .line 2295
    :cond_3
    const/16 v5, 0x7ff

    #@9f
    if-le v0, v5, :cond_4

    #@a1
    .line 2296
    shr-int/lit8 v5, v0, 0xc

    #@a3
    and-int/lit8 v5, v5, 0xf

    #@a5
    or-int/lit16 v5, v5, 0xe0

    #@a7
    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    #@aa
    .line 2297
    shr-int/lit8 v5, v0, 0x6

    #@ac
    and-int/lit8 v5, v5, 0x3f

    #@ae
    or-int/lit16 v5, v5, 0x80

    #@b0
    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    #@b3
    .line 2298
    shr-int/lit8 v5, v0, 0x0

    #@b5
    and-int/lit8 v5, v5, 0x3f

    #@b7
    or-int/lit16 v5, v5, 0x80

    #@b9
    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    #@bc
    goto/16 :goto_2

    #@be
    .line 2300
    :cond_4
    shr-int/lit8 v5, v0, 0x6

    #@c0
    and-int/lit8 v5, v5, 0x1f

    #@c2
    or-int/lit16 v5, v5, 0xc0

    #@c4
    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    #@c7
    .line 2301
    shr-int/lit8 v5, v0, 0x0

    #@c9
    and-int/lit8 v5, v5, 0x3f

    #@cb
    or-int/lit16 v5, v5, 0x80

    #@cd
    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    #@d0
    goto/16 :goto_2

    #@d2
    .line 2305
    .end local v0    # "c":C
    :cond_5
    add-int/2addr v4, v2

    #@d3
    goto/16 :goto_0

    #@d5
    .line 2271
    .end local v1    # "cpos":I
    .end local v2    # "csize":I
    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1893
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    #@3
    .line 1894
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@8
    .line 1895
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    #@b
    .line 1892
    return-void
.end method

.method drain()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1940
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1941
    return-void

    #@6
    .line 1943
    :cond_0
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1944
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@c
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    #@f
    .line 1946
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    #@11
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@13
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@15
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@18
    .line 1947
    iput v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1a
    .line 1948
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    #@1d
    .line 1939
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1888
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@3
    .line 1889
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@8
    .line 1887
    return-void
.end method

.method getBlockDataMode()Z
    .locals 1

    #@0
    .prologue
    .line 1843
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    #@2
    return v0
.end method

.method getUTFLength(Ljava/lang/String;)J
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    .line 2208
    .local v3, "len":I
    const-wide/16 v6, 0x0

    #@6
    .line 2209
    .local v6, "utflen":J
    const/4 v4, 0x0

    #@7
    .local v4, "off":I
    :goto_0
    if-ge v4, v3, :cond_3

    #@9
    .line 2210
    sub-int v5, v3, v4

    #@b
    const/16 v8, 0x100

    #@d
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v2

    #@11
    .line 2211
    .local v2, "csize":I
    add-int v5, v4, v2

    #@13
    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@15
    const/4 v9, 0x0

    #@16
    invoke-virtual {p1, v4, v5, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    #@19
    .line 2212
    const/4 v1, 0x0

    #@1a
    .local v1, "cpos":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@1c
    .line 2213
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@1e
    aget-char v0, v5, v1

    #@20
    .line 2214
    .local v0, "c":C
    const/4 v5, 0x1

    #@21
    if-lt v0, v5, :cond_0

    #@23
    const/16 v5, 0x7f

    #@25
    if-gt v0, v5, :cond_0

    #@27
    .line 2215
    const-wide/16 v8, 0x1

    #@29
    add-long/2addr v6, v8

    #@2a
    .line 2212
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 2216
    :cond_0
    const/16 v5, 0x7ff

    #@2f
    if-le v0, v5, :cond_1

    #@31
    .line 2217
    const-wide/16 v8, 0x3

    #@33
    add-long/2addr v6, v8

    #@34
    goto :goto_2

    #@35
    .line 2219
    :cond_1
    const-wide/16 v8, 0x2

    #@37
    add-long/2addr v6, v8

    #@38
    goto :goto_2

    #@39
    .line 2222
    .end local v0    # "c":C
    :cond_2
    add-int/2addr v4, v2

    #@3a
    goto :goto_0

    #@3b
    .line 2224
    .end local v1    # "cpos":I
    .end local v2    # "csize":I
    :cond_3
    return-wide v6
.end method

.method setBlockDataMode(Z)Z
    .locals 1
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1830
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1831
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    #@6
    return v0

    #@7
    .line 1833
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@a
    .line 1834
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    #@c
    .line 1835
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    const/4 v0, 0x0

    #@11
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1873
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    const/16 v1, 0x400

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 1874
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@9
    .line 1876
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@b
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    add-int/lit8 v2, v1, 0x1

    #@f
    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@11
    int-to-byte v2, p1

    #@12
    aput-byte v2, v0, v1

    #@14
    .line 1872
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1880
    array-length v0, p1

    #@2
    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    #@5
    .line 1879
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1884
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    #@4
    .line 1883
    return-void
.end method

.method write([BIIZ)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x400

    #@2
    .line 1907
    if-nez p4, :cond_0

    #@4
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    #@6
    :goto_0
    if-nez v1, :cond_2

    #@8
    .line 1908
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@b
    .line 1909
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    #@d
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@10
    .line 1910
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    #@13
    .line 1911
    return-void

    #@14
    .line 1907
    :cond_0
    const/4 v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1918
    :cond_1
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@18
    if-nez v1, :cond_4

    #@1a
    .line 1920
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    #@1d
    .line 1921
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    #@1f
    invoke-virtual {v1, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    #@22
    .line 1922
    add-int/lit16 p2, p2, 0x400

    #@24
    .line 1923
    add-int/lit16 p3, p3, -0x400

    #@26
    .line 1914
    :cond_2
    :goto_1
    if-lez p3, :cond_5

    #@28
    .line 1915
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2a
    if-lt v1, v3, :cond_3

    #@2c
    .line 1916
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@2f
    .line 1918
    :cond_3
    if-lt p3, v3, :cond_4

    #@31
    if-eqz p4, :cond_1

    #@33
    .line 1925
    :cond_4
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@35
    rsub-int v1, v1, 0x400

    #@37
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    #@3a
    move-result v0

    #@3b
    .line 1926
    .local v0, "wlen":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@3d
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@3f
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@42
    .line 1927
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@44
    add-int/2addr v1, v0

    #@45
    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@47
    .line 1928
    add-int/2addr p2, v0

    #@48
    .line 1929
    sub-int/2addr p3, v0

    #@49
    goto :goto_1

    #@4a
    .line 1932
    .end local v0    # "wlen":I
    :cond_5
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    #@4d
    .line 1905
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1978
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    const/16 v1, 0x400

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 1979
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@9
    .line 1981
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@b
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    add-int/lit8 v2, v1, 0x1

    #@f
    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@11
    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putBoolean([BIZ)V

    #@14
    .line 1977
    return-void
.end method

.method writeBooleans([ZII)V
    .locals 6
    .param p1, "v"    # [Z
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2091
    add-int v0, p2, p3

    #@2
    .line 2092
    .local v0, "endoff":I
    :goto_0
    if-ge p2, v0, :cond_2

    #@4
    .line 2093
    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@6
    const/16 v4, 0x400

    #@8
    if-lt v3, v4, :cond_0

    #@a
    .line 2094
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@d
    .line 2096
    :cond_0
    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@f
    rsub-int v3, v3, 0x400

    #@11
    add-int/2addr v3, p2

    #@12
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v2

    #@16
    .local v2, "stop":I
    move v1, p2

    #@17
    .line 2097
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@19
    .line 2098
    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@1b
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1d
    add-int/lit8 v5, v4, 0x1

    #@1f
    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@21
    add-int/lit8 p2, v1, 0x1

    #@23
    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-boolean v5, p1, v1

    #@25
    invoke-static {v3, v4, v5}, Ljava/io/Bits;->putBoolean([BIZ)V

    #@28
    move v1, p2

    #@29
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    #@2a
    :cond_1
    move p2, v1

    #@2b
    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_0

    #@2c
    .line 2090
    .end local v2    # "stop":I
    :cond_2
    return-void
.end method

.method public writeByte(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1985
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    const/16 v1, 0x400

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 1986
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@9
    .line 1988
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@b
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    add-int/lit8 v2, v1, 0x1

    #@f
    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@11
    int-to-byte v2, p1

    #@12
    aput-byte v2, v0, v1

    #@14
    .line 1984
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2046
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    .line 2047
    .local v3, "endoff":I
    const/4 v0, 0x0

    #@5
    .line 2048
    .local v0, "cpos":I
    const/4 v2, 0x0

    #@6
    .line 2049
    .local v2, "csize":I
    const/4 v5, 0x0

    #@7
    .local v5, "off":I
    :goto_0
    if-ge v5, v3, :cond_3

    #@9
    .line 2050
    if-lt v0, v2, :cond_0

    #@b
    .line 2051
    const/4 v0, 0x0

    #@c
    .line 2052
    sub-int v7, v3, v5

    #@e
    const/16 v8, 0x100

    #@10
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@13
    move-result v2

    #@14
    .line 2053
    add-int v7, v5, v2

    #@16
    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@18
    const/4 v9, 0x0

    #@19
    invoke-virtual {p1, v5, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    #@1c
    .line 2055
    :cond_0
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1e
    const/16 v8, 0x400

    #@20
    if-lt v7, v8, :cond_1

    #@22
    .line 2056
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    #@25
    .line 2058
    :cond_1
    sub-int v7, v2, v0

    #@27
    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@29
    rsub-int v8, v8, 0x400

    #@2b
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v4

    #@2f
    .line 2059
    .local v4, "n":I
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@31
    add-int v6, v7, v4

    #@33
    .line 2060
    .local v6, "stop":I
    :goto_1
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@35
    if-ge v7, v6, :cond_2

    #@37
    .line 2061
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@39
    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@3b
    add-int/lit8 v9, v8, 0x1

    #@3d
    iput v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@3f
    iget-object v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@41
    add-int/lit8 v1, v0, 0x1

    #@43
    .end local v0    # "cpos":I
    .local v1, "cpos":I
    aget-char v9, v9, v0

    #@45
    int-to-byte v9, v9

    #@46
    aput-byte v9, v7, v8

    #@48
    move v0, v1

    #@49
    .end local v1    # "cpos":I
    .restart local v0    # "cpos":I
    goto :goto_1

    #@4a
    .line 2063
    :cond_2
    add-int/2addr v5, v4

    #@4b
    goto :goto_0

    #@4c
    .line 2045
    .end local v4    # "n":I
    .end local v6    # "stop":I
    :cond_3
    return-void
.end method

.method public writeChar(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1992
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x2

    #@4
    const/16 v1, 0x400

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 1993
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@a
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@c
    int-to-char v2, p1

    #@d
    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putChar([BIC)V

    #@10
    .line 1994
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@12
    add-int/lit8 v0, v0, 0x2

    #@14
    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@16
    .line 1991
    :goto_0
    return-void

    #@17
    .line 1996
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@19
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@1c
    goto :goto_0
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2068
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    .line 2069
    .local v1, "endoff":I
    const/4 v2, 0x0

    #@6
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@8
    .line 2070
    sub-int v3, v1, v2

    #@a
    const/16 v4, 0x100

    #@c
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v0

    #@10
    .line 2071
    .local v0, "csize":I
    add-int v3, v2, v0

    #@12
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@14
    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    #@17
    .line 2072
    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    #@19
    invoke-virtual {p0, v3, v5, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    #@1c
    .line 2073
    add-int/2addr v2, v0

    #@1d
    goto :goto_0

    #@1e
    .line 2067
    .end local v0    # "csize":I
    :cond_0
    return-void
.end method

.method writeChars([CII)V
    .locals 7
    .param p1, "v"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2105
    add-int v1, p2, p3

    #@2
    .local v1, "endoff":I
    move v2, p2

    #@3
    .line 2106
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@5
    .line 2107
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@7
    .line 2104
    const/16 v5, 0x3fe

    #@9
    .line 2107
    if-gt v4, v5, :cond_0

    #@b
    .line 2108
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    rsub-int v4, v4, 0x400

    #@f
    shr-int/lit8 v0, v4, 0x1

    #@11
    .line 2109
    .local v0, "avail":I
    add-int v4, v2, v0

    #@13
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v3

    #@17
    .line 2110
    .local v3, "stop":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@19
    .line 2111
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@1b
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1d
    add-int/lit8 p2, v2, 0x1

    #@1f
    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-char v6, p1, v2

    #@21
    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putChar([BIC)V

    #@24
    .line 2112
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@26
    add-int/lit8 v4, v4, 0x2

    #@28
    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2a
    move v2, p2

    #@2b
    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1

    #@2c
    .line 2115
    .end local v0    # "avail":I
    .end local v3    # "stop":I
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@2e
    add-int/lit8 p2, v2, 0x1

    #@30
    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-char v5, p1, v2

    #@32
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@35
    :goto_2
    move v2, p2

    #@36
    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    #@37
    .line 2103
    :cond_1
    return-void

    #@38
    .restart local v0    # "avail":I
    .restart local v3    # "stop":I
    :cond_2
    move p2, v2

    #@39
    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2037
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x8

    #@4
    const/16 v1, 0x400

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 2038
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@a
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@c
    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putDouble([BID)V

    #@f
    .line 2039
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@11
    add-int/lit8 v0, v0, 0x8

    #@13
    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@15
    .line 2036
    :goto_0
    return-void

    #@16
    .line 2041
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@18
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    #@1b
    goto :goto_0
.end method

.method writeDoubles([DII)V
    .locals 8
    .param p1, "v"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2189
    add-int v2, p2, p3

    #@2
    .local v2, "endoff":I
    move v3, p2

    #@3
    .line 2190
    .end local p2    # "off":I
    .local v3, "off":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@5
    .line 2191
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@7
    .line 2188
    const/16 v5, 0x3f8

    #@9
    .line 2191
    if-gt v4, v5, :cond_0

    #@b
    .line 2192
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    rsub-int v4, v4, 0x400

    #@f
    shr-int/lit8 v0, v4, 0x3

    #@11
    .line 2193
    .local v0, "avail":I
    sub-int v4, v2, v3

    #@13
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v1

    #@17
    .line 2194
    .local v1, "chunklen":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@19
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1b
    invoke-static {p1, v3, v4, v5, v1}, Ljava/io/ObjectOutputStream;->-wrap0([DI[BII)V

    #@1e
    .line 2195
    add-int p2, v3, v1

    #@20
    .line 2196
    .end local v3    # "off":I
    .restart local p2    # "off":I
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@22
    shl-int/lit8 v5, v1, 0x3

    #@24
    add-int/2addr v4, v5

    #@25
    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@27
    .end local v0    # "avail":I
    .end local v1    # "chunklen":I
    :goto_1
    move v3, p2

    #@28
    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_0

    #@29
    .line 2198
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@2b
    add-int/lit8 p2, v3, 0x1

    #@2d
    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-wide v6, p1, v3

    #@2f
    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    #@32
    goto :goto_1

    #@33
    .line 2187
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :cond_1
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2019
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x4

    #@4
    const/16 v1, 0x400

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 2020
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@a
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@c
    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putFloat([BIF)V

    #@f
    .line 2021
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@11
    add-int/lit8 v0, v0, 0x4

    #@13
    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@15
    .line 2018
    :goto_0
    return-void

    #@16
    .line 2023
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@18
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    #@1b
    goto :goto_0
.end method

.method writeFloats([FII)V
    .locals 6
    .param p1, "v"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2156
    add-int v2, p2, p3

    #@2
    .local v2, "endoff":I
    move v3, p2

    #@3
    .line 2157
    .end local p2    # "off":I
    .local v3, "off":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@5
    .line 2158
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@7
    .line 2155
    const/16 v5, 0x3fc

    #@9
    .line 2158
    if-gt v4, v5, :cond_0

    #@b
    .line 2159
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    rsub-int v4, v4, 0x400

    #@f
    shr-int/lit8 v0, v4, 0x2

    #@11
    .line 2160
    .local v0, "avail":I
    sub-int v4, v2, v3

    #@13
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v1

    #@17
    .line 2161
    .local v1, "chunklen":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@19
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1b
    invoke-static {p1, v3, v4, v5, v1}, Ljava/io/ObjectOutputStream;->-wrap1([FI[BII)V

    #@1e
    .line 2162
    add-int p2, v3, v1

    #@20
    .line 2163
    .end local v3    # "off":I
    .restart local p2    # "off":I
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@22
    shl-int/lit8 v5, v1, 0x2

    #@24
    add-int/2addr v4, v5

    #@25
    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@27
    .end local v0    # "avail":I
    .end local v1    # "chunklen":I
    :goto_1
    move v3, p2

    #@28
    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_0

    #@29
    .line 2165
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@2b
    add-int/lit8 p2, v3, 0x1

    #@2d
    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget v5, p1, v3

    #@2f
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    #@32
    goto :goto_1

    #@33
    .line 2154
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :cond_1
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2010
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x4

    #@4
    const/16 v1, 0x400

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 2011
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@a
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@c
    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putInt([BII)V

    #@f
    .line 2012
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@11
    add-int/lit8 v0, v0, 0x4

    #@13
    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@15
    .line 2009
    :goto_0
    return-void

    #@16
    .line 2014
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@18
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1b
    goto :goto_0
.end method

.method writeInts([III)V
    .locals 7
    .param p1, "v"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2139
    add-int v1, p2, p3

    #@2
    .local v1, "endoff":I
    move v2, p2

    #@3
    .line 2140
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@5
    .line 2141
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@7
    .line 2138
    const/16 v5, 0x3fc

    #@9
    .line 2141
    if-gt v4, v5, :cond_0

    #@b
    .line 2142
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    rsub-int v4, v4, 0x400

    #@f
    shr-int/lit8 v0, v4, 0x2

    #@11
    .line 2143
    .local v0, "avail":I
    add-int v4, v2, v0

    #@13
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v3

    #@17
    .line 2144
    .local v3, "stop":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@19
    .line 2145
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@1b
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1d
    add-int/lit8 p2, v2, 0x1

    #@1f
    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget v6, p1, v2

    #@21
    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putInt([BII)V

    #@24
    .line 2146
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@26
    add-int/lit8 v4, v4, 0x4

    #@28
    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2a
    move v2, p2

    #@2b
    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1

    #@2c
    .line 2149
    .end local v0    # "avail":I
    .end local v3    # "stop":I
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@2e
    add-int/lit8 p2, v2, 0x1

    #@30
    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget v5, p1, v2

    #@32
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@35
    :goto_2
    move v2, p2

    #@36
    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    #@37
    .line 2137
    :cond_1
    return-void

    #@38
    .restart local v0    # "avail":I
    .restart local v3    # "stop":I
    :cond_2
    move p2, v2

    #@39
    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method

.method public writeLong(J)V
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2028
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x8

    #@4
    const/16 v1, 0x400

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 2029
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@a
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@c
    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putLong([BIJ)V

    #@f
    .line 2030
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@11
    add-int/lit8 v0, v0, 0x8

    #@13
    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@15
    .line 2027
    :goto_0
    return-void

    #@16
    .line 2032
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@18
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@1b
    goto :goto_0
.end method

.method writeLongUTF(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2251
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    #@7
    .line 2250
    return-void
.end method

.method writeLongUTF(Ljava/lang/String;J)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2259
    invoke-virtual {p0, p2, p3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    #@3
    .line 2260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    int-to-long v0, v0

    #@8
    cmp-long v0, p2, v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 2261
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@f
    .line 2258
    :goto_0
    return-void

    #@10
    .line 2263
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    #@13
    goto :goto_0
.end method

.method writeLongs([JII)V
    .locals 8
    .param p1, "v"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2172
    add-int v1, p2, p3

    #@2
    .local v1, "endoff":I
    move v2, p2

    #@3
    .line 2173
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@5
    .line 2174
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@7
    .line 2171
    const/16 v5, 0x3f8

    #@9
    .line 2174
    if-gt v4, v5, :cond_0

    #@b
    .line 2175
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    rsub-int v4, v4, 0x400

    #@f
    shr-int/lit8 v0, v4, 0x3

    #@11
    .line 2176
    .local v0, "avail":I
    add-int v4, v2, v0

    #@13
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v3

    #@17
    .line 2177
    .local v3, "stop":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@19
    .line 2178
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@1b
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1d
    add-int/lit8 p2, v2, 0x1

    #@1f
    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-wide v6, p1, v2

    #@21
    invoke-static {v4, v5, v6, v7}, Ljava/io/Bits;->putLong([BIJ)V

    #@24
    .line 2179
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@26
    add-int/lit8 v4, v4, 0x8

    #@28
    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2a
    move v2, p2

    #@2b
    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1

    #@2c
    .line 2182
    .end local v0    # "avail":I
    .end local v3    # "stop":I
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@2e
    add-int/lit8 p2, v2, 0x1

    #@30
    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-wide v6, p1, v2

    #@32
    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@35
    :goto_2
    move v2, p2

    #@36
    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    #@37
    .line 2170
    :cond_1
    return-void

    #@38
    .restart local v0    # "avail":I
    .restart local v3    # "stop":I
    :cond_2
    move p2, v2

    #@39
    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method

.method public writeShort(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2001
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2
    add-int/lit8 v0, v0, 0x2

    #@4
    const/16 v1, 0x400

    #@6
    if-gt v0, v1, :cond_0

    #@8
    .line 2002
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@a
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@c
    int-to-short v2, p1

    #@d
    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putShort([BIS)V

    #@10
    .line 2003
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@12
    add-int/lit8 v0, v0, 0x2

    #@14
    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@16
    .line 2000
    :goto_0
    return-void

    #@17
    .line 2005
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@19
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@1c
    goto :goto_0
.end method

.method writeShorts([SII)V
    .locals 7
    .param p1, "v"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2122
    add-int v1, p2, p3

    #@2
    .local v1, "endoff":I
    move v2, p2

    #@3
    .line 2123
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@5
    .line 2124
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@7
    .line 2121
    const/16 v5, 0x3fe

    #@9
    .line 2124
    if-gt v4, v5, :cond_0

    #@b
    .line 2125
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@d
    rsub-int v4, v4, 0x400

    #@f
    shr-int/lit8 v0, v4, 0x1

    #@11
    .line 2126
    .local v0, "avail":I
    add-int v4, v2, v0

    #@13
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v3

    #@17
    .line 2127
    .local v3, "stop":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@19
    .line 2128
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    #@1b
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@1d
    add-int/lit8 p2, v2, 0x1

    #@1f
    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-short v6, p1, v2

    #@21
    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putShort([BIS)V

    #@24
    .line 2129
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@26
    add-int/lit8 v4, v4, 0x2

    #@28
    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    #@2a
    move v2, p2

    #@2b
    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1

    #@2c
    .line 2132
    .end local v0    # "avail":I
    .end local v3    # "stop":I
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    #@2e
    add-int/lit8 p2, v2, 0x1

    #@30
    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-short v5, p1, v2

    #@32
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@35
    :goto_2
    move v2, p2

    #@36
    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    #@37
    .line 2120
    :cond_1
    return-void

    #@38
    .restart local v0    # "avail":I
    .restart local v3    # "stop":I
    :cond_2
    move p2, v2

    #@39
    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2078
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    #@7
    .line 2077
    return-void
.end method

.method writeUTF(Ljava/lang/String;J)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2234
    const-wide/32 v0, 0xffff

    #@3
    cmp-long v0, p2, v0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 2235
    new-instance v0, Ljava/io/UTFDataFormatException;

    #@9
    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    #@c
    throw v0

    #@d
    .line 2237
    :cond_0
    long-to-int v0, p2

    #@e
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    #@11
    .line 2238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v0

    #@15
    int-to-long v0, v0

    #@16
    cmp-long v0, p2, v0

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 2239
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@1d
    .line 2233
    :goto_0
    return-void

    #@1e
    .line 2241
    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    #@21
    goto :goto_0
.end method
