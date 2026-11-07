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
.field private static final greylist-max-o CHAR_BUF_SIZE:I = 0x100

.field private static final greylist-max-o MAX_BLOCK_SIZE:I = 0x400

.field private static final greylist-max-o MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private greylist-max-o blkmode:Z

.field private final greylist-max-o buf:[B

.field private final greylist-max-o cbuf:[C

.field private final greylist-max-o dout:Ljava/io/DataOutputStream;

.field private final greylist-max-o hbuf:[B

.field private final greylist-max-o out:Ljava/io/OutputStream;

.field private greylist-max-o pos:I

.field private greylist-max-o warnOnceWhenWriting:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 1855
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1822
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    .line 1824
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    .line 1826
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    .line 1829
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    .line 1831
    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1856
    iput-object p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    .line 1857
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    .line 1858
    return-void
.end method

.method private greylist-max-o warnIfClosed()V
    .registers 3

    .line 1894
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    if-eqz v0, :cond_13

    .line 1895
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const-string v1, "The app is relying on undefined behavior. Attempting to write to a closed ObjectOutputStream could produce corrupt output in a future release of Android."

    invoke-static {v1, v0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1900
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    .line 1902
    :cond_13
    return-void
.end method

.method private greylist-max-o writeBlockHeader(I)V
    .registers 6
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2001
    const/16 v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1a

    .line 2002
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v3, 0x77

    aput-byte v3, v0, v2

    .line 2003
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 2004
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2d

    .line 2006
    :cond_1a
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v3, 0x7a

    aput-byte v3, v0, v2

    .line 2007
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putInt([BII)V

    .line 2008
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 2011
    :goto_2d
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 2012
    return-void
.end method

.method private greylist-max-o writeUTFBody(Ljava/lang/String;)V
    .registers 12
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2317
    const/16 v0, 0x3fd

    .line 2318
    .local v0, "limit":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2319
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_7
    if-ge v2, v1, :cond_d1

    .line 2320
    sub-int v3, v1, v2

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2321
    .local v3, "csize":I
    add-int v4, v2, v3

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2322
    const/4 v4, 0x0

    .local v4, "cpos":I
    :goto_1a
    if-ge v4, v3, :cond_ce

    .line 2323
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v5, v5, v4

    .line 2324
    .local v5, "c":C
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v8, 0x7ff

    const/16 v9, 0x7f

    if-gt v7, v0, :cond_92

    .line 2325
    if-gt v5, v9, :cond_39

    if-eqz v5, :cond_39

    .line 2326
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v9, v5

    aput-byte v9, v7, v8

    goto/16 :goto_ca

    .line 2327
    :cond_39
    if-le v5, v8, :cond_6e

    .line 2328
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v8, v8, 0x2

    shr-int/lit8 v9, v5, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 2329
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 2330
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v8, v6

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 2331
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v7, 0x3

    iput v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_ca

    .line 2333
    :cond_6e
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v9, v5, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 2334
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v8, v6

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 2335
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_ca

    .line 2338
    :cond_92
    if-gt v5, v9, :cond_9a

    if-eqz v5, :cond_9a

    .line 2339
    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto :goto_ca

    .line 2340
    :cond_9a
    if-le v5, v8, :cond_b8

    .line 2341
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2342
    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2343
    shr-int/lit8 v7, v5, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto :goto_ca

    .line 2345
    :cond_b8
    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2346
    shr-int/lit8 v7, v5, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2322
    .end local v5    # "c":C
    :goto_ca
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1a

    .line 2350
    .end local v4    # "cpos":I
    :cond_ce
    add-int/2addr v2, v3

    .line 2351
    .end local v3    # "csize":I
    goto/16 :goto_7

    .line 2352
    .end local v2    # "off":I
    :cond_d1
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1933
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    .line 1934
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1936
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    .line 1937
    return-void
.end method

.method greylist-max-o drain()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1983
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v0, :cond_5

    .line 1984
    return-void

    .line 1986
    :cond_5
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-eqz v0, :cond_e

    .line 1987
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    .line 1989
    :cond_e
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1990
    iput v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1992
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1993
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1928
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1929
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1930
    return-void
.end method

.method greylist-max-o getBlockDataMode()Z
    .registers 2

    .line 1881
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0
.end method

.method greylist-max-o getUTFLength(Ljava/lang/String;)J
    .registers 11
    .param p1, "s"    # Ljava/lang/String;

    .line 2252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2253
    .local v0, "len":I
    const-wide/16 v1, 0x0

    .line 2254
    .local v1, "utflen":J
    const/4 v3, 0x0

    .local v3, "off":I
    :goto_7
    if-ge v3, v0, :cond_3b

    .line 2255
    sub-int v4, v0, v3

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2256
    .local v4, "csize":I
    add-int v5, v3, v4

    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v7, 0x0

    invoke-virtual {p1, v3, v5, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 2257
    const/4 v5, 0x0

    .local v5, "cpos":I
    :goto_1a
    if-ge v5, v4, :cond_39

    .line 2258
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v6, v6, v5

    .line 2259
    .local v6, "c":C
    const/4 v7, 0x1

    if-lt v6, v7, :cond_2b

    const/16 v7, 0x7f

    if-gt v6, v7, :cond_2b

    .line 2260
    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    goto :goto_36

    .line 2261
    :cond_2b
    const/16 v7, 0x7ff

    if-le v6, v7, :cond_33

    .line 2262
    const-wide/16 v7, 0x3

    add-long/2addr v1, v7

    goto :goto_36

    .line 2264
    :cond_33
    const-wide/16 v7, 0x2

    add-long/2addr v1, v7

    .line 2257
    .end local v6    # "c":C
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 2267
    .end local v5    # "cpos":I
    :cond_39
    add-int/2addr v3, v4

    .line 2268
    .end local v4    # "csize":I
    goto :goto_7

    .line 2269
    .end local v3    # "off":I
    :cond_3b
    return-wide v1
.end method

.method greylist-max-o setBlockDataMode(Z)Z
    .registers 3
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1868
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-ne v0, p1, :cond_7

    .line 1869
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0

    .line 1871
    :cond_7
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1872
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    .line 1873
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1913
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 1914
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1916
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1917
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1920
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1921
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1925
    return-void
.end method

.method greylist-max-o write([BIIZ)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1948
    if-nez p4, :cond_12

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-nez v0, :cond_12

    .line 1949
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1950
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1952
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1953
    return-void

    .line 1956
    :cond_12
    :goto_12
    if-lez p3, :cond_48

    .line 1957
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_1d

    .line 1958
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1960
    :cond_1d
    if-lt p3, v1, :cond_32

    if-nez p4, :cond_32

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v0, :cond_32

    .line 1962
    invoke-direct {p0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    .line 1963
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1964
    add-int/lit16 p2, p2, 0x400

    .line 1965
    add-int/lit16 p3, p3, -0x400

    goto :goto_12

    .line 1967
    :cond_32
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    sub-int/2addr v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1968
    .local v0, "wlen":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1969
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1970
    add-int/2addr p2, v0

    .line 1971
    sub-int/2addr p3, v0

    .line 1972
    .end local v0    # "wlen":I
    goto :goto_12

    .line 1975
    :cond_48
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1976
    return-void
.end method

.method public whitelist test-api writeBoolean(Z)V
    .registers 5
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2023
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 2024
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2026
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 2027
    return-void
.end method

.method greylist-max-o writeBooleans([ZII)V
    .registers 9
    .param p1, "v"    # [Z
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2136
    add-int v0, p2, p3

    .line 2137
    .local v0, "endoff":I
    :goto_2
    if-ge p2, v0, :cond_29

    .line 2138
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_d

    .line 2139
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2141
    :cond_d
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    sub-int/2addr v2, v1

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2142
    .local v1, "stop":I
    :goto_15
    if-ge p2, v1, :cond_28

    .line 2143
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .local v4, "off":I
    aget-boolean p2, p1, p2

    invoke-static {v2, v3, p2}, Ljava/io/Bits;->putBoolean([BIZ)V

    move p2, v4

    goto :goto_15

    .line 2145
    .end local v1    # "stop":I
    .end local v4    # "off":I
    .restart local p2    # "off":I
    :cond_28
    goto :goto_2

    .line 2146
    :cond_29
    return-void
.end method

.method public whitelist test-api writeByte(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2030
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_9

    .line 2031
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2033
    :cond_9
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 2034
    return-void
.end method

.method public whitelist test-api writeBytes(Ljava/lang/String;)V
    .registers 12
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2091
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2092
    .local v0, "endoff":I
    const/4 v1, 0x0

    .line 2093
    .local v1, "cpos":I
    const/4 v2, 0x0

    .line 2094
    .local v2, "csize":I
    const/4 v3, 0x0

    .local v3, "off":I
    :goto_7
    if-ge v3, v0, :cond_4a

    .line 2095
    if-lt v1, v2, :cond_1c

    .line 2096
    const/4 v1, 0x0

    .line 2097
    sub-int v4, v0, v3

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2098
    add-int v4, v3, v2

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2100
    :cond_1c
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v5, 0x400

    if-lt v4, v5, :cond_25

    .line 2101
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2103
    :cond_25
    sub-int v4, v2, v1

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2104
    .local v4, "n":I
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v5, v4

    .line 2105
    .local v5, "stop":I
    :goto_31
    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-ge v6, v5, :cond_48

    .line 2106
    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    add-int/lit8 v9, v1, 0x1

    .end local v1    # "cpos":I
    .local v9, "cpos":I
    aget-char v1, v8, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v7

    move v1, v9

    goto :goto_31

    .line 2108
    .end local v9    # "cpos":I
    .restart local v1    # "cpos":I
    :cond_48
    add-int/2addr v3, v4

    .line 2109
    .end local v4    # "n":I
    .end local v5    # "stop":I
    goto :goto_7

    .line 2110
    .end local v3    # "off":I
    :cond_4a
    return-void
.end method

.method public whitelist test-api writeChar(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2037
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-gt v0, v1, :cond_17

    .line 2038
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-char v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putChar([BIC)V

    .line 2039
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_1c

    .line 2041
    :cond_17
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 2043
    :goto_1c
    return-void
.end method

.method public whitelist test-api writeChars(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2114
    .local v0, "endoff":I
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_5
    if-ge v1, v0, :cond_1e

    .line 2115
    sub-int v2, v0, v1

    const/16 v3, 0x100

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2116
    .local v2, "csize":I
    add-int v3, v1, v2

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 2117
    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p0, v3, v5, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    .line 2118
    add-int/2addr v1, v2

    .line 2119
    .end local v2    # "csize":I
    goto :goto_5

    .line 2120
    .end local v1    # "off":I
    :cond_1e
    return-void
.end method

.method greylist-max-o writeChars([CII)V
    .registers 11
    .param p1, "v"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2149
    const/16 v0, 0x3fe

    .line 2150
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2151
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_37

    .line 2152
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_2c

    .line 2153
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x1

    .line 2154
    .local v2, "avail":I
    add-int v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2155
    .local v3, "stop":I
    :goto_16
    if-ge p2, v3, :cond_2b

    .line 2156
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    aget-char p2, p1, p2

    invoke-static {v4, v5, p2}, Ljava/io/Bits;->putChar([BIC)V

    .line 2157
    iget p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move p2, v6

    goto :goto_16

    .line 2159
    .end local v2    # "avail":I
    .end local v3    # "stop":I
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_2b
    goto :goto_4

    .line 2160
    :cond_2c
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char p2, p1, p2

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeChar(I)V

    move p2, v3

    goto :goto_4

    .line 2163
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_37
    return-void
.end method

.method public whitelist test-api writeDouble(D)V
    .registers 5
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2082
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x400

    if-gt v0, v1, :cond_16

    .line 2083
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putDouble([BID)V

    .line 2084
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_1b

    .line 2086
    :cond_16
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 2088
    :goto_1b
    return-void
.end method

.method greylist-max-o writeDoubles([DII)V
    .registers 10
    .param p1, "v"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2233
    const/16 v0, 0x3f8

    .line 2234
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2235
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_31

    .line 2236
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_26

    .line 2237
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x3

    .line 2238
    .local v2, "avail":I
    sub-int v3, v1, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2239
    .local v3, "chunklen":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/io/ObjectOutputStream;->-$$Nest$smdoublesToBytes([DI[BII)V

    .line 2240
    add-int/2addr p2, v3

    .line 2241
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v5, v3, 0x3

    add-int/2addr v4, v5

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2242
    .end local v2    # "avail":I
    .end local v3    # "chunklen":I
    goto :goto_4

    .line 2243
    :cond_26
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-wide v4, p1, p2

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    move p2, v3

    goto :goto_4

    .line 2246
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_31
    return-void
.end method

.method public whitelist test-api writeFloat(F)V
    .registers 4
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2064
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x400

    if-gt v0, v1, :cond_16

    .line 2065
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putFloat([BIF)V

    .line 2066
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_1b

    .line 2068
    :cond_16
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 2070
    :goto_1b
    return-void
.end method

.method greylist-max-o writeFloats([FII)V
    .registers 10
    .param p1, "v"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2200
    const/16 v0, 0x3fc

    .line 2201
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2202
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_31

    .line 2203
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_26

    .line 2204
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x2

    .line 2205
    .local v2, "avail":I
    sub-int v3, v1, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2206
    .local v3, "chunklen":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/io/ObjectOutputStream;->-$$Nest$smfloatsToBytes([FI[BII)V

    .line 2207
    add-int/2addr p2, v3

    .line 2208
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2209
    .end local v2    # "avail":I
    .end local v3    # "chunklen":I
    goto :goto_4

    .line 2210
    :cond_26
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget p2, p1, p2

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move p2, v3

    goto :goto_4

    .line 2213
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_31
    return-void
.end method

.method public whitelist test-api writeInt(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2055
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x400

    if-gt v0, v1, :cond_16

    .line 2056
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putInt([BII)V

    .line 2057
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_1b

    .line 2059
    :cond_16
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2061
    :goto_1b
    return-void
.end method

.method greylist-max-o writeInts([III)V
    .registers 11
    .param p1, "v"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2183
    const/16 v0, 0x3fc

    .line 2184
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2185
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_37

    .line 2186
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_2c

    .line 2187
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x2

    .line 2188
    .local v2, "avail":I
    add-int v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2189
    .local v3, "stop":I
    :goto_16
    if-ge p2, v3, :cond_2b

    .line 2190
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    aget p2, p1, p2

    invoke-static {v4, v5, p2}, Ljava/io/Bits;->putInt([BII)V

    .line 2191
    iget p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move p2, v6

    goto :goto_16

    .line 2193
    .end local v2    # "avail":I
    .end local v3    # "stop":I
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_2b
    goto :goto_4

    .line 2194
    :cond_2c
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget p2, p1, p2

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    move p2, v3

    goto :goto_4

    .line 2197
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_37
    return-void
.end method

.method public whitelist test-api writeLong(J)V
    .registers 5
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x400

    if-gt v0, v1, :cond_16

    .line 2074
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2075
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_1b

    .line 2077
    :cond_16
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2079
    :goto_1b
    return-void
.end method

.method greylist-max-o writeLongUTF(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2296
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    .line 2297
    return-void
.end method

.method greylist-max-o writeLongUTF(Ljava/lang/String;J)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2304
    invoke-virtual {p0, p2, p3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    .line 2305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_10

    .line 2306
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_13

    .line 2308
    :cond_10
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    .line 2310
    :goto_13
    return-void
.end method

.method greylist-max-o writeLongs([JII)V
    .registers 13
    .param p1, "v"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    const/16 v0, 0x3f8

    .line 2217
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2218
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_37

    .line 2219
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_2c

    .line 2220
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x3

    .line 2221
    .local v2, "avail":I
    add-int v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2222
    .local v3, "stop":I
    :goto_16
    if-ge p2, v3, :cond_2b

    .line 2223
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    aget-wide v7, p1, p2

    invoke-static {v4, v5, v7, v8}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2224
    iget p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, p2, 0x8

    iput p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move p2, v6

    goto :goto_16

    .line 2226
    .end local v2    # "avail":I
    .end local v3    # "stop":I
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_2b
    goto :goto_4

    .line 2227
    :cond_2c
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-wide v4, p1, p2

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    move p2, v3

    goto :goto_4

    .line 2230
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_37
    return-void
.end method

.method public whitelist test-api writeShort(I)V
    .registers 5
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2046
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-gt v0, v1, :cond_17

    .line 2047
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putShort([BIS)V

    .line 2048
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_1c

    .line 2050
    :cond_17
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2052
    :goto_1c
    return-void
.end method

.method greylist-max-o writeShorts([SII)V
    .registers 11
    .param p1, "v"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2166
    const/16 v0, 0x3fe

    .line 2167
    .local v0, "limit":I
    add-int v1, p2, p3

    .line 2168
    .local v1, "endoff":I
    :goto_4
    if-ge p2, v1, :cond_37

    .line 2169
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-gt v2, v0, :cond_2c

    .line 2170
    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v2, v2, 0x400

    shr-int/lit8 v2, v2, 0x1

    .line 2171
    .local v2, "avail":I
    add-int v3, p2, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2172
    .local v3, "stop":I
    :goto_16
    if-ge p2, v3, :cond_2b

    .line 2173
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    aget-short p2, p1, p2

    invoke-static {v4, v5, p2}, Ljava/io/Bits;->putShort([BIS)V

    .line 2174
    iget p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move p2, v6

    goto :goto_16

    .line 2176
    .end local v2    # "avail":I
    .end local v3    # "stop":I
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_2b
    goto :goto_4

    .line 2177
    :cond_2c
    iget-object v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-short p2, p1, p2

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move p2, v3

    goto :goto_4

    .line 2180
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_37
    return-void
.end method

.method public whitelist test-api writeUTF(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2123
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    .line 2124
    return-void
.end method

.method greylist-max-o writeUTF(Ljava/lang/String;J)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2279
    const-wide/32 v0, 0xffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1c

    .line 2282
    long-to-int v0, p2

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 2283
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_18

    .line 2284
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_1b

    .line 2286
    :cond_18
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    .line 2288
    :goto_1b
    return-void

    .line 2280
    :cond_1c
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0
.end method
