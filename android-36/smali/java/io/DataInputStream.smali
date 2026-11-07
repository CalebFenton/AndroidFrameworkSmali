.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private greylist-max-o bytearr:[B

.field private greylist-max-o chararr:[C

.field private greylist-max-o lineBuffer:[C

.field private greylist-max-o readBuffer:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    const/16 v0, 0x50

    new-array v1, v0, [B

    iput-object v1, p0, Ljava/io/DataInputStream;->bytearr:[B

    .line 62
    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/DataInputStream;->chararr:[C

    .line 398
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    .line 56
    return-void
.end method

.method public static final whitelist test-api readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 13
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 592
    .local v0, "utflen":I
    const/4 v1, 0x0

    .line 593
    .local v1, "bytearr":[B
    const/4 v2, 0x0

    .line 594
    .local v2, "chararr":[C
    instance-of v3, p0, Ljava/io/DataInputStream;

    if-eqz v3, :cond_23

    .line 595
    move-object v3, p0

    check-cast v3, Ljava/io/DataInputStream;

    .line 596
    .local v3, "dis":Ljava/io/DataInputStream;
    iget-object v4, v3, Ljava/io/DataInputStream;->bytearr:[B

    array-length v4, v4

    if-ge v4, v0, :cond_1e

    .line 597
    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [B

    iput-object v4, v3, Ljava/io/DataInputStream;->bytearr:[B

    .line 598
    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [C

    iput-object v4, v3, Ljava/io/DataInputStream;->chararr:[C

    .line 600
    :cond_1e
    iget-object v2, v3, Ljava/io/DataInputStream;->chararr:[C

    .line 601
    iget-object v1, v3, Ljava/io/DataInputStream;->bytearr:[B

    .line 602
    .end local v3    # "dis":Ljava/io/DataInputStream;
    goto :goto_27

    .line 603
    :cond_23
    new-array v1, v0, [B

    .line 604
    new-array v2, v0, [C

    .line 608
    :goto_27
    const/4 v3, 0x0

    .line 609
    .local v3, "count":I
    const/4 v4, 0x0

    .line 611
    .local v4, "chararr_count":I
    const/4 v5, 0x0

    invoke-interface {p0, v1, v5, v0}, Ljava/io/DataInput;->readFully([BII)V

    .line 613
    :goto_2d
    if-ge v3, v0, :cond_41

    .line 614
    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    .line 615
    .local v6, "c":I
    const/16 v7, 0x7f

    if-le v6, v7, :cond_38

    goto :goto_41

    .line 616
    :cond_38
    add-int/lit8 v3, v3, 0x1

    .line 617
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "chararr_count":I
    .local v7, "chararr_count":I
    int-to-char v8, v6

    aput-char v8, v2, v4

    move v4, v7

    goto :goto_2d

    .line 620
    .end local v6    # "c":I
    .end local v7    # "chararr_count":I
    .restart local v4    # "chararr_count":I
    :cond_41
    :goto_41
    if-ge v3, v0, :cond_f2

    .line 621
    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    .line 622
    .restart local v6    # "c":I
    shr-int/lit8 v7, v6, 0x4

    const-string v8, "malformed input: partial character at end"

    const/16 v9, 0x80

    const-string v10, "malformed input around byte "

    packed-switch v7, :pswitch_data_f8

    .line 658
    :pswitch_52
    new-instance v5, Ljava/io/UTFDataFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 643
    :pswitch_69
    add-int/lit8 v3, v3, 0x3

    .line 644
    if-gt v3, v0, :cond_aa

    .line 647
    add-int/lit8 v7, v3, -0x2

    aget-byte v7, v1, v7

    .line 648
    .local v7, "char2":I
    add-int/lit8 v8, v3, -0x1

    aget-byte v8, v1, v8

    .line 649
    .local v8, "char3":I
    and-int/lit16 v11, v7, 0xc0

    if-ne v11, v9, :cond_91

    and-int/lit16 v11, v8, 0xc0

    if-ne v11, v9, :cond_91

    .line 652
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "chararr_count":I
    .local v9, "chararr_count":I
    and-int/lit8 v10, v6, 0xf

    shl-int/lit8 v10, v10, 0xc

    and-int/lit8 v11, v7, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    and-int/lit8 v11, v8, 0x3f

    shl-int/2addr v11, v5

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v2, v4

    .line 655
    move v4, v9

    goto :goto_41

    .line 650
    .end local v9    # "chararr_count":I
    .restart local v4    # "chararr_count":I
    :cond_91
    new-instance v5, Ljava/io/UTFDataFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 645
    .end local v7    # "char2":I
    .end local v8    # "char3":I
    :cond_aa
    new-instance v5, Ljava/io/UTFDataFormatException;

    invoke-direct {v5, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 630
    :pswitch_b0
    add-int/lit8 v3, v3, 0x2

    .line 631
    if-gt v3, v0, :cond_e2

    .line 634
    add-int/lit8 v7, v3, -0x1

    aget-byte v7, v1, v7

    .line 635
    .restart local v7    # "char2":I
    and-int/lit16 v8, v7, 0xc0

    if-ne v8, v9, :cond_cb

    .line 638
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "chararr_count":I
    .local v8, "chararr_count":I
    and-int/lit8 v9, v6, 0x1f

    shl-int/lit8 v9, v9, 0x6

    and-int/lit8 v10, v7, 0x3f

    or-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v2, v4

    .line 640
    move v4, v8

    goto/16 :goto_41

    .line 636
    .end local v8    # "chararr_count":I
    .restart local v4    # "chararr_count":I
    :cond_cb
    new-instance v5, Ljava/io/UTFDataFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 632
    .end local v7    # "char2":I
    :cond_e2
    new-instance v5, Ljava/io/UTFDataFormatException;

    invoke-direct {v5, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 625
    :pswitch_e8
    add-int/lit8 v3, v3, 0x1

    .line 626
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "chararr_count":I
    .local v7, "chararr_count":I
    int-to-char v8, v6

    aput-char v8, v2, v4

    .line 627
    move v4, v7

    goto/16 :goto_41

    .line 663
    .end local v6    # "c":I
    .end local v7    # "chararr_count":I
    .restart local v4    # "chararr_count":I
    :cond_f2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v5, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_b0
        :pswitch_b0
        :pswitch_69
    .end packed-switch
.end method


# virtual methods
.method public final whitelist test-api read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 251
    .local v0, "ch":I
    if-ltz v0, :cond_e

    .line 253
    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1

    .line 252
    :cond_e
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 274
    .local v0, "ch":I
    if-ltz v0, :cond_a

    .line 276
    int-to-byte v1, v0

    return v1

    .line 275
    :cond_a
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readChar()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 371
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final whitelist test-api readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final whitelist test-api readFully([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 174
    return-void
.end method

.method public final whitelist test-api readFully([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    if-ltz p3, :cond_1a

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "n":I
    :goto_3
    if-ge v0, p3, :cond_19

    .line 203
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 204
    .local v1, "count":I
    if-ltz v1, :cond_13

    .line 206
    add-int/2addr v0, v1

    .line 207
    .end local v1    # "count":I
    goto :goto_3

    .line 205
    .restart local v1    # "count":I
    :cond_13
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 208
    .end local v1    # "count":I
    :cond_19
    return-void

    .line 200
    .end local v0    # "n":I
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api readInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 395
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api readLine()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    iget-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    .line 506
    .local v0, "buf":[C
    if-nez v0, :cond_b

    .line 507
    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    move-object v0, v1

    .line 510
    :cond_b
    array-length v1, v0

    .line 511
    .local v1, "room":I
    const/4 v2, 0x0

    .line 515
    .local v2, "offset":I
    :goto_d
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v4, v3

    .local v4, "c":I
    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_64

    .line 531
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_5d

    .line 532
    add-int/lit16 v3, v2, 0x80

    new-array v0, v3, [C

    .line 533
    array-length v3, v0

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 534
    .end local v1    # "room":I
    .local v3, "room":I
    iget-object v1, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    iput-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    move v1, v3

    goto :goto_5d

    .line 521
    .end local v3    # "room":I
    .restart local v1    # "room":I
    :sswitch_2e
    iget-object v3, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 522
    .local v3, "c2":I
    const/16 v7, 0xa

    if-eq v3, v7, :cond_52

    if-eq v3, v6, :cond_52

    .line 523
    iget-object v7, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    instance-of v7, v7, Ljava/io/PushbackInputStream;

    if-nez v7, :cond_49

    .line 524
    new-instance v7, Ljava/io/PushbackInputStream;

    iget-object v8, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v7, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    .line 526
    :cond_49
    iget-object v7, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    check-cast v7, Ljava/io/PushbackInputStream;

    invoke-virtual {v7, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_52

    .line 518
    .end local v3    # "c2":I
    :sswitch_51
    nop

    .line 541
    :cond_52
    :goto_52
    if-ne v4, v6, :cond_58

    if-nez v2, :cond_58

    .line 542
    const/4 v3, 0x0

    return-object v3

    .line 544
    :cond_58
    invoke-static {v0, v5, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 537
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    int-to-char v5, v4

    aput-char v5, v0, v2

    .line 538
    move v2, v3

    goto :goto_d

    :sswitch_data_64
    .sparse-switch
        -0x1 -> :sswitch_51
        0xa -> :sswitch_51
        0xd -> :sswitch_2e
    .end sparse-switch
.end method

.method public final whitelist test-api readLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 419
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    aget-byte v0, v0, v1

    int-to-long v3, v0

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v5, 0x1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v5, 0x2

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v5, 0x3

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v5, 0x4

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v5, 0x5

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v5, 0x6

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v2

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v3, v0

    return-wide v3
.end method

.method public final whitelist test-api readShort()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 323
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final whitelist test-api readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 297
    .local v0, "ch":I
    if-ltz v0, :cond_9

    .line 299
    return v0

    .line 298
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readUnsignedShort()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 347
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final whitelist test-api skipBytes(I)I
    .registers 7
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "total":I
    const/4 v1, 0x0

    .line 228
    .local v1, "cur":I
    :goto_2
    if-ge v0, p1, :cond_13

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    sub-int v3, p1, v0

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v2, v2

    move v1, v2

    if-lez v2, :cond_13

    .line 229
    add-int/2addr v0, v1

    goto :goto_2

    .line 232
    :cond_13
    return v0
.end method
