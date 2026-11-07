.class public final Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 65
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor blacklist <init>([BII)V
    .registers 4

    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static blacklist computeRawVarint32Size(I)I
    .registers 2

    .line 0
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static blacklist newInstance([B)Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;
    .registers 3

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([BII)Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;
    .registers 4

    .line 87
    new-instance v0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public blacklist writeRawByte(B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 950
    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 947
    :cond_e
    new-instance p1, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawByte(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    return-void
.end method

.method public blacklist writeRawBytes([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    return-void
.end method

.method public blacklist writeRawBytes([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_e

    .line 967
    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 970
    :cond_e
    new-instance p1, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawVarint32(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 995
    invoke-virtual {p0, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
