.class Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;
.super Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralByteString"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field protected final blacklist bytes:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 1391
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;-><init>()V

    .line 1392
    if-eqz p1, :cond_8

    .line 1395
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1396
    return-void

    .line 1393
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 4

    .line 1449
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1454
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist byteAt(I)B
    .registers 3
    .param p1, "index"    # I

    .line 1403
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final blacklist copyTo(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 1444
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1445
    return-void
.end method

.method protected blacklist copyToInternal([BIII)V
    .registers 6
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 1439
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1440
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 1498
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1499
    return v0

    .line 1501
    :cond_4
    instance-of v1, p1, Landroid/net/connectivity/com/google/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1502
    return v2

    .line 1505
    :cond_a
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    .line 1506
    return v2

    .line 1508
    :cond_18
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_1f

    .line 1509
    return v0

    .line 1512
    :cond_1f
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    if-eqz v0, :cond_41

    .line 1513
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    .line 1516
    .local v0, "otherAsLiteral":Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v1

    .line 1517
    .local v1, "thisHash":I
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v3

    .line 1518
    .local v3, "thatHash":I
    if-eqz v1, :cond_35

    if-eqz v3, :cond_35

    if-eq v1, v3, :cond_35

    .line 1519
    return v2

    .line 1522
    :cond_35
    move-object v4, p1

    check-cast v4, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->equalsRange(Landroid/net/connectivity/com/google/protobuf/ByteString;II)Z

    move-result v2

    return v2

    .line 1525
    .end local v0    # "otherAsLiteral":Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;
    .end local v1    # "thisHash":I
    .end local v3    # "thatHash":I
    :cond_41
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final blacklist equalsRange(Landroid/net/connectivity/com/google/protobuf/ByteString;II)Z
    .registers 13
    .param p1, "other"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1540
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    if-gt p3, v0, :cond_76

    .line 1543
    add-int v0, p2, p3

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v1

    if-gt v0, v1, :cond_47

    .line 1548
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 1549
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    .line 1550
    .local v0, "lbsOther":Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1551
    .local v2, "thisBytes":[B
    iget-object v3, v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1552
    .local v3, "otherBytes":[B
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v4

    add-int/2addr v4, p3

    .line 1553
    .local v4, "thisLimit":I
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v5

    .line 1554
    .local v5, "thisIndex":I
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v6

    add-int/2addr v6, p2

    .line 1555
    .local v6, "otherIndex":I
    :goto_28
    if-ge v5, v4, :cond_36

    .line 1557
    aget-byte v7, v2, v5

    aget-byte v8, v3, v6

    if-eq v7, v8, :cond_31

    .line 1558
    return v1

    .line 1556
    :cond_31
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 1561
    .end local v5    # "thisIndex":I
    .end local v6    # "otherIndex":I
    :cond_36
    const/4 v1, 0x1

    return v1

    .line 1564
    .end local v0    # "lbsOther":Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;
    .end local v2    # "thisBytes":[B
    .end local v3    # "otherBytes":[B
    .end local v4    # "thisLimit":I
    :cond_38
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v1, p3}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1544
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1545
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1541
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getOffsetIntoBytes()I
    .registers 2

    .line 1597
    const/4 v0, 0x0

    return v0
.end method

.method blacklist internalByteAt(I)B
    .registers 3
    .param p1, "index"    # I

    .line 1408
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final blacklist isValidUtf8()Z
    .registers 4

    .line 1483
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 1484
    .local v0, "offset":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Landroid/net/connectivity/com/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    return v1
.end method

.method public final blacklist newCodedInput()Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .registers 5

    .line 1584
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1585
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    .line 1584
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->newInstance([BIIZ)Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist newInput()Ljava/io/InputStream;
    .registers 5

    .line 1577
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected final blacklist partialHash(III)I
    .registers 6
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1569
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Landroid/net/connectivity/com/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    return v0
.end method

.method protected final blacklist partialIsValidUtf8(III)I
    .registers 7
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1489
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 1490
    .local v0, "index":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Landroid/net/connectivity/com/google/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result v1

    return v1
.end method

.method public blacklist size()I
    .registers 2

    .line 1413
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public final blacklist substring(II)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 7
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 1421
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->checkRange(III)I

    move-result v0

    .line 1423
    .local v0, "length":I
    if-nez v0, :cond_d

    .line 1424
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v1

    .line 1427
    :cond_d
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v1
.end method

.method protected final blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1475
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final blacklist writeTo(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V
    .registers 5
    .param p1, "output"    # Landroid/net/connectivity/com/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/ByteOutput;->writeLazy([BII)V

    .line 1471
    return-void
.end method

.method public final blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1459
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1460
    return-void
.end method

.method final blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1465
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1466
    return-void
.end method
