.class Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;
.super Lcom/android/framework/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayEncoder"
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private final blacklist limit:I

.field private final blacklist offset:I

.field private blacklist position:I


# direct methods
.method constructor blacklist <init>([BII)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;-><init>(Lcom/android/framework/protobuf/CodedOutputStream$1;)V

    .line 1166
    if-eqz p1, :cond_37

    .line 1169
    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_1a

    .line 1175
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 1176
    iput p2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    .line 1177
    iput p2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1178
    add-int v0, p2, p3

    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 1179
    return-void

    .line 1170
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length v1, p1

    .line 1173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1171
    const-string v2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist flush()V
    .registers 1

    .line 1492
    return-void
.end method

.method public final blacklist getTotalBytesWritten()I
    .registers 3

    .line 1501
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final blacklist spaceLeft()I
    .registers 3

    .line 1496
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final blacklist write(B)V
    .registers 7
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1327
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_c

    .line 1331
    nop

    .line 1332
    return-void

    .line 1328
    :catch_c
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1330
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1440
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1442
    .local v0, "length":I
    :try_start_4
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1443
    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_10} :catch_12

    .line 1447
    nop

    .line 1448
    return-void

    .line 1444
    :catch_12
    move-exception v1

    .line 1445
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1446
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Pos: %d, limit: %d, len: %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final blacklist write([BII)V
    .registers 9
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1425
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1426
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_e

    .line 1430
    nop

    .line 1431
    return-void

    .line 1427
    :catch_e
    move-exception v0

    .line 1428
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final blacklist writeBool(IZ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1219
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    .line 1220
    return-void
.end method

.method public final blacklist writeByteArray(I[B)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1236
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeByteArray(I[BII)V

    .line 1237
    return-void
.end method

.method public final blacklist writeByteArray(I[BII)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1243
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1244
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeByteArrayNoTag([BII)V

    .line 1245
    return-void
.end method

.method public final blacklist writeByteArrayNoTag([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1264
    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1265
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1266
    return-void
.end method

.method public final blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1251
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1252
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1253
    return-void
.end method

.method public final blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1230
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1231
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 1232
    return-void
.end method

.method public final blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1257
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1258
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 1259
    return-void
.end method

.method public final blacklist writeFixed32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1200
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1201
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32NoTag(I)V

    .line 1202
    return-void
.end method

.method public final blacklist writeFixed32NoTag(I)V
    .registers 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1365
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1366
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1367
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1368
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3a} :catch_3c

    .line 1372
    nop

    .line 1373
    return-void

    .line 1369
    :catch_3c
    move-exception v0

    .line 1370
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final blacklist writeFixed64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1212
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1213
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64NoTag(J)V

    .line 1214
    return-void
.end method

.method public final blacklist writeFixed64NoTag(J)V
    .registers 8
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1409
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1410
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1411
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1412
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1413
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1414
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1415
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8c} :catch_8e

    .line 1419
    nop

    .line 1420
    return-void

    .line 1416
    :catch_8e
    move-exception v0

    .line 1417
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1418
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final blacklist writeInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1189
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    .line 1190
    return-void
.end method

.method public final blacklist writeInt32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1336
    if-ltz p1, :cond_6

    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 1340
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 1342
    :goto_a
    return-void
.end method

.method public final blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1452
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1453
    return-void
.end method

.method public final blacklist writeLazy([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1435
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1436
    return-void
.end method

.method public final blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1282
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1283
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 1284
    return-void
.end method

.method final blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .param p3, "schema"    # Lcom/android/framework/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1290
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p3}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1291
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p3, p2, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1292
    return-void
.end method

.method public final blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 3
    .param p1, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1314
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1315
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 1316
    return-void
.end method

.method final blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 4
    .param p1, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .param p2, "schema"    # Lcom/android/framework/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1320
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1321
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1322
    return-void
.end method

.method public final blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1297
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1298
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1299
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    .line 1300
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1301
    return-void
.end method

.method public final blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    goto :goto_20

    .line 1273
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1274
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1275
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1277
    .end local v0    # "duplicated":Ljava/nio/ByteBuffer;
    :goto_20
    return-void
.end method

.method public final blacklist writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1306
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1307
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1308
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 1309
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1310
    return-void
.end method

.method public final blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1224
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1225
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method public final blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1457
    iget v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1461
    .local v0, "oldPosition":I
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 1462
    .local v1, "maxLength":I
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 1463
    .local v2, "maxLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 1464
    .local v3, "minLengthVarIntSize":I
    if-ne v3, v2, :cond_31

    .line 1465
    add-int v4, v0, v3

    iput v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1466
    iget-object v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v6

    invoke-static {p1, v4, v5, v6}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 1469
    .local v4, "newPosition":I
    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1470
    sub-int v5, v4, v0

    sub-int/2addr v5, v3

    .line 1471
    .local v5, "length":I
    invoke-virtual {p0, v5}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1472
    iput v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1473
    .end local v4    # "newPosition":I
    .end local v5    # "length":I
    goto :goto_54

    .line 1474
    :cond_31
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1475
    .local v4, "length":I
    invoke-virtual {p0, v4}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1476
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v7

    invoke-static {p1, v5, v6, v7}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v5

    iput v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_46
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_46} :catch_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_46} :catch_47

    goto :goto_54

    .line 1484
    .end local v1    # "maxLength":I
    .end local v2    # "maxLengthVarIntSize":I
    .end local v3    # "minLengthVarIntSize":I
    .end local v4    # "length":I
    :catch_47
    move-exception v1

    .line 1485
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1478
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4e
    move-exception v1

    .line 1480
    .local v1, "e":Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;
    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1483
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 1486
    .end local v1    # "e":Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;
    :goto_54
    nop

    .line 1487
    return-void
.end method

.method public final blacklist writeTag(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1184
    return-void
.end method

.method public final blacklist writeUInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1195
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1196
    return-void
.end method

.method public final blacklist writeUInt32NoTag(I)V
    .registers 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1348
    nop

    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_11

    .line 1349
    :try_start_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1350
    return-void

    .line 1352
    :cond_11
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_20} :catch_23

    .line 1353
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 1356
    :catch_23
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1358
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final blacklist writeUInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1206
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1207
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 1208
    return-void
.end method

.method public final blacklist writeUInt64NoTag(J)V
    .registers 12
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1377
    # getter for: Lcom/android/framework/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z
    invoke-static {}, Lcom/android/framework/protobuf/CodedOutputStream;->access$100()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3c

    .line 1379
    :goto_13
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_28

    .line 1380
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-long v1, v1

    long-to-int v3, p1

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1381
    return-void

    .line 1383
    :cond_28
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1384
    ushr-long/2addr p1, v1

    goto :goto_13

    .line 1390
    :cond_3c
    :goto_3c
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4f

    .line 1391
    :try_start_42
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1392
    return-void

    .line 1394
    :cond_4f
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_5f} :catch_61

    .line 1395
    ushr-long/2addr p1, v1

    goto :goto_3c

    .line 1398
    :catch_61
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    iget v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
