.class public Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GCMParameters.java"


# instance fields
.field private icvLen:I

.field private nonce:[B


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 59
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->nonce:[B

    #@12
    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@15
    move-result v0

    #@16
    const/4 v1, 0x2

    #@17
    if-ne v0, v1, :cond_0

    #@19
    .line 63
    const/4 v0, 0x1

    #@1a
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    #@2c
    .line 57
    :goto_0
    return-void

    #@2d
    .line 67
    :cond_0
    const/16 v0, 0xc

    #@2f
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    #@31
    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "nonce"    # [B
    .param p2, "icvLen"    # I

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 75
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->nonce:[B

    #@9
    .line 76
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    #@b
    .line 73
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 53
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getIcvLen()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    #@2
    return v0
.end method

.method public getNonce()[B
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->nonce:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 93
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->nonce:[B

    #@9
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 95
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    #@11
    const/16 v2, 0xc

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 97
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->icvLen:I

    #@19
    int-to-long v2, v2

    #@1a
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    .line 100
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@22
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@25
    return-object v1
.end method
