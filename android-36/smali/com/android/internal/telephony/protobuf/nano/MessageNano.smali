.class public abstract Lcom/android/internal/telephony/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile blacklist cachedSize:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[BII)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[BII)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    const/4 p2, 0x0

    .line 144
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_b
    .catch Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_b} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 149
    :catch_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_14
    move-exception p0

    .line 147
    throw p0
.end method

.method public static final blacklist messageNanoEquals(Lcom/android/internal/telephony/protobuf/nano/MessageNano;Lcom/android/internal/telephony/protobuf/nano/MessageNano;)Z
    .registers 6

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

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

    return v0

    .line 168
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    if-eq v2, v1, :cond_20

    return v0

    .line 172
    :cond_20
    new-array v2, v1, [B

    .line 173
    new-array v3, v1, [B

    .line 174
    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[BII)V

    .line 175
    invoke-static {p1, v3, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[BII)V

    .line 176
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2f
    :goto_2f
    return v0
.end method

.method public static final blacklist toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[BII)V
    .registers 4

    .line 116
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final blacklist toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B
    .registers 4

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 101
    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[BII)V

    return-object v1
.end method


# virtual methods
.method public blacklist clone()Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    return-object p0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->clone()Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getCachedSize()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    if-gez v0, :cond_7

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->getSerializedSize()I

    .line 56
    :cond_7
    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return p0
.end method

.method public blacklist getSerializedSize()I
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public abstract blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 188
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method
