.class public Lcom/android/org/bouncycastle/internal/asn1/cms/GCMParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GCMParameters.java"


# instance fields
.field private blacklist icvLen:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>([BI)V
    .registers 3

    .line 76
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/internal/asn1/cms/GCMParameters;->nonce:[B

    .line 78
    iput p2, p0, Lcom/android/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    return-void
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 93
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 95
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/org/bouncycastle/internal/asn1/cms/GCMParameters;->nonce:[B

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    iget v1, p0, Lcom/android/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_21

    .line 99
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget p0, p0, Lcom/android/org/bouncycastle/internal/asn1/cms/GCMParameters;->icvLen:I

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    :cond_21
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
