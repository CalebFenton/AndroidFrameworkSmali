.class public Lcom/android/org/bouncycastle/asn1/DERSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "DERSequence.java"


# instance fields
.field private bodyLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    #@3
    .line 9
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    #@6
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3
    .line 9
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    #@6
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@3
    .line 9
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    #@6
    .line 31
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "array"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3
    .line 9
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    #@6
    .line 40
    return-void
.end method

.method private getBodyLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 48
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    #@2
    if-gez v3, :cond_1

    #@4
    .line 50
    const/4 v1, 0x0

    #@5
    .line 52
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 54
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    .line 56
    .local v2, "obj":Ljava/lang/Object;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@15
    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@20
    move-result v3

    #@21
    add-int/2addr v1, v3

    #@22
    goto :goto_0

    #@23
    .line 59
    :cond_0
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    #@25
    .line 62
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "length":I
    :cond_1
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/DERSequence;->bodyLength:I

    #@27
    return v3
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@3
    move-result-object v0

    #@4
    .line 86
    .local v0, "dOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getBodyLength()I

    #@7
    move-result v2

    #@8
    .line 88
    .local v2, "length":I
    const/16 v4, 0x30

    #@a
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@d
    .line 89
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@10
    .line 91
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    #@13
    move-result-object v1

    #@14
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 93
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    .line 95
    .local v3, "obj":Ljava/lang/Object;
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@20
    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    goto :goto_0

    #@24
    .line 83
    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getBodyLength()I

    #@3
    move-result v0

    #@4
    .line 70
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    add-int/2addr v1, v0

    #@b
    return v1
.end method
