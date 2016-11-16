.class public Ljava/io/DataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private bytearr:[B

.field private writeBuffer:[B

.field protected written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/io/DataOutputStream;->bytearr:[B

    #@6
    .line 204
    const/16 v0, 0x8

    #@8
    new-array v0, v0, [B

    #@a
    iput-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@c
    .line 59
    return-void
.end method

.method private incCount(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 68
    iget v1, p0, Ljava/io/DataOutputStream;->written:I

    #@2
    add-int v0, v1, p1

    #@4
    .line 69
    .local v0, "temp":I
    if-gez v0, :cond_0

    #@6
    .line 70
    const v0, 0x7fffffff

    #@9
    .line 72
    :cond_0
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    #@b
    .line 67
    return-void
.end method

.method static writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I
    .locals 14
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0x7ff

    #@2
    const/4 v12, 0x0

    #@3
    const/16 v11, 0x7f

    #@5
    const/4 v10, 0x1

    #@6
    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v6

    #@a
    .line 348
    .local v6, "strlen":I
    const/4 v7, 0x0

    #@b
    .line 352
    .local v7, "utflen":I
    const/4 v5, 0x0

    #@c
    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_2

    #@e
    .line 353
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v1

    #@12
    .line 354
    .local v1, "c":I
    if-lt v1, v10, :cond_0

    #@14
    if-gt v1, v11, :cond_0

    #@16
    .line 355
    add-int/lit8 v7, v7, 0x1

    #@18
    .line 352
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 356
    :cond_0
    if-le v1, v13, :cond_1

    #@1d
    .line 357
    add-int/lit8 v7, v7, 0x3

    #@1f
    goto :goto_1

    #@20
    .line 359
    :cond_1
    add-int/lit8 v7, v7, 0x2

    #@22
    goto :goto_1

    #@23
    .line 363
    .end local v1    # "c":I
    :cond_2
    const v8, 0xffff

    #@26
    if-le v7, v8, :cond_3

    #@28
    .line 364
    new-instance v8, Ljava/io/UTFDataFormatException;

    #@2a
    .line 365
    new-instance v9, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v10, "encoded string too long: "

    #@32
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v9

    #@36
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    const-string/jumbo v10, " bytes"

    #@3d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v9

    #@41
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v9

    #@45
    .line 364
    invoke-direct {v8, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@48
    throw v8

    #@49
    .line 367
    :cond_3
    const/4 v0, 0x0

    #@4a
    .line 368
    .local v0, "bytearr":[B
    instance-of v8, p1, Ljava/io/DataOutputStream;

    #@4c
    if-eqz v8, :cond_7

    #@4e
    move-object v4, p1

    #@4f
    .line 369
    check-cast v4, Ljava/io/DataOutputStream;

    #@51
    .line 370
    .local v4, "dos":Ljava/io/DataOutputStream;
    iget-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    #@53
    if-eqz v8, :cond_4

    #@55
    iget-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    #@57
    array-length v8, v8

    #@58
    add-int/lit8 v9, v7, 0x2

    #@5a
    if-ge v8, v9, :cond_5

    #@5c
    .line 371
    :cond_4
    mul-int/lit8 v8, v7, 0x2

    #@5e
    add-int/lit8 v8, v8, 0x2

    #@60
    new-array v8, v8, [B

    #@62
    iput-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    #@64
    .line 372
    :cond_5
    iget-object v0, v4, Ljava/io/DataOutputStream;->bytearr:[B

    #@66
    .line 377
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v0, "bytearr":[B
    :goto_2
    const/4 v2, 0x1

    #@67
    .local v2, "count":I
    ushr-int/lit8 v8, v7, 0x8

    #@69
    and-int/lit16 v8, v8, 0xff

    #@6b
    int-to-byte v8, v8

    #@6c
    aput-byte v8, v0, v12

    #@6e
    .line 378
    add-int/lit8 v3, v2, 0x1

    #@70
    .end local v2    # "count":I
    .local v3, "count":I
    ushr-int/lit8 v8, v7, 0x0

    #@72
    and-int/lit16 v8, v8, 0xff

    #@74
    int-to-byte v8, v8

    #@75
    aput-byte v8, v0, v2

    #@77
    .line 380
    const/4 v5, 0x0

    #@78
    .line 381
    const/4 v5, 0x0

    #@79
    :goto_3
    if-ge v5, v6, :cond_6

    #@7b
    .line 382
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@7e
    move-result v1

    #@7f
    .line 383
    .restart local v1    # "c":I
    if-lt v1, v10, :cond_6

    #@81
    if-le v1, v11, :cond_8

    #@83
    .line 387
    .end local v1    # "c":I
    :cond_6
    :goto_4
    if-ge v5, v6, :cond_b

    #@85
    .line 388
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@88
    move-result v1

    #@89
    .line 389
    .restart local v1    # "c":I
    if-lt v1, v10, :cond_9

    #@8b
    if-gt v1, v11, :cond_9

    #@8d
    .line 390
    add-int/lit8 v2, v3, 0x1

    #@8f
    .end local v3    # "count":I
    .restart local v2    # "count":I
    int-to-byte v8, v1

    #@90
    aput-byte v8, v0, v3

    #@92
    .line 387
    :goto_5
    add-int/lit8 v5, v5, 0x1

    #@94
    move v3, v2

    #@95
    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_4

    #@96
    .line 374
    .end local v1    # "c":I
    .end local v3    # "count":I
    .local v0, "bytearr":[B
    :cond_7
    add-int/lit8 v8, v7, 0x2

    #@98
    new-array v0, v8, [B

    #@9a
    .local v0, "bytearr":[B
    goto :goto_2

    #@9b
    .line 384
    .restart local v1    # "c":I
    .restart local v3    # "count":I
    :cond_8
    add-int/lit8 v2, v3, 0x1

    #@9d
    .end local v3    # "count":I
    .restart local v2    # "count":I
    int-to-byte v8, v1

    #@9e
    aput-byte v8, v0, v3

    #@a0
    .line 381
    add-int/lit8 v5, v5, 0x1

    #@a2
    move v3, v2

    #@a3
    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_3

    #@a4
    .line 392
    :cond_9
    if-le v1, v13, :cond_a

    #@a6
    .line 393
    add-int/lit8 v2, v3, 0x1

    #@a8
    .end local v3    # "count":I
    .restart local v2    # "count":I
    shr-int/lit8 v8, v1, 0xc

    #@aa
    and-int/lit8 v8, v8, 0xf

    #@ac
    or-int/lit16 v8, v8, 0xe0

    #@ae
    int-to-byte v8, v8

    #@af
    aput-byte v8, v0, v3

    #@b1
    .line 394
    add-int/lit8 v3, v2, 0x1

    #@b3
    .end local v2    # "count":I
    .restart local v3    # "count":I
    shr-int/lit8 v8, v1, 0x6

    #@b5
    and-int/lit8 v8, v8, 0x3f

    #@b7
    or-int/lit16 v8, v8, 0x80

    #@b9
    int-to-byte v8, v8

    #@ba
    aput-byte v8, v0, v2

    #@bc
    .line 395
    add-int/lit8 v2, v3, 0x1

    #@be
    .end local v3    # "count":I
    .restart local v2    # "count":I
    shr-int/lit8 v8, v1, 0x0

    #@c0
    and-int/lit8 v8, v8, 0x3f

    #@c2
    or-int/lit16 v8, v8, 0x80

    #@c4
    int-to-byte v8, v8

    #@c5
    aput-byte v8, v0, v3

    #@c7
    goto :goto_5

    #@c8
    .line 397
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_a
    add-int/lit8 v2, v3, 0x1

    #@ca
    .end local v3    # "count":I
    .restart local v2    # "count":I
    shr-int/lit8 v8, v1, 0x6

    #@cc
    and-int/lit8 v8, v8, 0x1f

    #@ce
    or-int/lit16 v8, v8, 0xc0

    #@d0
    int-to-byte v8, v8

    #@d1
    aput-byte v8, v0, v3

    #@d3
    .line 398
    add-int/lit8 v3, v2, 0x1

    #@d5
    .end local v2    # "count":I
    .restart local v3    # "count":I
    shr-int/lit8 v8, v1, 0x0

    #@d7
    and-int/lit8 v8, v8, 0x3f

    #@d9
    or-int/lit16 v8, v8, 0x80

    #@db
    int-to-byte v8, v8

    #@dc
    aput-byte v8, v0, v2

    #@de
    move v2, v3

    #@df
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_5

    #@e0
    .line 401
    .end local v1    # "c":I
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_b
    add-int/lit8 v8, v7, 0x2

    #@e2
    invoke-interface {p1, v0, v12, v8}, Ljava/io/DataOutput;->write([BII)V

    #@e5
    .line 402
    add-int/lit8 v8, v7, 0x2

    #@e7
    return v8
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 122
    return-void
.end method

.method public final size()I
    .locals 1

    #@0
    .prologue
    .line 414
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    #@2
    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 88
    :try_start_0
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@3
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@6
    .line 89
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 87
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized write([BII)V
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
    monitor-enter p0

    #@1
    .line 107
    :try_start_0
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@6
    .line 108
    invoke-direct {p0, p3}, Ljava/io/DataOutputStream;->incCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 105
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public final writeBoolean(Z)V
    .locals 3
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 139
    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@3
    if-eqz p1, :cond_0

    #@5
    move v0, v1

    #@6
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    #@9
    .line 140
    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;->incCount(I)V

    #@c
    .line 138
    return-void

    #@d
    .line 139
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 154
    const/4 v0, 0x1

    #@6
    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    #@9
    .line 152
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 275
    .local v1, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 276
    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@9
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    int-to-byte v3, v3

    #@e
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    #@11
    .line 275
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 278
    :cond_0
    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;->incCount(I)V

    #@17
    .line 273
    return-void
.end method

.method public final writeChar(I)V
    .locals 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@2
    ushr-int/lit8 v1, p1, 0x8

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@9
    .line 183
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@b
    ushr-int/lit8 v1, p1, 0x0

    #@d
    and-int/lit16 v1, v1, 0xff

    #@f
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@12
    .line 184
    const/4 v0, 0x2

    #@13
    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    #@16
    .line 181
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 295
    .local v1, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    .line 297
    .local v2, "v":I
    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@d
    ushr-int/lit8 v4, v2, 0x8

    #@f
    and-int/lit16 v4, v4, 0xff

    #@11
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    #@14
    .line 298
    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@16
    ushr-int/lit8 v4, v2, 0x0

    #@18
    and-int/lit16 v4, v4, 0xff

    #@1a
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    #@1d
    .line 295
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 300
    .end local v2    # "v":I
    :cond_0
    mul-int/lit8 v3, v1, 0x2

    #@22
    invoke-direct {p0, v3}, Ljava/io/DataOutputStream;->incCount(I)V

    #@25
    .line 293
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@7
    .line 258
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7
    .line 241
    return-void
.end method

.method public final writeInt(I)V
    .locals 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@2
    ushr-int/lit8 v1, p1, 0x18

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@9
    .line 198
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@b
    ushr-int/lit8 v1, p1, 0x10

    #@d
    and-int/lit16 v1, v1, 0xff

    #@f
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@12
    .line 199
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@14
    ushr-int/lit8 v1, p1, 0x8

    #@16
    and-int/lit16 v1, v1, 0xff

    #@18
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1b
    .line 200
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@1d
    ushr-int/lit8 v1, p1, 0x0

    #@1f
    and-int/lit16 v1, v1, 0xff

    #@21
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@24
    .line 201
    const/4 v0, 0x4

    #@25
    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    #@28
    .line 196
    return-void
.end method

.method public final writeLong(J)V
    .locals 7
    .param p1, "v"    # J
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
    .line 216
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@5
    const/16 v1, 0x38

    #@7
    ushr-long v2, p1, v1

    #@9
    long-to-int v1, v2

    #@a
    int-to-byte v1, v1

    #@b
    aput-byte v1, v0, v4

    #@d
    .line 217
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@f
    const/16 v1, 0x30

    #@11
    ushr-long v2, p1, v1

    #@13
    long-to-int v1, v2

    #@14
    int-to-byte v1, v1

    #@15
    const/4 v2, 0x1

    #@16
    aput-byte v1, v0, v2

    #@18
    .line 218
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@1a
    const/16 v1, 0x28

    #@1c
    ushr-long v2, p1, v1

    #@1e
    long-to-int v1, v2

    #@1f
    int-to-byte v1, v1

    #@20
    const/4 v2, 0x2

    #@21
    aput-byte v1, v0, v2

    #@23
    .line 219
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@25
    const/16 v1, 0x20

    #@27
    ushr-long v2, p1, v1

    #@29
    long-to-int v1, v2

    #@2a
    int-to-byte v1, v1

    #@2b
    const/4 v2, 0x3

    #@2c
    aput-byte v1, v0, v2

    #@2e
    .line 220
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@30
    const/16 v1, 0x18

    #@32
    ushr-long v2, p1, v1

    #@34
    long-to-int v1, v2

    #@35
    int-to-byte v1, v1

    #@36
    const/4 v2, 0x4

    #@37
    aput-byte v1, v0, v2

    #@39
    .line 221
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@3b
    const/16 v1, 0x10

    #@3d
    ushr-long v2, p1, v1

    #@3f
    long-to-int v1, v2

    #@40
    int-to-byte v1, v1

    #@41
    const/4 v2, 0x5

    #@42
    aput-byte v1, v0, v2

    #@44
    .line 222
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@46
    ushr-long v2, p1, v5

    #@48
    long-to-int v1, v2

    #@49
    int-to-byte v1, v1

    #@4a
    const/4 v2, 0x6

    #@4b
    aput-byte v1, v0, v2

    #@4d
    .line 223
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@4f
    ushr-long v2, p1, v4

    #@51
    long-to-int v1, v2

    #@52
    int-to-byte v1, v1

    #@53
    const/4 v2, 0x7

    #@54
    aput-byte v1, v0, v2

    #@56
    .line 224
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@58
    iget-object v1, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    #@5a
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    #@5d
    .line 225
    invoke-direct {p0, v5}, Ljava/io/DataOutputStream;->incCount(I)V

    #@60
    .line 215
    return-void
.end method

.method public final writeShort(I)V
    .locals 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@2
    ushr-int/lit8 v1, p1, 0x8

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@9
    .line 168
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    #@b
    ushr-int/lit8 v1, p1, 0x0

    #@d
    and-int/lit16 v1, v1, 0xff

    #@f
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@12
    .line 169
    const/4 v0, 0x2

    #@13
    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    #@16
    .line 166
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    invoke-static {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I

    #@3
    .line 322
    return-void
.end method
