.class public Ljava/io/DataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private greylist-max-o bytearr:[B

.field private greylist-max-o writeBuffer:[B

.field protected whitelist test-api written:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/DataOutputStream;->bytearr:[B

    .line 204
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    .line 61
    return-void
.end method

.method private greylist-max-o incCount(I)V
    .registers 3
    .param p1, "value"    # I

    .line 68
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    add-int/2addr v0, p1

    .line 69
    .local v0, "temp":I
    if-gez v0, :cond_8

    .line 70
    const v0, 0x7fffffff

    .line 72
    :cond_8
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 73
    return-void
.end method

.method static greylist-max-o writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I
    .registers 13
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 348
    .local v0, "strlen":I
    const/4 v1, 0x0

    .line 349
    .local v1, "utflen":I
    const/4 v2, 0x0

    .line 352
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/16 v4, 0x7ff

    const/16 v5, 0x7f

    const/4 v6, 0x1

    if-ge v3, v0, :cond_23

    .line 353
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 354
    .local v7, "c":I
    if-lt v7, v6, :cond_19

    if-gt v7, v5, :cond_19

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 356
    :cond_19
    if-le v7, v4, :cond_1e

    .line 357
    add-int/lit8 v1, v1, 0x3

    goto :goto_20

    .line 359
    :cond_1e
    add-int/lit8 v1, v1, 0x2

    .line 352
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 363
    .end local v3    # "i":I
    .end local v7    # "c":I
    :cond_23
    const v3, 0xffff

    if-gt v1, v3, :cond_ca

    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "bytearr":[B
    instance-of v7, p1, Ljava/io/DataOutputStream;

    if-eqz v7, :cond_46

    .line 369
    move-object v7, p1

    check-cast v7, Ljava/io/DataOutputStream;

    .line 370
    .local v7, "dos":Ljava/io/DataOutputStream;
    iget-object v8, v7, Ljava/io/DataOutputStream;->bytearr:[B

    if-eqz v8, :cond_3b

    iget-object v8, v7, Ljava/io/DataOutputStream;->bytearr:[B

    array-length v8, v8

    add-int/lit8 v9, v1, 0x2

    if-ge v8, v9, :cond_43

    .line 371
    :cond_3b
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x2

    new-array v8, v8, [B

    iput-object v8, v7, Ljava/io/DataOutputStream;->bytearr:[B

    .line 372
    :cond_43
    iget-object v3, v7, Ljava/io/DataOutputStream;->bytearr:[B

    .line 373
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    goto :goto_4a

    .line 374
    :cond_46
    add-int/lit8 v7, v1, 0x2

    new-array v3, v7, [B

    .line 377
    :goto_4a
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "count":I
    .local v7, "count":I
    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 378
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "count":I
    .restart local v2    # "count":I
    ushr-int/lit8 v8, v1, 0x0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 380
    const/4 v7, 0x0

    .line 381
    .local v7, "i":I
    const/4 v7, 0x0

    :goto_5e
    if-ge v7, v0, :cond_72

    .line 382
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 383
    .local v8, "c":I
    if-lt v8, v6, :cond_72

    if-le v8, v5, :cond_69

    goto :goto_72

    .line 384
    :cond_69
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .local v9, "count":I
    int-to-byte v10, v8

    aput-byte v10, v3, v2

    .line 381
    add-int/lit8 v7, v7, 0x1

    move v2, v9

    goto :goto_5e

    .line 387
    .end local v8    # "c":I
    .end local v9    # "count":I
    .restart local v2    # "count":I
    :cond_72
    :goto_72
    if-ge v7, v0, :cond_c1

    .line 388
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 389
    .restart local v8    # "c":I
    if-lt v8, v6, :cond_83

    if-gt v8, v5, :cond_83

    .line 390
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .restart local v9    # "count":I
    int-to-byte v10, v8

    aput-byte v10, v3, v2

    move v2, v9

    goto :goto_be

    .line 392
    .end local v9    # "count":I
    .restart local v2    # "count":I
    :cond_83
    if-le v8, v4, :cond_a8

    .line 393
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .restart local v9    # "count":I
    shr-int/lit8 v10, v8, 0xc

    and-int/lit8 v10, v10, 0xf

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v3, v2

    .line 394
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "count":I
    .restart local v2    # "count":I
    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 395
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .restart local v9    # "count":I
    shr-int/lit8 v10, v8, 0x0

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v3, v2

    move v2, v9

    goto :goto_be

    .line 397
    .end local v9    # "count":I
    .restart local v2    # "count":I
    :cond_a8
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .restart local v9    # "count":I
    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x1f

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v3, v2

    .line 398
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "count":I
    .restart local v2    # "count":I
    shr-int/lit8 v10, v8, 0x0

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 387
    :goto_be
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 401
    .end local v8    # "c":I
    :cond_c1
    add-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    invoke-interface {p1, v3, v5, v4}, Ljava/io/DataOutput;->write([BII)V

    .line 402
    add-int/lit8 v4, v1, 0x2

    return v4

    .line 364
    .end local v3    # "bytearr":[B
    .end local v7    # "i":I
    :cond_ca
    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoded string too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 124
    return-void
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 414
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    return v0
.end method

.method public declared-synchronized whitelist test-api write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 90
    monitor-exit p0

    return-void

    .line 87
    .end local p0    # "this":Ljava/io/DataOutputStream;
    .end local p1    # "b":I
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    invoke-direct {p0, p3}, Ljava/io/DataOutputStream;->incCount(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 109
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Ljava/io/DataOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final whitelist test-api writeBoolean(Z)V
    .registers 3
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 141
    return-void
.end method

.method public final whitelist test-api writeByte(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 155
    return-void
.end method

.method public final whitelist test-api writeBytes(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 275
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_14

    .line 276
    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 278
    .end local v1    # "i":I
    :cond_14
    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 279
    return-void
.end method

.method public final whitelist test-api writeChar(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 183
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 184
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 185
    return-void
.end method

.method public final whitelist test-api writeChars(Ljava/lang/String;)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 295
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_20

    .line 296
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 297
    .local v2, "v":I
    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 298
    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v4, v2, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 295
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 300
    .end local v1    # "i":I
    :cond_20
    mul-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 301
    return-void
.end method

.method public final whitelist test-api writeDouble(D)V
    .registers 5
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 260
    return-void
.end method

.method public final whitelist test-api writeFloat(F)V
    .registers 3
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 243
    return-void
.end method

.method public final whitelist test-api writeInt(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 199
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 200
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 201
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 202
    return-void
.end method

.method public final whitelist test-api writeLong(J)V
    .registers 8
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x38

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 217
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x30

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 218
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x28

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 219
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x20

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 220
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x18

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    .line 221
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x10

    ushr-long v3, p1, v1

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x5

    aput-byte v1, v0, v3

    .line 222
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x8

    ushr-long v3, p1, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v0, v4

    .line 223
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    ushr-long v3, p1, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v0, v4

    .line 224
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 225
    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 226
    return-void
.end method

.method public final whitelist test-api writeShort(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 168
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 169
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 170
    return-void
.end method

.method public final whitelist test-api writeUTF(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-static {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I

    .line 324
    return-void
.end method
