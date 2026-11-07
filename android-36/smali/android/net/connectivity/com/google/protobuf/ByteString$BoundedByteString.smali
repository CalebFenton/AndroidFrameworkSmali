.class final Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;
.super Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedByteString"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final blacklist bytesLength:I

.field private final blacklist bytesOffset:I


# direct methods
.method constructor blacklist <init>([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1628
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 1629
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->checkRange(III)I

    .line 1631
    iput p2, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    .line 1632
    iput p3, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytesLength:I

    .line 1633
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1687
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist byteAt(I)B
    .registers 4
    .param p1, "index"    # I

    .line 1648
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->checkIndex(II)V

    .line 1649
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method protected blacklist copyToInternal([BIII)V
    .registers 7
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 1673
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    .line 1674
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    .line 1673
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1675
    return-void
.end method

.method protected blacklist getOffsetIntoBytes()I
    .registers 2

    .line 1664
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    return v0
.end method

.method blacklist internalByteAt(I)B
    .registers 4
    .param p1, "index"    # I

    .line 1654
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytes:[B

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 1659
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1683
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$BoundedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->wrap([B)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
