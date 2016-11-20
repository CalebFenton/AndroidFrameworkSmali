.class public abstract Lcom/google/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    #@6
    .line 41
    return-void
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    .local p0, "msg":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, v1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    .local p0, "msg":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    #@3
    move-result-object v2

    #@4
    .line 143
    .local v2, "input":Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {p0, v2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    #@7
    .line 144
    const/4 v3, 0x0

    #@8
    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 145
    return-object p0

    #@c
    .line 148
    .end local v2    # "input":Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    :catch_0
    move-exception v1

    #@d
    .line 149
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@f
    const-string/jumbo v4, "Reading from a byte array threw an IOException (should never happen)."

    #@12
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@17
    .line 147
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    throw v0
.end method

.method public static final messageNanoEquals(Lcom/google/protobuf/nano/MessageNano;Lcom/google/protobuf/nano/MessageNano;)Z
    .locals 6
    .param p0, "a"    # Lcom/google/protobuf/nano/MessageNano;
    .param p1, "b"    # Lcom/google/protobuf/nano/MessageNano;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 159
    if-ne p0, p1, :cond_0

    #@3
    .line 160
    const/4 v3, 0x1

    #@4
    return v3

    #@5
    .line 162
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 163
    :cond_1
    return v5

    #@a
    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v4

    #@12
    if-eq v3, v4, :cond_3

    #@14
    .line 166
    return v5

    #@15
    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    #@18
    move-result v2

    #@19
    .line 169
    .local v2, "serializedSize":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    #@1c
    move-result v3

    #@1d
    if-eq v3, v2, :cond_4

    #@1f
    .line 170
    return v5

    #@20
    .line 172
    :cond_4
    new-array v0, v2, [B

    #@22
    .line 173
    .local v0, "aByteArray":[B
    new-array v1, v2, [B

    #@24
    .line 174
    .local v1, "bByteArray":[B
    invoke-static {p0, v0, v5, v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V

    #@27
    .line 175
    invoke-static {p1, v1, v5, v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V

    #@2a
    .line 176
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@2d
    move-result v3

    #@2e
    return v3
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V
    .locals 4
    .param p0, "msg"    # Lcom/google/protobuf/nano/MessageNano;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 116
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    #@3
    move-result-object v1

    #@4
    .line 117
    .local v1, "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@7
    .line 118
    invoke-virtual {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 113
    return-void

    #@b
    .line 119
    .end local v1    # "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    :catch_0
    move-exception v0

    #@c
    .line 120
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v3, "Serializing to a byte array threw an IOException (should never happen)."

    #@11
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v2
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 3
    .param p0, "msg"    # Lcom/google/protobuf/nano/MessageNano;

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    #@3
    move-result v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 101
    .local v0, "result":[B
    array-length v1, v0

    #@7
    const/4 v2, 0x0

    #@8
    invoke-static {p0, v0, v2, v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V

    #@b
    .line 102
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    #@6
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCachedSize()I
    .locals 1

    #@0
    .prologue
    .line 52
    iget v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    #@7
    .line 56
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    #@9
    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    #@0
    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    #@3
    move-result v0

    #@4
    .line 66
    .local v0, "size":I
    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    #@6
    .line 67
    return v0
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 188
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    return-void
.end method
