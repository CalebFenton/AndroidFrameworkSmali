.class public Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# static fields
.field private static blacklist digestCalculatorProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;


# instance fields
.field final blacklist holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    .registers 9
    .param p1, "digestedObjectType"    # I
    .param p2, "digestAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "otherObjectTypeID"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p4, "objectDigest"    # [B

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 121
    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v1, p1, p3, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 122
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 4
    .param p1, "principal"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .registers 7
    .param p1, "issuerName"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v3, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .registers 7
    .param p1, "cert"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 81
    return-void
.end method

.method private blacklist generateGeneralNames(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 4
    .param p1, "principal"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 192
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    return-object v0
.end method

.method private blacklist getPrincipals([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 6
    .param p1, "names"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .local v0, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p1

    if-eq v1, v2, :cond_23

    .line 221
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_20

    .line 223
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 227
    .end local v1    # "i":I
    :cond_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v1
.end method

.method private blacklist matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 8
    .param p1, "subject"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "targets"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 197
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 199
    .local v0, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-eq v1, v2, :cond_24

    .line 201
    aget-object v2, v0, v1

    .line 203
    .local v2, "gn":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_21

    .line 205
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 207
    const/4 v3, 0x1

    return v3

    .line 199
    .end local v2    # "gn":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 212
    .end local v1    # "i":I
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist setDigestCalculatorProvider(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V
    .registers 1
    .param p0, "digCalcProvider"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 372
    sput-object p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->digestCalculatorProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 373
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 281
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 344
    if-ne p1, p0, :cond_4

    .line 346
    const/4 v0, 0x1

    return v0

    .line 349
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;

    if-nez v0, :cond_a

    .line 351
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;

    .line 356
    .local v0, "other":Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0

    .line 158
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDigestedObjectType()I
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v0

    return v0

    .line 144
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getEntityNames()[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 241
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->getPrincipals([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    .line 244
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIssuer()[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->getPrincipals([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)[Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    .line 259
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getObjectDigest()[B
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 172
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOtherObjectTypeID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 185
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getOtherObjectTypeID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 187
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 273
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 276
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist match(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 286
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 288
    return v1

    .line 291
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 293
    .local v0, "x509Cert":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    .line 295
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 296
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v1, v3

    goto :goto_3d

    :cond_3c
    nop

    .line 295
    :goto_3d
    return v1

    .line 299
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 301
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 302
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    .line 301
    invoke-direct {p0, v2, v4}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->matchesDN(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 304
    return v3

    .line 308
    :cond_57
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 312
    :try_start_5f
    sget-object v2, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->digestCalculatorProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v2

    .line 313
    .local v2, "digCalc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 315
    .local v4, "digOut":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v5

    packed-switch v5, :pswitch_data_a6

    goto :goto_8f

    .line 322
    :pswitch_7b
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_8f

    .line 319
    :pswitch_83
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 320
    nop

    .line 326
    :goto_8f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 328
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_9e} :catch_a2

    if-eqz v5, :cond_a1

    .line 330
    return v3

    .line 336
    .end local v2    # "digCalc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .end local v4    # "digOut":Ljava/io/OutputStream;
    :cond_a1
    goto :goto_a4

    .line 333
    :catch_a2
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/Exception;
    return v1

    .line 339
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a4
    :goto_a4
    return v1

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7b
    .end packed-switch
.end method
