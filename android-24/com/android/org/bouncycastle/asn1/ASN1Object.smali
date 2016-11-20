.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Object;
.super Ljava/lang/Object;
.source "ASN1Object.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.implements Lcom/android/org/bouncycastle/util/Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static hasEncodedTagValue(Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "tagValue"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    instance-of v1, p0, [B

    #@3
    if-eqz v1, :cond_0

    #@5
    check-cast p0, [B

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    aget-byte v1, p0, v0

    #@9
    if-ne v1, p1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    if-ne p0, p1, :cond_0

    #@2
    .line 74
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 77
    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 79
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 82
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@d
    .line 84
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 23
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 24
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 26
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@d
    .line 28
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@10
    move-result-object v2

    #@11
    return-object v2
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    const-string/jumbo v3, "DER"

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@b
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@e
    .line 45
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@10
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    #@13
    .line 47
    .local v1, "dOut":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 51
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dOut":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :cond_0
    const-string/jumbo v3, "DL"

    #@1e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@26
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@29
    .line 54
    .restart local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    #@2b
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@2e
    .line 56
    .local v2, "dOut":Lcom/android/org/bouncycastle/asn1/DLOutputStream;
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@31
    .line 58
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@34
    move-result-object v3

    #@35
    return-object v3

    #@36
    .line 61
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dOut":Lcom/android/org/bouncycastle/asn1/DLOutputStream;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@39
    move-result-object v3

    #@3a
    return-object v3
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.end method
