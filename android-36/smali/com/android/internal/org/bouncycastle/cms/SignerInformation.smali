.class public Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private final blacklist content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

.field private final blacklist contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected final blacklist digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final blacklist encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final blacklist info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

.field private final blacklist isCounterSignature:Z

.field private blacklist resultDigest:[B

.field private final blacklist sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

.field private final blacklist signature:[B

.field protected final blacklist signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

.field protected final blacklist unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V
    .registers 10
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .param p2, "contentType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "content"    # Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;
    .param p4, "resultDigest"    # [B

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 70
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 71
    if-nez p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v0

    .line 75
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 77
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    .line 79
    .local v1, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>([B)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 80
    .end local v1    # "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    goto :goto_47

    .line 83
    :cond_2c
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    .line 85
    .local v1, "iAnds":Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/SignerId;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerId;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 88
    .end local v1    # "iAnds":Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    :goto_47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    .line 94
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    .line 95
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 96
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)V
    .registers 3
    .param p1, "baseInfo"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 107
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V

    .line 108
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;)V
    .registers 4
    .param p1, "baseInfo"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p2, "info"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 121
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    .line 124
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 125
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 126
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 127
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 128
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    .line 129
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    .line 130
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 133
    return-void
.end method

.method public static blacklist addCounterSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .registers 14
    .param p0, "signerInformation"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p1, "counterSigners"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 777
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 778
    .local v0, "sInfo":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 781
    .local v1, "unsignedAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v1, :cond_d

    .line 783
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .local v2, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_12

    .line 787
    .end local v2    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_d
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 790
    .restart local v2    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_12
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 792
    .local v3, "sigs":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 794
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1f

    .line 797
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_33
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 799
    new-instance v4, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 800
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    .line 801
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v10

    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    .line 799
    return-object v4
.end method

.method private blacklist doVerify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z
    .registers 12
    .param p1, "verifier"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 359
    const-string v0, "can\'t process mime object to create signature."

    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "encName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v2, :cond_17

    .line 361
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    goto :goto_23

    :cond_17
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->translateBrokenRSAPkcs7(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 366
    .local v2, "realDigestAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :goto_23
    :try_start_23
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getContentVerifier(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v3
    :try_end_29
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_23 .. :try_end_29} :catch_125

    .line 371
    .local v3, "contentVerifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    nop

    .line 375
    :try_start_2a
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 377
    .local v4, "sigOut":Ljava/io/OutputStream;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v5, :cond_84

    .line 379
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v5

    .line 380
    .local v5, "calc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    if-eqz v6, :cond_6a

    .line 382
    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 384
    .local v6, "digOut":Ljava/io/OutputStream;
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v7, :cond_5a

    .line 386
    instance-of v7, v3, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    if-eqz v7, :cond_4c

    .line 388
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_66

    .line 392
    :cond_4c
    new-instance v7, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v7, v6, v4}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 394
    .local v7, "cOut":Ljava/io/OutputStream;
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v8, v7}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 396
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 397
    .end local v7    # "cOut":Ljava/io/OutputStream;
    goto :goto_66

    .line 401
    :cond_5a
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 405
    :goto_66
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 406
    .end local v6    # "digOut":Ljava/io/OutputStream;
    goto :goto_75

    .line 407
    :cond_6a
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v6, :cond_7c

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 417
    :goto_75
    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    .line 418
    .end local v5    # "calc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    goto :goto_99

    .line 414
    .restart local v5    # "calc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    :cond_7c
    new-instance v6, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v7, "data not encapsulated in signature - use detached constructor."

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .end local v1    # "encName":Ljava/lang/String;
    .end local v2    # "realDigestAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "contentVerifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .end local p1    # "verifier":Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    throw v6

    .line 421
    .end local v5    # "calc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .restart local v1    # "encName":Ljava/lang/String;
    .restart local v2    # "realDigestAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v3    # "contentVerifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .restart local p1    # "verifier":Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    :cond_84
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_92

    .line 423
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    if-eqz v5, :cond_99

    .line 425
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    invoke-interface {v5, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_99

    .line 430
    :cond_92
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 434
    :cond_99
    :goto_99
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_9c} :catch_11e
    .catch Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException; {:try_start_2a .. :try_end_9c} :catch_100

    .line 443
    .end local v4    # "sigOut":Ljava/io/OutputStream;
    nop

    .line 446
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyContentTypeAttributeValue()V

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    .line 451
    .local v4, "signedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyAlgorithmIdentifierProtectionAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyMessageDigestAttribute()V

    .line 457
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->verifyCounterSignatureAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V

    .line 461
    :try_start_ad
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_f0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v5, :cond_f0

    .line 463
    instance-of v5, v3, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    if-eqz v5, :cond_f0

    .line 465
    move-object v5, v3

    check-cast v5, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;

    .line 467
    .local v5, "rawVerifier":Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;
    const-string v6, "RSA"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 469
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 471
    .local v6, "digInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    const-string v7, "DER"

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result v0

    return v0

    .line 474
    .end local v6    # "digInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    :cond_e5
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result v0

    return v0

    .line 478
    .end local v5    # "rawVerifier":Lcom/android/internal/org/bouncycastle/operator/RawContentVerifier;
    :cond_f0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v0
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_f8} :catch_f9

    return v0

    .line 480
    :catch_f9
    move-exception v5

    .line 482
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v6, v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 440
    .end local v4    # "signedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_100
    move-exception v0

    .line 442
    .local v0, "e":Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t create digest calculator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 436
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
    :catch_11e
    move-exception v4

    .line 438
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v5, v0, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 368
    .end local v3    # "contentVerifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_125
    move-exception v0

    .line 370
    .restart local v0    # "e":Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t create content verifier: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private blacklist encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 3
    .param p1, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    if-eqz p1, :cond_b

    .line 151
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 154
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getSigningTime()Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 718
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "signing-time"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 721
    .local v0, "validSigningTime":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_d

    .line 723
    const/4 v1, 0x0

    return-object v1

    .line 728
    :cond_d
    :try_start_d
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_11} :catch_12

    return-object v1

    .line 730
    :catch_12
    move-exception v1

    .line 732
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string/jumbo v3, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 11
    .param p1, "attrOID"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "printableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 678
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 679
    .local v0, "unsignedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v0, :cond_30

    .line 680
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-gtz v1, :cond_11

    goto :goto_30

    .line 682
    :cond_11
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    .line 687
    .local v1, "signedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    const/4 v2, 0x0

    if-nez v1, :cond_38

    .line 689
    return-object v2

    .line 692
    :cond_38
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    .line 693
    .local v3, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_9e

    .line 710
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 699
    :pswitch_62
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 700
    .local v4, "t":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 701
    .local v5, "attrValues":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7d

    .line 707
    invoke-virtual {v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    .line 703
    :cond_7d
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attribute MUST have a single attribute value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 696
    .end local v4    # "t":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    .end local v5    # "attrValues":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :pswitch_9c
    return-object v2

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_62
    .end packed-switch
.end method

.method public static blacklist replaceUnsignedAttributes(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .registers 11
    .param p0, "signerInformation"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p1, "unsignedAttributes"    # Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 749
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 750
    .local v0, "sInfo":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    const/4 v1, 0x0

    .line 752
    .local v1, "unsignedAttr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    if-eqz p1, :cond_11

    .line 754
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v1, v2

    move-object v8, v1

    goto :goto_12

    .line 752
    :cond_11
    move-object v8, v1

    .line 757
    .end local v1    # "unsignedAttr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .local v8, "unsignedAttr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :goto_12
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    .line 758
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 759
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->content:Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    .line 757
    return-object v1
.end method

.method private static blacklist translateBrokenRSAPkcs7(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 5
    .param p0, "encryptionAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "digestAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 807
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 810
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 811
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 813
    :cond_24
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 817
    :cond_2e
    return-object p1
.end method

.method private blacklist verifyAlgorithmIdentifierProtectionAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 8
    .param p1, "signedAttrTable"    # Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 567
    .local v0, "unsignedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v0, :cond_1b

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-gtz v1, :cond_13

    goto :goto_1b

    .line 569
    :cond_13
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v2, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_8e

    .line 573
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 574
    .local v1, "protectionAttributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_86

    .line 579
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-lez v2, :cond_8e

    .line 581
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    .line 582
    .local v4, "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-ne v5, v3, :cond_7e

    .line 587
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object v2

    .line 589
    .local v2, "algorithmProtection":Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 594
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_6e

    goto :goto_8e

    .line 596
    :cond_6e
    new-instance v3, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {v3, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 591
    :cond_76
    new-instance v3, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {v3, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 584
    .end local v2    # "algorithmProtection":Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAlgorithmProtection;
    :cond_7e
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v3, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    .end local v4    # "attr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_86
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v3, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    .end local v1    # "protectionAttributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8e
    :goto_8e
    return-void
.end method

.method private blacklist verifyContentTypeAttributeValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "content-type"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 496
    .local v0, "validContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_1b

    .line 498
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v1, :cond_13

    goto :goto_2e

    .line 500
    :cond_13
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v2, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_1b
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v1, :cond_3f

    .line 510
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_37

    .line 515
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 517
    .local v1, "signedContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 522
    .end local v1    # "signedContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2e
    :goto_2e
    return-void

    .line 519
    .restart local v1    # "signedContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2f
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v3, "content-type attribute value does not match eContentType"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    .end local v1    # "signedContentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_37
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v2, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_3f
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v2, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist verifyCounterSignatureAttribute(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 8
    .param p1, "signedAttrTable"    # Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 611
    if-eqz p1, :cond_17

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 612
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_f

    goto :goto_17

    .line 614
    :cond_f
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 618
    .local v0, "unsignedAttrTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-eqz v0, :cond_48

    .line 620
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 621
    .local v1, "csAttrs":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 623
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v3

    .line 624
    .local v3, "csAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_40

    .line 621
    .end local v3    # "csAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 626
    .restart local v3    # "csAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_40
    new-instance v4, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v5, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 632
    .end local v1    # "csAttrs":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "i":I
    .end local v3    # "csAttr":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    :cond_48
    return-void
.end method

.method private blacklist verifyMessageDigestAttribute()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "message-digest"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 534
    .local v0, "validMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez v0, :cond_18

    .line 536
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-nez v1, :cond_f

    goto :goto_2b

    .line 538
    :cond_f
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string/jumbo v2, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_18
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_34

    .line 548
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 550
    .local v1, "signedMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 555
    .end local v1    # "signedMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :goto_2b
    return-void

    .line 552
    .restart local v1    # "signedMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_2c
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;

    const-string v3, "message-digest attribute value does not match calculated value"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    .end local v1    # "signedMessageDigest":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_34
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v2, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getContentDigest()[B
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 205
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method can only be called after verify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getCounterSignatures()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .registers 12

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    .line 285
    .local v0, "unsignedAttributeTable":Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    if-nez v0, :cond_12

    .line 287
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 290
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v1, "counterSignatures":Ljava/util/List;
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->getAll(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 299
    .local v2, "allCSAttrs":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 301
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 308
    .local v4, "counterSignatureAttribute":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 309
    .local v5, "values":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    .line 314
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .local v6, "en":Ljava/util/Enumeration;
    :goto_35
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 330
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v7

    .line 332
    .local v7, "si":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    new-instance v8, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    new-instance v9, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    const/4 v10, 0x0

    invoke-direct {v8, v7, v10, v9, v10}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v7    # "si":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    goto :goto_35

    .line 299
    .end local v4    # "counterSignatureAttribute":Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    .end local v5    # "values":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v6    # "en":Ljava/util/Enumeration;
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 336
    .end local v3    # "i":I
    :cond_59
    new-instance v3, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public blacklist getDigestAlgOID()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDigestAlgParams()[B
    .registers 5

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 192
    :catch_b
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting digest parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getEncodedSignedAttributes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_d

    .line 349
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 352
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEncryptionAlgOID()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncryptionAlgParams()[B
    .registers 5

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->encodeObj(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 229
    :catch_b
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getSID()Lcom/android/internal/org/bouncycastle/cms/SignerId;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->sid:Lcom/android/internal/org/bouncycastle/cms/SignerId;

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signature:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_11

    .line 243
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 246
    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public blacklist getUnsignedAttributes()Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_11

    .line 257
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 260
    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public blacklist isCounterSignature()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    return v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .registers 2

    .line 671
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->info:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    return-object v0
.end method

.method public blacklist verify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z
    .registers 6
    .param p1, "verifier"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 646
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSigningTime()Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object v0

    .line 648
    .local v0, "signingTime":Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 650
    if-eqz v0, :cond_24

    .line 652
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    .line 654
    .local v1, "dcv":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_24

    .line 656
    :cond_1b
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSVerifierCertificateNotValidException;

    const-string/jumbo v3, "verifier not valid at signingTime"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    .end local v1    # "dcv":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    :cond_24
    :goto_24
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->doVerify(Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v1

    return v1
.end method
