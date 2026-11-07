.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.super Ljava/lang/Object;
.source "ASN1Object.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist hasEncodedTagValue(Ljava/lang/Object;I)Z
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "tagValue"    # I

    .line 98
    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, v1

    if-ne v0, p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method


# virtual methods
.method public blacklist encodeTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;)V

    .line 20
    return-void
.end method

.method public blacklist encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 62
    if-ne p0, p1, :cond_4

    .line 64
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_a

    .line 69
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 74
    .local v0, "other":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    return v1
.end method

.method public blacklist getEncoded()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getEncoded(Ljava/lang/String;)[B
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Object()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.end method
