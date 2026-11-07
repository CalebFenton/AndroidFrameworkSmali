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
.field private static final greylist-max-o CHAR_BUF_SIZE:I = 0x100

.field private static final greylist-max-o HEADER_BLOCKED:I = -0x2

.field private static final greylist-max-o MAX_BLOCK_SIZE:I = 0x400

.field private static final greylist-max-o MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private greylist-max-o blkmode:Z

.field private final greylist-max-o buf:[B

.field private final greylist-max-o cbuf:[C

.field private final greylist-max-o din:Ljava/io/DataInputStream;

.field private greylist-max-o end:I

.field private final greylist-max-o hbuf:[B

.field private final greylist-max-o in:Ljava/io/ObjectInputStream$PeekInputStream;

.field private greylist-max-o pos:I

.field final synthetic blacklist this$0:Ljava/io/ObjectInputStream;

.field private greylist-max-o unread:I


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V
    .registers 4
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2775
    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2749
    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    .line 2751
    const/4 p1, 0x5

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    .line 2753
    const/16 p1, 0x100

    new-array p1, p1, [C

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    .line 2756
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    .line 2760
    iput p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2762
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2764
    iput p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2776
    new-instance p1, Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-direct {p1, p2}, Ljava/io/ObjectInputStream$PeekInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    .line 2777
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    .line 2778
    return-void
.end method

.method private greylist-max-o readBlockHeader(Z)I
    .registers 9
    .param p1, "canBlock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2832
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v0}, Ljava/io/ObjectInputStream;->-$$Nest$fgetdefaultDataEnd(Ljava/io/ObjectInputStream;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 2839
    return v1

    .line 2843
    :cond_a
    :goto_a
    if-eqz p1, :cond_10

    const v0, 0x7fffffff

    goto :goto_16

    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v0

    .line 2844
    .local v0, "avail":I
    :goto_16
    const/4 v2, -0x2

    if-nez v0, :cond_1a

    .line 2845
    return v2

    .line 2848
    :cond_1a
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    move-result v3

    .line 2849
    .local v3, "tc":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_9a

    .line 2882
    :pswitch_25
    if-ltz v3, :cond_8f

    const/16 v2, 0x70

    if-lt v3, v2, :cond_7b

    const/16 v2, 0x7e

    if-gt v3, v2, :cond_7b

    goto :goto_8f

    .line 2858
    :pswitch_30
    const/4 v1, 0x5

    if-ge v0, v1, :cond_34

    .line 2859
    return v2

    .line 2861
    :cond_34
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    invoke-virtual {v2, v6, v5, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2862
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    invoke-static {v1, v4}, Ljava/io/Bits;->getInt([BI)I

    move-result v1

    .line 2863
    .local v1, "len":I
    if-ltz v1, :cond_44

    .line 2868
    return v1

    .line 2864
    :cond_44
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal block data header length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "canBlock":Z
    throw v2

    .line 2877
    .end local v1    # "len":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "canBlock":Z
    :pswitch_5d
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    .line 2878
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v2}, Ljava/io/ObjectInputStream;->-$$Nest$mhandleReset(Ljava/io/ObjectInputStream;)V

    .line 2879
    nop

    .line 2889
    .end local v0    # "avail":I
    .end local v3    # "tc":I
    goto :goto_a

    .line 2851
    .restart local v0    # "avail":I
    .restart local v3    # "tc":I
    :pswitch_69
    const/4 v1, 0x2

    if-ge v0, v1, :cond_6d

    .line 2852
    return v2

    .line 2854
    :cond_6d
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    invoke-virtual {v2, v6, v5, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2855
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 2883
    :cond_7b
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "invalid type code: %02X"

    .line 2885
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 2884
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "canBlock":Z
    throw v1
    :try_end_8f
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_8f} :catch_90

    .line 2887
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "canBlock":Z
    :cond_8f
    :goto_8f
    return v1

    .line 2890
    .end local v0    # "avail":I
    .end local v3    # "tc":I
    :catch_90
    move-exception v0

    .line 2891
    .local v0, "ex":Ljava/io/EOFException;
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "unexpected EOF while reading block data header"

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_9a
    .packed-switch 0x77
        :pswitch_69
        :pswitch_25
        :pswitch_5d
        :pswitch_30
    .end packed-switch
.end method

.method private greylist-max-o readUTFBody(J)Ljava/lang/String;
    .registers 9
    .param p1, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3420
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 3421
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3424
    :cond_e
    :goto_e
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-lez v1, :cond_54

    .line 3425
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    .line 3426
    .local v1, "avail":I
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4e

    int-to-long v3, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_22

    goto :goto_4e

    .line 3429
    :cond_22
    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v3, :cond_2d

    .line 3431
    invoke-direct {p0, v0, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFChar(Ljava/lang/StringBuilder;J)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr p1, v3

    goto :goto_53

    .line 3434
    :cond_2d
    if-lez v1, :cond_38

    .line 3435
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-static {v3, v4, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3437
    :cond_38
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3438
    const-wide/16 v3, 0x400

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3439
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_53

    .line 3427
    :cond_4e
    :goto_4e
    invoke-direct {p0, v0, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFSpan(Ljava/lang/StringBuilder;J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 3442
    .end local v1    # "avail":I
    :goto_53
    goto :goto_e

    .line 3444
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o readUTFChar(Ljava/lang/StringBuilder;J)I
    .registers 11
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3534
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3535
    .local v0, "b1":I
    shr-int/lit8 v1, v0, 0x4

    const-wide/16 v2, 0x2

    const/16 v4, 0x80

    packed-switch v1, :pswitch_data_80

    .line 3578
    :pswitch_f
    new-instance v1, Ljava/io/UTFDataFormatException;

    invoke-direct {v1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v1

    .line 3561
    :pswitch_15
    const-wide/16 v5, 0x3

    cmp-long v1, p2, v5

    if-gez v1, :cond_28

    .line 3562
    cmp-long v1, p2, v2

    if-nez v1, :cond_22

    .line 3563
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 3565
    :cond_22
    new-instance v1, Ljava/io/UTFDataFormatException;

    invoke-direct {v1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v1

    .line 3567
    :cond_28
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    .line 3568
    .local v1, "b2":I
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v2

    .line 3569
    .local v2, "b3":I
    and-int/lit16 v3, v1, 0xc0

    if-ne v3, v4, :cond_4c

    and-int/lit16 v3, v2, 0xc0

    if-ne v3, v4, :cond_4c

    .line 3572
    and-int/lit8 v3, v0, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v2, 0x3f

    shl-int/lit8 v4, v4, 0x0

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3575
    const/4 v3, 0x3

    return v3

    .line 3570
    :cond_4c
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    .line 3549
    .end local v1    # "b2":I
    .end local v2    # "b3":I
    :pswitch_52
    cmp-long v1, p2, v2

    if-ltz v1, :cond_73

    .line 3552
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    .line 3553
    .restart local v1    # "b2":I
    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v4, :cond_6d

    .line 3556
    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v1, 0x3f

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3558
    const/4 v2, 0x2

    return v2

    .line 3554
    :cond_6d
    new-instance v2, Ljava/io/UTFDataFormatException;

    invoke-direct {v2}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v2

    .line 3550
    .end local v1    # "b2":I
    :cond_73
    new-instance v1, Ljava/io/UTFDataFormatException;

    invoke-direct {v1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v1

    .line 3544
    :pswitch_79
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3545
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_52
        :pswitch_52
        :pswitch_15
    .end packed-switch
.end method

.method private greylist-max-o readUTFSpan(Ljava/lang/StringBuilder;J)J
    .registers 20
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3456
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const/4 v0, 0x0

    .line 3457
    .local v0, "cpos":I
    iget v4, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3458
    .local v4, "start":I
    iget v5, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v6, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v5, v6

    const/16 v6, 0x100

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3460
    .local v5, "avail":I
    iget v6, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    int-to-long v7, v5

    cmp-long v7, v2, v7

    if-lez v7, :cond_1c

    add-int/lit8 v7, v5, -0x2

    goto :goto_1d

    :cond_1c
    long-to-int v7, v2

    :goto_1d
    add-int/2addr v6, v7

    .line 3461
    .local v6, "stop":I
    const/4 v7, 0x0

    move v8, v0

    .line 3464
    .end local v0    # "cpos":I
    .local v7, "outOfBounds":Z
    .local v8, "cpos":I
    :goto_20
    const/4 v9, 0x0

    :try_start_21
    iget v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    if-ge v0, v6, :cond_bc

    .line 3466
    iget-object v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v10, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v10

    and-int/lit16 v0, v0, 0xff

    .line 3467
    .local v0, "b1":I
    shr-int/lit8 v10, v0, 0x4

    const/16 v11, 0x80

    packed-switch v10, :pswitch_data_10c

    .line 3502
    :pswitch_38
    new-instance v10, Ljava/io/UTFDataFormatException;

    goto/16 :goto_b8

    .line 3490
    :pswitch_3c
    iget-object v10, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v12, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v12, v12, 0x1

    aget-byte v10, v10, v12

    .line 3491
    .local v10, "b3":I
    iget-object v12, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v13, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v13, v9

    aget-byte v12, v12, v13

    .line 3492
    .local v12, "b2":I
    iget v13, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v13, v13, 0x2

    iput v13, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3493
    and-int/lit16 v13, v12, 0xc0

    if-ne v13, v11, :cond_77

    and-int/lit16 v13, v10, 0xc0

    if-ne v13, v11, :cond_77

    .line 3496
    iget-object v11, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_5b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_5b} :catch_e8
    .catchall {:try_start_21 .. :try_end_5b} :catchall_d1

    add-int/lit8 v13, v8, 0x1

    .end local v8    # "cpos":I
    .local v13, "cpos":I
    and-int/lit8 v14, v0, 0xf

    shl-int/lit8 v14, v14, 0xc

    and-int/lit8 v15, v12, 0x3f

    shl-int/lit8 v15, v15, 0x6

    or-int/2addr v14, v15

    and-int/lit8 v15, v10, 0x3f

    shl-int/2addr v15, v9

    or-int/2addr v14, v15

    int-to-char v14, v14

    :try_start_6b
    aput-char v14, v11, v8
    :try_end_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6b .. :try_end_6d} :catch_73
    .catchall {:try_start_6b .. :try_end_6d} :catchall_6f

    .line 3499
    move v8, v13

    goto :goto_b0

    .line 3508
    .end local v0    # "b1":I
    .end local v10    # "b3":I
    .end local v12    # "b2":I
    :catchall_6f
    move-exception v0

    move v8, v13

    goto/16 :goto_d2

    .line 3505
    :catch_73
    move-exception v0

    move v8, v13

    goto/16 :goto_e9

    .line 3494
    .end local v13    # "cpos":I
    .restart local v0    # "b1":I
    .restart local v8    # "cpos":I
    .restart local v10    # "b3":I
    .restart local v12    # "b2":I
    :cond_77
    :try_start_77
    new-instance v11, Ljava/io/UTFDataFormatException;

    invoke-direct {v11}, Ljava/io/UTFDataFormatException;-><init>()V

    .end local v4    # "start":I
    .end local v5    # "avail":I
    .end local v6    # "stop":I
    .end local v7    # "outOfBounds":Z
    .end local v8    # "cpos":I
    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "sbuf":Ljava/lang/StringBuilder;
    .end local p2    # "utflen":J
    throw v11

    .line 3481
    .end local v10    # "b3":I
    .end local v12    # "b2":I
    .restart local v4    # "start":I
    .restart local v5    # "avail":I
    .restart local v6    # "stop":I
    .restart local v7    # "outOfBounds":Z
    .restart local v8    # "cpos":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "sbuf":Ljava/lang/StringBuilder;
    .restart local p2    # "utflen":J
    :pswitch_7d
    iget-object v10, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v12, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v10, v10, v12

    .line 3482
    .local v10, "b2":I
    and-int/lit16 v12, v10, 0xc0

    if-ne v12, v11, :cond_a2

    .line 3485
    iget-object v11, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_8d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_77 .. :try_end_8d} :catch_e8
    .catchall {:try_start_77 .. :try_end_8d} :catchall_d1

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "cpos":I
    .local v12, "cpos":I
    and-int/lit8 v13, v0, 0x1f

    shl-int/lit8 v13, v13, 0x6

    and-int/lit8 v14, v10, 0x3f

    shl-int/2addr v14, v9

    or-int/2addr v13, v14

    int-to-char v13, v13

    :try_start_98
    aput-char v13, v11, v8
    :try_end_9a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_98 .. :try_end_9a} :catch_9f
    .catchall {:try_start_98 .. :try_end_9a} :catchall_9c

    .line 3487
    move v8, v12

    goto :goto_b0

    .line 3508
    .end local v0    # "b1":I
    .end local v10    # "b2":I
    :catchall_9c
    move-exception v0

    move v8, v12

    goto :goto_d2

    .line 3505
    :catch_9f
    move-exception v0

    move v8, v12

    goto :goto_e9

    .line 3483
    .end local v12    # "cpos":I
    .restart local v0    # "b1":I
    .restart local v8    # "cpos":I
    .restart local v10    # "b2":I
    :cond_a2
    :try_start_a2
    new-instance v11, Ljava/io/UTFDataFormatException;

    invoke-direct {v11}, Ljava/io/UTFDataFormatException;-><init>()V

    .end local v4    # "start":I
    .end local v5    # "avail":I
    .end local v6    # "stop":I
    .end local v7    # "outOfBounds":Z
    .end local v8    # "cpos":I
    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "sbuf":Ljava/lang/StringBuilder;
    .end local p2    # "utflen":J
    throw v11

    .line 3476
    .end local v10    # "b2":I
    .restart local v4    # "start":I
    .restart local v5    # "avail":I
    .restart local v6    # "stop":I
    .restart local v7    # "outOfBounds":Z
    .restart local v8    # "cpos":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "sbuf":Ljava/lang/StringBuilder;
    .restart local p2    # "utflen":J
    :pswitch_a8
    iget-object v10, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_aa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a2 .. :try_end_aa} :catch_e8
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_d1

    add-int/lit8 v11, v8, 0x1

    .end local v8    # "cpos":I
    .local v11, "cpos":I
    int-to-char v12, v0

    :try_start_ad
    aput-char v12, v10, v8
    :try_end_af
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_ad .. :try_end_af} :catch_b5
    .catchall {:try_start_ad .. :try_end_af} :catchall_b2

    .line 3477
    move v8, v11

    .line 3504
    .end local v0    # "b1":I
    .end local v11    # "cpos":I
    .restart local v8    # "cpos":I
    :goto_b0
    goto/16 :goto_20

    .line 3508
    .end local v8    # "cpos":I
    .restart local v11    # "cpos":I
    :catchall_b2
    move-exception v0

    move v8, v11

    goto :goto_d2

    .line 3505
    :catch_b5
    move-exception v0

    move v8, v11

    goto :goto_e9

    .line 3502
    .end local v11    # "cpos":I
    .restart local v0    # "b1":I
    .restart local v8    # "cpos":I
    :goto_b8
    :try_start_b8
    invoke-direct {v10}, Ljava/io/UTFDataFormatException;-><init>()V

    .end local v4    # "start":I
    .end local v5    # "avail":I
    .end local v6    # "stop":I
    .end local v7    # "outOfBounds":Z
    .end local v8    # "cpos":I
    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "sbuf":Ljava/lang/StringBuilder;
    .end local p2    # "utflen":J
    throw v10
    :try_end_bc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b8 .. :try_end_bc} :catch_e8
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_d1

    .line 3508
    .end local v0    # "b1":I
    .restart local v4    # "start":I
    .restart local v5    # "avail":I
    .restart local v6    # "stop":I
    .restart local v7    # "outOfBounds":Z
    .restart local v8    # "cpos":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "sbuf":Ljava/lang/StringBuilder;
    .restart local p2    # "utflen":J
    :cond_bc
    if-nez v7, :cond_c7

    iget v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v4

    int-to-long v10, v0

    cmp-long v0, v10, v2

    if-gtz v0, :cond_c7

    goto :goto_f4

    .line 3514
    :cond_c7
    long-to-int v0, v2

    add-int/2addr v0, v4

    iput v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3515
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    .line 3508
    :catchall_d1
    move-exception v0

    :goto_d2
    if-nez v7, :cond_de

    iget v9, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v9, v4

    int-to-long v9, v9

    cmp-long v9, v9, v2

    if-lez v9, :cond_dd

    goto :goto_de

    .line 3517
    :cond_dd
    throw v0

    .line 3514
    :cond_de
    :goto_de
    long-to-int v0, v2

    add-int/2addr v0, v4

    iput v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3515
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    .line 3505
    :catch_e8
    move-exception v0

    .line 3506
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_e9
    const/4 v7, 0x1

    .line 3508
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    if-nez v7, :cond_100

    iget v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v4

    int-to-long v10, v0

    cmp-long v0, v10, v2

    if-gtz v0, :cond_100

    .line 3519
    :goto_f4
    iget-object v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    move-object/from16 v10, p1

    invoke-virtual {v10, v0, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3520
    iget v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v4

    int-to-long v11, v0

    return-wide v11

    .line 3508
    :cond_100
    move-object/from16 v10, p1

    .line 3514
    long-to-int v0, v2

    add-int/2addr v0, v4

    iput v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3515
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_7d
        :pswitch_7d
        :pswitch_3c
    .end packed-switch
.end method

.method private greylist-max-o refill()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2906
    nop

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2907
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-lez v2, :cond_2b

    .line 2908
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2909
    const/16 v5, 0x400

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v2

    .line 2910
    .local v2, "n":I
    if-ltz v2, :cond_23

    .line 2911
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2912
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2917
    .end local v2    # "n":I
    goto :goto_3b

    .line 2914
    .restart local v2    # "n":I
    :cond_23
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "unexpected EOF in middle of data block"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    throw v3

    .line 2918
    .end local v2    # "n":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    :cond_2b
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    move-result v2

    .line 2919
    .restart local v2    # "n":I
    if-ltz v2, :cond_37

    .line 2920
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2921
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    goto :goto_3b

    .line 2923
    :cond_37
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2924
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2927
    .end local v2    # "n":I
    :goto_3b
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3f} :catch_43

    if-eq v2, v0, :cond_1

    .line 2933
    nop

    .line 2934
    return-void

    .line 2928
    :catch_43
    move-exception v2

    .line 2929
    .local v2, "ex":Ljava/io/IOException;
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2930
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2931
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2932
    throw v2
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3027
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_46

    .line 3028
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-nez v0, :cond_28

    .line 3030
    :goto_f
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    move-result v0

    move v1, v0

    .local v1, "n":I
    if-nez v0, :cond_17

    goto :goto_f

    .line 3031
    :cond_17
    packed-switch v1, :pswitch_data_4e

    .line 3041
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3042
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3043
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    goto :goto_28

    .line 3036
    :pswitch_21
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3037
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3038
    goto :goto_28

    .line 3033
    :pswitch_27
    nop

    .line 3048
    .end local v1    # "n":I
    :cond_28
    :goto_28
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-lez v0, :cond_39

    .line 3049
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v0

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3a

    :cond_39
    move v0, v2

    .line 3050
    .local v0, "unreadAvail":I
    :goto_3a
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v1, :cond_45

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    add-int v2, v1, v0

    :cond_45
    return v2

    .line 3052
    .end local v0    # "unreadAvail":I
    :cond_46
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v0

    return v0

    nop

    :pswitch_data_4e
    .packed-switch -0x2
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3057
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_c

    .line 3058
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3059
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3060
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 3062
    :cond_c
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->close()V

    .line 3063
    return-void
.end method

.method greylist-max-o currentBlockRemaining()I
    .registers 3

    .line 2942
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_13

    .line 2943
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_11

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    add-int/2addr v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    .line 2945
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method greylist-max-o getBlockDataMode()Z
    .registers 2

    .line 2807
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    return v0
.end method

.method blacklist getBytesRead()J
    .registers 3

    .line 3587
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method greylist-max-o peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2955
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_1c

    .line 2956
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_d

    .line 2957
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2959
    :cond_d
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1a

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1b

    :cond_1a
    const/4 v0, -0x1

    :goto_1b
    return v0

    .line 2961
    :cond_1c
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    move-result v0

    return v0
.end method

.method greylist-max-o peekByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2971
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    move-result v0

    .line 2972
    .local v0, "val":I
    if-ltz v0, :cond_8

    .line 2975
    int-to-byte v1, v0

    return v1

    .line 2973
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2988
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_20

    .line 2989
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_d

    .line 2990
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2992
    :cond_d
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1e

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1f

    :cond_1e
    const/4 v0, -0x1

    :goto_1f
    return v0

    .line 2994
    :cond_20
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2999
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v0

    return v0
.end method

.method greylist-max-o read([BIIZ)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3073
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 3074
    return v0

    .line 3075
    :cond_4
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_2d

    .line 3076
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_11

    .line 3077
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 3079
    :cond_11
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-gez v0, :cond_17

    .line 3080
    const/4 v0, -0x1

    return v0

    .line 3082
    :cond_17
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3083
    .local v0, "nread":I
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3084
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3085
    return v0

    .line 3086
    .end local v0    # "nread":I
    :cond_2d
    if-eqz p4, :cond_45

    .line 3087
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/16 v3, 0x400

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v1

    .line 3088
    .local v1, "nread":I
    if-lez v1, :cond_44

    .line 3089
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3091
    :cond_44
    return v1

    .line 3093
    .end local v1    # "nread":I
    :cond_45
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3131
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 3132
    .local v0, "v":I
    if-ltz v0, :cond_c

    .line 3135
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 3133
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method greylist-max-o readBooleans([ZII)V
    .registers 10
    .param p1, "v"    # [Z
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3256
    add-int v0, p2, p3

    .line 3257
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_4f

    .line 3258
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1d

    .line 3259
    sub-int v1, v0, p2

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3260
    .local v1, "span":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3261
    add-int v2, p2, v1

    .line 3262
    .local v2, "stop":I
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3263
    .end local v1    # "span":I
    goto :goto_3b

    .end local v2    # "stop":I
    :cond_1d
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_31

    .line 3264
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    aput-boolean v2, p1, p2

    .line 3265
    move p2, v1

    goto :goto_2

    .line 3267
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_31
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    add-int/2addr v1, p2

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3270
    .restart local v2    # "stop":I
    :goto_3b
    if-ge p2, v2, :cond_2

    .line 3271
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v3, v4}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v3

    aput-boolean v3, p1, p2

    move p2, v1

    goto :goto_3b

    .line 3274
    .end local v1    # "off":I
    .end local v2    # "stop":I
    .restart local p2    # "off":I
    :cond_4f
    return-void
.end method

.method public whitelist test-api readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3139
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 3140
    .local v0, "v":I
    if-ltz v0, :cond_8

    .line 3143
    int-to-byte v1, v0

    return v1

    .line 3141
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public whitelist test-api readChar()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3155
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x2

    if-nez v0, :cond_10

    .line 3156
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3157
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 3158
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 3159
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0

    .line 3161
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getChar([BI)C

    move-result v0

    .line 3162
    .local v0, "v":C
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3163
    return v0
.end method

.method greylist-max-o readChars([CII)V
    .registers 11
    .param p1, "v"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3277
    add-int v0, p2, p3

    .line 3278
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_54

    .line 3279
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v2, 0x2

    if-nez v1, :cond_20

    .line 3280
    sub-int v1, v0, p2

    const/16 v3, 0x200

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3281
    .local v1, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3282
    add-int v3, p2, v1

    .line 3283
    .local v3, "stop":I
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3284
    .end local v1    # "span":I
    goto :goto_3f

    .end local v3    # "stop":I
    :cond_20
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_33

    .line 3285
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    aput-char v2, p1, p2

    .line 3286
    move p2, v1

    goto :goto_2

    .line 3288
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_33
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3291
    .restart local v3    # "stop":I
    :goto_3f
    if-ge p2, v3, :cond_2

    .line 3292
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getChar([BI)C

    move-result v4

    aput-char v4, p1, p2

    .line 3293
    iget p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move p2, v1

    goto :goto_3f

    .line 3296
    .end local v1    # "off":I
    .end local v3    # "stop":I
    .restart local p2    # "off":I
    :cond_54
    return-void
.end method

.method public whitelist test-api readDouble()D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3227
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/16 v1, 0x8

    if-nez v0, :cond_11

    .line 3228
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3229
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1f

    .line 3230
    :cond_11
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1f

    .line 3231
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0

    .line 3233
    :cond_1f
    :goto_1f
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v2

    .line 3234
    .local v2, "v":D
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3235
    return-wide v2
.end method

.method greylist-max-o readDoubles([DII)V
    .registers 10
    .param p1, "v"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3385
    add-int v0, p2, p3

    .line 3386
    .local v0, "endoff":I
    :goto_2
    if-ge p2, v0, :cond_4f

    .line 3387
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1d

    .line 3388
    sub-int v1, v0, p2

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3389
    .local v1, "span":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v4, v1, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3390
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_3f

    .line 3391
    .end local v1    # "span":I
    :cond_1d
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    const/16 v2, 0x8

    if-ge v1, v2, :cond_32

    .line 3392
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, p2

    .line 3393
    move p2, v1

    goto :goto_2

    .line 3395
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_32
    sub-int v1, v0, p2

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3398
    .local v1, "span":I
    :goto_3f
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/io/ObjectInputStream;->-$$Nest$smbytesToDoubles([BI[DII)V

    .line 3399
    add-int/2addr p2, v1

    .line 3400
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    shl-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_2

    .line 3402
    .end local v1    # "span":I
    :cond_4f
    return-void
.end method

.method public whitelist test-api readFloat()F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3203
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x4

    if-nez v0, :cond_10

    .line 3204
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3205
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 3206
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 3207
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0

    .line 3209
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getFloat([BI)F

    move-result v0

    .line 3210
    .local v0, "v":F
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3211
    return v0
.end method

.method greylist-max-o readFloats([FII)V
    .registers 10
    .param p1, "v"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3343
    add-int v0, p2, p3

    .line 3344
    .local v0, "endoff":I
    :goto_2
    if-ge p2, v0, :cond_4e

    .line 3345
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1d

    .line 3346
    sub-int v1, v0, p2

    const/16 v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3347
    .local v1, "span":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3348
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_3e

    .line 3349
    .end local v1    # "span":I
    :cond_1d
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_31

    .line 3350
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    aput v2, p1, p2

    .line 3351
    move p2, v1

    goto :goto_2

    .line 3353
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_31
    sub-int v1, v0, p2

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3356
    .local v1, "span":I
    :goto_3e
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/io/ObjectInputStream;->-$$Nest$smbytesToFloats([BI[FII)V

    .line 3357
    add-int/2addr p2, v1

    .line 3358
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    shl-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_2

    .line 3360
    .end local v1    # "span":I
    :cond_4e
    return-void
.end method

.method public whitelist test-api readFully([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3106
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 3107
    return-void
.end method

.method public whitelist test-api readFully([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 3111
    return-void
.end method

.method public greylist-max-o readFully([BIIZ)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3116
    nop

    :goto_1
    if-lez p3, :cond_12

    .line 3117
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v0

    .line 3118
    .local v0, "n":I
    if-ltz v0, :cond_c

    .line 3121
    add-int/2addr p2, v0

    .line 3122
    sub-int/2addr p3, v0

    .line 3123
    .end local v0    # "n":I
    goto :goto_1

    .line 3119
    .restart local v0    # "n":I
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 3124
    .end local v0    # "n":I
    :cond_12
    return-void
.end method

.method public whitelist test-api readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3191
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x4

    if-nez v0, :cond_10

    .line 3192
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3193
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 3194
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 3195
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0

    .line 3197
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getInt([BI)I

    move-result v0

    .line 3198
    .local v0, "v":I
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3199
    return v0
.end method

.method greylist-max-o readInts([III)V
    .registers 11
    .param p1, "v"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3321
    add-int v0, p2, p3

    .line 3322
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_54

    .line 3323
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v2, 0x4

    if-nez v1, :cond_20

    .line 3324
    sub-int v1, v0, p2

    const/16 v3, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3325
    .local v1, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3326
    add-int v3, p2, v1

    .line 3327
    .local v3, "stop":I
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3328
    .end local v1    # "span":I
    goto :goto_3f

    .end local v3    # "stop":I
    :cond_20
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_33

    .line 3329
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aput v2, p1, p2

    .line 3330
    move p2, v1

    goto :goto_2

    .line 3332
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_33
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3335
    .restart local v3    # "stop":I
    :goto_3f
    if-ge p2, v3, :cond_2

    .line 3336
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getInt([BI)I

    move-result v4

    aput v4, p1, p2

    .line 3337
    iget p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move p2, v1

    goto :goto_3f

    .line 3340
    .end local v1    # "off":I
    .end local v3    # "stop":I
    .restart local p2    # "off":I
    :cond_54
    return-void
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3244
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3215
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/16 v1, 0x8

    if-nez v0, :cond_11

    .line 3216
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3217
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1f

    .line 3218
    :cond_11
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1f

    .line 3219
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 3221
    :cond_1f
    :goto_1f
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v2

    .line 3222
    .local v2, "v":J
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3223
    return-wide v2
.end method

.method greylist-max-o readLongUTF()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3410
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o readLongs([JII)V
    .registers 11
    .param p1, "v"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3363
    add-int v0, p2, p3

    .line 3364
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_55

    .line 3365
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/16 v2, 0x8

    if-nez v1, :cond_21

    .line 3366
    sub-int v1, v0, p2

    const/16 v3, 0x80

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3367
    .local v1, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v1, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3368
    add-int v3, p2, v1

    .line 3369
    .local v3, "stop":I
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3370
    .end local v1    # "span":I
    goto :goto_40

    .end local v3    # "stop":I
    :cond_21
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_34

    .line 3371
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, p2

    .line 3372
    move p2, v1

    goto :goto_2

    .line 3374
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_34
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3377
    .restart local v3    # "stop":I
    :goto_40
    if-ge p2, v3, :cond_2

    .line 3378
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v4

    aput-wide v4, p1, p2

    .line 3379
    iget p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move p2, v1

    goto :goto_40

    .line 3382
    .end local v1    # "off":I
    .end local v3    # "stop":I
    .restart local p2    # "off":I
    :cond_55
    return-void
.end method

.method public whitelist test-api readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3167
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x2

    if-nez v0, :cond_10

    .line 3168
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3169
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 3170
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 3171
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0

    .line 3173
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getShort([BI)S

    move-result v0

    .line 3174
    .local v0, "v":S
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3175
    return v0
.end method

.method greylist-max-o readShorts([SII)V
    .registers 11
    .param p1, "v"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3299
    add-int v0, p2, p3

    .line 3300
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_54

    .line 3301
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v2, 0x2

    if-nez v1, :cond_20

    .line 3302
    sub-int v1, v0, p2

    const/16 v3, 0x200

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3303
    .local v1, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3304
    add-int v3, p2, v1

    .line 3305
    .local v3, "stop":I
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3306
    .end local v1    # "span":I
    goto :goto_3f

    .end local v3    # "stop":I
    :cond_20
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_33

    .line 3307
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    aput-short v2, p1, p2

    .line 3308
    move p2, v1

    goto :goto_2

    .line 3310
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_33
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3313
    .restart local v3    # "stop":I
    :goto_3f
    if-ge p2, v3, :cond_2

    .line 3314
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getShort([BI)S

    move-result v4

    aput-short v4, p1, p2

    .line 3315
    iget p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move p2, v1

    goto :goto_3f

    .line 3318
    .end local v1    # "off":I
    .end local v3    # "stop":I
    .restart local p2    # "off":I
    :cond_54
    return-void
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3239
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3147
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 3148
    .local v0, "v":I
    if-ltz v0, :cond_7

    .line 3151
    return v0

    .line 3149
    :cond_7
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public whitelist test-api readUnsignedShort()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3179
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x2

    if-nez v0, :cond_10

    .line 3180
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3181
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 3182
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 3183
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0

    .line 3185
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getShort([BI)S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 3186
    .local v0, "v":I
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3187
    return v0
.end method

.method greylist-max-o setBlockDataMode(Z)Z
    .registers 4
    .param p1, "newmode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2788
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-ne v0, p1, :cond_7

    .line 2789
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    return v0

    .line 2791
    :cond_7
    if-eqz p1, :cond_11

    .line 2792
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2793
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2794
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    goto :goto_17

    .line 2795
    :cond_11
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-lt v0, v1, :cond_1e

    .line 2798
    :goto_17
    iput-boolean p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    .line 2799
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 2796
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unread block data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 9
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3003
    move-wide v0, p1

    .line 3004
    .local v0, "remain":J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_43

    .line 3005
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v2, :cond_2c

    .line 3006
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v2, v3, :cond_14

    .line 3007
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 3009
    :cond_14
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-gez v2, :cond_19

    .line 3010
    goto :goto_43

    .line 3012
    :cond_19
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 3013
    .local v2, "nread":I
    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 3014
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3015
    .end local v2    # "nread":I
    goto :goto_1

    .line 3016
    :cond_2c
    const-wide/16 v2, 0x400

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 3017
    .restart local v2    # "nread":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v3

    move v2, v3

    if-gez v3, :cond_40

    .line 3018
    goto :goto_43

    .line 3020
    :cond_40
    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 3021
    .end local v2    # "nread":I
    goto :goto_1

    .line 3023
    :cond_43
    :goto_43
    sub-long v2, p1, v0

    return-wide v2
.end method

.method greylist-max-o skipBlockData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2816
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_d

    .line 2819
    :goto_4
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_c

    .line 2820
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    goto :goto_4

    .line 2822
    :cond_c
    return-void

    .line 2817
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in block data mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3127
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
