.class public abstract Lcom/android/phone/ecc/nano/MessageNano;
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
    iput v0, p0, Lcom/android/phone/ecc/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final blacklist mergeFrom(Lcom/android/phone/ecc/nano/MessageNano;[B)Lcom/android/phone/ecc/nano/MessageNano;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/phone/ecc/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/ecc/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/phone/ecc/nano/MessageNano;->mergeFrom(Lcom/android/phone/ecc/nano/MessageNano;[BII)Lcom/android/phone/ecc/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist mergeFrom(Lcom/android/phone/ecc/nano/MessageNano;[BII)Lcom/android/phone/ecc/nano/MessageNano;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/phone/ecc/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/ecc/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/MessageNano;->mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/MessageNano;

    const/4 p2, 0x0

    .line 144
    invoke-virtual {p1, p2}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_b
    .catch Lcom/android/phone/ecc/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_b} :catch_14
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


# virtual methods
.method public blacklist clone()Lcom/android/phone/ecc/nano/MessageNano;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/ecc/nano/MessageNano;

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
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/MessageNano;->clone()Lcom/android/phone/ecc/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist mergeFrom(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;)Lcom/android/phone/ecc/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 188
    invoke-static {p0}, Lcom/android/phone/ecc/nano/MessageNanoPrinter;->print(Lcom/android/phone/ecc/nano/MessageNano;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
