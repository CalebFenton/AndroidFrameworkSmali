.class final Lcom/google/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput p1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    #@5
    .line 53
    iput-object p2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    #@7
    .line 51
    return-void
.end method


# virtual methods
.method computeSerializedSize()I
    .locals 2

    #@0
    .prologue
    .line 58
    iget v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    #@2
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, 0x0

    #@8
    .line 59
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    #@a
    array-length v1, v1

    #@b
    add-int/2addr v0, v1

    #@c
    .line 60
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 70
    if-ne p1, p0, :cond_0

    #@3
    .line 71
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 73
    :cond_0
    instance-of v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 74
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 77
    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    #@d
    .line 78
    .local v0, "other":Lcom/google/protobuf/nano/UnknownFieldData;
    iget v2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    #@f
    iget v3, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    iget-object v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    #@15
    iget-object v2, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    #@17
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1a
    move-result v1

    #@1b
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 84
    iget v1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 85
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget-object v2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    #@8
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@b
    move-result v2

    #@c
    add-int v0, v1, v2

    #@e
    .line 86
    return v0
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    #@2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@5
    .line 65
    iget-object v0, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    #@7
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    #@a
    .line 63
    return-void
.end method
