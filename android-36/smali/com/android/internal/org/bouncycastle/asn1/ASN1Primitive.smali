.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Primitive.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 16
    return-void
.end method

.method public static blacklist fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 46
    .local v0, "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_5
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 48
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->available()I

    move-result v2

    if-nez v2, :cond_10

    .line 53
    return-object v1

    .line 50
    :cond_10
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Extra data detected in stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local p0    # "data":[B
    throw v2
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_18} :catch_18

    .line 55
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v0    # "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .restart local p0    # "data":[B
    :catch_18
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "cannot recognise object in stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method abstract blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
.end method

.method abstract blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist encodeConstructed()Z
.end method

.method public blacklist encodeTo(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 21
    .local v0, "asn1Out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 22
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    .line 23
    return-void
.end method

.method public blacklist encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v0

    .line 28
    .local v0, "asn1Out":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 29
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    .line 30
    return-void
.end method

.method abstract blacklist encodedLength(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Z
    .registers 3
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 73
    if-eq p0, p1, :cond_11

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public final blacklist equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 78
    if-eq p0, p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 65
    return v0

    .line 68
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_16

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public final blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 83
    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 93
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 103
    return-object p0
.end method
