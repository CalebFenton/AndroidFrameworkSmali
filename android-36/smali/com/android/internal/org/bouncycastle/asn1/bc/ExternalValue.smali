.class public Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ExternalValue.java"


# instance fields
.field private final blacklist hashAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist hashValue:[B

.field private final blacklist location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 44
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_47

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_38

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashValue:[B

    goto :goto_46

    .line 55
    :cond_38
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashValue:[B

    .line 62
    :goto_46
    return-void

    .line 60
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 5
    .param p1, "location"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "hashAlg"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "hashVal"    # [B

    .line 37
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 39
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 40
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashValue:[B

    .line 41
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;

    if-eqz v0, :cond_8

    .line 68
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;

    return-object v0

    .line 70
    :cond_8
    if-eqz p0, :cond_14

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 75
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getHashAlg()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getHashVal()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 3

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashValue:[B

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    return-object v0
.end method

.method public blacklist getHashValue()[B
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashValue:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocation()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getLocations()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 111
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->hashValue:[B

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 117
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
