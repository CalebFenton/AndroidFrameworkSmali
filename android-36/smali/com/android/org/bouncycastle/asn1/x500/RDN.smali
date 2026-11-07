.class public Lcom/android/org/bouncycastle/asn1/x500/RDN;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RDN.java"


# instance fields
.field private blacklist values:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 2

    .line 29
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    if-eqz v0, :cond_7

    .line 31
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/RDN;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method blacklist containsAttributeType(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 125
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method public blacklist getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_a
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    const/4 v2, 0x0

    :goto_9
    if-eq v2, v0, :cond_1a

    .line 103
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-object v1
.end method

.method public blacklist isMultiValued()Z
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist size()I
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result p0

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x500/RDN;->values:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method
