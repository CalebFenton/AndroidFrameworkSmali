.class final Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final blacklist bytes:[B

.field final blacklist tag:I


# direct methods
.method constructor blacklist <init>(I[B)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    return-void
.end method


# virtual methods
.method blacklist computeSerializedSize()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 73
    :cond_4
    instance-of v1, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 77
    :cond_a
    check-cast p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;

    .line 78
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v1, v3, :cond_1d

    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    const/16 v0, 0x20f

    .line 84
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 65
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method
