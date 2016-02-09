.class final Lorg/apache/xml/serializer/WriterToUTF8Buffered;
.super Ljava/io/Writer;
.source "WriterToUTF8Buffered.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# static fields
.field private static final BYTES_MAX:I = 0x4000

.field private static final CHARS_MAX:I = 0x1555


# instance fields
.field private count:I

.field private final m_inputChars:[C

.field private final m_os:Ljava/io/OutputStream;

.field private final m_outputBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 83
    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    #@5
    .line 86
    const/16 v0, 0x4003

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@b
    .line 90
    const/16 v0, 0x1557

    #@d
    new-array v0, v0, [C

    #@f
    iput-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    #@11
    .line 91
    const/4 v0, 0x0

    #@12
    iput v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@14
    .line 81
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
    .line 481
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    #@3
    .line 482
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@8
    .line 479
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
    .line 466
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    #@3
    .line 467
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@8
    .line 464
    return-void
.end method

.method public flushBuffer()V
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
    .line 445
    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 447
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    #@7
    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@9
    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@b
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@e
    .line 449
    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@10
    .line 442
    :cond_0
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 500
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x80

    #@2
    .line 138
    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@4
    const/16 v1, 0x4000

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 139
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    #@b
    .line 141
    :cond_0
    if-ge p1, v2, :cond_1

    #@d
    .line 143
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@f
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@11
    add-int/lit8 v2, v1, 0x1

    #@13
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@15
    int-to-byte v2, p1

    #@16
    aput-byte v2, v0, v1

    #@18
    .line 132
    :goto_0
    return-void

    #@19
    .line 145
    :cond_1
    const/16 v0, 0x800

    #@1b
    if-ge p1, v0, :cond_2

    #@1d
    .line 147
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@1f
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@21
    add-int/lit8 v2, v1, 0x1

    #@23
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@25
    shr-int/lit8 v2, p1, 0x6

    #@27
    add-int/lit16 v2, v2, 0xc0

    #@29
    int-to-byte v2, v2

    #@2a
    aput-byte v2, v0, v1

    #@2c
    .line 148
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@2e
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@30
    add-int/lit8 v2, v1, 0x1

    #@32
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@34
    and-int/lit8 v2, p1, 0x3f

    #@36
    add-int/lit16 v2, v2, 0x80

    #@38
    int-to-byte v2, v2

    #@39
    aput-byte v2, v0, v1

    #@3b
    goto :goto_0

    #@3c
    .line 150
    :cond_2
    const/high16 v0, 0x10000

    #@3e
    if-ge p1, v0, :cond_3

    #@40
    .line 152
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@42
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@44
    add-int/lit8 v2, v1, 0x1

    #@46
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@48
    shr-int/lit8 v2, p1, 0xc

    #@4a
    add-int/lit16 v2, v2, 0xe0

    #@4c
    int-to-byte v2, v2

    #@4d
    aput-byte v2, v0, v1

    #@4f
    .line 153
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@51
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@53
    add-int/lit8 v2, v1, 0x1

    #@55
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@57
    shr-int/lit8 v2, p1, 0x6

    #@59
    and-int/lit8 v2, v2, 0x3f

    #@5b
    add-int/lit16 v2, v2, 0x80

    #@5d
    int-to-byte v2, v2

    #@5e
    aput-byte v2, v0, v1

    #@60
    .line 154
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@62
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@64
    add-int/lit8 v2, v1, 0x1

    #@66
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@68
    and-int/lit8 v2, p1, 0x3f

    #@6a
    add-int/lit16 v2, v2, 0x80

    #@6c
    int-to-byte v2, v2

    #@6d
    aput-byte v2, v0, v1

    #@6f
    goto :goto_0

    #@70
    .line 158
    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@72
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@74
    add-int/lit8 v2, v1, 0x1

    #@76
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@78
    shr-int/lit8 v2, p1, 0x12

    #@7a
    add-int/lit16 v2, v2, 0xf0

    #@7c
    int-to-byte v2, v2

    #@7d
    aput-byte v2, v0, v1

    #@7f
    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@81
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@83
    add-int/lit8 v2, v1, 0x1

    #@85
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@87
    shr-int/lit8 v2, p1, 0xc

    #@89
    and-int/lit8 v2, v2, 0x3f

    #@8b
    add-int/lit16 v2, v2, 0x80

    #@8d
    int-to-byte v2, v2

    #@8e
    aput-byte v2, v0, v1

    #@90
    .line 160
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@92
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@94
    add-int/lit8 v2, v1, 0x1

    #@96
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@98
    shr-int/lit8 v2, p1, 0x6

    #@9a
    and-int/lit8 v2, v2, 0x3f

    #@9c
    add-int/lit16 v2, v2, 0x80

    #@9e
    int-to-byte v2, v2

    #@9f
    aput-byte v2, v0, v1

    #@a1
    .line 161
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@a3
    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@a5
    add-int/lit8 v2, v1, 0x1

    #@a7
    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@a9
    and-int/lit8 v2, p1, 0x3f

    #@ab
    add-int/lit16 v2, v2, 0x80

    #@ad
    int-to-byte v2, v2

    #@ae
    aput-byte v2, v0, v1

    #@b0
    goto/16 :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 26
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3
    move-result v15

    #@4
    .line 323
    .local v15, "length":I
    mul-int/lit8 v16, v15, 0x3

    #@6
    .line 325
    .local v16, "lengthx3":I
    move-object/from16 v0, p0

    #@8
    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@a
    move/from16 v22, v0

    #@c
    move/from16 v0, v22

    #@e
    rsub-int v0, v0, 0x4000

    #@10
    move/from16 v22, v0

    #@12
    move/from16 v0, v16

    #@14
    move/from16 v1, v22

    #@16
    if-lt v0, v1, :cond_3

    #@18
    .line 328
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    #@1b
    .line 330
    const/16 v22, 0x4000

    #@1d
    move/from16 v0, v16

    #@1f
    move/from16 v1, v22

    #@21
    if-le v0, v1, :cond_3

    #@23
    .line 336
    const/16 v20, 0x0

    #@25
    .line 337
    .local v20, "start":I
    div-int/lit16 v0, v15, 0x1555

    #@27
    move/from16 v19, v0

    #@29
    .line 339
    .local v19, "split":I
    rem-int/lit16 v0, v15, 0x1555

    #@2b
    move/from16 v22, v0

    #@2d
    if-lez v22, :cond_1

    #@2f
    .line 340
    add-int/lit8 v8, v19, 0x1

    #@31
    .line 343
    .local v8, "chunks":I
    :goto_0
    const/4 v11, 0x0

    #@32
    .line 344
    .local v11, "end_chunk":I
    const/4 v7, 0x1

    #@33
    .local v7, "chunk":I
    :goto_1
    if-gt v7, v8, :cond_2

    #@35
    .line 346
    move/from16 v21, v11

    #@37
    .line 347
    .local v21, "start_chunk":I
    int-to-long v0, v15

    #@38
    move-wide/from16 v22, v0

    #@3a
    int-to-long v0, v7

    #@3b
    move-wide/from16 v24, v0

    #@3d
    mul-long v22, v22, v24

    #@3f
    int-to-long v0, v8

    #@40
    move-wide/from16 v24, v0

    #@42
    div-long v22, v22, v24

    #@44
    move-wide/from16 v0, v22

    #@46
    long-to-int v0, v0

    #@47
    move/from16 v22, v0

    #@49
    add-int/lit8 v11, v22, 0x0

    #@4b
    .line 348
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    #@4f
    move-object/from16 v22, v0

    #@51
    const/16 v23, 0x0

    #@53
    move-object/from16 v0, p1

    #@55
    move/from16 v1, v21

    #@57
    move-object/from16 v2, v22

    #@59
    move/from16 v3, v23

    #@5b
    invoke-virtual {v0, v1, v11, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@5e
    .line 349
    sub-int v14, v11, v21

    #@60
    .line 354
    .local v14, "len_chunk":I
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    #@64
    move-object/from16 v22, v0

    #@66
    add-int/lit8 v23, v14, -0x1

    #@68
    aget-char v5, v22, v23

    #@6a
    .line 355
    .local v5, "c":C
    const v22, 0xd800

    #@6d
    move/from16 v0, v22

    #@6f
    if-lt v5, v0, :cond_0

    #@71
    const v22, 0xdbff

    #@74
    move/from16 v0, v22

    #@76
    if-gt v5, v0, :cond_0

    #@78
    .line 359
    add-int/lit8 v11, v11, -0x1

    #@7a
    .line 360
    add-int/lit8 v14, v14, -0x1

    #@7c
    .line 361
    if-ne v7, v8, :cond_0

    #@7e
    .line 371
    :cond_0
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    #@82
    move-object/from16 v22, v0

    #@84
    const/16 v23, 0x0

    #@86
    move-object/from16 v0, p0

    #@88
    move-object/from16 v1, v22

    #@8a
    move/from16 v2, v23

    #@8c
    invoke-virtual {v0, v1, v2, v14}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    #@8f
    .line 344
    add-int/lit8 v7, v7, 0x1

    #@91
    goto :goto_1

    #@92
    .line 342
    .end local v5    # "c":C
    .end local v7    # "chunk":I
    .end local v8    # "chunks":I
    .end local v11    # "end_chunk":I
    .end local v14    # "len_chunk":I
    .end local v21    # "start_chunk":I
    :cond_1
    move/from16 v8, v19

    #@94
    .restart local v8    # "chunks":I
    goto :goto_0

    #@95
    .line 373
    .restart local v7    # "chunk":I
    .restart local v11    # "end_chunk":I
    :cond_2
    return-void

    #@96
    .line 378
    .end local v7    # "chunk":I
    .end local v8    # "chunks":I
    .end local v11    # "end_chunk":I
    .end local v19    # "split":I
    .end local v20    # "start":I
    :cond_3
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    #@9a
    move-object/from16 v22, v0

    #@9c
    const/16 v23, 0x0

    #@9e
    const/16 v24, 0x0

    #@a0
    move-object/from16 v0, p1

    #@a2
    move/from16 v1, v23

    #@a4
    move-object/from16 v2, v22

    #@a6
    move/from16 v3, v24

    #@a8
    invoke-virtual {v0, v1, v15, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@ab
    .line 379
    move-object/from16 v0, p0

    #@ad
    iget-object v6, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    #@af
    .line 380
    .local v6, "chars":[C
    move/from16 v18, v15

    #@b1
    .line 381
    .local v18, "n":I
    move-object/from16 v0, p0

    #@b3
    iget-object v4, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@b5
    .line 382
    .local v4, "buf_loc":[B
    move-object/from16 v0, p0

    #@b7
    iget v9, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@b9
    .line 383
    .local v9, "count_loc":I
    const/4 v13, 0x0

    #@ba
    .local v13, "i":I
    move v10, v9

    #@bb
    .line 391
    .end local v9    # "count_loc":I
    .local v10, "count_loc":I
    :goto_2
    move/from16 v0, v18

    #@bd
    if-ge v13, v0, :cond_4

    #@bf
    aget-char v5, v6, v13

    #@c1
    .restart local v5    # "c":C
    const/16 v22, 0x80

    #@c3
    move/from16 v0, v22

    #@c5
    if-ge v5, v0, :cond_4

    #@c7
    .line 392
    add-int/lit8 v9, v10, 0x1

    #@c9
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    int-to-byte v0, v5

    #@ca
    move/from16 v22, v0

    #@cc
    aput-byte v22, v4, v10

    #@ce
    .line 391
    add-int/lit8 v13, v13, 0x1

    #@d0
    move v10, v9

    #@d1
    .end local v9    # "count_loc":I
    .restart local v10    # "count_loc":I
    goto :goto_2

    #@d2
    .line 394
    .end local v5    # "c":C
    :cond_4
    :goto_3
    move/from16 v0, v18

    #@d4
    if-ge v13, v0, :cond_8

    #@d6
    .line 397
    aget-char v5, v6, v13

    #@d8
    .line 399
    .restart local v5    # "c":C
    const/16 v22, 0x80

    #@da
    move/from16 v0, v22

    #@dc
    if-ge v5, v0, :cond_5

    #@de
    .line 400
    add-int/lit8 v9, v10, 0x1

    #@e0
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    int-to-byte v0, v5

    #@e1
    move/from16 v22, v0

    #@e3
    aput-byte v22, v4, v10

    #@e5
    .line 394
    :goto_4
    add-int/lit8 v13, v13, 0x1

    #@e7
    move v10, v9

    #@e8
    .end local v9    # "count_loc":I
    .restart local v10    # "count_loc":I
    goto :goto_3

    #@e9
    .line 401
    :cond_5
    const/16 v22, 0x800

    #@eb
    move/from16 v0, v22

    #@ed
    if-ge v5, v0, :cond_6

    #@ef
    .line 403
    add-int/lit8 v9, v10, 0x1

    #@f1
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    shr-int/lit8 v22, v5, 0x6

    #@f3
    move/from16 v0, v22

    #@f5
    add-int/lit16 v0, v0, 0xc0

    #@f7
    move/from16 v22, v0

    #@f9
    move/from16 v0, v22

    #@fb
    int-to-byte v0, v0

    #@fc
    move/from16 v22, v0

    #@fe
    aput-byte v22, v4, v10

    #@100
    .line 404
    add-int/lit8 v10, v9, 0x1

    #@102
    .end local v9    # "count_loc":I
    .restart local v10    # "count_loc":I
    and-int/lit8 v22, v5, 0x3f

    #@104
    move/from16 v0, v22

    #@106
    add-int/lit16 v0, v0, 0x80

    #@108
    move/from16 v22, v0

    #@10a
    move/from16 v0, v22

    #@10c
    int-to-byte v0, v0

    #@10d
    move/from16 v22, v0

    #@10f
    aput-byte v22, v4, v9

    #@111
    move v9, v10

    #@112
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    goto :goto_4

    #@113
    .line 413
    .end local v9    # "count_loc":I
    .restart local v10    # "count_loc":I
    :cond_6
    const v22, 0xd800

    #@116
    move/from16 v0, v22

    #@118
    if-lt v5, v0, :cond_7

    #@11a
    const v22, 0xdbff

    #@11d
    move/from16 v0, v22

    #@11f
    if-gt v5, v0, :cond_7

    #@121
    .line 416
    move v12, v5

    #@122
    .line 417
    .local v12, "high":C
    add-int/lit8 v13, v13, 0x1

    #@124
    .line 418
    aget-char v17, v6, v13

    #@126
    .line 420
    .local v17, "low":C
    add-int/lit8 v9, v10, 0x1

    #@128
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    add-int/lit8 v22, v12, 0x40

    #@12a
    shr-int/lit8 v22, v22, 0x8

    #@12c
    move/from16 v0, v22

    #@12e
    and-int/lit16 v0, v0, 0xf0

    #@130
    move/from16 v22, v0

    #@132
    move/from16 v0, v22

    #@134
    or-int/lit16 v0, v0, 0xf0

    #@136
    move/from16 v22, v0

    #@138
    move/from16 v0, v22

    #@13a
    int-to-byte v0, v0

    #@13b
    move/from16 v22, v0

    #@13d
    aput-byte v22, v4, v10

    #@13f
    .line 421
    add-int/lit8 v10, v9, 0x1

    #@141
    .end local v9    # "count_loc":I
    .restart local v10    # "count_loc":I
    add-int/lit8 v22, v12, 0x40

    #@143
    shr-int/lit8 v22, v22, 0x2

    #@145
    and-int/lit8 v22, v22, 0x3f

    #@147
    move/from16 v0, v22

    #@149
    or-int/lit16 v0, v0, 0x80

    #@14b
    move/from16 v22, v0

    #@14d
    move/from16 v0, v22

    #@14f
    int-to-byte v0, v0

    #@150
    move/from16 v22, v0

    #@152
    aput-byte v22, v4, v9

    #@154
    .line 422
    add-int/lit8 v9, v10, 0x1

    #@156
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    shr-int/lit8 v22, v17, 0x6

    #@158
    and-int/lit8 v22, v22, 0xf

    #@15a
    shl-int/lit8 v23, v12, 0x4

    #@15c
    and-int/lit8 v23, v23, 0x30

    #@15e
    add-int v22, v22, v23

    #@160
    move/from16 v0, v22

    #@162
    or-int/lit16 v0, v0, 0x80

    #@164
    move/from16 v22, v0

    #@166
    move/from16 v0, v22

    #@168
    int-to-byte v0, v0

    #@169
    move/from16 v22, v0

    #@16b
    aput-byte v22, v4, v10

    #@16d
    .line 423
    add-int/lit8 v10, v9, 0x1

    #@16f
    .end local v9    # "count_loc":I
    .restart local v10    # "count_loc":I
    and-int/lit8 v22, v17, 0x3f

    #@171
    move/from16 v0, v22

    #@173
    or-int/lit16 v0, v0, 0x80

    #@175
    move/from16 v22, v0

    #@177
    move/from16 v0, v22

    #@179
    int-to-byte v0, v0

    #@17a
    move/from16 v22, v0

    #@17c
    aput-byte v22, v4, v9

    #@17e
    move v9, v10

    #@17f
    .line 414
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    goto/16 :goto_4

    #@181
    .line 427
    .end local v9    # "count_loc":I
    .end local v12    # "high":C
    .end local v17    # "low":C
    .restart local v10    # "count_loc":I
    :cond_7
    add-int/lit8 v9, v10, 0x1

    #@183
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    shr-int/lit8 v22, v5, 0xc

    #@185
    move/from16 v0, v22

    #@187
    add-int/lit16 v0, v0, 0xe0

    #@189
    move/from16 v22, v0

    #@18b
    move/from16 v0, v22

    #@18d
    int-to-byte v0, v0

    #@18e
    move/from16 v22, v0

    #@190
    aput-byte v22, v4, v10

    #@192
    .line 428
    add-int/lit8 v10, v9, 0x1

    #@194
    .end local v9    # "count_loc":I
    .restart local v10    # "count_loc":I
    shr-int/lit8 v22, v5, 0x6

    #@196
    and-int/lit8 v22, v22, 0x3f

    #@198
    move/from16 v0, v22

    #@19a
    add-int/lit16 v0, v0, 0x80

    #@19c
    move/from16 v22, v0

    #@19e
    move/from16 v0, v22

    #@1a0
    int-to-byte v0, v0

    #@1a1
    move/from16 v22, v0

    #@1a3
    aput-byte v22, v4, v9

    #@1a5
    .line 429
    add-int/lit8 v9, v10, 0x1

    #@1a7
    .end local v10    # "count_loc":I
    .restart local v9    # "count_loc":I
    and-int/lit8 v22, v5, 0x3f

    #@1a9
    move/from16 v0, v22

    #@1ab
    add-int/lit16 v0, v0, 0x80

    #@1ad
    move/from16 v22, v0

    #@1af
    move/from16 v0, v22

    #@1b1
    int-to-byte v0, v0

    #@1b2
    move/from16 v22, v0

    #@1b4
    aput-byte v22, v4, v10

    #@1b6
    goto/16 :goto_4

    #@1b8
    .line 433
    .end local v5    # "c":C
    .end local v9    # "count_loc":I
    .restart local v10    # "count_loc":I
    :cond_8
    move-object/from16 v0, p0

    #@1ba
    iput v10, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@1bc
    .line 316
    return-void
.end method

.method public write([CII)V
    .locals 24
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    mul-int/lit8 v15, p3, 0x3

    #@2
    .line 188
    .local v15, "lengthx3":I
    move-object/from16 v0, p0

    #@4
    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@6
    move/from16 v20, v0

    #@8
    move/from16 v0, v20

    #@a
    rsub-int v0, v0, 0x4000

    #@c
    move/from16 v20, v0

    #@e
    move/from16 v0, v20

    #@10
    if-lt v15, v0, :cond_4

    #@12
    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    #@15
    .line 193
    const/16 v20, 0x4000

    #@17
    move/from16 v0, v20

    #@19
    if-le v15, v0, :cond_4

    #@1b
    .line 202
    move/from16 v0, p3

    #@1d
    div-int/lit16 v0, v0, 0x1555

    #@1f
    move/from16 v18, v0

    #@21
    .line 204
    .local v18, "split":I
    move/from16 v0, p3

    #@23
    rem-int/lit16 v0, v0, 0x1555

    #@25
    move/from16 v20, v0

    #@27
    if-lez v20, :cond_1

    #@29
    .line 205
    add-int/lit8 v7, v18, 0x1

    #@2b
    .line 208
    .local v7, "chunks":I
    :goto_0
    move/from16 v10, p2

    #@2d
    .line 209
    .local v10, "end_chunk":I
    const/4 v6, 0x1

    #@2e
    .local v6, "chunk":I
    :goto_1
    if-gt v6, v7, :cond_3

    #@30
    .line 211
    move/from16 v19, v10

    #@32
    .line 212
    .local v19, "start_chunk":I
    move/from16 v0, p3

    #@34
    int-to-long v0, v0

    #@35
    move-wide/from16 v20, v0

    #@37
    int-to-long v0, v6

    #@38
    move-wide/from16 v22, v0

    #@3a
    mul-long v20, v20, v22

    #@3c
    int-to-long v0, v7

    #@3d
    move-wide/from16 v22, v0

    #@3f
    div-long v20, v20, v22

    #@41
    move-wide/from16 v0, v20

    #@43
    long-to-int v0, v0

    #@44
    move/from16 v20, v0

    #@46
    add-int v10, p2, v20

    #@48
    .line 217
    add-int/lit8 v20, v10, -0x1

    #@4a
    aget-char v5, p1, v20

    #@4c
    .line 218
    .local v5, "c":C
    add-int/lit8 v20, v10, -0x1

    #@4e
    aget-char v13, p1, v20

    #@50
    .line 219
    .local v13, "ic":I
    const v20, 0xd800

    #@53
    move/from16 v0, v20

    #@55
    if-lt v5, v0, :cond_0

    #@57
    const v20, 0xdbff

    #@5a
    move/from16 v0, v20

    #@5c
    if-gt v5, v0, :cond_0

    #@5e
    .line 225
    add-int v20, p2, p3

    #@60
    move/from16 v0, v20

    #@62
    if-ge v10, v0, :cond_2

    #@64
    .line 228
    add-int/lit8 v10, v10, 0x1

    #@66
    .line 243
    :cond_0
    :goto_2
    sub-int v14, v10, v19

    #@68
    .line 244
    .local v14, "len_chunk":I
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, p1

    #@6c
    move/from16 v2, v19

    #@6e
    invoke-virtual {v0, v1, v2, v14}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    #@71
    .line 209
    add-int/lit8 v6, v6, 0x1

    #@73
    goto :goto_1

    #@74
    .line 207
    .end local v5    # "c":C
    .end local v6    # "chunk":I
    .end local v7    # "chunks":I
    .end local v10    # "end_chunk":I
    .end local v13    # "ic":I
    .end local v14    # "len_chunk":I
    .end local v19    # "start_chunk":I
    :cond_1
    move/from16 v7, v18

    #@76
    .restart local v7    # "chunks":I
    goto :goto_0

    #@77
    .line 238
    .restart local v5    # "c":C
    .restart local v6    # "chunk":I
    .restart local v10    # "end_chunk":I
    .restart local v13    # "ic":I
    .restart local v19    # "start_chunk":I
    :cond_2
    add-int/lit8 v10, v10, -0x1

    #@79
    goto :goto_2

    #@7a
    .line 246
    .end local v5    # "c":C
    .end local v13    # "ic":I
    .end local v19    # "start_chunk":I
    :cond_3
    return-void

    #@7b
    .line 252
    .end local v6    # "chunk":I
    .end local v7    # "chunks":I
    .end local v10    # "end_chunk":I
    .end local v18    # "split":I
    :cond_4
    add-int v17, p3, p2

    #@7d
    .line 253
    .local v17, "n":I
    move-object/from16 v0, p0

    #@7f
    iget-object v4, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    #@81
    .line 254
    .local v4, "buf_loc":[B
    move-object/from16 v0, p0

    #@83
    iget v8, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@85
    .line 255
    .local v8, "count_loc":I
    move/from16 v12, p2

    #@87
    .local v12, "i":I
    move v9, v8

    #@88
    .line 263
    .end local v8    # "count_loc":I
    .local v9, "count_loc":I
    :goto_3
    move/from16 v0, v17

    #@8a
    if-ge v12, v0, :cond_5

    #@8c
    aget-char v5, p1, v12

    #@8e
    .restart local v5    # "c":C
    const/16 v20, 0x80

    #@90
    move/from16 v0, v20

    #@92
    if-ge v5, v0, :cond_5

    #@94
    .line 264
    add-int/lit8 v8, v9, 0x1

    #@96
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    int-to-byte v0, v5

    #@97
    move/from16 v20, v0

    #@99
    aput-byte v20, v4, v9

    #@9b
    .line 263
    add-int/lit8 v12, v12, 0x1

    #@9d
    move v9, v8

    #@9e
    .end local v8    # "count_loc":I
    .restart local v9    # "count_loc":I
    goto :goto_3

    #@9f
    .line 266
    .end local v5    # "c":C
    :cond_5
    :goto_4
    move/from16 v0, v17

    #@a1
    if-ge v12, v0, :cond_9

    #@a3
    .line 269
    aget-char v5, p1, v12

    #@a5
    .line 271
    .restart local v5    # "c":C
    const/16 v20, 0x80

    #@a7
    move/from16 v0, v20

    #@a9
    if-ge v5, v0, :cond_6

    #@ab
    .line 272
    add-int/lit8 v8, v9, 0x1

    #@ad
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    int-to-byte v0, v5

    #@ae
    move/from16 v20, v0

    #@b0
    aput-byte v20, v4, v9

    #@b2
    .line 266
    :goto_5
    add-int/lit8 v12, v12, 0x1

    #@b4
    move v9, v8

    #@b5
    .end local v8    # "count_loc":I
    .restart local v9    # "count_loc":I
    goto :goto_4

    #@b6
    .line 273
    :cond_6
    const/16 v20, 0x800

    #@b8
    move/from16 v0, v20

    #@ba
    if-ge v5, v0, :cond_7

    #@bc
    .line 275
    add-int/lit8 v8, v9, 0x1

    #@be
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    shr-int/lit8 v20, v5, 0x6

    #@c0
    move/from16 v0, v20

    #@c2
    add-int/lit16 v0, v0, 0xc0

    #@c4
    move/from16 v20, v0

    #@c6
    move/from16 v0, v20

    #@c8
    int-to-byte v0, v0

    #@c9
    move/from16 v20, v0

    #@cb
    aput-byte v20, v4, v9

    #@cd
    .line 276
    add-int/lit8 v9, v8, 0x1

    #@cf
    .end local v8    # "count_loc":I
    .restart local v9    # "count_loc":I
    and-int/lit8 v20, v5, 0x3f

    #@d1
    move/from16 v0, v20

    #@d3
    add-int/lit16 v0, v0, 0x80

    #@d5
    move/from16 v20, v0

    #@d7
    move/from16 v0, v20

    #@d9
    int-to-byte v0, v0

    #@da
    move/from16 v20, v0

    #@dc
    aput-byte v20, v4, v8

    #@de
    move v8, v9

    #@df
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    goto :goto_5

    #@e0
    .line 285
    .end local v8    # "count_loc":I
    .restart local v9    # "count_loc":I
    :cond_7
    const v20, 0xd800

    #@e3
    move/from16 v0, v20

    #@e5
    if-lt v5, v0, :cond_8

    #@e7
    const v20, 0xdbff

    #@ea
    move/from16 v0, v20

    #@ec
    if-gt v5, v0, :cond_8

    #@ee
    .line 288
    move v11, v5

    #@ef
    .line 289
    .local v11, "high":C
    add-int/lit8 v12, v12, 0x1

    #@f1
    .line 290
    aget-char v16, p1, v12

    #@f3
    .line 292
    .local v16, "low":C
    add-int/lit8 v8, v9, 0x1

    #@f5
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    add-int/lit8 v20, v11, 0x40

    #@f7
    shr-int/lit8 v20, v20, 0x8

    #@f9
    move/from16 v0, v20

    #@fb
    and-int/lit16 v0, v0, 0xf0

    #@fd
    move/from16 v20, v0

    #@ff
    move/from16 v0, v20

    #@101
    or-int/lit16 v0, v0, 0xf0

    #@103
    move/from16 v20, v0

    #@105
    move/from16 v0, v20

    #@107
    int-to-byte v0, v0

    #@108
    move/from16 v20, v0

    #@10a
    aput-byte v20, v4, v9

    #@10c
    .line 293
    add-int/lit8 v9, v8, 0x1

    #@10e
    .end local v8    # "count_loc":I
    .restart local v9    # "count_loc":I
    add-int/lit8 v20, v11, 0x40

    #@110
    shr-int/lit8 v20, v20, 0x2

    #@112
    and-int/lit8 v20, v20, 0x3f

    #@114
    move/from16 v0, v20

    #@116
    or-int/lit16 v0, v0, 0x80

    #@118
    move/from16 v20, v0

    #@11a
    move/from16 v0, v20

    #@11c
    int-to-byte v0, v0

    #@11d
    move/from16 v20, v0

    #@11f
    aput-byte v20, v4, v8

    #@121
    .line 294
    add-int/lit8 v8, v9, 0x1

    #@123
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    shr-int/lit8 v20, v16, 0x6

    #@125
    and-int/lit8 v20, v20, 0xf

    #@127
    shl-int/lit8 v21, v11, 0x4

    #@129
    and-int/lit8 v21, v21, 0x30

    #@12b
    add-int v20, v20, v21

    #@12d
    move/from16 v0, v20

    #@12f
    or-int/lit16 v0, v0, 0x80

    #@131
    move/from16 v20, v0

    #@133
    move/from16 v0, v20

    #@135
    int-to-byte v0, v0

    #@136
    move/from16 v20, v0

    #@138
    aput-byte v20, v4, v9

    #@13a
    .line 295
    add-int/lit8 v9, v8, 0x1

    #@13c
    .end local v8    # "count_loc":I
    .restart local v9    # "count_loc":I
    and-int/lit8 v20, v16, 0x3f

    #@13e
    move/from16 v0, v20

    #@140
    or-int/lit16 v0, v0, 0x80

    #@142
    move/from16 v20, v0

    #@144
    move/from16 v0, v20

    #@146
    int-to-byte v0, v0

    #@147
    move/from16 v20, v0

    #@149
    aput-byte v20, v4, v8

    #@14b
    move v8, v9

    #@14c
    .line 286
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    goto/16 :goto_5

    #@14e
    .line 299
    .end local v8    # "count_loc":I
    .end local v11    # "high":C
    .end local v16    # "low":C
    .restart local v9    # "count_loc":I
    :cond_8
    add-int/lit8 v8, v9, 0x1

    #@150
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    shr-int/lit8 v20, v5, 0xc

    #@152
    move/from16 v0, v20

    #@154
    add-int/lit16 v0, v0, 0xe0

    #@156
    move/from16 v20, v0

    #@158
    move/from16 v0, v20

    #@15a
    int-to-byte v0, v0

    #@15b
    move/from16 v20, v0

    #@15d
    aput-byte v20, v4, v9

    #@15f
    .line 300
    add-int/lit8 v9, v8, 0x1

    #@161
    .end local v8    # "count_loc":I
    .restart local v9    # "count_loc":I
    shr-int/lit8 v20, v5, 0x6

    #@163
    and-int/lit8 v20, v20, 0x3f

    #@165
    move/from16 v0, v20

    #@167
    add-int/lit16 v0, v0, 0x80

    #@169
    move/from16 v20, v0

    #@16b
    move/from16 v0, v20

    #@16d
    int-to-byte v0, v0

    #@16e
    move/from16 v20, v0

    #@170
    aput-byte v20, v4, v8

    #@172
    .line 301
    add-int/lit8 v8, v9, 0x1

    #@174
    .end local v9    # "count_loc":I
    .restart local v8    # "count_loc":I
    and-int/lit8 v20, v5, 0x3f

    #@176
    move/from16 v0, v20

    #@178
    add-int/lit16 v0, v0, 0x80

    #@17a
    move/from16 v20, v0

    #@17c
    move/from16 v0, v20

    #@17e
    int-to-byte v0, v0

    #@17f
    move/from16 v20, v0

    #@181
    aput-byte v20, v4, v9

    #@183
    goto/16 :goto_5

    #@185
    .line 305
    .end local v5    # "c":C
    .end local v8    # "count_loc":I
    .restart local v9    # "count_loc":I
    :cond_9
    move-object/from16 v0, p0

    #@187
    iput v9, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    #@189
    .line 179
    return-void
.end method
