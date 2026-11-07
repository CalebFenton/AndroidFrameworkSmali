.class public Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "GCMParameters.java"


# instance fields
.field private blacklist icvLen:I

.field private blacklist nonce:[B


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 60
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->nonce:[B

    .line 63
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    goto :goto_2d

    .line 69
    :cond_29
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    .line 71
    :goto_2d
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4
    .param p1, "nonce"    # [B
    .param p2, "icvLen"    # I

    .line 76
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->nonce:[B

    .line 78
    iput p2, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    .line 79
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 46
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    if-eqz v0, :cond_8

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    return-object v0

    .line 50
    :cond_8
    if-eqz p0, :cond_14

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 55
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getIcvLen()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    return v0
.end method

.method public blacklist getNonce()[B
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->nonce:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 95
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->nonce:[B

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    iget v1, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_21

    .line 99
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    :cond_21
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
