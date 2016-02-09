.class public Lcom/android/org/bouncycastle/asn1/BERSet;
.super Lcom/android/org/bouncycastle/asn1/ASN1Set;
.source "BERSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 31
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    #@4
    .line 29
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "a"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 40
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V

    #@4
    .line 38
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 61
    const/16 v1, 0x31

    #@3
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@6
    .line 62
    const/16 v1, 0x80

    #@8
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@b
    .line 64
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERSet;->getObjects()Ljava/util/Enumeration;

    #@e
    move-result-object v0

    #@f
    .line 65
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 67
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1e
    goto :goto_0

    #@1f
    .line 70
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@22
    .line 71
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@25
    .line 59
    return-void
.end method

.method encodedLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    const/4 v1, 0x0

    #@1
    .line 47
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERSet;->getObjects()Ljava/util/Enumeration;

    #@4
    move-result-object v0

    #@5
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@18
    move-result v2

    #@19
    add-int/2addr v1, v2

    #@1a
    goto :goto_0

    #@1b
    .line 52
    :cond_0
    add-int/lit8 v2, v1, 0x2

    #@1d
    add-int/lit8 v2, v2, 0x2

    #@1f
    return v2
.end method
