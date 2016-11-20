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
    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_UTIL:Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;

    #@7
    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    #@f
    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    #@17
    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    #@1f
    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    #@27
    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    #@2f
    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    #@37
    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    #@3f
    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    #@47
    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    #@4f
    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@51
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    #@57
    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    #@5f
    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@61
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    #@67
    .line 98
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@69
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    #@6f
    .line 102
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    #@77
    .line 110
    const/16 v0, 0xb

    #@79
    new-array v0, v0, [Ljava/lang/String;

    #@7b
    .line 111
    const-string/jumbo v1, "unspecified"

    #@7e
    const/4 v2, 0x0

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 112
    const-string/jumbo v1, "keyCompromise"

    #@84
    const/4 v2, 0x1

    #@85
    aput-object v1, v0, v2

    #@87
    .line 113
    const-string/jumbo v1, "cACompromise"

    #@8a
    const/4 v2, 0x2

    #@8b
    aput-object v1, v0, v2

    #@8d
    .line 114
    const-string/jumbo v1, "affiliationChanged"

    #@90
    const/4 v2, 0x3

    #@91
    aput-object v1, v0, v2

    #@93
    .line 115
    const-string/jumbo v1, "superseded"

    #@96
    const/4 v2, 0x4

    #@97
    aput-object v1, v0, v2

    #@99
    .line 116
    const-string/jumbo v1, "cessationOfOperation"

    #@9c
    const/4 v2, 0x5

    #@9d
    aput-object v1, v0, v2

    #@9f
    .line 117
    const-string/jumbo v1, "certificateHold"

    #@a2
    const/4 v2, 0x6

    #@a3
    aput-object v1, v0, v2

    #@a5
    .line 118
    const-string/jumbo v1, "unknown"

    #@a8
    const/4 v2, 0x7

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 119
    const-string/jumbo v1, "removeFromCRL"

    #@ae
    const/16 v2, 0x8

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 120
    const-string/jumbo v1, "privilegeWithdrawn"

    #@b5
    const/16 v2, 0x9

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 121
    const-string/jumbo v1, "aACompromise"

    #@bc
    const/16 v2, 0xa

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 110
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    #@c2
    .line 82
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 82
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
    .line 1343
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 1345
    instance-of v2, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@8
    if-eqz v2, :cond_0

    #@a
    move-object v0, p1

    #@b
    .line 1347
    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@d
    .line 1349
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
    .line 1353
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@3c
    .line 1355
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
    .line 1341
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
    .line 653
    new-instance v1, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 654
    .local v1, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .line 656
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 658
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    .local v4, "obj":Ljava/lang/Object;
    move-object v0, v4

    #@14
    .line 677
    check-cast v0, Ljava/security/cert/CertStore;

    #@16
    .line 681
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
    .line 684
    :catch_0
    move-exception v2

    #@1f
    .line 685
    .local v2, "e":Ljava/security/cert/CertStoreException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@21
    .line 686
    const-string/jumbo v6, "Problem while picking certificates from certificate store."

    #@24
    .line 685
    invoke-direct {v5, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v5

    #@28
    .line 691
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
    .line 1266
    .local p1, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p2, "pkixCertStores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    new-instance v12, Ljava/security/cert/X509CertSelector;

    #@2
    invoke-direct {v12}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@5
    .line 1270
    .local v12, "selector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    move-result-object v13

    #@9
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@c
    move-result-object v13

    #@d
    invoke-virtual {v12, v13}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 1280
    :try_start_1
    sget-object v13, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    #@12
    invoke-virtual {p0, v13}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@15
    move-result-object v2

    #@16
    .line 1281
    .local v2, "akiExtensionValue":[B
    if-eqz v2, :cond_0

    #@18
    .line 1283
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1b
    move-result-object v1

    #@1c
    .line 1284
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
    .line 1285
    .local v3, "authorityKeyIdentifier":[B
    if-eqz v3, :cond_0

    #@2a
    .line 1287
    new-instance v13, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@2c
    invoke-direct {v13, v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@2f
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@32
    move-result-object v13

    #@33
    invoke-virtual {v12, v13}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@36
    .line 1296
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
    .line 1297
    .local v4, "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v5, Ljava/util/LinkedHashSet;

    #@41
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    #@44
    .line 1303
    .local v5, "certs":Ljava/util/Set;
    :try_start_2
    new-instance v11, Ljava/util/ArrayList;

    #@46
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@49
    .line 1305
    .local v11, "matches":Ljava/util/List;
    move-object/from16 v0, p1

    #@4b
    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@4e
    move-result-object v13

    #@4f
    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@52
    .line 1306
    move-object/from16 v0, p2

    #@54
    invoke-static {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    #@57
    move-result-object v13

    #@58
    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@5b
    .line 1308
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    #@5e
    move-result-object v10

    #@5f
    .line 1315
    .local v10, "iter":Ljava/util/Iterator;
    const/4 v9, 0x0

    #@60
    .line 1316
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@63
    move-result v13

    #@64
    if-eqz v13, :cond_1

    #@66
    .line 1318
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@69
    move-result-object v9

    #@6a
    check-cast v9, Ljava/security/cert/X509Certificate;

    #@6c
    .line 1321
    .local v9, "issuer":Ljava/security/cert/X509Certificate;
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_1

    #@70
    .line 1273
    .end local v4    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v5    # "certs":Ljava/util/Set;
    .end local v9    # "issuer":Ljava/security/cert/X509Certificate;
    .end local v10    # "iter":Ljava/util/Iterator;
    .end local v11    # "matches":Ljava/util/List;
    :catch_0
    move-exception v7

    #@71
    .line 1274
    .local v7, "e":Ljava/io/IOException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@73
    .line 1275
    const-string/jumbo v14, "Subject criteria for certificate selector to find issuer certificate could not be set."

    #@76
    .line 1274
    invoke-direct {v13, v14, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@79
    throw v13

    #@7a
    .line 1311
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "certSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .restart local v5    # "certs":Ljava/util/Set;
    :catch_1
    move-exception v6

    #@7b
    .line 1312
    .local v6, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v13, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@7d
    const-string/jumbo v14, "Issuer certificate cannot be searched."

    #@80
    invoke-direct {v13, v14, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@83
    throw v13

    #@84
    .line 1323
    .end local v6    # "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v10    # "iter":Ljava/util/Iterator;
    .restart local v11    # "matches":Ljava/util/List;
    :cond_1
    return-object v5

    #@85
    .line 1292
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
    .line 140
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
    .line 163
    const/4 v8, 0x0

    #@1
    .line 164
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v9, 0x0

    #@2
    .line 165
    .local v9, "trustPublicKey":Ljava/security/PublicKey;
    const/4 v6, 0x0

    #@3
    .line 167
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    #@5
    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@8
    .line 168
    .local v2, "certSelectX509":Ljava/security/cert/X509CertSelector;
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    move-result-object v1

    #@c
    .line 172
    .local v1, "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@f
    move-result-object v10

    #@10
    invoke-virtual {v2, v10}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@13
    .line 179
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v7

    #@17
    .line 180
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
    .line 182
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    check-cast v8, Ljava/security/cert/TrustAnchor;

    #@25
    .line 183
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@28
    move-result-object v10

    #@29
    if-eqz v10, :cond_2

    #@2b
    .line 185
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
    .line 187
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@38
    move-result-object v10

    #@39
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3c
    move-result-object v9

    #@3d
    .line 219
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    :goto_1
    if-eqz v9, :cond_0

    #@3f
    .line 223
    :try_start_1
    invoke-static {p0, v9, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@42
    goto :goto_0

    #@43
    .line 226
    :catch_0
    move-exception v4

    #@44
    .line 227
    .local v4, "ex":Ljava/lang/Exception;
    move-object v6, v4

    #@45
    .line 228
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    const/4 v8, 0x0

    #@46
    .line 229
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v9, 0x0

    #@47
    .restart local v9    # "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_0

    #@48
    .line 175
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v7    # "iter":Ljava/util/Iterator;
    .local v6, "invalidKeyEx":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    #@49
    .line 176
    .local v3, "ex":Ljava/io/IOException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4b
    const-string/jumbo v11, "Cannot set subject search criteria for trust anchor."

    #@4e
    invoke-direct {v10, v11, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@51
    throw v10

    #@52
    .line 191
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
    .line 194
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :cond_2
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    #@57
    move-result-object v10

    #@58
    if-eqz v10, :cond_4

    #@5a
    .line 195
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@5d
    move-result-object v10

    #@5e
    if-eqz v10, :cond_4

    #@60
    .line 199
    :try_start_2
    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@63
    move-result-object v0

    #@64
    .line 200
    .local v0, "caName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v10

    #@68
    if-eqz v10, :cond_3

    #@6a
    .line 202
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@6d
    move-result-object v9

    #@6e
    .local v9, "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_1

    #@6f
    .line 206
    .end local v9    # "trustPublicKey":Ljava/security/PublicKey;
    :cond_3
    const/4 v8, 0x0

    #@70
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_1

    #@71
    .line 210
    .end local v0    # "caName":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :catch_2
    move-exception v5

    #@72
    .line 211
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x0

    #@73
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_1

    #@74
    .line 216
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    :cond_4
    const/4 v8, 0x0

    #@75
    .local v8, "trust":Ljava/security/cert/TrustAnchor;
    goto :goto_1

    #@76
    .line 234
    .end local v8    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_5
    if-nez v8, :cond_6

    #@78
    if-eqz v6, :cond_6

    #@7a
    .line 236
    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@7c
    const-string/jumbo v11, "TrustAnchor found but certificate validation failed."

    #@7f
    invoke-direct {v10, v11, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@82
    throw v10

    #@83
    .line 239
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
    .line 249
    .local p1, "altNameCertStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    if-eqz p0, :cond_2

    #@2
    .line 251
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
    .line 253
    .local v3, "issuerAltName":Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@11
    move-result-object v4

    #@12
    .line 254
    .local v4, "names":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v5, Ljava/util/ArrayList;

    #@14
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 256
    .local v5, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    const/4 v2, 0x0

    #@18
    .local v2, "i":I
    :goto_0
    array-length v6, v4

    #@19
    if-eq v2, v6, :cond_1

    #@1b
    .line 258
    aget-object v0, v4, v2

    #@1d
    .line 260
    .local v0, "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    #@23
    .line 262
    .local v1, "altStore":Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;
    if-eqz v1, :cond_0

    #@25
    .line 264
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 256
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 268
    .end local v0    # "altName":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v1    # "altStore":Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;
    :cond_1
    return-object v5

    #@2c
    .line 272
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
    .line 697
    .local p1, "namedCRLStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    if-eqz p0, :cond_3

    #@2
    .line 699
    const/4 v1, 0x0

    #@3
    .line 702
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 709
    .local v1, "dps":[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    new-instance v7, Ljava/util/ArrayList;

    #@9
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 711
    .local v7, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    array-length v8, v1

    #@e
    if-ge v4, v8, :cond_2

    #@10
    .line 713
    aget-object v8, v1, v4

    #@12
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    #@15
    move-result-object v0

    #@16
    .line 715
    .local v0, "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v0, :cond_1

    #@18
    .line 717
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    #@1b
    move-result v8

    #@1c
    if-nez v8, :cond_1

    #@1e
    .line 720
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@21
    move-result-object v8

    #@22
    .line 719
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@29
    move-result-object v3

    #@2a
    .line 722
    .local v3, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    #@2b
    .local v5, "j":I
    :goto_1
    array-length v8, v3

    #@2c
    if-ge v5, v8, :cond_1

    #@2e
    .line 724
    aget-object v8, v3, v5

    #@30
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    check-cast v6, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    #@36
    .line 725
    .local v6, "store":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v6, :cond_0

    #@38
    .line 727
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 722
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 705
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
    .line 706
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@41
    .line 707
    const-string/jumbo v9, "Distribution points could not be read."

    #@44
    .line 706
    invoke-direct {v8, v9, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@47
    throw v8

    #@48
    .line 711
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
    .line 734
    .end local v0    # "dpn":Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    :cond_2
    return-object v7

    #@4c
    .line 738
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
    .line 340
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    #@5
    move-result-object v3

    #@6
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@9
    .line 342
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    move-result-object v3

    #@d
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@10
    move-result-object v2

    #@11
    .line 344
    .local v2, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v3

    #@15
    return-object v3

    #@16
    .line 347
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v1

    #@17
    .line 348
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
    .line 764
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 766
    .local v3, "issuers":Ljava/util/List;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@8
    move-result-object v6

    #@9
    if-eqz v6, :cond_1

    #@b
    .line 768
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@12
    move-result-object v2

    #@13
    .line 770
    .local v2, "genNames":[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    #@14
    .local v5, "j":I
    :goto_0
    array-length v6, v2

    #@15
    if-ge v5, v6, :cond_3

    #@17
    .line 772
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
    .line 776
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
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

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
    .line 770
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 780
    :catch_0
    move-exception v0

    #@39
    .line 781
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@3b
    .line 782
    const-string/jumbo v7, "CRL issuer information from distribution point cannot be decoded."

    #@3e
    .line 781
    invoke-direct {v6, v7, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v6

    #@42
    .line 794
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
    .line 796
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4a
    .line 797
    const-string/jumbo v7, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    #@4d
    .line 796
    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@50
    throw v6

    #@51
    .line 800
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
    .line 802
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v6

    #@5f
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@62
    goto :goto_1

    #@63
    .line 849
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@66
    move-result-object v4

    #@67
    .line 850
    .restart local v4    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@6a
    move-result v6

    #@6b
    if-eqz v6, :cond_4

    #@6d
    .line 854
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@70
    move-result-object v6

    #@71
    check-cast v6, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@73
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@76
    move-result-object v6

    #@77
    invoke-virtual {p2, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@7a
    goto :goto_2

    #@7b
    .line 857
    :catch_1
    move-exception v1

    #@7c
    .line 858
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@7e
    .line 859
    const-string/jumbo v7, "Cannot decode CRL issuer information."

    #@81
    .line 858
    invoke-direct {v6, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@84
    throw v6

    #@85
    .line 762
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
    .line 877
    const/4 v2, 0x0

    #@1
    .line 882
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result v5

    #@5
    .line 889
    .local v5, "isIndirect":Z
    if-eqz v5, :cond_2

    #@7
    .line 891
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    #@a
    move-result-object v7

    #@b
    invoke-virtual {p1, v7}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    #@e
    move-result-object v2

    #@f
    .line 893
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v2, :cond_0

    #@11
    .line 895
    return-void

    #@12
    .line 885
    .end local v5    # "isIndirect":Z
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :catch_0
    move-exception v4

    #@13
    .line 886
    .local v4, "exception":Ljava/security/cert/CRLException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@15
    const-string/jumbo v8, "Failed check for indirect CRL."

    #@18
    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v7

    #@1c
    .line 897
    .end local v4    # "exception":Ljava/security/cert/CRLException;
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    .restart local v5    # "isIndirect":Z
    :cond_0
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    #@1f
    move-result-object v1

    #@20
    .line 899
    .local v1, "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    if-nez v1, :cond_1

    #@22
    .line 901
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@25
    move-result-object v0

    #@26
    .line 908
    .local v0, "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :goto_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v7

    #@2e
    if-nez v7, :cond_4

    #@30
    .line 910
    return-void

    #@31
    .line 905
    .end local v0    # "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    :cond_1
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@34
    move-result-object v7

    #@35
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@38
    move-result-object v0

    #@39
    .restart local v0    # "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_0

    #@3a
    .line 913
    .end local v0    # "certIssuer":Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .end local v1    # "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :cond_2
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@3d
    move-result-object v7

    #@3e
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v7

    #@46
    if-nez v7, :cond_3

    #@48
    .line 915
    return-void

    #@49
    .line 919
    :cond_3
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {p1, v7}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    #@50
    move-result-object v2

    #@51
    .line 921
    .local v2, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v2, :cond_4

    #@53
    .line 923
    return-void

    #@54
    .line 927
    :cond_4
    const/4 v6, 0x0

    #@55
    .line 928
    .local v6, "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_5

    #@5b
    .line 935
    :try_start_1
    sget-object v7, Lcom/android/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5d
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    .line 933
    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@64
    move-result-object v7

    #@65
    .line 932
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@68
    move-result-object v6

    #@69
    .line 947
    .end local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@6c
    move-result-wide v8

    #@6d
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    #@74
    move-result-wide v10

    #@75
    cmp-long v7, v8, v10

    #@77
    if-gez v7, :cond_6

    #@79
    .line 948
    if-nez v6, :cond_8

    #@7b
    .line 956
    :cond_6
    :goto_1
    if-eqz v6, :cond_9

    #@7d
    .line 958
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@80
    move-result-object v7

    #@81
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@84
    move-result v7

    #@85
    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    #@88
    .line 965
    :goto_2
    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    #@8b
    move-result-object v7

    #@8c
    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    #@8f
    .line 875
    :cond_7
    return-void

    #@90
    .line 938
    .restart local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :catch_1
    move-exception v3

    #@91
    .line 939
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@93
    .line 940
    const-string/jumbo v8, "Reason code CRL entry extension could not be decoded."

    #@96
    .line 939
    invoke-direct {v7, v8, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@99
    throw v7

    #@9a
    .line 949
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "reasonCode":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_8
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@a1
    move-result v7

    #@a2
    if-eqz v7, :cond_6

    #@a4
    .line 950
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@ab
    move-result v7

    #@ac
    const/4 v8, 0x1

    #@ad
    if-eq v7, v8, :cond_6

    #@af
    .line 951
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@b6
    move-result v7

    #@b7
    const/4 v8, 0x2

    #@b8
    if-eq v7, v8, :cond_6

    #@ba
    .line 952
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@bd
    move-result-object v7

    #@be
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@c1
    move-result v7

    #@c2
    const/16 v8, 0x8

    #@c4
    if-ne v7, v8, :cond_7

    #@c6
    goto :goto_1

    #@c7
    .line 963
    :cond_9
    const/4 v7, 0x0

    #@c8
    invoke-virtual {p3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    #@cb
    goto :goto_2
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
    .line 1086
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    #@2
    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@5
    .line 1090
    .local v0, "baseCrlSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    #@7
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@a
    .line 1092
    .local v4, "issuers":Ljava/util/Set;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@d
    move-result-object v6

    #@e
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@11
    .line 1094
    invoke-static {p0, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    :try_end_0
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1102
    instance-of v6, p1, Ljava/security/cert/X509Certificate;

    #@16
    if-eqz v6, :cond_0

    #@18
    move-object v6, p1

    #@19
    .line 1104
    nop

    #@1a
    nop

    #@1b
    invoke-virtual {v0, v6}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    #@1e
    .line 1107
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
    .line 1109
    .local v1, "crlSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object v5, p2

    #@2d
    .line 1111
    .local v5, "validityDate":Ljava/util/Date;
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@30
    move-result-object v6

    #@31
    if-eqz v6, :cond_1

    #@33
    .line 1113
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@36
    move-result-object v5

    #@37
    .line 1116
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
    .line 1118
    .local v2, "crls":Ljava/util/Set;
    invoke-static {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkCRLsNotEmpty(Ljava/util/Set;Ljava/lang/Object;)V

    #@48
    .line 1120
    return-object v2

    #@49
    .line 1097
    .end local v1    # "crlSelect":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v2    # "crls":Ljava/util/Set;
    .end local v4    # "issuers":Ljava/util/Set;
    .end local v5    # "validityDate":Ljava/util/Date;
    :catch_0
    move-exception v3

    #@4a
    .line 1098
    .local v3, "e":Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@4c
    .line 1099
    const-string/jumbo v7, "Could not get issuer information from distribution point."

    #@4f
    .line 1098
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
    .line 982
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "pkixCrlStores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    new-instance v4, Ljava/security/cert/X509CRLSelector;

    #@2
    invoke-direct {v4}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@5
    .line 986
    .local v4, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@8
    move-result-object v16

    #@9
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@c
    move-result-object v16

    #@d
    move-object/from16 v0, v16

    #@f
    invoke-virtual {v4, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 995
    const/4 v5, 0x0

    #@13
    .line 999
    .local v5, "completeCRLNumber":Ljava/math/BigInteger;
    :try_start_1
    sget-object v16, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    #@15
    .line 998
    move-object/from16 v0, p1

    #@17
    move-object/from16 v1, v16

    #@19
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1c
    move-result-object v8

    #@1d
    .line 1000
    .local v8, "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v8, :cond_0

    #@1f
    .line 1002
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
    .line 1012
    .end local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    :cond_0
    const/4 v11, 0x0

    #@28
    .line 1015
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
    .line 1026
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
    .line 1029
    new-instance v14, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    #@3d
    invoke-direct {v14, v4}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    #@40
    .line 1031
    .local v14, "selBuilder":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    invoke-virtual {v14, v11}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPoint([B)V

    #@43
    .line 1032
    const/16 v16, 0x1

    #@45
    move/from16 v0, v16

    #@47
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPointEnabled(Z)V

    #@4a
    .line 1035
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    #@4d
    .line 1037
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    #@50
    move-result-object v7

    #@51
    .line 1040
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
    .line 1042
    .local v15, "temp":Ljava/util/Set;
    new-instance v13, Ljava/util/HashSet;

    #@61
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    #@64
    .line 1044
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
    .line 1046
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v6

    #@72
    check-cast v6, Ljava/security/cert/X509CRL;

    #@74
    .line 1048
    .local v6, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    #@77
    move-result v16

    #@78
    if-eqz v16, :cond_1

    #@7a
    .line 1050
    invoke-interface {v13, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7d
    goto :goto_1

    #@7e
    .line 989
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
    .line 990
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
    .line 1006
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    :catch_1
    move-exception v10

    #@8d
    .line 1007
    .local v10, "e":Ljava/lang/Exception;
    new-instance v16, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@8f
    .line 1008
    const-string/jumbo v17, "CRL number extension could not be extracted from CRL."

    #@92
    .line 1007
    move-object/from16 v0, v16

    #@94
    move-object/from16 v1, v17

    #@96
    invoke-direct {v0, v1, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@99
    throw v16

    #@9a
    .line 1018
    .end local v5    # "completeCRLNumber":Ljava/math/BigInteger;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "derObject":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v11, "idp":[B
    :catch_2
    move-exception v10

    #@9b
    .line 1019
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v16, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@9d
    .line 1020
    const-string/jumbo v17, "Issuing distribution point extension value could not be read."

    #@a0
    .line 1019
    move-object/from16 v0, v16

    #@a2
    move-object/from16 v1, v17

    #@a4
    invoke-direct {v0, v1, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a7
    throw v16

    #@a8
    .line 1027
    .end local v10    # "e":Ljava/lang/Exception;
    .local v11, "idp":[B
    :cond_2
    const-wide/16 v16, 0x1

    #@aa
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@ad
    move-result-object v16

    #@ae
    .line 1026
    move-object/from16 v0, v16

    #@b0
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b3
    move-result-object v16

    #@b4
    goto :goto_0

    #@b5
    .line 1054
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
    .line 306
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    .line 307
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    #@7
    .line 309
    return-object v1

    #@8
    .line 312
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
    .line 1211
    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/security/cert/Certificate;

    #@6
    .line 1212
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@9
    move-result-object v10

    #@a
    .line 1213
    .local v10, "pubKey":Ljava/security/PublicKey;
    instance-of v11, v10, Ljava/security/interfaces/DSAPublicKey;

    #@c
    if-nez v11, :cond_0

    #@e
    .line 1215
    return-object v10

    #@f
    :cond_0
    move-object v3, v10

    #@10
    .line 1217
    check-cast v3, Ljava/security/interfaces/DSAPublicKey;

    #@12
    .line 1218
    .local v3, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@15
    move-result-object v11

    #@16
    if-eqz v11, :cond_1

    #@18
    .line 1220
    return-object v3

    #@19
    .line 1222
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
    .line 1224
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    check-cast v8, Ljava/security/cert/X509Certificate;

    #@27
    .line 1225
    .local v8, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@2a
    move-result-object v10

    #@2b
    .line 1226
    instance-of v11, v10, Ljava/security/interfaces/DSAPublicKey;

    #@2d
    if-nez v11, :cond_2

    #@2f
    .line 1228
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    #@31
    .line 1229
    const-string/jumbo v12, "DSA parameters cannot be inherited from previous certificate."

    #@34
    .line 1228
    invoke-direct {v11, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@37
    throw v11

    #@38
    :cond_2
    move-object v9, v10

    #@39
    .line 1231
    check-cast v9, Ljava/security/interfaces/DSAPublicKey;

    #@3b
    .line 1232
    .local v9, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@3e
    move-result-object v11

    #@3f
    if-nez v11, :cond_3

    #@41
    .line 1222
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1236
    :cond_3
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@47
    move-result-object v2

    #@48
    .line 1237
    .local v2, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    #@4a
    .line 1238
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
    .line 1237
    invoke-direct {v4, v11, v12, v13, v14}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@5d
    .line 1241
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
    .line 1242
    .local v7, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v7, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    move-result-object v11

    #@6a
    return-object v11

    #@6b
    .line 1245
    .end local v7    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v5

    #@6c
    .line 1246
    .local v5, "exception":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    #@6e
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@71
    move-result-object v12

    #@72
    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@75
    throw v11

    #@76
    .line 1249
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
    .line 322
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@5
    .line 323
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@b
    .line 325
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
    .line 326
    .restart local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 329
    .end local v0    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v1

    #@1a
    .line 330
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
    .line 362
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 364
    .local v4, "pq":Ljava/util/Set;
    if-nez p0, :cond_0

    #@7
    .line 366
    return-object v4

    #@8
    .line 369
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    .line 370
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@12
    .line 372
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@15
    move-result-object v2

    #@16
    .line 374
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 378
    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@22
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@25
    .line 380
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
    .line 387
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@34
    goto :goto_0

    #@35
    .line 383
    :catch_0
    move-exception v3

    #@36
    .line 384
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@38
    const-string/jumbo v6, "Policy qualifier info cannot be decoded."

    #@3b
    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    throw v5

    #@3f
    .line 390
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v4
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "cert"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 867
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
    .line 1127
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    #@3
    move-result v5

    #@4
    const/4 v6, 0x1

    #@5
    if-ne v5, v6, :cond_4

    #@7
    .line 1130
    if-gtz p2, :cond_0

    #@9
    .line 1132
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    #@c
    move-result-object v5

    #@d
    return-object v5

    #@e
    .line 1137
    :cond_0
    add-int/lit8 v5, p2, -0x1

    #@10
    if-nez v5, :cond_3

    #@12
    .line 1139
    const/4 v0, 0x0

    #@13
    .line 1142
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
    .line 1143
    .local v4, "extBytes":[B
    if-eqz v4, :cond_1

    #@2b
    .line 1145
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
    .line 1158
    .end local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :cond_1
    if-eqz v0, :cond_2

    #@35
    .line 1162
    :try_start_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    #@38
    move-result-object v5

    #@39
    return-object v5

    #@3a
    .line 1154
    .end local v4    # "extBytes":[B
    .restart local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :catch_0
    move-exception v2

    #@3b
    .line 1155
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@3d
    .line 1156
    const-string/jumbo v6, "Date of cert gen extension could not be read."

    #@40
    .line 1155
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@43
    throw v5

    #@44
    .line 1149
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    #@45
    .line 1150
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@47
    .line 1151
    const-string/jumbo v6, "Date of cert gen extension could not be read."

    #@4a
    .line 1150
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v5

    #@4e
    .line 1165
    .end local v0    # "dateOfCertgen":Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "extBytes":[B
    :catch_2
    move-exception v3

    #@4f
    .line 1166
    .local v3, "e":Ljava/text/ParseException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@51
    .line 1167
    const-string/jumbo v6, "Date from date of cert gen extension could not be parsed."

    #@54
    .line 1166
    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@57
    throw v5

    #@58
    .line 1171
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@5b
    move-result-object v5

    #@5c
    .line 1172
    add-int/lit8 v6, p2, -0x1

    #@5e
    .line 1171
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
    .line 1176
    .end local v4    # "extBytes":[B
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@6c
    move-result-object v5

    #@6d
    .line 1177
    add-int/lit8 v6, p2, -0x1

    #@6f
    .line 1176
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
    .line 1183
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
    .line 278
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    .line 280
    .local v0, "validDate":Ljava/util/Date;
    if-nez v0, :cond_0

    #@6
    .line 282
    new-instance v0, Ljava/util/Date;

    #@8
    .end local v0    # "validDate":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@b
    .line 285
    .restart local v0    # "validDate":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .locals 1
    .param p0, "policySet"    # Ljava/util/Set;

    #@0
    .prologue
    .line 635
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
    .line 1059
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 1061
    .local v0, "critical":Ljava/util/Set;
    if-nez v0, :cond_0

    #@6
    .line 1063
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1066
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
    .line 290
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
    .line 516
    const/4 v14, 0x0

    #@1
    .line 517
    .local v14, "idp_found":Z
    aget-object v3, p1, p0

    #@3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v16

    #@7
    .line 518
    .local v16, "nodes_i":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 520
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v15

    #@11
    check-cast v15, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@13
    .line 521
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
    .line 523
    const/4 v14, 0x1

    #@20
    .line 524
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
    .line 529
    .end local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    if-nez v14, :cond_6

    #@2e
    .line 531
    aget-object v3, p1, p0

    #@30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v16

    #@34
    .line 532
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_6

    #@3a
    .line 534
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v15

    #@3e
    check-cast v15, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@40
    .line 535
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
    .line 537
    const/4 v7, 0x0

    #@4e
    .line 538
    .local v7, "pq":Ljava/util/Set;
    const/16 v18, 0x0

    #@50
    .line 541
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
    .line 547
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@5f
    move-result-object v11

    #@60
    .line 548
    .local v11, "e":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@63
    move-result v3

    #@64
    if-eqz v3, :cond_4

    #@66
    .line 550
    const/16 v17, 0x0

    #@68
    .line 554
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
    .line 560
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
    .line 564
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
    .line 574
    .end local v7    # "pq":Ljava/util/Set;
    .end local v17    # "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_4
    const/4 v9, 0x0

    #@8a
    .line 575
    .local v9, "ci":Z
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@8d
    move-result-object v3

    #@8e
    if-eqz v3, :cond_5

    #@90
    .line 577
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
    .line 580
    .end local v9    # "ci":Z
    :cond_5
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    #@9d
    move-result-object v6

    #@9e
    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@a0
    .line 581
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
    .line 583
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@af
    .line 584
    new-instance v3, Ljava/util/ArrayList;

    #@b1
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@b4
    .line 585
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
    .line 583
    invoke-direct/range {v2 .. v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@c5
    .line 587
    .local v2, "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@c8
    .line 588
    aget-object v3, p1, p0

    #@ca
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@cd
    .line 514
    .end local v2    # "c_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v18    # "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    return-void

    #@ce
    .line 544
    .restart local v7    # "pq":Ljava/util/Set;
    .restart local v15    # "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v10

    #@cf
    .line 545
    .local v10, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@d1
    const-string/jumbo v4, "Certificate policies cannot be decoded."

    #@d4
    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d7
    throw v3

    #@d8
    .line 557
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "e":Ljava/util/Enumeration;
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .local v18, "policies":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v12

    #@d9
    .line 558
    .local v12, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    #@db
    const-string/jumbo v4, "Policy information cannot be decoded."

    #@de
    invoke-direct {v3, v4, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e1
    throw v3

    #@e2
    .line 567
    .end local v12    # "ex":Ljava/lang/Exception;
    .local v17, "pinfo":Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_2
    move-exception v13

    #@e3
    .line 568
    .local v13, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    #@e5
    .line 569
    const-string/jumbo v4, "Policy qualifier info set could not be built."

    #@e8
    .line 568
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
    .line 602
    aget-object v7, p1, p0

    #@2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v5

    #@6
    .line 603
    .local v5, "nodes_i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_3

    #@c
    .line 605
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@12
    .line 606
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
    .line 608
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    #@1f
    move-result-object v6

    #@20
    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@22
    .line 609
    .local v6, "p_node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@25
    .line 610
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    #@28
    .line 611
    add-int/lit8 v0, p0, -0x1

    #@2a
    .local v0, "k":I
    :goto_0
    if-ltz v0, :cond_0

    #@2c
    .line 613
    aget-object v4, p1, v0

    #@2e
    .line 614
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
    .line 616
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@3b
    .line 617
    .local v3, "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    #@3e
    move-result v7

    #@3f
    if-nez v7, :cond_2

    #@41
    .line 619
    invoke-static {p3, p1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@44
    move-result-object p3

    #@45
    .line 620
    if-nez p3, :cond_2

    #@47
    .line 611
    .end local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 614
    .restart local v3    # "node2":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 629
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
    .line 447
    add-int/lit8 v1, p0, -0x1

    #@3
    aget-object v10, p1, v1

    #@5
    .line 449
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
    .line 451
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@12
    .line 452
    .local v4, "node":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    #@15
    move-result-object v8

    #@16
    .line 454
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
    .line 456
    new-instance v3, Ljava/util/HashSet;

    #@22
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@25
    .line 457
    .local v3, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2c
    .line 459
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2e
    new-instance v1, Ljava/util/ArrayList;

    #@30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@33
    .line 464
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    move v2, p0

    #@38
    move-object v5, p3

    #@39
    .line 459
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@3c
    .line 466
    .local v0, "child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@3f
    .line 467
    aget-object v1, p1, p0

    #@41
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    .line 469
    const/4 v1, 0x1

    #@45
    return v1

    #@46
    .line 449
    .end local v0    # "child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "childExpectedPolicies":Ljava/util/Set;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    #@48
    goto :goto_0

    #@49
    .line 473
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
    .line 482
    add-int/lit8 v1, p0, -0x1

    #@2
    aget-object v9, p1, v1

    #@4
    .line 484
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
    .line 486
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@11
    .line 488
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
    .line 490
    new-instance v3, Ljava/util/HashSet;

    #@20
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@23
    .line 491
    .local v3, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2a
    .line 493
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@2c
    new-instance v1, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@31
    .line 498
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    .line 499
    const/4 v7, 0x0

    #@36
    move v2, p0

    #@37
    move-object v5, p3

    #@38
    .line 493
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    #@3b
    .line 500
    .local v0, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@3e
    .line 501
    aget-object v1, p1, p0

    #@40
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 502
    return-void

    #@44
    .line 484
    .end local v0    # "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "_childExpectedPolicies":Ljava/util/Set;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    #@46
    goto :goto_0

    #@47
    .line 480
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
    .line 398
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@7
    .line 400
    .local v0, "_parent":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-nez p0, :cond_0

    #@9
    .line 402
    return-object v3

    #@a
    .line 405
    :cond_0
    if-nez v0, :cond_2

    #@c
    .line 407
    const/4 v1, 0x0

    #@d
    .local v1, "j":I
    :goto_0
    array-length v2, p1

    #@e
    if-ge v1, v2, :cond_1

    #@10
    .line 409
    new-instance v2, Ljava/util/ArrayList;

    #@12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@15
    aput-object v2, p1, v1

    #@17
    .line 407
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 412
    :cond_1
    return-object v3

    #@1b
    .line 416
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@1e
    .line 417
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@21
    .line 419
    return-object p0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 3
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@0
    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    #@3
    move-result v2

    #@4
    aget-object v2, p0, v2

    #@6
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@9
    .line 429
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 431
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .line 432
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    #@1f
    .line 435
    .local v0, "_child":Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    #@22
    goto :goto_0

    #@23
    .line 425
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
    .line 1330
    if-nez p2, :cond_0

    #@2
    .line 1332
    invoke-virtual {p0, p1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    #@5
    .line 1328
    :goto_0
    return-void

    #@6
    .line 1336
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@9
    goto :goto_0
.end method
