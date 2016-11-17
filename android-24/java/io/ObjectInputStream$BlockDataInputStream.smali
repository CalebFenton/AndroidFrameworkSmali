.class Ljava/io/ObjectInputStream$BlockDataInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockDataInputStream"
.end annotation


# static fields
.field private static final CHAR_BUF_SIZE:I = 0x100

.field private static final HEADER_BLOCKED:I = -0x2

.field private static final MAX_BLOCK_SIZE:I = 0x400

.field private static final MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private blkmode:Z

.field private final buf:[B

.field private final cbuf:[C

.field private final din:Ljava/io/DataInputStream;

.field private end:I

.field private final hbuf:[B

.field private final in:Ljava/io/ObjectInputStream$PeekInputStream;

.field private pos:I

.field final synthetic this$0:Ljava/io/ObjectInputStream;

.field private unread:I


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "this$0"    # Ljava/io/ObjectInputStream;
    .param p2, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2406
    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    #@3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@6
    .line 2380
    const/16 v0, 0x400

    #@8
    new-array v0, v0, [B

    #@a
    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@c
    .line 2382
    const/4 v0, 0x5

    #@d
    new-array v0, v0, [B

    #@f
    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    #@11
    .line 2384
    const/16 v0, 0x100

    #@13
    new-array v0, v0, [C

    #@15
    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    #@17
    .line 2387
    iput-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@19
    .line 2391
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1b
    .line 2393
    const/4 v0, -0x1

    #@1c
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@1e
    .line 2395
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@20
    .line 2407
    new-instance v0, Ljava/io/ObjectInputStream$PeekInputStream;

    #@22
    invoke-direct {v0, p2}, Ljava/io/ObjectInputStream$PeekInputStream;-><init>(Ljava/io/InputStream;)V

    #@25
    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@27
    .line 2408
    new-instance v0, Ljava/io/DataInputStream;

    #@29
    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@2c
    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@2e
    .line 2406
    return-void
.end method

.method private readBlockHeader(Z)I
    .locals 9
    .param p1, "canBlock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v5, -0x2

    #@3
    .line 2463
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    #@5
    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get1(Ljava/io/ObjectInputStream;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 2470
    return v6

    #@c
    .line 2508
    .local v0, "avail":I
    .local v3, "tc":I
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@e
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    #@11
    .line 2509
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    #@13
    invoke-static {v4}, Ljava/io/ObjectInputStream;->-wrap3(Ljava/io/ObjectInputStream;)V

    #@16
    .line 2474
    .end local v0    # "avail":I
    .end local v3    # "tc":I
    :cond_0
    if-eqz p1, :cond_1

    #@18
    const v0, 0x7fffffff

    #@1b
    .line 2475
    .restart local v0    # "avail":I
    :goto_0
    if-nez v0, :cond_2

    #@1d
    .line 2476
    return v5

    #@1e
    .line 2474
    .end local v0    # "avail":I
    :cond_1
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@20
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    #@23
    move-result v0

    #@24
    .restart local v0    # "avail":I
    goto :goto_0

    #@25
    .line 2479
    :cond_2
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@27
    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    #@2a
    move-result v3

    #@2b
    .line 2480
    .restart local v3    # "tc":I
    packed-switch v3, :pswitch_data_0

    #@2e
    .line 2513
    :pswitch_1
    if-ltz v3, :cond_7

    #@30
    const/16 v4, 0x70

    #@32
    if-lt v3, v4, :cond_3

    #@34
    const/16 v4, 0x7e

    #@36
    if-le v3, v4, :cond_7

    #@38
    .line 2514
    :cond_3
    new-instance v4, Ljava/io/StreamCorruptedException;

    #@3a
    .line 2515
    const-string/jumbo v5, "invalid type code: %02X"

    #@3d
    const/4 v6, 0x1

    #@3e
    new-array v6, v6, [Ljava/lang/Object;

    #@40
    .line 2516
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v7

    #@44
    const/4 v8, 0x0

    #@45
    aput-object v7, v6, v8

    #@47
    .line 2515
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    .line 2514
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 2521
    .end local v0    # "avail":I
    .end local v3    # "tc":I
    :catch_0
    move-exception v1

    #@50
    .line 2522
    .local v1, "ex":Ljava/io/EOFException;
    new-instance v4, Ljava/io/StreamCorruptedException;

    #@52
    .line 2523
    const-string/jumbo v5, "unexpected EOF while reading block data header"

    #@55
    .line 2522
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@58
    throw v4

    #@59
    .line 2482
    .end local v1    # "ex":Ljava/io/EOFException;
    .restart local v0    # "avail":I
    .restart local v3    # "tc":I
    :pswitch_2
    if-ge v0, v7, :cond_4

    #@5b
    .line 2483
    return v5

    #@5c
    .line 2485
    :cond_4
    :try_start_1
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@5e
    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    #@60
    const/4 v6, 0x0

    #@61
    const/4 v7, 0x2

    #@62
    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@65
    .line 2486
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    #@67
    const/4 v5, 0x1

    #@68
    aget-byte v4, v4, v5

    #@6a
    and-int/lit16 v4, v4, 0xff

    #@6c
    return v4

    #@6d
    .line 2489
    :pswitch_3
    const/4 v4, 0x5

    #@6e
    if-ge v0, v4, :cond_5

    #@70
    .line 2490
    return v5

    #@71
    .line 2492
    :cond_5
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@73
    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    #@75
    const/4 v6, 0x0

    #@76
    const/4 v7, 0x5

    #@77
    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@7a
    .line 2493
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    #@7c
    const/4 v5, 0x1

    #@7d
    invoke-static {v4, v5}, Ljava/io/Bits;->getInt([BI)I

    #@80
    move-result v2

    #@81
    .line 2494
    .local v2, "len":I
    if-gez v2, :cond_6

    #@83
    .line 2495
    new-instance v4, Ljava/io/StreamCorruptedException;

    #@85
    .line 2496
    new-instance v5, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v6, "illegal block data header length: "

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    .line 2495
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    #@9d
    .line 2499
    :cond_6
    return v2

    #@9e
    .line 2518
    .end local v2    # "len":I
    :cond_7
    return v6

    #@9f
    .line 2480
    nop

    #@a0
    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private readUTFBody(J)Ljava/lang/String;
    .locals 7
    .param p1, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3049
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 3050
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@8
    if-nez v2, :cond_0

    #@a
    .line 3051
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@c
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@e
    .line 3054
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    #@10
    cmp-long v2, p1, v2

    #@12
    if-lez v2, :cond_5

    #@14
    .line 3055
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@16
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@18
    sub-int v0, v2, v3

    #@1a
    .line 3056
    .local v0, "avail":I
    const/4 v2, 0x3

    #@1b
    if-ge v0, v2, :cond_1

    #@1d
    int-to-long v2, v0

    #@1e
    cmp-long v2, v2, p1

    #@20
    if-nez v2, :cond_2

    #@22
    .line 3057
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFSpan(Ljava/lang/StringBuilder;J)J

    #@25
    move-result-wide v2

    #@26
    sub-long/2addr p1, v2

    #@27
    .line 3056
    goto :goto_0

    #@28
    .line 3059
    :cond_2
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@2a
    if-eqz v2, :cond_3

    #@2c
    .line 3061
    invoke-direct {p0, v1, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFChar(Ljava/lang/StringBuilder;J)I

    #@2f
    move-result v2

    #@30
    int-to-long v2, v2

    #@31
    sub-long/2addr p1, v2

    #@32
    goto :goto_0

    #@33
    .line 3064
    :cond_3
    if-lez v0, :cond_4

    #@35
    .line 3065
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@37
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@39
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@3b
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3e
    .line 3067
    :cond_4
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@40
    .line 3068
    const-wide/16 v2, 0x400

    #@42
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@45
    move-result-wide v2

    #@46
    long-to-int v2, v2

    #@47
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@49
    .line 3069
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@4b
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@4d
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@4f
    sub-int/2addr v4, v0

    #@50
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@53
    goto :goto_0

    #@54
    .line 3074
    .end local v0    # "avail":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    return-object v2
.end method

.method private readUTFChar(Ljava/lang/StringBuilder;J)I
    .locals 10
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x2

    #@2
    const/16 v6, 0x80

    #@4
    .line 3164
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@7
    move-result v3

    #@8
    and-int/lit16 v0, v3, 0xff

    #@a
    .line 3165
    .local v0, "b1":I
    shr-int/lit8 v3, v0, 0x4

    #@c
    packed-switch v3, :pswitch_data_0

    #@f
    .line 3208
    :pswitch_0
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@11
    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    #@14
    throw v3

    #@15
    .line 3174
    :pswitch_1
    int-to-char v3, v0

    #@16
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 3175
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 3179
    :pswitch_2
    cmp-long v3, p2, v8

    #@1d
    if-gez v3, :cond_0

    #@1f
    .line 3180
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@21
    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    #@24
    throw v3

    #@25
    .line 3182
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@28
    move-result v1

    #@29
    .line 3183
    .local v1, "b2":I
    and-int/lit16 v3, v1, 0xc0

    #@2b
    if-eq v3, v6, :cond_1

    #@2d
    .line 3184
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@2f
    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    #@32
    throw v3

    #@33
    .line 3186
    :cond_1
    and-int/lit8 v3, v0, 0x1f

    #@35
    shl-int/lit8 v3, v3, 0x6

    #@37
    .line 3187
    and-int/lit8 v4, v1, 0x3f

    #@39
    shl-int/lit8 v4, v4, 0x0

    #@3b
    .line 3186
    or-int/2addr v3, v4

    #@3c
    int-to-char v3, v3

    #@3d
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 3188
    const/4 v3, 0x2

    #@41
    return v3

    #@42
    .line 3191
    .end local v1    # "b2":I
    :pswitch_3
    const-wide/16 v4, 0x3

    #@44
    cmp-long v3, p2, v4

    #@46
    if-gez v3, :cond_3

    #@48
    .line 3192
    cmp-long v3, p2, v8

    #@4a
    if-nez v3, :cond_2

    #@4c
    .line 3193
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@4f
    .line 3195
    :cond_2
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@51
    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    #@54
    throw v3

    #@55
    .line 3197
    :cond_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@58
    move-result v1

    #@59
    .line 3198
    .restart local v1    # "b2":I
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    #@5c
    move-result v2

    #@5d
    .line 3199
    .local v2, "b3":I
    and-int/lit16 v3, v1, 0xc0

    #@5f
    if-ne v3, v6, :cond_4

    #@61
    and-int/lit16 v3, v2, 0xc0

    #@63
    if-eq v3, v6, :cond_5

    #@65
    .line 3200
    :cond_4
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@67
    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    #@6a
    throw v3

    #@6b
    .line 3202
    :cond_5
    and-int/lit8 v3, v0, 0xf

    #@6d
    shl-int/lit8 v3, v3, 0xc

    #@6f
    .line 3203
    and-int/lit8 v4, v1, 0x3f

    #@71
    shl-int/lit8 v4, v4, 0x6

    #@73
    .line 3202
    or-int/2addr v3, v4

    #@74
    .line 3204
    and-int/lit8 v4, v2, 0x3f

    #@76
    shl-int/lit8 v4, v4, 0x0

    #@78
    .line 3202
    or-int/2addr v3, v4

    #@79
    int-to-char v3, v3

    #@7a
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7d
    .line 3205
    const/4 v3, 0x3

    #@7e
    return v3

    #@7f
    .line 3165
    nop

    #@80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readUTFSpan(Ljava/lang/StringBuilder;J)J
    .locals 16
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3086
    const/4 v6, 0x0

    #@1
    .line 3087
    .local v6, "cpos":I
    move-object/from16 v0, p0

    #@3
    iget v10, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@5
    .line 3088
    .local v10, "start":I
    move-object/from16 v0, p0

    #@7
    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@9
    move-object/from16 v0, p0

    #@b
    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@d
    sub-int/2addr v12, v13

    #@e
    const/16 v13, 0x100

    #@10
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    #@13
    move-result v2

    #@14
    .line 3090
    .local v2, "avail":I
    move-object/from16 v0, p0

    #@16
    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@18
    int-to-long v14, v2

    #@19
    cmp-long v12, p2, v14

    #@1b
    if-lez v12, :cond_1

    #@1d
    add-int/lit8 v12, v2, -0x2

    #@1f
    :goto_0
    add-int v11, v13, v12

    #@21
    .line 3091
    .local v11, "stop":I
    const/4 v9, 0x0

    #@22
    .local v9, "outOfBounds":Z
    move v7, v6

    #@23
    .line 3094
    .end local v6    # "cpos":I
    .local v7, "cpos":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    #@25
    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@27
    if-ge v12, v11, :cond_6

    #@29
    .line 3096
    move-object/from16 v0, p0

    #@2b
    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@31
    add-int/lit8 v14, v13, 0x1

    #@33
    move-object/from16 v0, p0

    #@35
    iput v14, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@37
    aget-byte v12, v12, v13

    #@39
    and-int/lit16 v3, v12, 0xff

    #@3b
    .line 3097
    .local v3, "b1":I
    shr-int/lit8 v12, v3, 0x4

    #@3d
    packed-switch v12, :pswitch_data_0

    #@40
    .line 3132
    :pswitch_0
    new-instance v12, Ljava/io/UTFDataFormatException;

    #@42
    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    #@45
    throw v12
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 3135
    .end local v3    # "b1":I
    :catch_0
    move-exception v8

    #@47
    .local v8, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v6, v7

    #@48
    .line 3136
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :goto_2
    const/4 v9, 0x1

    #@49
    .line 3138
    if-nez v9, :cond_0

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@4f
    sub-int/2addr v12, v10

    #@50
    int-to-long v12, v12

    #@51
    cmp-long v12, v12, p2

    #@53
    if-lez v12, :cond_9

    #@55
    .line 3144
    :cond_0
    move-wide/from16 v0, p2

    #@57
    long-to-int v12, v0

    #@58
    add-int/2addr v12, v10

    #@59
    move-object/from16 v0, p0

    #@5b
    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@5d
    .line 3145
    new-instance v12, Ljava/io/UTFDataFormatException;

    #@5f
    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    #@62
    throw v12

    #@63
    .line 3090
    .end local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v9    # "outOfBounds":Z
    .end local v11    # "stop":I
    :cond_1
    move-wide/from16 v0, p2

    #@65
    long-to-int v12, v0

    #@66
    goto :goto_0

    #@67
    .line 3106
    .end local v6    # "cpos":I
    .restart local v3    # "b1":I
    .restart local v7    # "cpos":I
    .restart local v9    # "outOfBounds":Z
    .restart local v11    # "stop":I
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    #@69
    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    add-int/lit8 v6, v7, 0x1

    #@6d
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    int-to-char v13, v3

    #@6e
    :try_start_2
    aput-char v13, v12, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@70
    :goto_3
    move v7, v6

    #@71
    .end local v6    # "cpos":I
    .restart local v7    # "cpos":I
    goto :goto_1

    #@72
    .line 3111
    :pswitch_2
    :try_start_3
    move-object/from16 v0, p0

    #@74
    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@76
    move-object/from16 v0, p0

    #@78
    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@7a
    add-int/lit8 v14, v13, 0x1

    #@7c
    move-object/from16 v0, p0

    #@7e
    iput v14, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@80
    aget-byte v4, v12, v13

    #@82
    .line 3112
    .local v4, "b2":I
    and-int/lit16 v12, v4, 0xc0

    #@84
    const/16 v13, 0x80

    #@86
    if-eq v12, v13, :cond_3

    #@88
    .line 3113
    new-instance v12, Ljava/io/UTFDataFormatException;

    #@8a
    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    #@8d
    throw v12
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8e
    .line 3137
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :catchall_0
    move-exception v12

    #@8f
    move v6, v7

    #@90
    .line 3138
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :goto_4
    if-nez v9, :cond_2

    #@92
    move-object/from16 v0, p0

    #@94
    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@96
    sub-int/2addr v13, v10

    #@97
    int-to-long v14, v13

    #@98
    cmp-long v13, v14, p2

    #@9a
    if-lez v13, :cond_a

    #@9c
    .line 3144
    :cond_2
    move-wide/from16 v0, p2

    #@9e
    long-to-int v12, v0

    #@9f
    add-int/2addr v12, v10

    #@a0
    move-object/from16 v0, p0

    #@a2
    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@a4
    .line 3145
    new-instance v12, Ljava/io/UTFDataFormatException;

    #@a6
    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    #@a9
    throw v12

    #@aa
    .line 3115
    .end local v6    # "cpos":I
    .restart local v3    # "b1":I
    .restart local v4    # "b2":I
    .restart local v7    # "cpos":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    #@ac
    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ae
    add-int/lit8 v6, v7, 0x1

    #@b0
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    and-int/lit8 v13, v3, 0x1f

    #@b2
    shl-int/lit8 v13, v13, 0x6

    #@b4
    .line 3116
    and-int/lit8 v14, v4, 0x3f

    #@b6
    shl-int/lit8 v14, v14, 0x0

    #@b8
    .line 3115
    or-int/2addr v13, v14

    #@b9
    int-to-char v13, v13

    #@ba
    :try_start_5
    aput-char v13, v12, v7
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@bc
    goto :goto_3

    #@bd
    .line 3135
    .end local v4    # "b2":I
    :catch_1
    move-exception v8

    #@be
    .restart local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_2

    #@bf
    .line 3120
    .end local v6    # "cpos":I
    .end local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7    # "cpos":I
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    #@c1
    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@c7
    add-int/lit8 v13, v13, 0x1

    #@c9
    aget-byte v5, v12, v13

    #@cb
    .line 3121
    .local v5, "b3":I
    move-object/from16 v0, p0

    #@cd
    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@d3
    add-int/lit8 v13, v13, 0x0

    #@d5
    aget-byte v4, v12, v13

    #@d7
    .line 3122
    .restart local v4    # "b2":I
    move-object/from16 v0, p0

    #@d9
    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@db
    add-int/lit8 v12, v12, 0x2

    #@dd
    move-object/from16 v0, p0

    #@df
    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@e1
    .line 3123
    and-int/lit16 v12, v4, 0xc0

    #@e3
    const/16 v13, 0x80

    #@e5
    if-ne v12, v13, :cond_4

    #@e7
    and-int/lit16 v12, v5, 0xc0

    #@e9
    const/16 v13, 0x80

    #@eb
    if-eq v12, v13, :cond_5

    #@ed
    .line 3124
    :cond_4
    new-instance v12, Ljava/io/UTFDataFormatException;

    #@ef
    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    #@f2
    throw v12

    #@f3
    .line 3126
    :cond_5
    move-object/from16 v0, p0

    #@f5
    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@f7
    add-int/lit8 v6, v7, 0x1

    #@f9
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    and-int/lit8 v13, v3, 0xf

    #@fb
    shl-int/lit8 v13, v13, 0xc

    #@fd
    .line 3127
    and-int/lit8 v14, v4, 0x3f

    #@ff
    shl-int/lit8 v14, v14, 0x6

    #@101
    .line 3126
    or-int/2addr v13, v14

    #@102
    .line 3128
    and-int/lit8 v14, v5, 0x3f

    #@104
    shl-int/lit8 v14, v14, 0x0

    #@106
    .line 3126
    or-int/2addr v13, v14

    #@107
    int-to-char v13, v13

    #@108
    :try_start_7
    aput-char v13, v12, v7
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@10a
    goto/16 :goto_3

    #@10c
    .line 3137
    .end local v4    # "b2":I
    .end local v5    # "b3":I
    :catchall_1
    move-exception v12

    #@10d
    goto :goto_4

    #@10e
    .line 3138
    .end local v3    # "b1":I
    .end local v6    # "cpos":I
    .restart local v7    # "cpos":I
    :cond_6
    if-nez v9, :cond_7

    #@110
    move-object/from16 v0, p0

    #@112
    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@114
    sub-int/2addr v12, v10

    #@115
    int-to-long v12, v12

    #@116
    cmp-long v12, v12, p2

    #@118
    if-lez v12, :cond_8

    #@11a
    .line 3144
    :cond_7
    move-wide/from16 v0, p2

    #@11c
    long-to-int v12, v0

    #@11d
    add-int/2addr v12, v10

    #@11e
    move-object/from16 v0, p0

    #@120
    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@122
    .line 3145
    new-instance v12, Ljava/io/UTFDataFormatException;

    #@124
    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    #@127
    throw v12

    #@128
    :cond_8
    move v6, v7

    #@129
    .line 3149
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :cond_9
    move-object/from16 v0, p0

    #@12b
    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    #@12d
    const/4 v13, 0x0

    #@12e
    move-object/from16 v0, p1

    #@130
    invoke-virtual {v0, v12, v13, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@133
    .line 3150
    move-object/from16 v0, p0

    #@135
    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@137
    sub-int/2addr v12, v10

    #@138
    int-to-long v12, v12

    #@139
    return-wide v12

    #@13a
    .line 3137
    :cond_a
    throw v12

    #@13b
    .line 3097
    nop

    #@13c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refill()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2537
    :cond_0
    const/4 v2, 0x0

    #@3
    :try_start_0
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@5
    .line 2538
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@7
    if-lez v2, :cond_2

    #@9
    .line 2540
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@b
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@d
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@f
    const/16 v5, 0x400

    #@11
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v4

    #@15
    const/4 v5, 0x0

    #@16
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    #@19
    move-result v1

    #@1a
    .line 2541
    .local v1, "n":I
    if-ltz v1, :cond_1

    #@1c
    .line 2542
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@1e
    .line 2543
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@20
    sub-int/2addr v2, v1

    #@21
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@23
    .line 2558
    :goto_0
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@25
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@27
    if-eq v2, v3, :cond_0

    #@29
    .line 2534
    return-void

    #@2a
    .line 2545
    :cond_1
    new-instance v2, Ljava/io/StreamCorruptedException;

    #@2c
    .line 2546
    const-string/jumbo v3, "unexpected EOF in middle of data block"

    #@2f
    .line 2545
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 2559
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    #@34
    .line 2560
    .local v0, "ex":Ljava/io/IOException;
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@36
    .line 2561
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@38
    .line 2562
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@3a
    .line 2563
    throw v0

    #@3b
    .line 2549
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    const/4 v2, 0x1

    #@3c
    :try_start_1
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    #@3f
    move-result v1

    #@40
    .line 2550
    .restart local v1    # "n":I
    if-ltz v1, :cond_3

    #@42
    .line 2551
    const/4 v2, 0x0

    #@43
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@45
    .line 2552
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@47
    goto :goto_0

    #@48
    .line 2554
    :cond_3
    const/4 v2, -0x1

    #@49
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@4b
    .line 2555
    const/4 v2, 0x0

    #@4c
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@4e
    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2658
    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@3
    if-eqz v3, :cond_4

    #@5
    .line 2659
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@7
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@9
    if-ne v3, v4, :cond_1

    #@b
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@d
    if-nez v3, :cond_1

    #@f
    .line 2661
    :cond_0
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    #@12
    move-result v0

    #@13
    .local v0, "n":I
    if-eqz v0, :cond_0

    #@15
    .line 2662
    packed-switch v0, :pswitch_data_0

    #@18
    .line 2672
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1a
    .line 2673
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@1c
    .line 2674
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@1e
    .line 2679
    .end local v0    # "n":I
    :cond_1
    :goto_0
    :pswitch_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@20
    if-lez v3, :cond_3

    #@22
    .line 2680
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@24
    invoke-virtual {v3}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    #@27
    move-result v3

    #@28
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@2a
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v1

    #@2e
    .line 2681
    .local v1, "unreadAvail":I
    :goto_1
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@30
    if-ltz v3, :cond_2

    #@32
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@34
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@36
    sub-int/2addr v2, v3

    #@37
    add-int/2addr v2, v1

    #@38
    :cond_2
    return v2

    #@39
    .line 2667
    .end local v1    # "unreadAvail":I
    .restart local v0    # "n":I
    :pswitch_1
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@3b
    .line 2668
    const/4 v3, -0x1

    #@3c
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@3e
    goto :goto_0

    #@3f
    .line 2680
    .end local v0    # "n":I
    :cond_3
    const/4 v1, 0x0

    #@40
    .restart local v1    # "unreadAvail":I
    goto :goto_1

    #@41
    .line 2683
    .end local v1    # "unreadAvail":I
    :cond_4
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@43
    invoke-virtual {v2}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    #@46
    move-result v2

    #@47
    return v2

    #@48
    .line 2662
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2688
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2689
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@7
    .line 2690
    const/4 v0, -0x1

    #@8
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@a
    .line 2691
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@c
    .line 2693
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@e
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->close()V

    #@11
    .line 2687
    return-void
.end method

.method currentBlockRemaining()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2573
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 2574
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@7
    if-ltz v1, :cond_0

    #@9
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@b
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@d
    sub-int/2addr v0, v1

    #@e
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@10
    add-int/2addr v0, v1

    #@11
    :cond_0
    return v0

    #@12
    .line 2576
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@17
    throw v0
.end method

.method getBlockDataMode()Z
    .locals 1

    #@0
    .prologue
    .line 2438
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@2
    return v0
.end method

.method peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2586
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 2587
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@6
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 2588
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    #@d
    .line 2590
    :cond_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@f
    if-ltz v0, :cond_1

    #@11
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@13
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@15
    aget-byte v0, v0, v1

    #@17
    and-int/lit16 v0, v0, 0xff

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 2592
    :cond_2
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@1e
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    #@21
    move-result v0

    #@22
    return v0
.end method

.method peekByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2602
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    #@3
    move-result v0

    #@4
    .line 2603
    .local v0, "val":I
    if-gez v0, :cond_0

    #@6
    .line 2604
    new-instance v1, Ljava/io/EOFException;

    #@8
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v1

    #@c
    .line 2606
    :cond_0
    int-to-byte v1, v0

    #@d
    return v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2619
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 2620
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@6
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 2621
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    #@d
    .line 2623
    :cond_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@f
    if-ltz v0, :cond_1

    #@11
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@13
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@19
    aget-byte v0, v0, v1

    #@1b
    and-int/lit16 v0, v0, 0xff

    #@1d
    :goto_0
    return v0

    #@1e
    :cond_1
    const/4 v0, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 2625
    :cond_2
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@22
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    #@25
    move-result v0

    #@26
    return v0
.end method

.method public read([BII)I
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
    .line 2630
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method read([BIIZ)I
    .locals 5
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
    const/4 v4, 0x0

    #@1
    .line 2704
    if-nez p3, :cond_0

    #@3
    .line 2705
    return v4

    #@4
    .line 2706
    :cond_0
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 2707
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@a
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 2708
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    #@11
    .line 2710
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@13
    if-gez v1, :cond_2

    #@15
    .line 2711
    const/4 v1, -0x1

    #@16
    return v1

    #@17
    .line 2713
    :cond_2
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@19
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1b
    sub-int/2addr v1, v2

    #@1c
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v0

    #@20
    .line 2714
    .local v0, "nread":I
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@22
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@24
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@27
    .line 2715
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@29
    add-int/2addr v1, v0

    #@2a
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2c
    .line 2716
    return v0

    #@2d
    .line 2717
    .end local v0    # "nread":I
    :cond_3
    if-eqz p4, :cond_5

    #@2f
    .line 2718
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@31
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@33
    const/16 v3, 0x400

    #@35
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    #@38
    move-result v3

    #@39
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    #@3c
    move-result v0

    #@3d
    .line 2719
    .restart local v0    # "nread":I
    if-lez v0, :cond_4

    #@3f
    .line 2720
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@41
    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@44
    .line 2722
    :cond_4
    return v0

    #@45
    .line 2724
    .end local v0    # "nread":I
    :cond_5
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@47
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    #@4a
    move-result v1

    #@4b
    return v1
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2762
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    #@4
    move-result v0

    #@5
    .line 2763
    .local v0, "v":I
    if-gez v0, :cond_0

    #@7
    .line 2764
    new-instance v1, Ljava/io/EOFException;

    #@9
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@c
    throw v1

    #@d
    .line 2766
    :cond_0
    if-eqz v0, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    :cond_1
    return v1
.end method

.method readBooleans([ZII)V
    .locals 8
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
    const/4 v7, 0x0

    #@1
    .line 2886
    add-int v0, p2, p3

    #@3
    .local v0, "endoff":I
    move v1, p2

    #@4
    .line 2887
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    #@6
    .line 2888
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@8
    if-nez v4, :cond_1

    #@a
    .line 2889
    sub-int v4, v0, v1

    #@c
    const/16 v5, 0x400

    #@e
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 2890
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@14
    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@16
    invoke-virtual {v4, v5, v7, v2}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@19
    .line 2891
    add-int v3, v1, v2

    #@1b
    .line 2892
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1d
    .line 2900
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    #@1f
    .line 2901
    add-int/lit8 p2, v1, 0x1

    #@21
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@23
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@25
    add-int/lit8 v6, v5, 0x1

    #@27
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@29
    invoke-static {v4, v5}, Ljava/io/Bits;->getBoolean([BI)Z

    #@2c
    move-result v4

    #@2d
    aput-boolean v4, p1, v1

    #@2f
    move v1, p2

    #@30
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    #@31
    .line 2893
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@33
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@35
    sub-int/2addr v4, v5

    #@36
    const/4 v5, 0x1

    #@37
    if-ge v4, v5, :cond_2

    #@39
    .line 2894
    add-int/lit8 p2, v1, 0x1

    #@3b
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@3d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    #@40
    move-result v4

    #@41
    aput-boolean v4, p1, v1

    #@43
    move v1, p2

    #@44
    .line 2895
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@45
    .line 2897
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@47
    add-int/2addr v4, v1

    #@48
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@4a
    sub-int/2addr v4, v5

    #@4b
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@4e
    move-result v3

    #@4f
    .restart local v3    # "stop":I
    goto :goto_1

    #@50
    .line 2885
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2770
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    #@3
    move-result v0

    #@4
    .line 2771
    .local v0, "v":I
    if-gez v0, :cond_0

    #@6
    .line 2772
    new-instance v1, Ljava/io/EOFException;

    #@8
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v1

    #@c
    .line 2774
    :cond_0
    int-to-byte v1, v0

    #@d
    return v1
.end method

.method public readChar()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 2786
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 2787
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@8
    .line 2788
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@a
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@c
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@f
    .line 2792
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@11
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@13
    invoke-static {v1, v2}, Ljava/io/Bits;->getChar([BI)C

    #@16
    move-result v0

    #@17
    .line 2793
    .local v0, "v":C
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@19
    add-int/lit8 v1, v1, 0x2

    #@1b
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1d
    .line 2794
    return v0

    #@1e
    .line 2789
    .end local v0    # "v":C
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@20
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@22
    sub-int/2addr v1, v2

    #@23
    if-ge v1, v4, :cond_0

    #@25
    .line 2790
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@27
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readChar()C

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method readChars([CII)V
    .locals 8
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
    const/4 v7, 0x0

    #@1
    .line 2907
    add-int v0, p2, p3

    #@3
    .local v0, "endoff":I
    move v1, p2

    #@4
    .line 2908
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    #@6
    .line 2909
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@8
    if-nez v4, :cond_1

    #@a
    .line 2910
    sub-int v4, v0, v1

    #@c
    const/16 v5, 0x200

    #@e
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 2911
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@14
    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@16
    shl-int/lit8 v6, v2, 0x1

    #@18
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@1b
    .line 2912
    add-int v3, v1, v2

    #@1d
    .line 2913
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1f
    .line 2921
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    #@21
    .line 2922
    add-int/lit8 p2, v1, 0x1

    #@23
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@25
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@27
    invoke-static {v4, v5}, Ljava/io/Bits;->getChar([BI)C

    #@2a
    move-result v4

    #@2b
    aput-char v4, p1, v1

    #@2d
    .line 2923
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2f
    add-int/lit8 v4, v4, 0x2

    #@31
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@33
    move v1, p2

    #@34
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    #@35
    .line 2914
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@37
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@39
    sub-int/2addr v4, v5

    #@3a
    const/4 v5, 0x2

    #@3b
    if-ge v4, v5, :cond_2

    #@3d
    .line 2915
    add-int/lit8 p2, v1, 0x1

    #@3f
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@41
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readChar()C

    #@44
    move-result v4

    #@45
    aput-char v4, p1, v1

    #@47
    move v1, p2

    #@48
    .line 2916
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@49
    .line 2918
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@4b
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@4d
    sub-int/2addr v4, v5

    #@4e
    shr-int/lit8 v4, v4, 0x1

    #@50
    add-int/2addr v4, v1

    #@51
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@54
    move-result v3

    #@55
    .restart local v3    # "stop":I
    goto :goto_1

    #@56
    .line 2906
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v4, 0x0

    #@3
    .line 2858
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@5
    if-nez v2, :cond_1

    #@7
    .line 2859
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@9
    .line 2860
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@b
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@d
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@10
    .line 2864
    :cond_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@12
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@14
    invoke-static {v2, v3}, Ljava/io/Bits;->getDouble([BI)D

    #@17
    move-result-wide v0

    #@18
    .line 2865
    .local v0, "v":D
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1a
    add-int/lit8 v2, v2, 0x8

    #@1c
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1e
    .line 2866
    return-wide v0

    #@1f
    .line 2861
    .end local v0    # "v":D
    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@21
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@23
    sub-int/2addr v2, v3

    #@24
    if-ge v2, v5, :cond_0

    #@26
    .line 2862
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@28
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    #@2b
    move-result-wide v2

    #@2c
    return-wide v2
.end method

.method readDoubles([DII)V
    .locals 7
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
    const/4 v6, 0x0

    #@1
    .line 3015
    add-int v0, p2, p3

    #@3
    .local v0, "endoff":I
    move v1, p2

    #@4
    .line 3016
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@6
    .line 3017
    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@8
    if-nez v3, :cond_0

    #@a
    .line 3018
    sub-int v3, v0, v1

    #@c
    const/16 v4, 0x80

    #@e
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 3019
    .local v2, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@14
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@16
    shl-int/lit8 v5, v2, 0x3

    #@18
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@1b
    .line 3020
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1d
    .line 3028
    :goto_1
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@1f
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@21
    invoke-static {v3, v4, p1, v1, v2}, Ljava/io/ObjectInputStream;->-wrap1([BI[DII)V

    #@24
    .line 3029
    add-int p2, v1, v2

    #@26
    .line 3030
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@28
    shl-int/lit8 v4, v2, 0x3

    #@2a
    add-int/2addr v3, v4

    #@2b
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2d
    move v1, p2

    #@2e
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@2f
    .line 3021
    .end local v2    # "span":I
    :cond_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@31
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@33
    sub-int/2addr v3, v4

    #@34
    const/16 v4, 0x8

    #@36
    if-ge v3, v4, :cond_1

    #@38
    .line 3022
    add-int/lit8 p2, v1, 0x1

    #@3a
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@3c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readDouble()D

    #@3f
    move-result-wide v4

    #@40
    aput-wide v4, p1, v1

    #@42
    move v1, p2

    #@43
    .line 3023
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@44
    .line 3025
    :cond_1
    sub-int v3, v0, v1

    #@46
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@48
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@4a
    sub-int/2addr v4, v5

    #@4b
    shr-int/lit8 v4, v4, 0x3

    #@4d
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@50
    move-result v2

    #@51
    .restart local v2    # "span":I
    goto :goto_1

    #@52
    .line 3014
    .end local v2    # "span":I
    :cond_2
    return-void
.end method

.method public readFloat()F
    .locals 5
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
    .line 2834
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 2835
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@8
    .line 2836
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@a
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@c
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@f
    .line 2840
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@11
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@13
    invoke-static {v1, v2}, Ljava/io/Bits;->getFloat([BI)F

    #@16
    move-result v0

    #@17
    .line 2841
    .local v0, "v":F
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@19
    add-int/lit8 v1, v1, 0x4

    #@1b
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1d
    .line 2842
    return v0

    #@1e
    .line 2837
    .end local v0    # "v":F
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@20
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@22
    sub-int/2addr v1, v2

    #@23
    if-ge v1, v4, :cond_0

    #@25
    .line 2838
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@27
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method readFloats([FII)V
    .locals 7
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
    const/4 v6, 0x0

    #@1
    .line 2973
    add-int v0, p2, p3

    #@3
    .local v0, "endoff":I
    move v1, p2

    #@4
    .line 2974
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@6
    .line 2975
    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@8
    if-nez v3, :cond_0

    #@a
    .line 2976
    sub-int v3, v0, v1

    #@c
    const/16 v4, 0x100

    #@e
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 2977
    .local v2, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@14
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@16
    shl-int/lit8 v5, v2, 0x2

    #@18
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@1b
    .line 2978
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1d
    .line 2986
    :goto_1
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@1f
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@21
    invoke-static {v3, v4, p1, v1, v2}, Ljava/io/ObjectInputStream;->-wrap2([BI[FII)V

    #@24
    .line 2987
    add-int p2, v1, v2

    #@26
    .line 2988
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@28
    shl-int/lit8 v4, v2, 0x2

    #@2a
    add-int/2addr v3, v4

    #@2b
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2d
    move v1, p2

    #@2e
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@2f
    .line 2979
    .end local v2    # "span":I
    :cond_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@31
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@33
    sub-int/2addr v3, v4

    #@34
    const/4 v4, 0x4

    #@35
    if-ge v3, v4, :cond_1

    #@37
    .line 2980
    add-int/lit8 p2, v1, 0x1

    #@39
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@3b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    #@3e
    move-result v3

    #@3f
    aput v3, p1, v1

    #@41
    move v1, p2

    #@42
    .line 2981
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@43
    .line 2983
    :cond_1
    sub-int v3, v0, v1

    #@45
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@47
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@49
    sub-int/2addr v4, v5

    #@4a
    shr-int/lit8 v4, v4, 0x2

    #@4c
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@4f
    move-result v2

    #@50
    .restart local v2    # "span":I
    goto :goto_1

    #@51
    .line 2972
    .end local v2    # "span":I
    :cond_2
    return-void
.end method

.method public readFully([B)V
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
    .line 2737
    array-length v0, p1

    #@2
    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    #@5
    .line 2736
    return-void
.end method

.method public readFully([BII)V
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
    .line 2741
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    #@4
    .line 2740
    return-void
.end method

.method public readFully([BIIZ)V
    .locals 2
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
    .line 2747
    :goto_0
    if-lez p3, :cond_1

    #@2
    .line 2748
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    #@5
    move-result v0

    #@6
    .line 2749
    .local v0, "n":I
    if-gez v0, :cond_0

    #@8
    .line 2750
    new-instance v1, Ljava/io/EOFException;

    #@a
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@d
    throw v1

    #@e
    .line 2752
    :cond_0
    add-int/2addr p2, v0

    #@f
    .line 2753
    sub-int/2addr p3, v0

    #@10
    goto :goto_0

    #@11
    .line 2745
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 5
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
    .line 2822
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 2823
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@8
    .line 2824
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@a
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@c
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@f
    .line 2828
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@11
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@13
    invoke-static {v1, v2}, Ljava/io/Bits;->getInt([BI)I

    #@16
    move-result v0

    #@17
    .line 2829
    .local v0, "v":I
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@19
    add-int/lit8 v1, v1, 0x4

    #@1b
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1d
    .line 2830
    return v0

    #@1e
    .line 2825
    .end local v0    # "v":I
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@20
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@22
    sub-int/2addr v1, v2

    #@23
    if-ge v1, v4, :cond_0

    #@25
    .line 2826
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@27
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method readInts([III)V
    .locals 8
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
    const/4 v7, 0x0

    #@1
    .line 2951
    add-int v0, p2, p3

    #@3
    .local v0, "endoff":I
    move v1, p2

    #@4
    .line 2952
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    #@6
    .line 2953
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@8
    if-nez v4, :cond_1

    #@a
    .line 2954
    sub-int v4, v0, v1

    #@c
    const/16 v5, 0x100

    #@e
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 2955
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@14
    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@16
    shl-int/lit8 v6, v2, 0x2

    #@18
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@1b
    .line 2956
    add-int v3, v1, v2

    #@1d
    .line 2957
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1f
    .line 2965
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    #@21
    .line 2966
    add-int/lit8 p2, v1, 0x1

    #@23
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@25
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@27
    invoke-static {v4, v5}, Ljava/io/Bits;->getInt([BI)I

    #@2a
    move-result v4

    #@2b
    aput v4, p1, v1

    #@2d
    .line 2967
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2f
    add-int/lit8 v4, v4, 0x4

    #@31
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@33
    move v1, p2

    #@34
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    #@35
    .line 2958
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@37
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@39
    sub-int/2addr v4, v5

    #@3a
    const/4 v5, 0x4

    #@3b
    if-ge v4, v5, :cond_2

    #@3d
    .line 2959
    add-int/lit8 p2, v1, 0x1

    #@3f
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@41
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@44
    move-result v4

    #@45
    aput v4, p1, v1

    #@47
    move v1, p2

    #@48
    .line 2960
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@49
    .line 2962
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@4b
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@4d
    sub-int/2addr v4, v5

    #@4e
    shr-int/lit8 v4, v4, 0x2

    #@50
    add-int/2addr v4, v1

    #@51
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@54
    move-result v3

    #@55
    .restart local v3    # "stop":I
    goto :goto_1

    #@56
    .line 2950
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2874
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v4, 0x0

    #@3
    .line 2846
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@5
    if-nez v2, :cond_1

    #@7
    .line 2847
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@9
    .line 2848
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@b
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@d
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@10
    .line 2852
    :cond_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@12
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@14
    invoke-static {v2, v3}, Ljava/io/Bits;->getLong([BI)J

    #@17
    move-result-wide v0

    #@18
    .line 2853
    .local v0, "v":J
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1a
    add-int/lit8 v2, v2, 0x8

    #@1c
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1e
    .line 2854
    return-wide v0

    #@1f
    .line 2849
    .end local v0    # "v":J
    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@21
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@23
    sub-int/2addr v2, v3

    #@24
    if-ge v2, v5, :cond_0

    #@26
    .line 2850
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@28
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    #@2b
    move-result-wide v2

    #@2c
    return-wide v2
.end method

.method readLongUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3040
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method readLongs([JII)V
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
    const/4 v7, 0x0

    #@1
    .line 2993
    add-int v0, p2, p3

    #@3
    .local v0, "endoff":I
    move v1, p2

    #@4
    .line 2994
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    #@6
    .line 2995
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@8
    if-nez v4, :cond_1

    #@a
    .line 2996
    sub-int v4, v0, v1

    #@c
    const/16 v5, 0x80

    #@e
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 2997
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@14
    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@16
    shl-int/lit8 v6, v2, 0x3

    #@18
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@1b
    .line 2998
    add-int v3, v1, v2

    #@1d
    .line 2999
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1f
    .line 3007
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    #@21
    .line 3008
    add-int/lit8 p2, v1, 0x1

    #@23
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@25
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@27
    invoke-static {v4, v5}, Ljava/io/Bits;->getLong([BI)J

    #@2a
    move-result-wide v4

    #@2b
    aput-wide v4, p1, v1

    #@2d
    .line 3009
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2f
    add-int/lit8 v4, v4, 0x8

    #@31
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@33
    move v1, p2

    #@34
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    #@35
    .line 3000
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@37
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@39
    sub-int/2addr v4, v5

    #@3a
    const/16 v5, 0x8

    #@3c
    if-ge v4, v5, :cond_2

    #@3e
    .line 3001
    add-int/lit8 p2, v1, 0x1

    #@40
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@42
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    #@45
    move-result-wide v4

    #@46
    aput-wide v4, p1, v1

    #@48
    move v1, p2

    #@49
    .line 3002
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@4a
    .line 3004
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@4c
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@4e
    sub-int/2addr v4, v5

    #@4f
    shr-int/lit8 v4, v4, 0x3

    #@51
    add-int/2addr v4, v1

    #@52
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@55
    move-result v3

    #@56
    .restart local v3    # "stop":I
    goto :goto_1

    #@57
    .line 2992
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 2798
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 2799
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@8
    .line 2800
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@a
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@c
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@f
    .line 2804
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@11
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@13
    invoke-static {v1, v2}, Ljava/io/Bits;->getShort([BI)S

    #@16
    move-result v0

    #@17
    .line 2805
    .local v0, "v":S
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@19
    add-int/lit8 v1, v1, 0x2

    #@1b
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1d
    .line 2806
    return v0

    #@1e
    .line 2801
    .end local v0    # "v":S
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@20
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@22
    sub-int/2addr v1, v2

    #@23
    if-ge v1, v4, :cond_0

    #@25
    .line 2802
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@27
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method readShorts([SII)V
    .locals 8
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
    const/4 v7, 0x0

    #@1
    .line 2929
    add-int v0, p2, p3

    #@3
    .local v0, "endoff":I
    move v1, p2

    #@4
    .line 2930
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    #@6
    .line 2931
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@8
    if-nez v4, :cond_1

    #@a
    .line 2932
    sub-int v4, v0, v1

    #@c
    const/16 v5, 0x200

    #@e
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 2933
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@14
    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@16
    shl-int/lit8 v6, v2, 0x1

    #@18
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@1b
    .line 2934
    add-int v3, v1, v2

    #@1d
    .line 2935
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1f
    .line 2943
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    #@21
    .line 2944
    add-int/lit8 p2, v1, 0x1

    #@23
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@25
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@27
    invoke-static {v4, v5}, Ljava/io/Bits;->getShort([BI)S

    #@2a
    move-result v4

    #@2b
    aput-short v4, p1, v1

    #@2d
    .line 2945
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2f
    add-int/lit8 v4, v4, 0x2

    #@31
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@33
    move v1, p2

    #@34
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    #@35
    .line 2936
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@37
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@39
    sub-int/2addr v4, v5

    #@3a
    const/4 v5, 0x2

    #@3b
    if-ge v4, v5, :cond_2

    #@3d
    .line 2937
    add-int/lit8 p2, v1, 0x1

    #@3f
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@41
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    #@44
    move-result v4

    #@45
    aput-short v4, p1, v1

    #@47
    move v1, p2

    #@48
    .line 2938
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    #@49
    .line 2940
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@4b
    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@4d
    sub-int/2addr v4, v5

    #@4e
    shr-int/lit8 v4, v4, 0x1

    #@50
    add-int/2addr v4, v1

    #@51
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@54
    move-result v3

    #@55
    .restart local v3    # "stop":I
    goto :goto_1

    #@56
    .line 2928
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2870
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2778
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    #@3
    move-result v0

    #@4
    .line 2779
    .local v0, "v":I
    if-gez v0, :cond_0

    #@6
    .line 2780
    new-instance v1, Ljava/io/EOFException;

    #@8
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v1

    #@c
    .line 2782
    :cond_0
    return v0
.end method

.method public readUnsignedShort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 2810
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 2811
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@8
    .line 2812
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@a
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@c
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    #@f
    .line 2816
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@11
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@13
    invoke-static {v1, v2}, Ljava/io/Bits;->getShort([BI)S

    #@16
    move-result v1

    #@17
    const v2, 0xffff

    #@1a
    and-int v0, v1, v2

    #@1c
    .line 2817
    .local v0, "v":I
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@1e
    add-int/lit8 v1, v1, 0x2

    #@20
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@22
    .line 2818
    return v0

    #@23
    .line 2813
    .end local v0    # "v":I
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@25
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@27
    sub-int/2addr v1, v2

    #@28
    if-ge v1, v4, :cond_0

    #@2a
    .line 2814
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@2c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@2f
    move-result v1

    #@30
    return v1
.end method

.method setBlockDataMode(Z)Z
    .locals 3
    .param p1, "newmode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2419
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@3
    if-ne v1, p1, :cond_0

    #@5
    .line 2420
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@7
    return v0

    #@8
    .line 2422
    :cond_0
    if-eqz p1, :cond_2

    #@a
    .line 2423
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@c
    .line 2424
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@e
    .line 2425
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    #@10
    .line 2429
    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@12
    .line 2430
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@14
    if-eqz v1, :cond_3

    #@16
    :goto_0
    return v0

    #@17
    .line 2426
    :cond_2
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@19
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@1b
    if-ge v1, v2, :cond_1

    #@1d
    .line 2427
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1f
    const-string/jumbo v1, "unread block data"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 2430
    :cond_3
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2634
    move-wide v2, p1

    #@2
    .line 2635
    .local v2, "remain":J
    :goto_0
    const-wide/16 v4, 0x0

    #@4
    cmp-long v1, v2, v4

    #@6
    if-lez v1, :cond_1

    #@8
    .line 2636
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 2637
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@e
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@10
    if-ne v1, v4, :cond_0

    #@12
    .line 2638
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    #@15
    .line 2640
    :cond_0
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@17
    if-gez v1, :cond_2

    #@19
    .line 2654
    :cond_1
    sub-long v4, p1, v2

    #@1b
    return-wide v4

    #@1c
    .line 2643
    :cond_2
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@1e
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@20
    sub-int/2addr v1, v4

    #@21
    int-to-long v4, v1

    #@22
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@25
    move-result-wide v4

    #@26
    long-to-int v0, v4

    #@27
    .line 2644
    .local v0, "nread":I
    int-to-long v4, v0

    #@28
    sub-long/2addr v2, v4

    #@29
    .line 2645
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2b
    add-int/2addr v1, v0

    #@2c
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    #@2e
    goto :goto_0

    #@2f
    .line 2647
    .end local v0    # "nread":I
    :cond_3
    const-wide/16 v4, 0x400

    #@31
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@34
    move-result-wide v4

    #@35
    long-to-int v0, v4

    #@36
    .line 2648
    .restart local v0    # "nread":I
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    #@38
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    #@3a
    invoke-virtual {v1, v4, v6, v0}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    #@3d
    move-result v0

    #@3e
    if-ltz v0, :cond_1

    #@40
    .line 2651
    int-to-long v4, v0

    #@41
    sub-long/2addr v2, v4

    #@42
    goto :goto_0
.end method

.method skipBlockData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2447
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2448
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "not in block data mode"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 2450
    :cond_0
    :goto_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    #@f
    if-ltz v0, :cond_1

    #@11
    .line 2451
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    #@14
    goto :goto_0

    #@15
    .line 2446
    :cond_1
    return-void
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2758
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
