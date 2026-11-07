.class public Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "BitmapSspRange.java"


# instance fields
.field private final blacklist sspBitmask:[B

.field private final blacklist sspValue:[B


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 29
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 35
    nop

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/Utils;->octetStringFixed([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->sspValue:[B

    .line 37
    nop

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/its/asn1/Utils;->octetStringFixed([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->sspBitmask:[B

    .line 39
    return-void

    .line 32
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence with sspValue and sspBitmask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    if-eqz v0, :cond_8

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    return-object v0

    .line 47
    :cond_8
    if-eqz p0, :cond_14

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getSspBitmask()[B
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->sspBitmask:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSspValue()[B
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->sspValue:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 67
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 69
    .local v0, "avec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->sspValue:[B

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 70
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/its/asn1/BitmapSspRange;->sspBitmask:[B

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
