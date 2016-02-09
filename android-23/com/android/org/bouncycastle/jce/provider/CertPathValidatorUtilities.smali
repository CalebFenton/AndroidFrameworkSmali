.class Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field protected static final CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final FRESHEST_CRL:Ljava/lang/String;

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 83
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@7
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@f
    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@17
    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@1f
    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@27
    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@2f
    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    #@37
    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@3f
    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@47
    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@4f
    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@51
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@57
    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    #@5f
    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@61
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    #@67
    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@69
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    #@6f
    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    #@77
    .line 109
    const/16 v0, 0xb

    #@79
    new-array v0, v0, [Ljava/lang/String;

    #@7b
    .line 110
    const-string/jumbo v1, "unspecified"

    #@7e
    const/4 v2, 0x0

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 111
    const-string/jumbo v1, "keyCompromise"

    #@84
    const/4 v2, 0x1

    #@85
    aput-object v1, v0, v2

    #@87
    .line 112
    const-string/jumbo v1, "cACompromise"

    #@8a
    const/4 v2, 0x2

    #@8b
    aput-object v1, v0, v2

    #@8d
    .line 113
    const-string/jumbo v1, "affiliationChanged"

    #@90
    const/4 v2, 0x3

    #@91
    aput-object v1, v0, v2

    #@93
    .line 114
    const-string/jumbo v1, "superseded"

    #@96
    const/4 v2, 0x4

    #@97
    aput-object v1, v0, v2

    #@99
    .line 115
    const-string/jumbo v1, "cessationOfOperation"

    #@9c
    const/4 v2, 0x5

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 116
    const-string/jumbo v1, "certificateHold"

    #@a2
    const/4 v2, 0x6

    #@a3
    aput-object v1, v0, v2

    #@a5
    .line 117
    const-string/jumbo v1, "unknown"

    #@a8
    const/4 v2, 0x7

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 118
    const-string/jumbo v1, "removeFromCRL"

    #@ae
    const/16 v2, 0x8

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 119
    const-string/jumbo v1, "privilegeWithdrawn"

    #@b5
    const/16 v2, 0x9

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 120
    const-string/jumbo v1, "aACompromise"

    #@bc
    const/16 v2, 0xa

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 109
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    #@c2
    .line 81
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static checkCRLsNotEmpty(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 6
    .param p0, "crls"    # Ljava/util/Set;
    .param p1, "cert"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1358
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 1360
    instance-of v2, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@8
    if-eqz v2, :cond_0

    #@a
    move-object v0, p1

    #@b
    .line 1362
    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@d
    .line 1364
    .local v0, "aCert":Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "No CRLs found for issuer \""

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    #@22
    move-result-object v4

    #@23
    const/4 v5, 0x0

    #@24
    aget-object v4, v4, v5

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    const-string/jumbo v4, "\""

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .end local v0    # "aCert":Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    :cond_0
    move-object v1, p1

    #@3a
    .line 1368
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@3c
    .line 1370
    .local v1, "xCert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "No CRLs found for issuer \""

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@4c
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@4f
    move-result-object v5

    #@50
    invoke-interface {v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    const-string/jumbo v4, "\""

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@66
    throw v2

    #@67
    .line 1356
    .end local v1    # "xCert":Ljava/security/cert/X509Certificate;
    :cond_1
    return-void
.end method

.method protected static findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p0, "certSelect"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .param p1, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 652
    new-instance v1, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 653
    .local v1, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .line 655
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 657
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    .local v4, "obj":Ljava/lang/Object;
    move-object v0, v4

    #@14
    .line 676
    check-cast v0, Ljava/security/cert/CertStore;

    #@16
    .line 680
    .local v0, "certStore":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 683
    :catch_0
    move-exception v2

    #@1f
    .line 684
    .local v2, "e":Ljava/security/cert/CertStoreException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@21
    .line 685
    const-string/jumbo v6, "Problem while picking certificates from certificate store."

    #@24
    .line 684
    invoke-direct {v5, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v5

    #@28
    .line 690
    .end local v0    # "certStore":Ljava/security/cert/CertStore;
    .end local v2    # "e":Ljava/security/cert/CertStoreException;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method static findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .locals 15
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/Collection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1281
    .local p1, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p2, "pkixCertStores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    new-instance v12, Ljava/security/cert/X509CertSelector;

    #@2
    invoke-direct {v12}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@5
    .line 1285
    .local v12, "selector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    move-result-object v13

    #@9
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@c
    move-result-object v13

    #@d
    invoke-virtual {v12, v13}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1295
    :try_start_1
    sget-object v13, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    #@12
    invoke-virtual {p0, v13}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@15
    move-result-object v2

    #@16
    .line 1296
    .local v2, "akiExtensionValue":[B
    if-eqz v2, :cond_0

    #@18
    .line 1298
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1b
    move-result-object v1

    #@1c
    .line 1299
    .local v1, "aki":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@1f
    move-result-object v13

    #@20
    invoke-static {v13}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@23
    move-result-object v13

    #@24
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    #@27
    move-result-object v3

    #@28
    .line 1300
    .local v3, "authorityKeyIdentifier":[B
    if-eqz v3, :cond_0

    #@2a
    .line 1302
    new-instance v13, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@2c
    invoke-direct {v13, v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@2f
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    #@32
    move-result-object v13

    #@33
    invoke-virtual {v12, v13}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@36
    .line 1311
    .end local v1    # "aki":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "akiExtensionValue":[B
    .end local v3    # "authorityKeyIdentifier":[B
    :cond_0
    :goto_0
    new-instance v13, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    #@38
    invoke-direct {v13, v12}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    #@3b
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    #@3e
    move-result-object v4

    #@3f
    .line 1312
    .local v4, "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v5, Ljava/util/LinkedHashSet;

    #@41
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    #@44
    .line 1318
    .local v5, "certs":Ljava/util/Set;
    :try_start_2
    new-instance v11, Ljava/util/ArrayList;

    #@46
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@49
    .line 1320
    .local v11, "matches":Ljava/util/List;
    move-object/from16 v0, p1

    #@4b
    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@4e
    move-result-object v13

    #@4f
    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@52
    .line 1321
    move-object/from16 v0, p2

    #@54
    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@57
    move-result-object v13

    #@58
    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@5b
    .line 1323
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    #@5e
    move-result-object v10

    #@5f
    .line 1330
    .local v10, "iter":Ljava/util/Iterator;
    const/4 v9, 0x0

    #@60
    .line 1331
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@63
    move-result v13

    #@64
    if-eqz v13, :cond_1

    #@66
    .line 1333
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69
    move-result-object v9

    #@6a
    check-cast v9, Ljava/security/cert/X509Certificate;

    #@6c
    .line 1336
    .local v9, "issuer":Ljava/security/cert/X509Certificate;
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_1

    #@70
    .line 1288
    .end local v4    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v5    # "certs":Ljava/util/Set;
    .end local v9    # "issuer":Ljava/security/cert/X509Certificate;
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v11    # "matches":Ljava/util/List;
    :catch_0
    move-exception v7

    #@71
    .line 1289
    .local v7, "e":Ljava/io/IOException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@73
    .line 1290
    const-string/jumbo v14, "Subject criteria for certificate selector to find issuer certificate could not be set."

    #@76
    .line 1289
    invoke-direct {v13, v14, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@79
    throw v13

    #@7a
    .line 1326
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .restart local v5    # "certs":Ljava/util/Set;
    :catch_1
    move-exception v6

    #@7b
    .line 1327
    .local v6, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@7d
    const-string/jumbo v14, "Issuer certificate cannot be searched."

    #@80
    invoke-direct {v13, v14, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@83
    throw v13

    #@84
    .line 1338
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v10    # "iter":Ljava/util/Iterator;
    .restart local v11    # "matches":Ljava/util/List;
    :cond_1
    return-object v5

    #@85
    .line 1307
    .end local v4    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v5    # "certs":Ljava/util/Set;
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v11    # "matches":Ljava/util/List;
    :catch_2
    move-exception v8

    #@86
    .local v8, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 12
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    const/4 v8, 0x0

    #@1
    .line 163
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v9, 0x0

    #@2
    .line 164
    .local v9, "trustPublicKey":Ljava/security/PublicKey;
    const/4 v6, 0x0

    #@3
    .line 166
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    #@5
    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@8
    .line 167
    .local v2, "certSelectX509":Ljava/security/cert/X509CertSelector;
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    move-result-object v1

    #@c
    .line 171
    .local v1, "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@f
    move-result-object v10

    #@10
    invoke-virtual {v2, v10}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@13
    .line 178
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v7

    #@17
    .line 179
    .end local v6    # "invalidKeyEx":Ljava/lang/Exception;
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "trustPublicKey":Ljava/security/PublicKey;
    .local v7, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_5

    #@1d
    if-nez v8, :cond_5

    #@1f
    .line 181
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    check-cast v8, Ljava/security/cert/TrustAnchor;

    #@25
    .line 182
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@28
    move-result-object v10

    #@29
    if-eqz v10, :cond_2

    #@2b
    .line 184
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@2e
    move-result-object v10

    #@2f
    invoke-virtual {v2, v10}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@32
    move-result v10

    #@33
    if-eqz v10, :cond_1

    #@35
    .line 186
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@38
    move-result-object v10

    #@39
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3c
    move-result-object v9

    #@3d
    .line 218
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    :goto_1
    if-eqz v9, :cond_0

    #@3f
    .line 222
    :try_start_1
    invoke-static {p0, v9, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@42
    goto :goto_0

    #@43
    .line 225
    :catch_0
    move-exception v4

    #@44
    .line 226
    .local v4, "ex":Ljava/lang/Exception;
    move-object v6, v4

    #@45
    .line 227
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    const/4 v8, 0x0

    #@46
    .line 228
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v9, 0x0

    #@47
    .restart local v9    # "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_0

    #@48
    .line 174
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v7    # "iter":Ljava/util/Iterator;
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    #@49
    .line 175
    .local v3, "ex":Ljava/io/IOException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4b
    const-string/jumbo v11, "Cannot set subject search criteria for trust anchor."

    #@4e
    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@51
    throw v10

    #@52
    .line 190
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v6    # "invalidKeyEx":Ljava/lang/Exception;
    .end local v9    # "trustPublicKey":Ljava/security/PublicKey;
    .restart local v7    # "iter":Ljava/util/Iterator;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :cond_1
    const/4 v8, 0x0

    #@53
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_1

    #@54
    .line 193
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :cond_2
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    #@57
    move-result-object v10

    #@58
    if-eqz v10, :cond_4

    #@5a
    .line 194
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@5d
    move-result-object v10

    #@5e
    if-eqz v10, :cond_4

    #@60
    .line 198
    :try_start_2
    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@63
    move-result-object v0

    #@64
    .line 199
    .local v0, "caName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v10

    #@68
    if-eqz v10, :cond_3

    #@6a
    .line 201
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@6d
    move-result-object v9

    #@6e
    .local v9, "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_1

    #@6f
    .line 205
    .end local v9    # "trustPublicKey":Ljava/security/PublicKey;
    :cond_3
    const/4 v8, 0x0

    #@70
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_1

    #@71
    .line 209
    .end local v0    # "caName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :catch_2
    move-exception v5

    #@72
    .line 210
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x0

    #@73
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_1

    #@74
    .line 215
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :cond_4
    const/4 v8, 0x0

    #@75
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_1

    #@76
    .line 233
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_5
    if-nez v8, :cond_6

    #@78
    if-eqz v6, :cond_6

    #@7a
    .line 235
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@7c
    const-string/jumbo v11, "TrustAnchor found but certificate validation failed."

    #@7f
    invoke-direct {v10, v11, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@82
    throw v10

    #@83
    .line 238
    :cond_6
    return-object v8
.end method

.method static getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;
    .locals 7
    .param p0, "issuerAlternativeName"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    .local p1, "altNameCertStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    if-eqz p0, :cond_2

    #@2
    .line 250
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@9
    move-result-object v6

    #@a
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@d
    move-result-object v3

    #@e
    .line 252
    .local v3, "issuerAltName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@11
    move-result-object v4

    #@12
    .line 253
    .local v4, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v5, Ljava/util/ArrayList;

    #@14
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 255
    .local v5, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    const/4 v2, 0x0

    #@18
    .local v2, "i":I
    :goto_0
    array-length v6, v4

    #@19
    if-eq v2, v6, :cond_1

    #@1b
    .line 257
    aget-object v0, v4, v2

    #@1d
    .line 259
    .local v0, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    #@23
    .line 261
    .local v1, "altStore":Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;
    if-eqz v1, :cond_0

    #@25
    .line 263
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 255
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 267
    .end local v0    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v1    # "altStore":Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;
    :cond_1
    return-object v5

    #@2c
    .line 271
    .end local v2    # "i":I
    .end local v3    # "issuerAltName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v4    # "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    :cond_2
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@2e
    return-object v6
.end method

.method static getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .param p0, "crldp"    # Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 696
    .local p1, "namedCRLStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    if-eqz p0, :cond_3

    #@2
    .line 698
    const/4 v1, 0x0

    #@3
    .line 701
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 708
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    new-instance v7, Ljava/util/ArrayList;

    #@9
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 710
    .local v7, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    array-length v8, v1

    #@e
    if-ge v4, v8, :cond_2

    #@10
    .line 712
    aget-object v8, v1, v4

    #@12
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@15
    move-result-object v0

    #@16
    .line 714
    .local v0, "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v0, :cond_1

    #@18
    .line 716
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    #@1b
    move-result v8

    #@1c
    if-nez v8, :cond_1

    #@1e
    .line 719
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@21
    move-result-object v8

    #@22
    .line 718
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@29
    move-result-object v3

    #@2a
    .line 721
    .local v3, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    #@2b
    .local v5, "j":I
    :goto_1
    array-length v8, v3

    #@2c
    if-ge v5, v8, :cond_1

    #@2e
    .line 729
    aget-object v8, v3, v5

    #@30
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    check-cast v6, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    #@36
    .line 731
    .local v6, "store":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v6, :cond_0

    #@38
    .line 733
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 721
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 704
    .end local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v3    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "store":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;
    .end local v7    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :catch_0
    move-exception v2

    #@3f
    .line 705
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@41
    .line 706
    const-string/jumbo v9, "Distribution points could not be read."

    #@44
    .line 705
    invoke-direct {v8, v9, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@47
    throw v8

    #@48
    .line 710
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v4    # "i":I
    .restart local v7    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 740
    .end local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    :cond_2
    return-object v7

    #@4c
    .line 744
    .end local v1    # "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v4    # "i":I
    .end local v7    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    :cond_3
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@4e
    return-object v8
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 5
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@5
    move-result-object v3

    #@6
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@9
    .line 341
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    move-result-object v3

    #@d
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@10
    move-result-object v2

    #@11
    .line 343
    .local v2, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v3

    #@15
    return-object v3

    #@16
    .line 346
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v1

    #@17
    .line 347
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@19
    const-string/jumbo v4, "Subject public key cannot be decoded."

    #@1c
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v3
.end method

.method protected static getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    .locals 8
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "issuerPrincipals"    # Ljava/util/Collection;
    .param p2, "selector"    # Ljava/security/cert/X509CRLSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 770
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 772
    .local v3, "issuers":Ljava/util/List;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@8
    move-result-object v6

    #@9
    if-eqz v6, :cond_1

    #@b
    .line 774
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@12
    move-result-object v2

    #@13
    .line 776
    .local v2, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    #@14
    .local v5, "j":I
    :goto_0
    array-length v6, v2

    #@15
    if-ge v5, v6, :cond_3

    #@17
    .line 778
    aget-object v6, v2, v5

    #@19
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    #@1c
    move-result v6

    #@1d
    const/4 v7, 0x4

    #@1e
    if-ne v6, v7, :cond_0

    #@20
    .line 782
    :try_start_0
    aget-object v6, v2, v5

    #@22
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    move-result-object v6

    #@26
    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    #@2d
    move-result-object v6

    #@2e
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@31
    move-result-object v6

    #@32
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 776
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 786
    :catch_0
    move-exception v0

    #@39
    .line 787
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@3b
    .line 788
    const-string/jumbo v7, "CRL issuer information from distribution point cannot be decoded."

    #@3e
    .line 787
    invoke-direct {v6, v7, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v6

    #@42
    .line 800
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@45
    move-result-object v6

    #@46
    if-nez v6, :cond_2

    #@48
    .line 802
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4a
    .line 803
    const-string/jumbo v7, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    #@4d
    .line 802
    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@50
    throw v6

    #@51
    .line 806
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v4

    #@55
    .local v4, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v6

    #@59
    if-eqz v6, :cond_3

    #@5b
    .line 808
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v6

    #@5f
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    goto :goto_1

    #@63
    .line 855
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@66
    move-result-object v4

    #@67
    .line 856
    .restart local v4    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@6a
    move-result v6

    #@6b
    if-eqz v6, :cond_4

    #@6d
    .line 860
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@70
    move-result-object v6

    #@71
    check-cast v6, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@73
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@76
    move-result-object v6

    #@77
    invoke-virtual {p2, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@7a
    goto :goto_2

    #@7b
    .line 863
    :catch_1
    move-exception v1

    #@7c
    .line 864
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@7e
    .line 865
    const-string/jumbo v7, "Cannot decode CRL issuer information."

    #@81
    .line 864
    invoke-direct {v6, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@84
    throw v6

    #@85
    .line 768
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_4
    return-void
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 12
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 883
    const/4 v2, 0x0

    #@1
    .line 888
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result v5

    #@5
    .line 895
    .local v5, "isIndirect":Z
    if-eqz v5, :cond_3

    #@7
    .line 897
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    #@a
    move-result-object v7

    #@b
    invoke-virtual {p1, v7}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    #@e
    move-result-object v2

    #@f
    .line 899
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v2, :cond_0

    #@11
    .line 901
    return-void

    #@12
    .line 891
    .end local v5    # "isIndirect":Z
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :catch_0
    move-exception v4

    #@13
    .line 892
    .local v4, "exception":Ljava/security/cert/CRLException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@15
    const-string/jumbo v8, "Failed check for indirect CRL."

    #@18
    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v7

    #@1c
    .line 911
    .end local v4    # "exception":Ljava/security/cert/CRLException;
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    .restart local v5    # "isIndirect":Z
    :cond_0
    const/4 v0, 0x0

    #@1d
    .line 912
    .local v0, "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    #@20
    move-result-object v1

    #@21
    .line 913
    .local v1, "certificateIssuerPrincipal":Ljavax/security/auth/x500/X500Principal;
    if-eqz v1, :cond_1

    #@23
    .line 914
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@26
    move-result-object v7

    #@27
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2a
    move-result-object v0

    #@2b
    .line 918
    .end local v0    # "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_1
    if-nez v0, :cond_2

    #@2d
    .line 920
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@30
    move-result-object v0

    #@31
    .line 923
    :cond_2
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    if-nez v7, :cond_5

    #@3b
    .line 925
    return-void

    #@3c
    .line 928
    .end local v1    # "certificateIssuerPrincipal":Ljavax/security/auth/x500/X500Principal;
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :cond_3
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3f
    move-result-object v7

    #@40
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v7

    #@48
    if-nez v7, :cond_4

    #@4a
    .line 930
    return-void

    #@4b
    .line 934
    :cond_4
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {p1, v7}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    #@52
    move-result-object v2

    #@53
    .line 936
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v2, :cond_5

    #@55
    .line 938
    return-void

    #@56
    .line 942
    :cond_5
    const/4 v6, 0x0

    #@57
    .line 943
    .local v6, "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_6

    #@5d
    .line 950
    :try_start_1
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    .line 948
    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@66
    move-result-object v7

    #@67
    .line 947
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@6a
    move-result-object v6

    #@6b
    .line 962
    .end local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@6e
    move-result-wide v8

    #@6f
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    #@76
    move-result-wide v10

    #@77
    cmp-long v7, v8, v10

    #@79
    if-gez v7, :cond_7

    #@7b
    .line 963
    if-nez v6, :cond_9

    #@7d
    .line 971
    :cond_7
    :goto_0
    if-eqz v6, :cond_a

    #@7f
    .line 973
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@86
    move-result v7

    #@87
    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    #@8a
    .line 980
    :goto_1
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    #@8d
    move-result-object v7

    #@8e
    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    #@91
    .line 881
    :cond_8
    return-void

    #@92
    .line 953
    .restart local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :catch_1
    move-exception v3

    #@93
    .line 954
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@95
    .line 955
    const-string/jumbo v8, "Reason code CRL entry extension could not be decoded."

    #@98
    .line 954
    invoke-direct {v7, v8, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9b
    throw v7

    #@9c
    .line 964
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_9
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@a3
    move-result v7

    #@a4
    if-eqz v7, :cond_7

    #@a6
    .line 965
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@a9
    move-result-object v7

    #@aa
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@ad
    move-result v7

    #@ae
    const/4 v8, 0x1

    #@af
    if-eq v7, v8, :cond_7

    #@b1
    .line 966
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@b8
    move-result v7

    #@b9
    const/4 v8, 0x2

    #@ba
    if-eq v7, v8, :cond_7

    #@bc
    .line 967
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@c3
    move-result v7

    #@c4
    const/16 v8, 0x8

    #@c6
    if-ne v7, v8, :cond_8

    #@c8
    goto :goto_0

    #@c9
    .line 978
    :cond_a
    const/4 v7, 0x0

    #@ca
    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    #@cd
    goto :goto_1
.end method

.method protected static getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Set;
    .locals 9
    .param p0, "dp"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1101
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    #@2
    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@5
    .line 1105
    .local v0, "baseCrlSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    #@7
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@a
    .line 1107
    .local v4, "issuers":Ljava/util/Set;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@d
    move-result-object v6

    #@e
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@11
    .line 1109
    invoke-static {p0, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1117
    instance-of v6, p1, Ljava/security/cert/X509Certificate;

    #@16
    if-eqz v6, :cond_0

    #@18
    move-object v6, p1

    #@19
    .line 1119
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@1b
    invoke-virtual {v0, v6}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    #@1e
    .line 1122
    :cond_0
    new-instance v6, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    #@20
    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    #@23
    const/4 v7, 0x1

    #@24
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@2b
    move-result-object v1

    #@2c
    .line 1124
    .local v1, "crlSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object v5, p2

    #@2d
    .line 1126
    .local v5, "validityDate":Ljava/util/Date;
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@30
    move-result-object v6

    #@31
    if-eqz v6, :cond_1

    #@33
    .line 1128
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@36
    move-result-object v5

    #@37
    .line 1131
    :cond_1
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@39
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v6, v1, v5, v7, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    #@44
    move-result-object v2

    #@45
    .line 1133
    .local v2, "crls":Ljava/util/Set;
    invoke-static {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkCRLsNotEmpty(Ljava/util/Set;Ljava/lang/Object;)V

    #@48
    .line 1135
    return-object v2

    #@49
    .line 1112
    .end local v1    # "crlSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v2    # "crls":Ljava/util/Set;
    .end local v4    # "issuers":Ljava/util/Set;
    .end local v5    # "validityDate":Ljava/util/Date;
    :catch_0
    move-exception v3

    #@4a
    .line 1113
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4c
    .line 1114
    const-string/jumbo v7, "Could not get issuer information from distribution point."

    #@4f
    .line 1113
    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@52
    throw v6
.end method

.method protected static getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 18
    .param p0, "validityDate"    # Ljava/util/Date;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509CRL;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;)",
            "Ljava/util/Set;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 997
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "pkixCrlStores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    new-instance v4, Ljava/security/cert/X509CRLSelector;

    #@2
    invoke-direct {v4}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@5
    .line 1001
    .local v4, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    move-result-object v16

    #@9
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    #@c
    move-result-object v16

    #@d
    move-object/from16 v0, v16

    #@f
    invoke-virtual {v4, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1010
    const/4 v5, 0x0

    #@13
    .line 1014
    .local v5, "completeCRLNumber":Ljava/math/BigInteger;
    :try_start_1
    sget-object v16, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    #@15
    .line 1013
    move-object/from16 v0, p1

    #@17
    move-object/from16 v1, v16

    #@19
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1c
    move-result-object v8

    #@1d
    .line 1015
    .local v8, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v8, :cond_0

    #@1f
    .line 1017
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@22
    move-result-object v16

    #@23
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@26
    move-result-object v5

    #@27
    .line 1027
    .end local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    :cond_0
    const/4 v11, 0x0

    #@28
    .line 1030
    .local v11, "idp":[B
    :try_start_2
    sget-object v16, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@2a
    move-object/from16 v0, p1

    #@2c
    move-object/from16 v1, v16

    #@2e
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@31
    move-result-object v11

    #@32
    .line 1041
    .local v11, "idp":[B
    if-nez v5, :cond_2

    #@34
    const/16 v16, 0x0

    #@36
    :goto_0
    move-object/from16 v0, v16

    #@38
    invoke-virtual {v4, v0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    #@3b
    .line 1044
    new-instance v14, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    #@3d
    invoke-direct {v14, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    #@40
    .line 1046
    .local v14, "selBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    invoke-virtual {v14, v11}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPoint([B)V

    #@43
    .line 1047
    const/16 v16, 0x1

    #@45
    move/from16 v0, v16

    #@47
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPointEnabled(Z)V

    #@4a
    .line 1050
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    #@4d
    .line 1052
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@50
    move-result-object v7

    #@51
    .line 1055
    .local v7, "deltaSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    sget-object v16, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@53
    move-object/from16 v0, v16

    #@55
    move-object/from16 v1, p0

    #@57
    move-object/from16 v2, p2

    #@59
    move-object/from16 v3, p3

    #@5b
    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    #@5e
    move-result-object v15

    #@5f
    .line 1057
    .local v15, "temp":Ljava/util/Set;
    new-instance v13, Ljava/util/HashSet;

    #@61
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    #@64
    .line 1059
    .local v13, "result":Ljava/util/Set;
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v12

    #@68
    .local v12, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v16

    #@6c
    if-eqz v16, :cond_3

    #@6e
    .line 1061
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v6

    #@72
    check-cast v6, Ljava/security/cert/X509CRL;

    #@74
    .line 1063
    .local v6, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    #@77
    move-result v16

    #@78
    if-eqz v16, :cond_1

    #@7a
    .line 1065
    invoke-interface {v13, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7d
    goto :goto_1

    #@7e
    .line 1004
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v7    # "deltaSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v8    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v11    # "idp":[B
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v13    # "result":Ljava/util/Set;
    .end local v14    # "selBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .end local v15    # "temp":Ljava/util/Set;
    :catch_0
    move-exception v9

    #@7f
    .line 1005
    .local v9, "e":Ljava/io/IOException;
    new-instance v16, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@81
    const-string/jumbo v17, "Cannot extract issuer from CRL."

    #@84
    move-object/from16 v0, v16

    #@86
    move-object/from16 v1, v17

    #@88
    invoke-direct {v0, v1, v9}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8b
    throw v16

    #@8c
    .line 1021
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    :catch_1
    move-exception v10

    #@8d
    .line 1022
    .local v10, "e":Ljava/lang/Exception;
    new-instance v16, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@8f
    .line 1023
    const-string/jumbo v17, "CRL number extension could not be extracted from CRL."

    #@92
    .line 1022
    move-object/from16 v0, v16

    #@94
    move-object/from16 v1, v17

    #@96
    invoke-direct {v0, v1, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@99
    throw v16

    #@9a
    .line 1033
    .end local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v11, "idp":[B
    :catch_2
    move-exception v10

    #@9b
    .line 1034
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v16, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@9d
    .line 1035
    const-string/jumbo v17, "Issuing distribution point extension value could not be read."

    #@a0
    .line 1034
    move-object/from16 v0, v16

    #@a2
    move-object/from16 v1, v17

    #@a4
    invoke-direct {v0, v1, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a7
    throw v16

    #@a8
    .line 1042
    .end local v10    # "e":Ljava/lang/Exception;
    .local v11, "idp":[B
    :cond_2
    const-wide/16 v16, 0x1

    #@aa
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@ad
    move-result-object v16

    #@ae
    .line 1041
    move-object/from16 v0, v16

    #@b0
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b3
    move-result-object v16

    #@b4
    goto :goto_0

    #@b5
    .line 1069
    .restart local v7    # "deltaSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .restart local v12    # "it":Ljava/util/Iterator;
    .restart local v13    # "result":Ljava/util/Set;
    .restart local v14    # "selBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .restart local v15    # "temp":Ljava/util/Set;
    :cond_3
    return-object v13
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .param p0, "ext"    # Ljava/security/cert/X509Extension;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 305
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    .line 306
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    #@7
    .line 308
    return-object v1

    #@8
    .line 311
    :cond_0
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method protected static getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;
    .locals 15
    .param p0, "certs"    # Ljava/util/List;
    .param p1, "index"    # I
    .param p2, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1226
    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/security/cert/Certificate;

    #@6
    .line 1227
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@9
    move-result-object v10

    #@a
    .line 1228
    .local v10, "pubKey":Ljava/security/PublicKey;
    instance-of v11, v10, Ljava/security/interfaces/DSAPublicKey;

    #@c
    if-nez v11, :cond_0

    #@e
    .line 1230
    return-object v10

    #@f
    :cond_0
    move-object v3, v10

    #@10
    .line 1232
    check-cast v3, Ljava/security/interfaces/DSAPublicKey;

    #@12
    .line 1233
    .local v3, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@15
    move-result-object v11

    #@16
    if-eqz v11, :cond_1

    #@18
    .line 1235
    return-object v3

    #@19
    .line 1237
    :cond_1
    add-int/lit8 v6, p1, 0x1

    #@1b
    .local v6, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@1e
    move-result v11

    #@1f
    if-ge v6, v11, :cond_4

    #@21
    .line 1239
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    check-cast v8, Ljava/security/cert/X509Certificate;

    #@27
    .line 1240
    .local v8, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@2a
    move-result-object v10

    #@2b
    .line 1241
    instance-of v11, v10, Ljava/security/interfaces/DSAPublicKey;

    #@2d
    if-nez v11, :cond_2

    #@2f
    .line 1243
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    #@31
    .line 1244
    const-string/jumbo v12, "DSA parameters cannot be inherited from previous certificate."

    #@34
    .line 1243
    invoke-direct {v11, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@37
    throw v11

    #@38
    :cond_2
    move-object v9, v10

    #@39
    .line 1246
    check-cast v9, Ljava/security/interfaces/DSAPublicKey;

    #@3b
    .line 1247
    .local v9, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@3e
    move-result-object v11

    #@3f
    if-nez v11, :cond_3

    #@41
    .line 1237
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1251
    :cond_3
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@47
    move-result-object v2

    #@48
    .line 1252
    .local v2, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    #@4a
    .line 1253
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    #@4d
    move-result-object v11

    #@4e
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@51
    move-result-object v12

    #@52
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@55
    move-result-object v13

    #@56
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@59
    move-result-object v14

    #@5a
    .line 1252
    invoke-direct {v4, v11, v12, v13, v14}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@5d
    .line 1256
    .local v4, "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    :try_start_0
    const-string/jumbo v11, "DSA"

    #@60
    move-object/from16 v0, p2

    #@62
    invoke-interface {v0, v11}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@65
    move-result-object v7

    #@66
    .line 1257
    .local v7, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v7, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    move-result-object v11

    #@6a
    return-object v11

    #@6b
    .line 1260
    .end local v7    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v5

    #@6c
    .line 1261
    .local v5, "exception":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    #@6e
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@71
    move-result-object v12

    #@72
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@75
    throw v11

    #@76
    .line 1264
    .end local v2    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v4    # "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v5    # "exception":Ljava/lang/Exception;
    .end local v8    # "parentCert":Ljava/security/cert/X509Certificate;
    .end local v9    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    :cond_4
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    #@78
    const-string/jumbo v12, "DSA parameters cannot be inherited from previous certificate."

    #@7b
    invoke-direct {v11, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v11
.end method

.method private static getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6
    .param p0, "oid"    # Ljava/lang/String;
    .param p1, "ext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@5
    .line 322
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@b
    .line 324
    .local v2, "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@d
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@10
    move-result-object v3

    #@11
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@14
    .line 325
    .restart local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 328
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v1

    #@1a
    .line 329
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "exception processing extension "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@33
    throw v3
.end method

.method protected static final getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 7
    .param p0, "qualifiers"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 363
    .local v4, "pq":Ljava/util/Set;
    if-nez p0, :cond_0

    #@7
    .line 365
    return-object v4

    #@8
    .line 368
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    .line 369
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@12
    .line 371
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@15
    move-result-object v2

    #@16
    .line 373
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 377
    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@22
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@25
    .line 379
    new-instance v5, Ljava/security/cert/PolicyQualifierInfo;

    #@27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2a
    move-result-object v6

    #@2b
    invoke-direct {v5, v6}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    #@2e
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 386
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@34
    goto :goto_0

    #@35
    .line 382
    :catch_0
    move-exception v3

    #@36
    .line 383
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@38
    const-string/jumbo v6, "Policy qualifier info cannot be decoded."

    #@3b
    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    throw v5

    #@3f
    .line 389
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v4
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "cert"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 873
    check-cast p0, Ljava/security/cert/X509Certificate;

    #@2
    .end local p0    # "cert":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected static getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 7
    .param p0, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    #@3
    move-result v5

    #@4
    const/4 v6, 0x1

    #@5
    if-ne v5, v6, :cond_4

    #@7
    .line 1145
    if-gtz p2, :cond_0

    #@9
    .line 1147
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    #@c
    move-result-object v5

    #@d
    return-object v5

    #@e
    .line 1152
    :cond_0
    add-int/lit8 v5, p2, -0x1

    #@10
    if-nez v5, :cond_3

    #@12
    .line 1154
    const/4 v0, 0x0

    #@13
    .line 1157
    .local v0, "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@16
    move-result-object v5

    #@17
    add-int/lit8 v6, p2, -0x1

    #@19
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Ljava/security/cert/X509Certificate;

    #@1f
    sget-object v6, Lcom/android/org/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v5, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@28
    move-result-object v4

    #@29
    .line 1158
    .local v4, "extBytes":[B
    if-eqz v4, :cond_1

    #@2b
    .line 1160
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result-object v0

    #@33
    .line 1173
    .end local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :cond_1
    if-eqz v0, :cond_2

    #@35
    .line 1177
    :try_start_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    #@38
    move-result-object v5

    #@39
    return-object v5

    #@3a
    .line 1169
    .end local v4    # "extBytes":[B
    .restart local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :catch_0
    move-exception v2

    #@3b
    .line 1170
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@3d
    .line 1171
    const-string/jumbo v6, "Date of cert gen extension could not be read."

    #@40
    .line 1170
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@43
    throw v5

    #@44
    .line 1164
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    #@45
    .line 1165
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@47
    .line 1166
    const-string/jumbo v6, "Date of cert gen extension could not be read."

    #@4a
    .line 1165
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v5

    #@4e
    .line 1180
    .end local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "extBytes":[B
    :catch_2
    move-exception v3

    #@4f
    .line 1181
    .local v3, "e":Ljava/text/ParseException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@51
    .line 1182
    const-string/jumbo v6, "Date from date of cert gen extension could not be parsed."

    #@54
    .line 1181
    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@57
    throw v5

    #@58
    .line 1186
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@5b
    move-result-object v5

    #@5c
    .line 1187
    add-int/lit8 v6, p2, -0x1

    #@5e
    .line 1186
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@61
    move-result-object v5

    #@62
    check-cast v5, Ljava/security/cert/X509Certificate;

    #@64
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@67
    move-result-object v5

    #@68
    return-object v5

    #@69
    .line 1191
    .end local v4    # "extBytes":[B
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@6c
    move-result-object v5

    #@6d
    .line 1192
    add-int/lit8 v6, p2, -0x1

    #@6f
    .line 1191
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v5

    #@73
    check-cast v5, Ljava/security/cert/X509Certificate;

    #@75
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@78
    move-result-object v5

    #@79
    return-object v5

    #@7a
    .line 1198
    :cond_4
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    #@7d
    move-result-object v5

    #@7e
    return-object v5
.end method

.method protected static getValidDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .locals 1
    .param p0, "paramsPKIX"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    #@0
    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    .line 279
    .local v0, "validDate":Ljava/util/Date;
    if-nez v0, :cond_0

    #@6
    .line 281
    new-instance v0, Ljava/util/Date;

    #@8
    .end local v0    # "validDate":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@b
    .line 284
    .restart local v0    # "validDate":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .locals 1
    .param p0, "policySet"    # Ljava/util/Set;

    #@0
    .prologue
    .line 634
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v0, "2.5.29.32.0"

    #@5
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    #@e
    move-result v0

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method private static isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .locals 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    #@0
    .prologue
    .line 1074
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 1076
    .local v0, "critical":Ljava/util/Set;
    if-nez v0, :cond_0

    #@6
    .line 1078
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1081
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@a
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected static prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .locals 19
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "m_idp"    # Ljava/util/Map;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 515
    const/4 v14, 0x0

    #@1
    .line 516
    .local v14, "idp_found":Z
    aget-object v3, p1, p0

    #@3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v16

    #@7
    .line 517
    .local v16, "nodes_i":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 519
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v15

    #@11
    check-cast v15, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@13
    .line 520
    .local v15, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    move-object/from16 v0, p2

    #@19
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 522
    const/4 v14, 0x1

    #@20
    .line 523
    move-object/from16 v0, p3

    #@22
    move-object/from16 v1, p2

    #@24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Ljava/util/Set;

    #@2a
    iput-object v3, v15, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    #@2c
    .line 528
    .end local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    if-nez v14, :cond_6

    #@2e
    .line 530
    aget-object v3, p1, p0

    #@30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v16

    #@34
    .line 531
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_6

    #@3a
    .line 533
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v15

    #@3e
    check-cast v15, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@40
    .line 534
    .restart local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v3, "2.5.29.32.0"

    #@43
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_2

    #@4d
    .line 536
    const/4 v7, 0x0

    #@4e
    .line 537
    .local v7, "pq":Ljava/util/Set;
    const/16 v18, 0x0

    #@50
    .line 540
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@52
    move-object/from16 v0, p4

    #@54
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@57
    move-result-object v3

    #@58
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    move-result-object v18

    #@5c
    .line 546
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@5f
    move-result-object v11

    #@60
    .line 547
    .local v11, "e":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_4

    #@66
    .line 549
    const/16 v17, 0x0

    #@68
    .line 553
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_1
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@6f
    move-result-object v17

    #@70
    .line 559
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string/jumbo v3, "2.5.29.32.0"

    #@73
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v3

    #@7f
    if-eqz v3, :cond_3

    #@81
    .line 563
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@84
    move-result-object v3

    #@85
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    #@88
    move-result-object v7

    #@89
    .line 573
    .end local v7    # "pq":Ljava/util/Set;
    .end local v17    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_4
    const/4 v9, 0x0

    #@8a
    .line 574
    .local v9, "ci":Z
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@8d
    move-result-object v3

    #@8e
    if-eqz v3, :cond_5

    #@90
    .line 576
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@93
    move-result-object v3

    #@94
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@96
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@99
    move-result v9

    #@9a
    .line 579
    .end local v9    # "ci":Z
    :cond_5
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    #@9d
    move-result-object v6

    #@9e
    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@a0
    .line 580
    .local v6, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v3, "2.5.29.32.0"

    #@a3
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v3

    #@ab
    if-eqz v3, :cond_6

    #@ad
    .line 582
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@af
    .line 583
    new-instance v3, Ljava/util/ArrayList;

    #@b1
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@b4
    .line 584
    move-object/from16 v0, p3

    #@b6
    move-object/from16 v1, p2

    #@b8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    move-result-object v5

    #@bc
    check-cast v5, Ljava/util/Set;

    #@be
    move/from16 v4, p0

    #@c0
    move-object/from16 v8, p2

    #@c2
    .line 582
    invoke-direct/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@c5
    .line 586
    .local v2, "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@c8
    .line 587
    aget-object v3, p1, p0

    #@ca
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@cd
    .line 513
    .end local v2    # "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v18    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    return-void

    #@ce
    .line 543
    .restart local v7    # "pq":Ljava/util/Set;
    .restart local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v10

    #@cf
    .line 544
    .local v10, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@d1
    const-string/jumbo v4, "Certificate policies cannot be decoded."

    #@d4
    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d7
    throw v3

    #@d8
    .line 556
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "e":Ljava/util/Enumeration;
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v12

    #@d9
    .line 557
    .local v12, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@db
    const-string/jumbo v4, "Policy information cannot be decoded."

    #@de
    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e1
    throw v3

    #@e2
    .line 566
    .end local v12    # "ex":Ljava/lang/Exception;
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_2
    move-exception v13

    #@e3
    .line 567
    .local v13, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@e5
    .line 568
    const-string/jumbo v4, "Policy qualifier info set could not be built."

    #@e8
    .line 567
    invoke-direct {v3, v4, v13}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@eb
    throw v3
.end method

.method protected static prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 8
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@0
    .prologue
    .line 601
    aget-object v7, p1, p0

    #@2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v5

    #@6
    .line 602
    .local v5, "nodes_i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_3

    #@c
    .line 604
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@12
    .line 605
    .local v2, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_0

    #@1c
    .line 607
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    #@1f
    move-result-object v6

    #@20
    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@22
    .line 608
    .local v6, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@25
    .line 609
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    #@28
    .line 610
    add-int/lit8 v0, p0, -0x1

    #@2a
    .local v0, "k":I
    :goto_0
    if-ltz v0, :cond_0

    #@2c
    .line 612
    aget-object v4, p1, v0

    #@2e
    .line 613
    .local v4, "nodes":Ljava/util/List;
    const/4 v1, 0x0

    #@2f
    .local v1, "l":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@32
    move-result v7

    #@33
    if-ge v1, v7, :cond_1

    #@35
    .line 615
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@3b
    .line 616
    .local v3, "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    #@3e
    move-result v7

    #@3f
    if-nez v7, :cond_2

    #@41
    .line 618
    invoke-static {p3, p1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@44
    move-result-object p3

    #@45
    .line 619
    if-nez p3, :cond_2

    #@47
    .line 610
    .end local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 613
    .restart local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 628
    .end local v0    # "k":I
    .end local v1    # "l":I
    .end local v2    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v4    # "nodes":Ljava/util/List;
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_3
    return-object p3
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z
    .locals 11
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "pOid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "pq"    # Ljava/util/Set;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 446
    add-int/lit8 v1, p0, -0x1

    #@3
    aget-object v10, p1, v1

    #@5
    .line 448
    .local v10, "policyNodeVec":Ljava/util/List;
    const/4 v9, 0x0

    #@6
    .local v9, "j":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@9
    move-result v1

    #@a
    if-ge v9, v1, :cond_1

    #@c
    .line 450
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@12
    .line 451
    .local v4, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    #@15
    move-result-object v8

    #@16
    .line 453
    .local v8, "expectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 455
    new-instance v3, Ljava/util/HashSet;

    #@22
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@25
    .line 456
    .local v3, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    .line 458
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2e
    new-instance v1, Ljava/util/ArrayList;

    #@30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@33
    .line 463
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    move v2, p0

    #@38
    move-object v5, p3

    #@39
    .line 458
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@3c
    .line 465
    .local v0, "child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@3f
    .line 466
    aget-object v1, p1, p0

    #@41
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    .line 468
    const/4 v1, 0x1

    #@45
    return v1

    #@46
    .line 448
    .end local v0    # "child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "childExpectedPolicies":Ljava/util/Set;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    #@48
    goto :goto_0

    #@49
    .line 472
    .end local v4    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "expectedPolicies":Ljava/util/Set;
    :cond_1
    return v7
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    .locals 10
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_poid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "_pq"    # Ljava/util/Set;

    #@0
    .prologue
    .line 481
    add-int/lit8 v1, p0, -0x1

    #@2
    aget-object v9, p1, v1

    #@4
    .line 483
    .local v9, "policyNodeVec":Ljava/util/List;
    const/4 v8, 0x0

    #@5
    .local v8, "j":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    if-ge v8, v1, :cond_1

    #@b
    .line 485
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@11
    .line 487
    .local v4, "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string/jumbo v1, "2.5.29.32.0"

    #@14
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 489
    new-instance v3, Ljava/util/HashSet;

    #@20
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@23
    .line 490
    .local v3, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2a
    .line 492
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2c
    new-instance v1, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@31
    .line 497
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    .line 498
    const/4 v7, 0x0

    #@36
    move v2, p0

    #@37
    move-object v5, p3

    #@38
    .line 492
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@3b
    .line 499
    .local v0, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@3e
    .line 500
    aget-object v1, p1, p0

    #@40
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 501
    return-void

    #@44
    .line 483
    .end local v0    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "_childExpectedPolicies":Ljava/util/Set;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@46
    goto :goto_0

    #@47
    .line 479
    .end local v4    # "_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    return-void
.end method

.method protected static removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 4
    .param p0, "validPolicyTree"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_node"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 397
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@7
    .line 399
    .local v0, "_parent":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-nez p0, :cond_0

    #@9
    .line 401
    return-object v3

    #@a
    .line 404
    :cond_0
    if-nez v0, :cond_2

    #@c
    .line 406
    const/4 v1, 0x0

    #@d
    .local v1, "j":I
    :goto_0
    array-length v2, p1

    #@e
    if-ge v1, v2, :cond_1

    #@10
    .line 408
    new-instance v2, Ljava/util/ArrayList;

    #@12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@15
    aput-object v2, p1, v1

    #@17
    .line 406
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 411
    :cond_1
    return-object v3

    #@1b
    .line 415
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@1e
    .line 416
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@21
    .line 418
    return-object p0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 3
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@0
    .prologue
    .line 426
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    #@3
    move-result v2

    #@4
    aget-object v2, p0, v2

    #@6
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@9
    .line 428
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 430
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .line 431
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1f
    .line 434
    .local v0, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@22
    goto :goto_0

    #@23
    .line 424
    .end local v0    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v1    # "_iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1345
    if-nez p2, :cond_0

    #@2
    .line 1347
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    #@5
    .line 1343
    :goto_0
    return-void

    #@6
    .line 1351
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@9
    goto :goto_0
.end method
