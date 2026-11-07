.class public Landroid/util/proto/ProtoFieldFilter;
.super Ljava/lang/Object;
.source "ProtoFieldFilter.java"


# static fields
.field private static final blacklist BUFFER_SIZE_BYTES:I = 0x1000


# instance fields
.field private final blacklist mBuffer:[B

.field private final blacklist mFieldPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVarIntBuffer:[B


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "fieldPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoFieldFilter;-><init>(Ljava/util/function/Predicate;I)V

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Predicate;I)V
    .registers 4
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 73
    .local p1, "fieldPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    .line 74
    iput-object p1, p0, Landroid/util/proto/ProtoFieldFilter;->mFieldPredicate:Ljava/util/function/Predicate;

    .line 75
    new-array v0, p2, [B

    iput-object v0, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    .line 76
    return-void
.end method

.method private blacklist copyFieldData(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    packed-switch p3, :pswitch_data_30

    .line 201
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :pswitch_1c
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 194
    goto :goto_2f

    .line 190
    :pswitch_21
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoFieldFilter;->copyLengthDelimited(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 191
    goto :goto_2f

    .line 187
    :pswitch_25
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 188
    goto :goto_2f

    .line 184
    :pswitch_2b
    invoke-static {p1, p2}, Landroid/util/proto/ProtoFieldFilter;->copyVarint(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 185
    nop

    .line 203
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_25
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    move v0, p3

    .line 252
    .local v0, "toRead":I
    :goto_1
    if-lez v0, :cond_3b

    .line 253
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 254
    .local v1, "chunk":I
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 255
    .local v2, "readCount":I
    if-ltz v2, :cond_1a

    .line 258
    iget-object v4, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    invoke-virtual {p2, v4, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 259
    sub-int/2addr v0, v2

    .line 260
    .end local v1    # "chunk":I
    .end local v2    # "readCount":I
    goto :goto_1

    .line 256
    .restart local v1    # "chunk":I
    .restart local v2    # "readCount":I
    :cond_1a
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EOF while copying fixed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, p3, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " field"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    .end local v1    # "chunk":I
    .end local v2    # "readCount":I
    :cond_3b
    return-void
.end method

.method private blacklist copyLengthDelimited(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    .line 268
    .local v0, "lengthVarintLength":I
    if-lez v0, :cond_3d

    .line 271
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 273
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v1, v0}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v1

    .line 274
    .local v1, "lengthVal":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_24

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_24

    .line 279
    long-to-int v3, v1

    invoke-direct {p0, p1, p2, v3}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 280
    return-void

    .line 275
    :cond_24
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid length for length-delimited field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    .end local v1    # "lengthVal":J
    :cond_3d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOF reading length for length-delimited field"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist copyVarint(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 236
    .local v0, "b":I
    if-ltz v0, :cond_11

    .line 239
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 240
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_10

    .line 241
    nop

    .line 244
    .end local v0    # "b":I
    return-void

    .line 243
    :cond_10
    goto :goto_1

    .line 237
    .restart local v0    # "b":I
    :cond_11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOF while copying varint"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist parseVarint([BI)J
    .registers 8
    .param p0, "rawVarint"    # [B
    .param p1, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const-wide/16 v0, 0x0

    .line 160
    .local v0, "result":J
    const/4 v2, 0x0

    .line 161
    .local v2, "shift":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, p1, :cond_1e

    .line 162
    aget-byte v4, p0, v3

    and-int/lit8 v4, v4, 0x7f

    shl-int/2addr v4, v2

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 163
    add-int/lit8 v2, v2, 0x7

    .line 164
    const/16 v4, 0x3f

    if-gt v2, v4, :cond_16

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 165
    :cond_16
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Malformed varint: exceeds 64 bits"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    .end local v3    # "i":I
    :cond_1e
    return-wide v0
.end method

.method private blacklist readRawVarint(Ljava/io/InputStream;)I
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 129
    .local v0, "b":I
    if-gez v0, :cond_8

    .line 130
    const/4 v1, 0x0

    return v1

    .line 132
    :cond_8
    const/4 v1, 0x0

    .line 133
    .local v1, "count":I
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    int-to-byte v4, v0

    aput-byte v4, v2, v1

    .line 135
    :goto_10
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_37

    .line 137
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 139
    if-ltz v0, :cond_2f

    .line 143
    const/16 v1, 0xa

    if-ge v3, v1, :cond_27

    .line 146
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .local v2, "count":I
    int-to-byte v4, v0

    aput-byte v4, v1, v3

    move v3, v2

    goto :goto_10

    .line 144
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_27
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed varint: too many bytes (max 10)"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_2f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed varint: reached EOF mid-varint"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_37
    return v3
.end method

.method private blacklist skipBytes(Ljava/io/InputStream;J)V
    .registers 13
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 304
    .local v0, "skipped":J
    cmp-long v2, v0, p2

    if-gez v2, :cond_2f

    .line 305
    sub-long v2, p2, v0

    .line 307
    .local v2, "bytesRemaining":J
    :goto_a
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2f

    .line 308
    iget-object v6, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    array-length v6, v6

    int-to-long v6, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 309
    .local v6, "bytesToRead":I
    iget-object v7, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 310
    .local v7, "bytesRead":I
    cmp-long v4, v2, v4

    if-ltz v4, :cond_27

    .line 313
    int-to-long v4, v7

    sub-long/2addr v2, v4

    .line 314
    .end local v6    # "bytesToRead":I
    .end local v7    # "bytesRead":I
    goto :goto_a

    .line 311
    .restart local v6    # "bytesToRead":I
    .restart local v7    # "bytesRead":I
    :cond_27
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF while skipping bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    .end local v2    # "bytesRemaining":J
    .end local v6    # "bytesToRead":I
    .end local v7    # "bytesRead":I
    :cond_2f
    return-void
.end method

.method private blacklist skipFieldData(Ljava/io/InputStream;I)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    packed-switch p2, :pswitch_data_32

    .line 228
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_1c
    const-wide/16 v0, 0x4

    invoke-direct {p0, p1, v0, v1}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    .line 222
    goto :goto_30

    .line 218
    :pswitch_22
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->skipLengthDelimited(Ljava/io/InputStream;)V

    .line 219
    goto :goto_30

    .line 215
    :pswitch_26
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    .line 216
    goto :goto_30

    .line 212
    :pswitch_2c
    invoke-static {p1}, Landroid/util/proto/ProtoFieldFilter;->skipVarint(Ljava/io/InputStream;)V

    .line 213
    nop

    .line 230
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_26
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist skipLengthDelimited(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    .line 325
    .local v0, "lengthVarintLength":I
    if-lez v0, :cond_36

    .line 328
    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v1, v0}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v1

    .line 329
    .local v1, "lengthVal":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1d

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1d

    .line 332
    invoke-direct {p0, p1, v1, v2}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    .line 333
    return-void

    .line 330
    :cond_1d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid length to skip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 326
    .end local v1    # "lengthVal":J
    :cond_36
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOF reading length for length-delimited field"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist skipVarint(Ljava/io/InputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, "bytesSkipped":I
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 287
    .local v1, "b":I
    if-ltz v1, :cond_1c

    .line 290
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_d

    .line 291
    nop

    .line 298
    .end local v1    # "b":I
    return-void

    .line 293
    .restart local v1    # "b":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 294
    const/16 v2, 0xa

    if-gt v0, v2, :cond_14

    .line 297
    .end local v1    # "b":I
    goto :goto_1

    .line 295
    .restart local v1    # "b":I
    :cond_14
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Malformed varint: exceeds maximum length of 10 bytes"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "EOF while skipping varint"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist filter(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    move v1, v0

    .local v1, "tagBytesLength":I
    if-lez v0, :cond_33

    .line 102
    iget-object v0, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v0, v1}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v2

    .line 103
    .local v2, "tagVal":J
    const/4 v0, 0x3

    ushr-long v4, v2, v0

    long-to-int v0, v4

    .line 104
    .local v0, "fieldNumber":I
    const-wide/16 v4, 0x7

    and-long/2addr v4, v2

    long-to-int v4, v4

    .line 106
    .local v4, "wireType":I
    if-nez v0, :cond_19

    .line 107
    goto :goto_33

    .line 109
    :cond_19
    iget-object v5, p0, Landroid/util/proto/ProtoFieldFilter;->mFieldPredicate:Ljava/util/function/Predicate;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 110
    iget-object v5, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    invoke-direct {p0, p1, p2, v4}, Landroid/util/proto/ProtoFieldFilter;->copyFieldData(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_32

    .line 113
    :cond_2f
    invoke-direct {p0, p1, v4}, Landroid/util/proto/ProtoFieldFilter;->skipFieldData(Ljava/io/InputStream;I)V

    .line 115
    .end local v0    # "fieldNumber":I
    .end local v2    # "tagVal":J
    .end local v4    # "wireType":I
    :goto_32
    goto :goto_1

    .line 116
    :cond_33
    :goto_33
    return-void
.end method
