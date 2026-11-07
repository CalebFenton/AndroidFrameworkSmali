.class final Lcom/android/framework/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final blacklist bytes:[B

.field final blacklist tag:I


# direct methods
.method constructor blacklist <init>(I[B)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    .line 53
    iput-object p2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 54
    return-void
.end method


# virtual methods
.method blacklist computeSerializedSize()I
    .registers 3

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "size":I
    iget v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 71
    return v0

    .line 73
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 74
    return v2

    .line 77
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 78
    .local v1, "other":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    iget v3, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 83
    const/16 v0, 0x11

    .line 84
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    add-int/2addr v1, v2

    .line 85
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 86
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 65
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 66
    return-void
.end method
