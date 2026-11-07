.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Primitive.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 46
    :try_start_5
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 48
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    if-nez v0, :cond_10

    return-object p0

    .line 50
    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extra data detected in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_18} :catch_18

    .line 57
    :catch_18
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot recognise object in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method abstract blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
.end method

.method abstract blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
.end method

.method abstract blacklist encodeConstructed()Z
.end method

.method public blacklist encodeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object p1

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 22
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    return-void
.end method

.method public blacklist encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object p1

    const/4 p2, 0x1

    .line 28
    invoke-virtual {p1, p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 29
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    return-void
.end method

.method abstract blacklist encodedLength(Z)I
.end method

.method public final blacklist equals(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Z
    .registers 2

    if-eq p0, p1, :cond_11

    if-eqz p1, :cond_f

    .line 73
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public final blacklist equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 2

    if-eq p0, p1, :cond_b

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 68
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_15

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public final blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method
