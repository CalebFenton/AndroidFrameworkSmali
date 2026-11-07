.class final Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;
.super Lcom/android/framework/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeDirectNioEncoder"
.end annotation


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;

.field private final blacklist initialPosition:I

.field private final blacklist originalBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;-><init>(Lcom/android/framework/protobuf/CodedOutputStream$1;)V

    .line 1539
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    .line 1540
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1541
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->initialPosition:I

    .line 1542
    return-void
.end method

.method private blacklist encode(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1844
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1847
    nop

    .line 1848
    return-void

    .line 1845
    :catch_7
    move-exception v0

    .line 1846
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist flush()V
    .registers 3

    .line 1829
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1830
    return-void
.end method

.method public blacklist getTotalBytesWritten()I
    .registers 3

    .line 1839
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->initialPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist spaceLeft()I
    .registers 2

    .line 1834
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public blacklist write(B)V
    .registers 4
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1666
    nop

    .line 1667
    return-void

    .line 1664
    :catch_7
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1773
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1776
    nop

    .line 1777
    return-void

    .line 1774
    :catch_7
    move-exception v0

    .line 1775
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist write([BII)V
    .registers 6
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1757
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_e
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1762
    nop

    .line 1763
    return-void

    .line 1760
    :catch_7
    move-exception v0

    .line 1761
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1758
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    :catch_e
    move-exception v0

    .line 1759
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1581
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1582
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(B)V

    .line 1583
    return-void
.end method

.method public blacklist writeByteArray(I[B)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1599
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeByteArray(I[BII)V

    .line 1600
    return-void
.end method

.method public blacklist writeByteArray(I[BII)V
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

    .line 1606
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1607
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeByteArrayNoTag([BII)V

    .line 1608
    return-void
.end method

.method public blacklist writeByteArrayNoTag([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1677
    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1678
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    .line 1679
    return-void
.end method

.method public blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1612
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1613
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1614
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1615
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1593
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1594
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 1595
    return-void
.end method

.method public blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1671
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1672
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 1673
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1563
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1564
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeFixed32NoTag(I)V

    .line 1565
    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1722
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1725
    nop

    .line 1726
    return-void

    .line 1723
    :catch_7
    move-exception v0

    .line 1724
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1575
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1576
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeFixed64NoTag(J)V

    .line 1577
    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1748
    :try_start_0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1751
    nop

    .line 1752
    return-void

    .line 1749
    :catch_7
    move-exception v0

    .line 1750
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1551
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1552
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeInt32NoTag(I)V

    .line 1553
    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1694
    if-ltz p1, :cond_6

    .line 1695
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 1698
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt64NoTag(J)V

    .line 1700
    :goto_a
    return-void
.end method

.method public blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1781
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1782
    return-void
.end method

.method public blacklist writeLazy([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1767
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    .line 1768
    return-void
.end method

.method public blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1619
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1620
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 1621
    return-void
.end method

.method blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .param p3, "schema"    # Lcom/android/framework/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1627
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    .line 1628
    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 3
    .param p1, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1650
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1651
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 1652
    return-void
.end method

.method blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 4
    .param p1, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .param p2, "schema"    # Lcom/android/framework/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1656
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1657
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1658
    return-void
.end method

.method public blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1633
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1634
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32(II)V

    .line 1635
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    .line 1636
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1637
    return-void
.end method

.method public blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1683
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1684
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    goto :goto_20

    .line 1686
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1687
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1688
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1690
    .end local v0    # "duplicated":Ljava/nio/ByteBuffer;
    :goto_20
    return-void
.end method

.method public blacklist writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1642
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1643
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32(II)V

    .line 1644
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 1645
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1646
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1587
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1588
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1589
    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1790
    .local v0, "startPos":I
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 1791
    .local v1, "maxEncodedSize":I
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 1792
    .local v2, "maxLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 1793
    .local v3, "minLengthVarIntSize":I
    if-ne v3, v2, :cond_40

    .line 1796
    iget-object v4, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    .line 1797
    .local v4, "startOfBytes":I
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1800
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->encode(Ljava/lang/String;)V

    .line 1803
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1804
    .local v5, "endOfBytes":I
    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1805
    sub-int v6, v5, v4

    invoke-virtual {p0, v6}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1808
    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1809
    nop

    .end local v4    # "startOfBytes":I
    .end local v5    # "endOfBytes":I
    goto :goto_5b

    .line 1810
    :cond_40
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1811
    .local v4, "length":I
    invoke-virtual {p0, v4}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1812
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->encode(Ljava/lang/String;)V
    :try_end_4a
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_6 .. :try_end_4a} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_4a} :catch_4b

    goto :goto_5b

    .line 1820
    .end local v1    # "maxEncodedSize":I
    .end local v2    # "maxLengthVarIntSize":I
    .end local v3    # "minLengthVarIntSize":I
    .end local v4    # "length":I
    :catch_4b
    move-exception v1

    .line 1822
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1814
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_52
    move-exception v1

    .line 1816
    .local v1, "e":Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1819
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 1823
    .end local v1    # "e":Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;
    :goto_5b
    nop

    .line 1824
    return-void
.end method

.method public blacklist writeTag(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1547
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1558
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1559
    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1706
    nop

    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_c

    .line 1707
    :try_start_5
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1708
    return-void

    .line 1710
    :cond_c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/nio/BufferOverflowException; {:try_start_5 .. :try_end_16} :catch_19

    .line 1711
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 1714
    :catch_19
    move-exception v0

    .line 1715
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1569
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1570
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt64NoTag(J)V

    .line 1571
    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .registers 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1732
    nop

    :goto_1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 1733
    :try_start_a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1734
    return-void

    .line 1736
    :cond_12
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1d
    .catch Ljava/nio/BufferOverflowException; {:try_start_a .. :try_end_1d} :catch_20

    .line 1737
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_1

    .line 1740
    :catch_20
    move-exception v0

    .line 1741
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
