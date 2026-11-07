.class final Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;
.super Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamEncoder"
.end annotation


# instance fields
.field private final blacklist out:Ljava/io/OutputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 2691
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    .line 2692
    if-eqz p1, :cond_8

    .line 2695
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    .line 2696
    return-void

    .line 2693
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist doFlush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3041
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3042
    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3043
    return-void
.end method

.method private blacklist flushIfNotAvailable(I)V
    .registers 4
    .param p1, "requiredSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3035
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    .line 3036
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 3038
    :cond_a
    return-void
.end method


# virtual methods
.method public blacklist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2951
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    if-lez v0, :cond_7

    .line 2953
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2955
    :cond_7
    return-void
.end method

.method public blacklist write(B)V
    .registers 4
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2845
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-ne v0, v1, :cond_9

    .line 2846
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2849
    :cond_9
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    .line 2850
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2997
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2998
    .local v0, "length":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1d

    .line 3000
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3001
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3002
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_62

    .line 3006
    :cond_1d
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    .line 3007
    .local v1, "bytesWritten":I
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3008
    sub-int/2addr v0, v1

    .line 3009
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3010
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 3011
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 3016
    :goto_36
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    const/4 v3, 0x0

    if-le v0, v2, :cond_56

    .line 3018
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3019
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 3020
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    sub-int/2addr v0, v2

    .line 3021
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_36

    .line 3023
    :cond_56
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3024
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3025
    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 3027
    .end local v1    # "bytesWritten":I
    :goto_62
    return-void
.end method

.method public blacklist write([BII)V
    .registers 7
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2959
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_19

    .line 2961
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2962
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2963
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_4a

    .line 2967
    :cond_19
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    .line 2968
    .local v0, "bytesWritten":I
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2969
    add-int/2addr p2, v0

    .line 2970
    sub-int/2addr p3, v0

    .line 2971
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2972
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2973
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2978
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-gt p3, v1, :cond_40

    .line 2980
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2981
    iput p3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    goto :goto_45

    .line 2984
    :cond_40
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2986
    :goto_45
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, p3

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2988
    .end local v0    # "bytesWritten":I
    :goto_4a
    return-void
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

    .line 2740
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2741
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2742
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    .line 2743
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

    .line 2759
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArray(I[BII)V

    .line 2760
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

    .line 2766
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2767
    invoke-virtual {p0, p2, p3, p4}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArrayNoTag([BII)V

    .line 2768
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

    .line 2785
    invoke-virtual {p0, p3}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2786
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    .line 2787
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

    .line 2772
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2773
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2774
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 2775
    return-void
.end method

.method public blacklist writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2753
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2754
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytesNoTag(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 2755
    return-void
.end method

.method public blacklist writeBytesNoTag(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2779
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2780
    invoke-virtual {p1, p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->writeTo(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V

    .line 2781
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

    .line 2719
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2720
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2721
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

    .line 2722
    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2870
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2871
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

    .line 2872
    return-void
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

    .line 2733
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2734
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2735
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

    .line 2736
    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .registers 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2882
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2883
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

    .line 2884
    return-void
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

    .line 2705
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2707
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferInt32NoTag(I)V

    .line 2708
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

    .line 2854
    if-ltz p1, :cond_6

    .line 2855
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 2858
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64NoTag(J)V

    .line 2860
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

    .line 3031
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 3032
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

    .line 2992
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    .line 2993
    return-void
.end method

.method public blacklist writeMessage(ILandroid/net/connectivity/com/google/protobuf/MessageLite;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2802
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2803
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Landroid/net/connectivity/com/google/protobuf/MessageLite;)V

    .line 2804
    return-void
.end method

.method blacklist writeMessage(ILandroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/Schema;)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .param p3, "schema"    # Landroid/net/connectivity/com/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2809
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2810
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 2811
    return-void
.end method

.method public blacklist writeMessageNoTag(Landroid/net/connectivity/com/google/protobuf/MessageLite;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2833
    invoke-interface {p1}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2834
    invoke-interface {p1, p0}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->writeTo(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;)V

    .line 2835
    return-void
.end method

.method blacklist writeMessageNoTag(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/Schema;)V
    .registers 4
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .param p2, "schema"    # Landroid/net/connectivity/com/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2839
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->getSerializedSize(Landroid/net/connectivity/com/google/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2840
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->wrapper:Landroid/net/connectivity/com/google/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Landroid/net/connectivity/com/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 2841
    return-void
.end method

.method public blacklist writeMessageSetExtension(ILandroid/net/connectivity/com/google/protobuf/MessageLite;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2816
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2817
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2818
    invoke-virtual {p0, v1, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILandroid/net/connectivity/com/google/protobuf/MessageLite;)V

    .line 2819
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2820
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

    .line 2791
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2792
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    goto :goto_20

    .line 2794
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2795
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2796
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2798
    .end local v0    # "duplicated":Ljava/nio/ByteBuffer;
    :goto_20
    return-void
.end method

.method public blacklist writeRawMessageSetExtension(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2825
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2826
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2827
    invoke-virtual {p0, v1, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 2828
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2829
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

    .line 2747
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2748
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 2749
    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2891
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2892
    .local v0, "maxLength":I
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 2896
    .local v1, "maxLengthVarIntSize":I
    add-int v2, v1, v0

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-le v2, v3, :cond_1e

    .line 2901
    new-array v2, v0, [B

    .line 2902
    .local v2, "encodedBytes":[B
    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Landroid/net/connectivity/com/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2903
    .local v4, "actualLength":I
    invoke-virtual {p0, v4}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2904
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeLazy([BII)V

    .line 2905
    return-void

    .line 2909
    .end local v2    # "encodedBytes":[B
    .end local v4    # "actualLength":I
    :cond_1e
    add-int v2, v1, v0

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2a

    .line 2911
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2916
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 2917
    .local v2, "minLengthVarIntSize":I
    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I
    :try_end_34
    .catch Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_34} :catch_7f

    .line 2920
    .local v3, "oldPosition":I
    if-ne v2, v1, :cond_52

    .line 2921
    add-int v4, v3, v2

    :try_start_38
    iput v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2922
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v7, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v6, v7

    invoke-static {p1, v4, v5, v6}, Landroid/net/connectivity/com/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2925
    .local v4, "newPosition":I
    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2926
    sub-int v5, v4, v3

    sub-int/2addr v5, v2

    .line 2927
    .local v5, "length":I
    invoke-virtual {p0, v5}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2928
    iput v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2929
    .end local v4    # "newPosition":I
    goto :goto_64

    .line 2930
    .end local v5    # "length":I
    :cond_52
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    move v5, v4

    .line 2931
    .restart local v5    # "length":I
    invoke-virtual {p0, v5}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2932
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, v4, v6, v5}, Landroid/net/connectivity/com/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    iput v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2934
    :goto_64
    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I
    :try_end_69
    .catch Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_38 .. :try_end_69} :catch_72
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_38 .. :try_end_69} :catch_6b

    .line 2943
    nop

    .line 2946
    .end local v0    # "maxLength":I
    .end local v1    # "maxLengthVarIntSize":I
    .end local v2    # "minLengthVarIntSize":I
    .end local v3    # "oldPosition":I
    .end local v5    # "length":I
    goto :goto_83

    .line 2941
    .restart local v0    # "maxLength":I
    .restart local v1    # "maxLengthVarIntSize":I
    .restart local v2    # "minLengthVarIntSize":I
    .restart local v3    # "oldPosition":I
    :catch_6b
    move-exception v4

    .line 2942
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6c
    new-instance v5, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v5, v4}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;
    .end local p1    # "value":Ljava/lang/String;
    throw v5

    .line 2935
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local p0    # "this":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_72
    move-exception v4

    .line 2938
    .local v4, "e":Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;
    iget v5, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v6, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v6, v3

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2939
    iput v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2940
    nop

    .end local p0    # "this":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;
    .end local p1    # "value":Ljava/lang/String;
    throw v4
    :try_end_7f
    .catch Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_6c .. :try_end_7f} :catch_7f

    .line 2944
    .end local v0    # "maxLength":I
    .end local v1    # "maxLengthVarIntSize":I
    .end local v2    # "minLengthVarIntSize":I
    .end local v3    # "oldPosition":I
    .end local v4    # "e":Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;
    .restart local p0    # "this":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_7f
    move-exception v0

    .line 2945
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;
    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 2947
    .end local v0    # "e":Landroid/net/connectivity/com/google/protobuf/Utf8$UnpairedSurrogateException;
    :goto_83
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

    .line 2700
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2701
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

    .line 2712
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2713
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2714
    invoke-virtual {p0, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2715
    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2864
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2865
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2866
    return-void
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

    .line 2726
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2727
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2728
    invoke-virtual {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    .line 2729
    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .registers 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2876
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2877
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    .line 2878
    return-void
.end method
