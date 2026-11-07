.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Object;
.super Ljava/lang/Object;
.source "ASN1Object.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist encodeTo(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;)V

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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 70
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 77
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    return p0
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEncoded(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 59
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 88
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.end method
