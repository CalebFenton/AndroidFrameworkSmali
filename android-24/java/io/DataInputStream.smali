.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private bytearr:[B

.field private chararr:[C

.field private lineBuffer:[C

.field private readBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/16 v1, 0x50

    #@2
    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    .line 58
    new-array v0, v1, [B

    #@7
    iput-object v0, p0, Ljava/io/DataInputStream;->bytearr:[B

    #@9
    .line 59
    new-array v0, v1, [C

    #@b
    iput-object v0, p0, Ljava/io/DataInputStream;->chararr:[C

    #@d
    .line 396
    const/16 v0, 0x8

    #@f
    new-array v0, v0, [B

    #@11
    iput-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@13
    .line 51
    return-void
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 14
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/16 v12, 0x80

    #@3
    .line 589
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    #@6
    move-result v9

    #@7
    .line 590
    .local v9, "utflen":I
    const/4 v0, 0x0

    #@8
    .line 591
    .local v0, "bytearr":[B
    const/4 v4, 0x0

    #@9
    .line 592
    .local v4, "chararr":[C
    instance-of v10, p0, Ljava/io/DataInputStream;

    #@b
    if-eqz v10, :cond_2

    #@d
    move-object v8, p0

    #@e
    .line 593
    check-cast v8, Ljava/io/DataInputStream;

    #@10
    .line 594
    .local v8, "dis":Ljava/io/DataInputStream;
    iget-object v10, v8, Ljava/io/DataInputStream;->bytearr:[B

    #@12
    array-length v10, v10

    #@13
    if-ge v10, v9, :cond_0

    #@15
    .line 595
    mul-int/lit8 v10, v9, 0x2

    #@17
    new-array v10, v10, [B

    #@19
    iput-object v10, v8, Ljava/io/DataInputStream;->bytearr:[B

    #@1b
    .line 596
    mul-int/lit8 v10, v9, 0x2

    #@1d
    new-array v10, v10, [C

    #@1f
    iput-object v10, v8, Ljava/io/DataInputStream;->chararr:[C

    #@21
    .line 598
    :cond_0
    iget-object v4, v8, Ljava/io/DataInputStream;->chararr:[C

    #@23
    .line 599
    .local v4, "chararr":[C
    iget-object v0, v8, Ljava/io/DataInputStream;->bytearr:[B

    #@25
    .line 606
    .end local v8    # "dis":Ljava/io/DataInputStream;
    .local v0, "bytearr":[B
    :goto_0
    const/4 v7, 0x0

    #@26
    .line 607
    .local v7, "count":I
    const/4 v5, 0x0

    #@27
    .line 609
    .local v5, "chararr_count":I
    invoke-interface {p0, v0, v13, v9}, Ljava/io/DataInput;->readFully([BII)V

    #@2a
    move v6, v5

    #@2b
    .line 611
    .end local v5    # "chararr_count":I
    .local v6, "chararr_count":I
    :goto_1
    if-ge v7, v9, :cond_1

    #@2d
    .line 612
    aget-byte v10, v0, v7

    #@2f
    and-int/lit16 v1, v10, 0xff

    #@31
    .line 613
    .local v1, "c":I
    const/16 v10, 0x7f

    #@33
    if-le v1, v10, :cond_3

    #@35
    .line 618
    .end local v1    # "c":I
    :cond_1
    :goto_2
    if-ge v7, v9, :cond_9

    #@37
    .line 619
    aget-byte v10, v0, v7

    #@39
    and-int/lit16 v1, v10, 0xff

    #@3b
    .line 620
    .restart local v1    # "c":I
    shr-int/lit8 v10, v1, 0x4

    #@3d
    packed-switch v10, :pswitch_data_0

    #@40
    .line 656
    :pswitch_0
    new-instance v10, Ljava/io/UTFDataFormatException;

    #@42
    .line 657
    new-instance v11, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v12, "malformed input around byte "

    #@4a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v11

    #@4e
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v11

    #@52
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v11

    #@56
    .line 656
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@59
    throw v10

    #@5a
    .line 601
    .end local v1    # "c":I
    .end local v6    # "chararr_count":I
    .end local v7    # "count":I
    .local v0, "bytearr":[B
    .local v4, "chararr":[C
    :cond_2
    new-array v0, v9, [B

    #@5c
    .line 602
    .local v0, "bytearr":[B
    new-array v4, v9, [C

    #@5e
    .local v4, "chararr":[C
    goto :goto_0

    #@5f
    .line 614
    .restart local v1    # "c":I
    .restart local v6    # "chararr_count":I
    .restart local v7    # "count":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@61
    .line 615
    add-int/lit8 v5, v6, 0x1

    #@63
    .end local v6    # "chararr_count":I
    .restart local v5    # "chararr_count":I
    int-to-char v10, v1

    #@64
    aput-char v10, v4, v6

    #@66
    move v6, v5

    #@67
    .end local v5    # "chararr_count":I
    .restart local v6    # "chararr_count":I
    goto :goto_1

    #@68
    .line 623
    :pswitch_1
    add-int/lit8 v7, v7, 0x1

    #@6a
    .line 624
    add-int/lit8 v5, v6, 0x1

    #@6c
    .end local v6    # "chararr_count":I
    .restart local v5    # "chararr_count":I
    int-to-char v10, v1

    #@6d
    aput-char v10, v4, v6

    #@6f
    :goto_3
    move v6, v5

    #@70
    .end local v5    # "chararr_count":I
    .restart local v6    # "chararr_count":I
    goto :goto_2

    #@71
    .line 628
    :pswitch_2
    add-int/lit8 v7, v7, 0x2

    #@73
    .line 629
    if-le v7, v9, :cond_4

    #@75
    .line 630
    new-instance v10, Ljava/io/UTFDataFormatException;

    #@77
    .line 631
    const-string/jumbo v11, "malformed input: partial character at end"

    #@7a
    .line 630
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v10

    #@7e
    .line 632
    :cond_4
    add-int/lit8 v10, v7, -0x1

    #@80
    aget-byte v2, v0, v10

    #@82
    .line 633
    .local v2, "char2":I
    and-int/lit16 v10, v2, 0xc0

    #@84
    if-eq v10, v12, :cond_5

    #@86
    .line 634
    new-instance v10, Ljava/io/UTFDataFormatException;

    #@88
    .line 635
    new-instance v11, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v12, "malformed input around byte "

    #@90
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v11

    #@94
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v11

    #@98
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v11

    #@9c
    .line 634
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v10

    #@a0
    .line 636
    :cond_5
    add-int/lit8 v5, v6, 0x1

    #@a2
    .end local v6    # "chararr_count":I
    .restart local v5    # "chararr_count":I
    and-int/lit8 v10, v1, 0x1f

    #@a4
    shl-int/lit8 v10, v10, 0x6

    #@a6
    .line 637
    and-int/lit8 v11, v2, 0x3f

    #@a8
    .line 636
    or-int/2addr v10, v11

    #@a9
    int-to-char v10, v10

    #@aa
    aput-char v10, v4, v6

    #@ac
    goto :goto_3

    #@ad
    .line 641
    .end local v2    # "char2":I
    .end local v5    # "chararr_count":I
    .restart local v6    # "chararr_count":I
    :pswitch_3
    add-int/lit8 v7, v7, 0x3

    #@af
    .line 642
    if-le v7, v9, :cond_6

    #@b1
    .line 643
    new-instance v10, Ljava/io/UTFDataFormatException;

    #@b3
    .line 644
    const-string/jumbo v11, "malformed input: partial character at end"

    #@b6
    .line 643
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v10

    #@ba
    .line 645
    :cond_6
    add-int/lit8 v10, v7, -0x2

    #@bc
    aget-byte v2, v0, v10

    #@be
    .line 646
    .restart local v2    # "char2":I
    add-int/lit8 v10, v7, -0x1

    #@c0
    aget-byte v3, v0, v10

    #@c2
    .line 647
    .local v3, "char3":I
    and-int/lit16 v10, v2, 0xc0

    #@c4
    if-ne v10, v12, :cond_7

    #@c6
    and-int/lit16 v10, v3, 0xc0

    #@c8
    if-eq v10, v12, :cond_8

    #@ca
    .line 648
    :cond_7
    new-instance v10, Ljava/io/UTFDataFormatException;

    #@cc
    .line 649
    new-instance v11, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v12, "malformed input around byte "

    #@d4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v11

    #@d8
    add-int/lit8 v12, v7, -0x1

    #@da
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v11

    #@de
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v11

    #@e2
    .line 648
    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@e5
    throw v10

    #@e6
    .line 650
    :cond_8
    add-int/lit8 v5, v6, 0x1

    #@e8
    .end local v6    # "chararr_count":I
    .restart local v5    # "chararr_count":I
    and-int/lit8 v10, v1, 0xf

    #@ea
    shl-int/lit8 v10, v10, 0xc

    #@ec
    .line 651
    and-int/lit8 v11, v2, 0x3f

    #@ee
    shl-int/lit8 v11, v11, 0x6

    #@f0
    .line 650
    or-int/2addr v10, v11

    #@f1
    .line 652
    and-int/lit8 v11, v3, 0x3f

    #@f3
    shl-int/lit8 v11, v11, 0x0

    #@f5
    .line 650
    or-int/2addr v10, v11

    #@f6
    int-to-char v10, v10

    #@f7
    aput-char v10, v4, v6

    #@f9
    goto/16 :goto_3

    #@fb
    .line 661
    .end local v1    # "c":I
    .end local v2    # "char2":I
    .end local v3    # "char3":I
    .end local v5    # "chararr_count":I
    .restart local v6    # "chararr_count":I
    :cond_9
    new-instance v10, Ljava/lang/String;

    #@fd
    invoke-direct {v10, v4, v13, v6}, Ljava/lang/String;-><init>([CII)V

    #@100
    return-object v10

    #@101
    .line 620
    nop

    #@102
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


# virtual methods
.method public final read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    array-length v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final read([BII)I
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
    .line 149
    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 242
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@3
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@6
    move-result v0

    #@7
    .line 243
    .local v0, "ch":I
    if-gez v0, :cond_0

    #@9
    .line 244
    new-instance v1, Ljava/io/EOFException;

    #@b
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@e
    throw v1

    #@f
    .line 245
    :cond_0
    if-eqz v0, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    :cond_1
    return v1
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 266
    .local v0, "ch":I
    if-gez v0, :cond_0

    #@8
    .line 267
    new-instance v1, Ljava/io/EOFException;

    #@a
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@d
    throw v1

    #@e
    .line 268
    :cond_0
    int-to-byte v1, v0

    #@f
    return v1
.end method

.method public final readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 363
    .local v0, "ch1":I
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@8
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@b
    move-result v1

    #@c
    .line 364
    .local v1, "ch2":I
    or-int v2, v0, v1

    #@e
    if-gez v2, :cond_0

    #@10
    .line 365
    new-instance v2, Ljava/io/EOFException;

    #@12
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@15
    throw v2

    #@16
    .line 366
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    #@18
    shl-int/lit8 v3, v1, 0x0

    #@1a
    add-int/2addr v2, v3

    #@1b
    int-to-char v2, v2

    #@1c
    return v2
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 468
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    #@5
    .line 168
    return-void
.end method

.method public final readFully([BII)V
    .locals 5
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
    .line 191
    if-gez p3, :cond_0

    #@2
    .line 192
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@4
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@7
    throw v2

    #@8
    .line 193
    :cond_0
    const/4 v1, 0x0

    #@9
    .line 194
    .local v1, "n":I
    :goto_0
    if-ge v1, p3, :cond_2

    #@b
    .line 195
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@d
    add-int v3, p2, v1

    #@f
    sub-int v4, p3, v1

    #@11
    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    #@14
    move-result v0

    #@15
    .line 196
    .local v0, "count":I
    if-gez v0, :cond_1

    #@17
    .line 197
    new-instance v2, Ljava/io/EOFException;

    #@19
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@1c
    throw v2

    #@1d
    .line 198
    :cond_1
    add-int/2addr v1, v0

    #@1e
    goto :goto_0

    #@1f
    .line 190
    .end local v0    # "count":I
    :cond_2
    return-void
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 388
    .local v0, "ch1":I
    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@8
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    #@b
    move-result v1

    #@c
    .line 389
    .local v1, "ch2":I
    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@e
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    #@11
    move-result v2

    #@12
    .line 390
    .local v2, "ch3":I
    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@14
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    #@17
    move-result v3

    #@18
    .line 391
    .local v3, "ch4":I
    or-int v4, v0, v1

    #@1a
    or-int/2addr v4, v2

    #@1b
    or-int/2addr v4, v3

    #@1c
    if-gez v4, :cond_0

    #@1e
    .line 392
    new-instance v4, Ljava/io/EOFException;

    #@20
    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    #@23
    throw v4

    #@24
    .line 393
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    #@26
    shl-int/lit8 v5, v1, 0x10

    #@28
    add-int/2addr v4, v5

    #@29
    shl-int/lit8 v5, v2, 0x8

    #@2b
    add-int/2addr v4, v5

    #@2c
    shl-int/lit8 v5, v3, 0x0

    #@2e
    add-int/2addr v4, v5

    #@2f
    return v4
.end method

.method public final readLine()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 502
    iget-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    #@5
    .line 504
    .local v0, "buf":[C
    if-nez v0, :cond_0

    #@7
    .line 505
    const/16 v6, 0x80

    #@9
    new-array v0, v6, [C

    #@b
    .end local v0    # "buf":[C
    iput-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    #@d
    .line 508
    .restart local v0    # "buf":[C
    :cond_0
    array-length v5, v0

    #@e
    .line 509
    .local v5, "room":I
    const/4 v3, 0x0

    #@f
    .line 513
    .local v3, "offset":I
    :goto_0
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@11
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    #@14
    move-result v1

    #@15
    .local v1, "c":I
    sparse-switch v1, :sswitch_data_0

    #@18
    .line 529
    add-int/lit8 v5, v5, -0x1

    #@1a
    if-gez v5, :cond_1

    #@1c
    .line 530
    add-int/lit16 v6, v3, 0x80

    #@1e
    new-array v0, v6, [C

    #@20
    .line 531
    array-length v6, v0

    #@21
    sub-int/2addr v6, v3

    #@22
    add-int/lit8 v5, v6, -0x1

    #@24
    .line 532
    iget-object v6, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    #@26
    invoke-static {v6, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@29
    .line 533
    iput-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    #@2b
    .line 535
    :cond_1
    add-int/lit8 v4, v3, 0x1

    #@2d
    .end local v3    # "offset":I
    .local v4, "offset":I
    int-to-char v6, v1

    #@2e
    aput-char v6, v0, v3

    #@30
    move v3, v4

    #@31
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    #@32
    .line 519
    :sswitch_0
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@34
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    #@37
    move-result v2

    #@38
    .line 520
    .local v2, "c2":I
    const/16 v6, 0xa

    #@3a
    if-eq v2, v6, :cond_3

    #@3c
    if-eq v2, v9, :cond_3

    #@3e
    .line 521
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@40
    instance-of v6, v6, Ljava/io/PushbackInputStream;

    #@42
    if-nez v6, :cond_2

    #@44
    .line 522
    new-instance v6, Ljava/io/PushbackInputStream;

    #@46
    iget-object v7, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@48
    invoke-direct {v6, v7}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    #@4b
    iput-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@4d
    .line 524
    :cond_2
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@4f
    check-cast v6, Ljava/io/PushbackInputStream;

    #@51
    invoke-virtual {v6, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    #@54
    .line 539
    .end local v2    # "c2":I
    :cond_3
    :sswitch_1
    if-ne v1, v9, :cond_4

    #@56
    if-nez v3, :cond_4

    #@58
    .line 540
    return-object v10

    #@59
    .line 542
    :cond_4
    invoke-static {v0, v8, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    return-object v6

    #@5e
    .line 513
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public final readLong()J
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
    .line 416
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@3
    const/16 v1, 0x8

    #@5
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    #@8
    .line 417
    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@a
    aget-byte v0, v0, v2

    #@c
    int-to-long v0, v0

    #@d
    const/16 v2, 0x38

    #@f
    shl-long/2addr v0, v2

    #@10
    .line 418
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@12
    const/4 v3, 0x1

    #@13
    aget-byte v2, v2, v3

    #@15
    and-int/lit16 v2, v2, 0xff

    #@17
    int-to-long v2, v2

    #@18
    const/16 v4, 0x30

    #@1a
    shl-long/2addr v2, v4

    #@1b
    .line 417
    add-long/2addr v0, v2

    #@1c
    .line 419
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@1e
    const/4 v3, 0x2

    #@1f
    aget-byte v2, v2, v3

    #@21
    and-int/lit16 v2, v2, 0xff

    #@23
    int-to-long v2, v2

    #@24
    const/16 v4, 0x28

    #@26
    shl-long/2addr v2, v4

    #@27
    .line 417
    add-long/2addr v0, v2

    #@28
    .line 420
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@2a
    const/4 v3, 0x3

    #@2b
    aget-byte v2, v2, v3

    #@2d
    and-int/lit16 v2, v2, 0xff

    #@2f
    int-to-long v2, v2

    #@30
    const/16 v4, 0x20

    #@32
    shl-long/2addr v2, v4

    #@33
    .line 417
    add-long/2addr v0, v2

    #@34
    .line 421
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@36
    const/4 v3, 0x4

    #@37
    aget-byte v2, v2, v3

    #@39
    and-int/lit16 v2, v2, 0xff

    #@3b
    int-to-long v2, v2

    #@3c
    const/16 v4, 0x18

    #@3e
    shl-long/2addr v2, v4

    #@3f
    .line 417
    add-long/2addr v0, v2

    #@40
    .line 422
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@42
    const/4 v3, 0x5

    #@43
    aget-byte v2, v2, v3

    #@45
    and-int/lit16 v2, v2, 0xff

    #@47
    shl-int/lit8 v2, v2, 0x10

    #@49
    int-to-long v2, v2

    #@4a
    .line 417
    add-long/2addr v0, v2

    #@4b
    .line 423
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@4d
    const/4 v3, 0x6

    #@4e
    aget-byte v2, v2, v3

    #@50
    and-int/lit16 v2, v2, 0xff

    #@52
    shl-int/lit8 v2, v2, 0x8

    #@54
    int-to-long v2, v2

    #@55
    .line 417
    add-long/2addr v0, v2

    #@56
    .line 424
    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    #@58
    const/4 v3, 0x7

    #@59
    aget-byte v2, v2, v3

    #@5b
    and-int/lit16 v2, v2, 0xff

    #@5d
    shl-int/lit8 v2, v2, 0x0

    #@5f
    int-to-long v2, v2

    #@60
    .line 417
    add-long/2addr v0, v2

    #@61
    return-wide v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 313
    .local v0, "ch1":I
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@8
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@b
    move-result v1

    #@c
    .line 314
    .local v1, "ch2":I
    or-int v2, v0, v1

    #@e
    if-gez v2, :cond_0

    #@10
    .line 315
    new-instance v2, Ljava/io/EOFException;

    #@12
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@15
    throw v2

    #@16
    .line 316
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    #@18
    shl-int/lit8 v3, v1, 0x0

    #@1a
    add-int/2addr v2, v3

    #@1b
    int-to-short v2, v2

    #@1c
    return v2
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 564
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 289
    .local v0, "ch":I
    if-gez v0, :cond_0

    #@8
    .line 290
    new-instance v1, Ljava/io/EOFException;

    #@a
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@d
    throw v1

    #@e
    .line 291
    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 337
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 338
    .local v0, "ch1":I
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@8
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    #@b
    move-result v1

    #@c
    .line 339
    .local v1, "ch2":I
    or-int v2, v0, v1

    #@e
    if-gez v2, :cond_0

    #@10
    .line 340
    new-instance v2, Ljava/io/EOFException;

    #@12
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@15
    throw v2

    #@16
    .line 341
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    #@18
    shl-int/lit8 v3, v1, 0x0

    #@1a
    add-int/2addr v2, v3

    #@1b
    return v2
.end method

.method public final skipBytes(I)I
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    const/4 v1, 0x0

    #@1
    .line 218
    .local v1, "total":I
    const/4 v0, 0x0

    #@2
    .line 220
    .local v0, "cur":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@4
    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    #@6
    sub-int v3, p1, v1

    #@8
    int-to-long v4, v3

    #@9
    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    #@c
    move-result-wide v2

    #@d
    long-to-int v0, v2

    #@e
    if-lez v0, :cond_0

    #@10
    .line 221
    add-int/2addr v1, v0

    #@11
    goto :goto_0

    #@12
    .line 224
    :cond_0
    return v1
.end method
