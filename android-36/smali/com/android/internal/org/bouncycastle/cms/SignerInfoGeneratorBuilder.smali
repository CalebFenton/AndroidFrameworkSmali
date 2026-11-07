.class public Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "SignerInfoGeneratorBuilder.java"


# instance fields
.field private blacklist contentDigest:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private blacklist digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

.field private blacklist directSignature:Z

.field private blacklist sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private blacklist signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

.field private blacklist unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V
    .registers 3
    .param p1, "digestProvider"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .registers 4
    .param p1, "digestProvider"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "sigEncAlgFinder"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 49
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 50
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 51
    return-void
.end method

.method private blacklist createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .registers 11
    .param p1, "contentSigner"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "sigId"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_e

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    move-object v4, v0

    .local v0, "digester":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    goto :goto_1f

    .line 151
    .end local v0    # "digester":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->digAlgFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    move-object v4, v0

    .line 154
    .local v4, "digester":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    :goto_1f
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    if-eqz v0, :cond_2f

    .line 156
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-object v0

    .line 159
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_3a

    move-object v3, p1

    move-object v2, p2

    goto :goto_4c

    .line 169
    :cond_3a
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    new-instance v6, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v2, p2

    .end local p1    # "contentSigner":Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .end local p2    # "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .local v2, "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .local v3, "contentSigner":Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v1

    .line 159
    .end local v2    # "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .end local v3    # "contentSigner":Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .restart local p1    # "contentSigner":Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .restart local p2    # "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    :cond_4a
    move-object v3, p1

    move-object v2, p2

    .line 161
    .end local p1    # "contentSigner":Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .end local p2    # "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .restart local v2    # "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .restart local v3    # "contentSigner":Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    :goto_4c
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez p1, :cond_57

    .line 163
    new-instance p1, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {p1}, Lcom/android/internal/org/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 166
    :cond_57
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v1
.end method


# virtual methods
.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .registers 6
    .param p1, "contentSigner"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "certHolder"    # Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    .line 117
    .local v0, "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v1

    .line 119
    .local v1, "sigInfoGen":Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v1, p2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->setAssociatedCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V

    .line 121
    return-object v1
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[B)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .registers 5
    .param p1, "contentSigner"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "subjectKeyIdentifier"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 138
    .local v0, "sigId":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setContentDigest(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2
    .param p1, "contentDigest"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 75
    return-object p0
.end method

.method public blacklist setDirectSignature(Z)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2
    .param p1, "hasNoSignedAttributes"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    .line 63
    return-object p0
.end method

.method public blacklist setSignedAttributeGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2
    .param p1, "signedGen"    # Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 86
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 88
    return-object p0
.end method

.method public blacklist setUnsignedAttributeGenerator(Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .registers 2
    .param p1, "unsignedGen"    # Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 99
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 101
    return-object p0
.end method
