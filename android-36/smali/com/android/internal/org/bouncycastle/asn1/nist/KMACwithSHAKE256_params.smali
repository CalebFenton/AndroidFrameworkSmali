.class public Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "KMACwithSHAKE256_params.java"


# static fields
.field private static final blacklist DEF_LENGTH:I = 0x200

.field private static final blacklist EMPTY_STRING:[B


# instance fields
.field private final blacklist customizationString:[B

.field private final blacklist outputLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->EMPTY_STRING:[B

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "outputLength"    # I

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    .line 35
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->EMPTY_STRING:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->customizationString:[B

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 4
    .param p1, "outputLength"    # I
    .param p2, "customizationString"    # [B

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    .line 41
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->customizationString:[B

    .line 42
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_72

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_33

    .line 67
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    .line 68
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->customizationString:[B

    goto :goto_71

    .line 70
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v2, :cond_6b

    .line 72
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_56

    .line 74
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    .line 75
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->EMPTY_STRING:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->customizationString:[B

    goto :goto_71

    .line 79
    :cond_56
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    .line 80
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->customizationString:[B

    goto :goto_71

    .line 85
    :cond_6b
    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    .line 86
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->EMPTY_STRING:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->customizationString:[B

    .line 88
    :goto_71
    return-void

    .line 62
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sequence size greater than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 46
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;

    if-eqz v0, :cond_8

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;

    return-object v0

    .line 50
    :cond_8
    if-eqz p0, :cond_14

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 55
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCustomizationString()[B
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->customizationString:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputLength()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 102
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    const/16 v2, 0x200

    if-eq v1, v2, :cond_16

    .line 106
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->outputLength:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_16
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->customizationString:[B

    array-length v1, v1

    if-eqz v1, :cond_27

    .line 111
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/nist/KMACwithSHAKE256_params;->getCustomizationString()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_27
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
