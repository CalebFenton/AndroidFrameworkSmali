.class public abstract Lcom/android/framework/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile blacklist cachedSize:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final blacklist mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 131
    .local p0, "msg":Lcom/android/framework/protobuf/nano/MessageNano;, "TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[BII)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public static final blacklist mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[BII)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 7
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 141
    .local p0, "msg":Lcom/android/framework/protobuf/nano/MessageNano;, "TT;"
    nop

    .line 142
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 143
    .local v0, "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_c} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    .line 145
    return-object p0

    .line 148
    .end local v0    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    :catch_d
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v0

    .line 147
    .local v0, "e":Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    throw v0
.end method

.method public static final blacklist messageNanoEquals(Lcom/android/framework/protobuf/nano/MessageNano;Lcom/android/framework/protobuf/nano/MessageNano;)Z
    .registers 6
    .param p0, "a"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .param p1, "b"    # Lcom/android/framework/protobuf/nano/MessageNano;

    .line 159
    if-ne p0, p1, :cond_4

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    if-nez p1, :cond_a

    goto :goto_2f

    .line 165
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_15

    .line 166
    return v0

    .line 168
    :cond_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 169
    .local v1, "serializedSize":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    if-eq v2, v1, :cond_20

    .line 170
    return v0

    .line 172
    :cond_20
    new-array v2, v1, [B

    .line 173
    .local v2, "aByteArray":[B
    new-array v3, v1, [B

    .line 174
    .local v3, "bByteArray":[B
    invoke-static {p0, v2, v0, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    .line 175
    invoke-static {p1, v3, v0, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    .line 176
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 163
    .end local v1    # "serializedSize":I
    .end local v2    # "aByteArray":[B
    .end local v3    # "bByteArray":[B
    :cond_2f
    :goto_2f
    return v0
.end method

.method public static final blacklist toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V
    .registers 7
    .param p0, "msg"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 115
    nop

    .line 116
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 117
    .local v0, "output":Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 118
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_d

    .line 122
    .end local v0    # "output":Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    nop

    .line 123
    return-void

    .line 119
    :catch_d
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final blacklist toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B
    .registers 4
    .param p0, "msg"    # Lcom/android/framework/protobuf/nano/MessageNano;

    .line 100
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 101
    .local v0, "result":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public blacklist clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCachedSize()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    if-gez v0, :cond_7

    .line 54
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    .line 56
    :cond_7
    iget v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public blacklist getSerializedSize()I
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 66
    .local v0, "size":I
    iput v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    .line 67
    return v0
.end method

.method public abstract blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 188
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    return-void
.end method
