.class final Lorg/apache/xml/serializer/WriterToUTF8Buffered;
.super Ljava/io/Writer;
.source "WriterToUTF8Buffered.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist BYTES_MAX:I = 0x4000

.field private static final greylist CHARS_MAX:I = 0x1555


# instance fields
.field private greylist count:I

.field private final greylist m_inputChars:[C

.field private final greylist m_os:Ljava/io/OutputStream;

.field private final greylist m_outputBytes:[B


# direct methods
.method public constructor greylist <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    const/16 p1, 0x4003

    .line 86
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    const/16 p1, 0x1557

    .line 90
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 482
    iget-object p0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 467
    iget-object p0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public greylist flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    if-lez v0, :cond_e

    .line 447
    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 449
    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    :cond_e
    return-void
.end method

.method public greylist getOutputStream()Ljava/io/OutputStream;
    .registers 1

    .line 493
    iget-object p0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    return-object p0
.end method

.method public greylist getWriter()Ljava/io/Writer;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api write(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    const/16 v1, 0x4000

    if-lt v0, v1, :cond_9

    .line 139
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    :cond_9
    const/16 v0, 0x80

    if-ge p1, v0, :cond_19

    .line 143
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void

    :cond_19
    const/16 v1, 0x800

    if-ge p1, v1, :cond_37

    .line 147
    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v4, p1, 0x6

    add-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x2

    .line 148
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    return-void

    :cond_37
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_61

    .line 152
    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v4, p1, 0xc

    add-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    .line 153
    iput v4, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v5, p1, 0x6

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v2, v2, 0x3

    .line 154
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    return-void

    .line 158
    :cond_61
    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v4, p1, 0x12

    add-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    .line 159
    iput v4, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v5, p1, 0xc

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    .line 160
    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v5, p1, 0x6

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v2, v2, 0x4

    .line 161
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 p0, p1, 0x3f

    add-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 325
    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    const/16 v3, 0x4000

    rsub-int v2, v2, 0x4000

    const v4, 0xdbff

    const v5, 0xd800

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v1, v2, :cond_49

    .line 328
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    if-le v1, v3, :cond_49

    .line 337
    div-int/lit16 v1, v0, 0x1555

    .line 339
    rem-int/lit16 v2, v0, 0x1555

    if-lez v2, :cond_23

    add-int/lit8 v1, v1, 0x1

    :cond_23
    move v2, v6

    :goto_24
    if-gt v7, v1, :cond_48

    int-to-long v8, v0

    int-to-long v10, v7

    mul-long/2addr v8, v10

    int-to-long v10, v1

    .line 347
    div-long/2addr v8, v10

    long-to-int v3, v8

    .line 348
    iget-object v8, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    invoke-virtual {p1, v2, v3, v8, v6}, Ljava/lang/String;->getChars(II[CI)V

    sub-int v2, v3, v2

    .line 354
    iget-object v8, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    add-int/lit8 v9, v2, -0x1

    aget-char v9, v8, v9

    if-lt v9, v5, :cond_41

    if-gt v9, v4, :cond_41

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    .line 371
    :cond_41
    invoke-virtual {p0, v8, v6, v2}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    add-int/lit8 v7, v7, 0x1

    move v2, v3

    goto :goto_24

    :cond_48
    return-void

    .line 378
    :cond_49
    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    invoke-virtual {p1, v6, v0, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 379
    iget-object p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    .line 381
    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    .line 382
    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    :goto_54
    const/16 v3, 0x80

    if-ge v6, v0, :cond_65

    .line 391
    aget-char v8, p1, v6

    if-ge v8, v3, :cond_65

    add-int/lit8 v3, v2, 0x1

    int-to-byte v8, v8

    .line 392
    aput-byte v8, v1, v2

    add-int/lit8 v6, v6, 0x1

    move v2, v3

    goto :goto_54

    :cond_65
    :goto_65
    if-ge v6, v0, :cond_d9

    .line 397
    aget-char v8, p1, v6

    if-ge v8, v3, :cond_72

    add-int/lit8 v9, v2, 0x1

    int-to-byte v8, v8

    .line 400
    aput-byte v8, v1, v2

    move v2, v9

    goto :goto_d7

    :cond_72
    const/16 v9, 0x800

    if-ge v8, v9, :cond_88

    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x6

    add-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    .line 403
    aput-byte v10, v1, v2

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v8, v8, 0x3f

    add-int/2addr v8, v3

    int-to-byte v8, v8

    .line 404
    aput-byte v8, v1, v9

    goto :goto_d7

    :cond_88
    if-lt v8, v5, :cond_bc

    if-gt v8, v4, :cond_bc

    add-int/lit8 v6, v6, 0x1

    .line 418
    aget-char v9, p1, v6

    add-int/lit8 v10, v2, 0x1

    add-int/lit8 v11, v8, 0x40

    const/16 v12, 0xf0

    int-to-byte v12, v12

    .line 420
    aput-byte v12, v1, v2

    add-int/lit8 v12, v2, 0x2

    shr-int/lit8 v11, v11, 0x2

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 421
    aput-byte v11, v1, v10

    add-int/lit8 v10, v2, 0x3

    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0xf

    shl-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x30

    add-int/2addr v11, v8

    or-int/lit16 v8, v11, 0x80

    int-to-byte v8, v8

    .line 422
    aput-byte v8, v1, v12

    add-int/lit8 v2, v2, 0x4

    and-int/lit8 v8, v9, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    .line 423
    aput-byte v8, v1, v10

    goto :goto_d7

    :cond_bc
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0xc

    add-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    .line 427
    aput-byte v10, v1, v2

    add-int/lit8 v10, v2, 0x2

    shr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x3f

    add-int/2addr v11, v3

    int-to-byte v11, v11

    .line 428
    aput-byte v11, v1, v9

    add-int/lit8 v2, v2, 0x3

    and-int/lit8 v8, v8, 0x3f

    add-int/2addr v8, v3

    int-to-byte v8, v8

    .line 429
    aput-byte v8, v1, v10

    :goto_d7
    add-int/2addr v6, v7

    goto :goto_65

    .line 433
    :cond_d9
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 v0, p3, 0x3

    .line 188
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    const/16 v2, 0x4000

    rsub-int v1, v1, 0x4000

    const v3, 0xdbff

    const v4, 0xd800

    const/4 v5, 0x1

    if-lt v0, v1, :cond_43

    .line 191
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    if-le v0, v2, :cond_43

    .line 202
    div-int/lit16 v0, p3, 0x1555

    .line 204
    rem-int/lit16 v1, p3, 0x1555

    if-lez v1, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    move v1, p2

    :goto_1f
    if-gt v5, v0, :cond_42

    int-to-long v6, p3

    int-to-long v8, v5

    mul-long/2addr v6, v8

    int-to-long v8, v0

    .line 212
    div-long/2addr v6, v8

    long-to-int v2, v6

    add-int/2addr v2, p2

    add-int/lit8 v6, v2, -0x1

    .line 217
    aget-char v6, p1, v6

    if-lt v6, v4, :cond_39

    if-gt v6, v3, :cond_39

    add-int v6, p2, p3

    if-ge v2, v6, :cond_37

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_37
    add-int/lit8 v2, v2, -0x1

    :cond_39
    :goto_39
    sub-int v6, v2, v1

    .line 244
    invoke-virtual {p0, p1, v1, v6}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    add-int/lit8 v5, v5, 0x1

    move v1, v2

    goto :goto_1f

    :cond_42
    return-void

    :cond_43
    add-int/2addr p3, p2

    .line 253
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    .line 254
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    :goto_48
    const/16 v2, 0x80

    if-ge p2, p3, :cond_59

    .line 263
    aget-char v6, p1, p2

    if-ge v6, v2, :cond_59

    add-int/lit8 v2, v1, 0x1

    int-to-byte v6, v6

    .line 264
    aput-byte v6, v0, v1

    add-int/lit8 p2, p2, 0x1

    move v1, v2

    goto :goto_48

    :cond_59
    :goto_59
    if-ge p2, p3, :cond_cd

    .line 269
    aget-char v6, p1, p2

    if-ge v6, v2, :cond_66

    add-int/lit8 v7, v1, 0x1

    int-to-byte v6, v6

    .line 272
    aput-byte v6, v0, v1

    move v1, v7

    goto :goto_cb

    :cond_66
    const/16 v7, 0x800

    if-ge v6, v7, :cond_7c

    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v8, v6, 0x6

    add-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    .line 275
    aput-byte v8, v0, v1

    add-int/lit8 v1, v1, 0x2

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v6, v2

    int-to-byte v6, v6

    .line 276
    aput-byte v6, v0, v7

    goto :goto_cb

    :cond_7c
    if-lt v6, v4, :cond_b0

    if-gt v6, v3, :cond_b0

    add-int/lit8 p2, p2, 0x1

    .line 290
    aget-char v7, p1, p2

    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v6, 0x40

    const/16 v10, 0xf0

    int-to-byte v10, v10

    .line 292
    aput-byte v10, v0, v1

    add-int/lit8 v10, v1, 0x2

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v2

    int-to-byte v9, v9

    .line 293
    aput-byte v9, v0, v8

    add-int/lit8 v8, v1, 0x3

    shr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x30

    add-int/2addr v9, v6

    or-int/lit16 v6, v9, 0x80

    int-to-byte v6, v6

    .line 294
    aput-byte v6, v0, v10

    add-int/lit8 v1, v1, 0x4

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 295
    aput-byte v6, v0, v8

    goto :goto_cb

    :cond_b0
    add-int/lit8 v7, v1, 0x1

    shr-int/lit8 v8, v6, 0xc

    add-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    .line 299
    aput-byte v8, v0, v1

    add-int/lit8 v8, v1, 0x2

    shr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    add-int/2addr v9, v2

    int-to-byte v9, v9

    .line 300
    aput-byte v9, v0, v7

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v6, v2

    int-to-byte v6, v6

    .line 301
    aput-byte v6, v0, v8

    :goto_cb
    add-int/2addr p2, v5

    goto :goto_59

    .line 305
    :cond_cd
    iput v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    return-void
.end method
