.class Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final blacklist ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final blacklist AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final blacklist BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final blacklist CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final blacklist CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final blacklist CRL_NUMBER:Ljava/lang/String;

.field protected static final blacklist CRL_SIGN:I = 0x6

.field protected static final blacklist DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final blacklist FRESHEST_CRL:Ljava/lang/String;

.field protected static final blacklist INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final blacklist ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final blacklist KEY_CERT_SIGN:I = 0x5

.field protected static final blacklist KEY_USAGE:Ljava/lang/String;

.field protected static final blacklist NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final blacklist POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final blacklist POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final blacklist SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final blacklist crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 89
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 113
    const-string/jumbo v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    const-string/jumbo v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string/jumbo v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string/jumbo v8, "unknown"

    const-string/jumbo v9, "removeFromCRL"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkCRLsNotEmpty(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/util/Set;Ljava/lang/Object;)V
    .registers 10
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "crls"    # Ljava/util/Set;
    .param p2, "cert"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1414
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1416
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    const/4 v1, 0x0

    const-string v2, "\""

    const-string v3, "No CRLs found for issuer \""

    if-eqz v0, :cond_40

    .line 1418
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    .line 1420
    .local v0, "aCert":Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1421
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v4, v2, v1, v3, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1425
    .end local v0    # "aCert":Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;
    :cond_40
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1427
    .local v0, "xCert":Ljava/security/cert/X509Certificate;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1428
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v4, v2, v1, v3, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1431
    .end local v0    # "xCert":Ljava/security/cert/X509Certificate;
    :cond_70
    return-void
.end method

.method protected static blacklist findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    .registers 9
    .param p0, "certs"    # Ljava/util/LinkedHashSet;
    .param p1, "certSelect"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .param p2, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 679
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 680
    .local v0, "iter":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 682
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 702
    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/security/cert/CertStore;

    .line 705
    .local v2, "certStore":Ljava/security/cert/CertStore;
    :try_start_11
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificates(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Ljava/security/cert/CertStoreException; {:try_start_11 .. :try_end_18} :catch_1a

    .line 710
    nop

    .line 712
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    goto :goto_4

    .line 707
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "certStore":Ljava/security/cert/CertStore;
    :catch_1a
    move-exception v3

    .line 709
    .local v3, "e":Ljava/security/cert/CertStoreException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Problem while picking certificates from certificate store."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 713
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    .end local v3    # "e":Ljava/security/cert/CertStoreException;
    :cond_23
    return-void
.end method

.method static blacklist findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .registers 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/Collection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1350
    .local p1, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p2, "pkixCertStores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;>;"
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 1354
    .local v0, "selector":Ljava/security/cert/X509CertSelector;
    :try_start_5
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_58

    .line 1360
    nop

    .line 1364
    :try_start_11
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1365
    .local v1, "akiExtensionValue":[B
    if-eqz v1, :cond_37

    .line 1367
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 1368
    .local v2, "aki":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    .line 1369
    .local v3, "authorityKeyIdentifier":[B
    if-eqz v3, :cond_37

    .line 1371
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_37} :catch_38

    .line 1378
    .end local v1    # "akiExtensionValue":[B
    .end local v2    # "aki":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v3    # "authorityKeyIdentifier":[B
    :cond_37
    goto :goto_39

    .line 1375
    :catch_38
    move-exception v1

    .line 1380
    :goto_39
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    .line 1381
    .local v1, "certSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1385
    .local v2, "certs":Ljava/util/LinkedHashSet;
    :try_start_47
    invoke-static {v2, v1, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 1386
    invoke-static {v2, v1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_4d
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_47 .. :try_end_4d} :catch_4f

    .line 1391
    nop

    .line 1395
    return-object v2

    .line 1388
    :catch_4f
    move-exception v3

    .line 1390
    .local v3, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Issuer certificate cannot be searched."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1356
    .end local v1    # "certSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v2    # "certs":Ljava/util/LinkedHashSet;
    .end local v3    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_58
    move-exception v1

    .line 1358
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist findTargets(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)Ljava/util/Collection;
    .registers 7
    .param p0, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    .line 129
    .local v0, "baseParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    .line 130
    .local v1, "certSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 134
    .local v2, "targets":Ljava/util/LinkedHashSet;
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 135
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_1b
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_1b} :catch_36

    .line 140
    nop

    .line 142
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 144
    return-object v2

    .line 147
    :cond_23
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    .line 148
    .local v3, "target":Ljava/security/cert/Certificate;
    if-eqz v3, :cond_2e

    .line 153
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 150
    :cond_2e
    new-instance v4, Ljava/security/cert/CertPathBuilderException;

    const-string v5, "No certificate found matching targetConstraints."

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    .end local v3    # "target":Ljava/security/cert/Certificate;
    :catch_36
    move-exception v3

    .line 139
    .local v3, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v5, "Error finding target certificate."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static blacklist findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .registers 12
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v1, 0x0

    .line 198
    .local v1, "trustPublicKey":Ljava/security/PublicKey;
    const/4 v2, 0x0

    .line 200
    .local v2, "invalidKeyEx":Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 202
    .local v3, "certSelectX509":Ljava/security/cert/X509CertSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 203
    .local v4, "certIssuerPrincipal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v3, v4}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 205
    const/4 v5, 0x0

    .line 207
    .local v5, "certIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 208
    .local v6, "iter":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_83

    if-nez v0, :cond_83

    .line 210
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 211
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_3e

    .line 213
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 215
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    goto :goto_78

    .line 219
    :cond_3c
    const/4 v0, 0x0

    goto :goto_78

    .line 222
    :cond_3e
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    if-eqz v7, :cond_77

    .line 223
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_77

    .line 224
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    if-eqz v7, :cond_77

    .line 226
    if-nez v5, :cond_5a

    .line 228
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 233
    :cond_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    .line 235
    .local v7, "caName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 237
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_70} :catch_74

    move-object v1, v8

    goto :goto_76

    .line 241
    :cond_72
    const/4 v0, 0x0

    goto :goto_76

    .line 244
    .end local v7    # "caName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :catch_74
    move-exception v7

    .line 246
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 247
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_76
    goto :goto_78

    .line 251
    :cond_77
    const/4 v0, 0x0

    .line 254
    :goto_78
    if-eqz v1, :cond_14

    .line 258
    :try_start_7a
    invoke-static {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_82

    .line 260
    :catch_7e
    move-exception v7

    .line 262
    .local v7, "ex":Ljava/lang/Exception;
    move-object v2, v7

    .line 263
    const/4 v0, 0x0

    .line 264
    const/4 v1, 0x0

    .line 265
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_82
    goto :goto_14

    .line 269
    :cond_83
    if-nez v0, :cond_90

    if-nez v2, :cond_88

    goto :goto_90

    .line 271
    :cond_88
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "TrustAnchor found but certificate validation failed."

    invoke-direct {v7, v8, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 274
    :cond_90
    :goto_90
    return-object v0
.end method

.method static blacklist getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;
    .registers 8
    .param p0, "issuerAlternativeName"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 300
    .local p1, "altNameCertStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;>;"
    if-nez p0, :cond_5

    .line 302
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 305
    :cond_5
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    .line 307
    .local v0, "issuerAltName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 308
    .local v1, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v2, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v1

    if-eq v3, v4, :cond_2e

    .line 312
    aget-object v4, v1, v3

    .line 314
    .local v4, "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;

    .line 315
    .local v5, "altStore":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;
    if-eqz v5, :cond_2b

    .line 317
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v4    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "altStore":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 321
    .end local v3    # "i":I
    :cond_2e
    return-object v2
.end method

.method static blacklist getAdditionalStoresFromCRLDistributionPoint(Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;
    .registers 14
    .param p0, "crldp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 719
    .local p1, "namedCRLStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;>;"
    if-nez p0, :cond_5

    .line 721
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 727
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_aa

    .line 732
    .local v0, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    nop

    .line 734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_44

    .line 738
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 740
    .local v3, "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v3, :cond_41

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_41

    .line 742
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 744
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2e
    array-length v6, v4

    if-ge v5, v6, :cond_41

    .line 746
    aget-object v6, v4, v5

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;

    .line 747
    .local v6, "store":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v6, :cond_3e

    .line 749
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    .end local v6    # "store":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 736
    .end local v3    # "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 756
    .end local v2    # "i":I
    :cond_44
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a9

    const-string v2, "com.android.internal.org.bouncycastle.x509.enableCRLDP"

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 761
    :try_start_52
    const-string v2, "X.509"

    invoke-interface {p3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_8b

    .line 766
    .local v2, "certFact":Ljava/security/cert/CertificateFactory;
    nop

    .line 768
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5a
    array-length v4, v0

    if-ge v3, v4, :cond_a9

    .line 770
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v4

    .line 772
    .local v4, "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v4, :cond_88

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v5

    if-nez v5, :cond_88

    .line 774
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 776
    .local v5, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_78
    array-length v7, v5

    if-ge v6, v7, :cond_88

    .line 778
    aget-object v7, v5, v6

    .line 779
    .local v7, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_85

    .line 793
    goto :goto_88

    .line 776
    .end local v7    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_78

    .line 768
    .end local v4    # "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    :cond_88
    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 763
    .end local v2    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    :catch_8b
    move-exception v2

    .line 765
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot create certificate factory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 805
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a9
    return-object v1

    .line 729
    .end local v0    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v1    # "stores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;>;"
    :catch_aa
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Distribution points could not be read."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 369
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 371
    :catch_d
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Subject public key cannot be decoded."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist getCRLIssuersFromDistributionPoint(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    .registers 9
    .param p0, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "issuerPrincipals"    # Ljava/util/Collection;
    .param p2, "selector"    # Ljava/security/cert/X509CRLSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v0, "issuers":Ljava/util/List;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 836
    .local v1, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_42

    .line 838
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3f

    .line 842
    :try_start_20
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_35} :catch_36

    .line 848
    goto :goto_3f

    .line 844
    :catch_36
    move-exception v3

    .line 846
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 836
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 851
    .end local v1    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v2    # "j":I
    :cond_42
    goto :goto_5b

    .line 858
    :cond_43
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 864
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 866
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 913
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_5b
    :goto_5b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 914
    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 918
    :try_start_65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_72} :catch_73

    .line 924
    goto :goto_5f

    .line 920
    :catch_73
    move-exception v2

    .line 922
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Cannot decode CRL issuer information."

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 926
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_7c
    return-void

    .line 860
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_7d
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static blacklist getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V
    .registers 12
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 943
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    move-result v0
    :try_end_4
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_4} :catch_a5

    .line 948
    .local v0, "isIndirect":Z
    nop

    .line 951
    if-eqz v0, :cond_2d

    .line 953
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 955
    .local v1, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v1, :cond_12

    .line 957
    return-void

    .line 960
    :cond_12
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 963
    .local v2, "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    if-nez v2, :cond_1d

    .line 965
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    .local v3, "certIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_21

    .line 969
    .end local v3    # "certIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_1d
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    .line 972
    .restart local v3    # "certIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :goto_21
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 974
    return-void

    .line 976
    .end local v2    # "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "certIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_2c
    goto :goto_47

    .line 977
    .end local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    :cond_2d
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 979
    return-void

    .line 983
    :cond_3c
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 985
    .restart local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v1, :cond_47

    .line 987
    return-void

    .line 991
    :cond_47
    :goto_47
    const/4 v2, 0x0

    .line 992
    .local v2, "reasonCode":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 994
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->hasUnsupportedCriticalExtension()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 1001
    :try_start_54
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1002
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v3
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_62} :catch_64

    move-object v2, v3

    .line 1007
    goto :goto_75

    .line 1004
    :catch_64
    move-exception v3

    .line 1006
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 996
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6d
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL entry has unsupported critical extensions."

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1010
    :cond_75
    :goto_75
    if-nez v2, :cond_79

    .line 1011
    const/4 v3, 0x0

    goto :goto_7d

    .line 1012
    :cond_79
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v3

    :goto_7d
    nop

    .line 1015
    .local v3, "reasonCodeValue":I
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_9a

    if-eqz v3, :cond_9a

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9a

    const/16 v4, 0xa

    if-ne v3, v4, :cond_a4

    .line 1022
    :cond_9a
    invoke-virtual {p3, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1023
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    .line 1025
    :cond_a4
    return-void

    .line 945
    .end local v0    # "isIndirect":Z
    .end local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    .end local v2    # "reasonCode":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .end local v3    # "reasonCodeValue":I
    :catch_a5
    move-exception v0

    .line 947
    .local v0, "exception":Ljava/security/cert/CRLException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Failed check for indirect CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist getCompleteCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;
    .registers 9
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p4, "validityDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;,
            Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1194
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1198
    .local v0, "baseCrlSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1199
    .local v1, "issuers":Ljava/util/Set;
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1201
    invoke-static {p1, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    :try_end_14
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_14} :catch_3d

    .line 1206
    .end local v1    # "issuers":Ljava/util/Set;
    nop

    .line 1208
    instance-of v1, p2, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1f

    .line 1210
    move-object v1, p2

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1213
    :cond_1f
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object v1

    .line 1214
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v1

    .line 1216
    .local v1, "crlSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, p4, v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1218
    .local v2, "crls":Ljava/util/Set;
    invoke-static {p0, v2, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkCRLsNotEmpty(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/util/Set;Ljava/lang/Object;)V

    .line 1220
    return-object v2

    .line 1203
    .end local v1    # "crlSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v2    # "crls":Ljava/util/Set;
    :catch_3d
    move-exception v1

    .line 1205
    .local v1, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Could not get issuer information from distribution point."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .registers 25
    .param p0, "validityDate"    # Ljava/util/Date;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p4, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509CRL;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;",
            "Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Ljava/util/Set;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1043
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "pkixCrlStores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;>;"
    move-object/from16 v1, p1

    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    move-object v2, v0

    .line 1047
    .local v2, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_8
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_14e

    .line 1052
    nop

    .line 1054
    const/4 v3, 0x0

    .line 1057
    .local v3, "completeCRLNumber":Ljava/math/BigInteger;
    :try_start_15
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_13b

    .line 1058
    .local v0, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_34

    .line 1060
    :try_start_1d
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_27

    move-object v3, v4

    goto :goto_34

    .line 1063
    .end local v0    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_27
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v2

    goto/16 :goto_146

    .line 1067
    :cond_34
    :goto_34
    nop

    .line 1073
    :try_start_35
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_128

    move-object v4, v0

    .line 1078
    .local v4, "idp":[B
    nop

    .line 1082
    if-nez v3, :cond_41

    const/4 v0, 0x0

    goto :goto_4b

    :cond_41
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1084
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    move-object v5, v0

    .line 1086
    .local v5, "selBuilder":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    invoke-virtual {v5, v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPoint([B)V

    .line 1087
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPointEnabled(Z)V

    .line 1090
    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 1092
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v6

    .line 1095
    .local v6, "deltaSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v10

    .line 1098
    .local v10, "temp":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_104

    const-string v0, "com.android.internal.org.bouncycastle.x509.enableCRLDP"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 1103
    :try_start_7a
    const-string v0, "X.509"
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7c} :catch_e2

    move-object/from16 v11, p4

    :try_start_7e
    invoke-interface {v11, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_82} :catch_e0

    .line 1108
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    nop

    .line 1110
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v12

    .line 1111
    .local v12, "id":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v13

    .line 1112
    .local v13, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8c
    array-length v15, v13

    if-ge v14, v15, :cond_db

    .line 1114
    aget-object v15, v13, v14

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v15

    .line 1116
    .local v15, "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v15, :cond_ce

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v16

    if-nez v16, :cond_ce

    .line 1118
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .local v17, "certFact":Ljava/security/cert/CertificateFactory;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 1120
    .local v0, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "j":I
    :goto_af
    move-object/from16 v16, v2

    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v16, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    array-length v2, v0

    if-ge v1, v2, :cond_c9

    .line 1122
    aget-object v2, v0, v14

    .line 1123
    .local v2, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    move-object/from16 v18, v0

    .end local v0    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v18, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    move/from16 v19, v1

    .end local v1    # "j":I
    .local v19, "j":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c2

    .line 1138
    goto :goto_d2

    .line 1120
    .end local v2    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_c2
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v2, v16

    move-object/from16 v0, v18

    .end local v19    # "j":I
    .restart local v1    # "j":I
    goto :goto_af

    .end local v18    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v0    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_c9
    move-object/from16 v18, v0

    move/from16 v19, v1

    .end local v0    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v1    # "j":I
    .restart local v18    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v19    # "j":I
    goto :goto_d2

    .line 1116
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v18    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v19    # "j":I
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    .local v2, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_ce
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    .line 1112
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v15    # "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    :goto_d2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto :goto_8c

    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_db
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    goto :goto_108

    .line 1105
    .end local v12    # "id":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v13    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v14    # "i":I
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_e0
    move-exception v0

    goto :goto_e5

    :catch_e2
    move-exception v0

    move-object/from16 v11, p4

    :goto_e5
    move-object/from16 v16, v2

    .line 1107
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot create certificate factory: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1098
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_104
    move-object/from16 v11, p4

    move-object/from16 v16, v2

    .line 1150
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :goto_108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1152
    .local v0, "result":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_111
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 1154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 1156
    .local v2, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v12

    if-eqz v12, :cond_126

    .line 1158
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1160
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    :cond_126
    goto :goto_111

    .line 1162
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_127
    return-object v0

    .line 1075
    .end local v0    # "result":Ljava/util/Set;
    .end local v4    # "idp":[B
    .end local v5    # "selBuilder":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .end local v6    # "deltaSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v10    # "temp":Ljava/util/Set;
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v2, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_128
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v2

    .line 1077
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Issuing distribution point extension value could not be read."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1063
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_13b
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v2

    .line 1065
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :goto_146
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL number extension could not be extracted from CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1049
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "completeCRLNumber":Ljava/math/BigInteger;
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_14e
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v2

    .line 1051
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot extract issuer from CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p0, "ext"    # Ljava/security/cert/X509Extension;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 346
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 348
    .local v0, "bytes":[B
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method protected static blacklist getNextWorkingKey(Ljava/util/List;ILcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;
    .registers 15
    .param p0, "certs"    # Ljava/util/List;
    .param p1, "index"    # I
    .param p2, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1295
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 1296
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1297
    .local v1, "pubKey":Ljava/security/PublicKey;
    instance-of v2, v1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v2, :cond_f

    .line 1299
    return-object v1

    .line 1301
    :cond_f
    move-object v2, v1

    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    .line 1302
    .local v2, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1304
    return-object v2

    .line 1306
    :cond_19
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_1b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "DSA parameters cannot be inherited from previous certificate."

    if-ge v3, v4, :cond_73

    .line 1308
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1309
    .local v4, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1310
    instance-of v6, v1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v6, :cond_6d

    .line 1315
    move-object v5, v1

    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    .line 1316
    .local v5, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    if-nez v6, :cond_3e

    .line 1318
    nop

    .line 1306
    .end local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1320
    .restart local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    :cond_3e
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    .line 1321
    .local v6, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    .line 1322
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1325
    .local v7, "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    :try_start_57
    const-string v8, "DSA"

    invoke-interface {p2, v8}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 1326
    .local v8, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v8, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_61} :catch_62

    return-object v9

    .line 1328
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    :catch_62
    move-exception v8

    .line 1330
    .local v8, "exception":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1312
    .end local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    .end local v6    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v7    # "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_6d
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v6, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1333
    .end local v3    # "i":I
    .end local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    :cond_73
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist getObject(Ljava/lang/String;[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p0, "oid"    # Ljava/lang/String;
    .param p1, "ext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 355
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 357
    .local v0, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 359
    .end local v0    # "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :catch_d
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final blacklist getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 8
    .param p0, "qualifiers"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 389
    .local v0, "pq":Ljava/util/Set;
    if-nez p0, :cond_8

    .line 391
    return-object v0

    .line 394
    :cond_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v2

    .line 397
    .local v2, "aOut":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 398
    .local v3, "e":Ljava/util/Enumeration;
    :goto_15
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 402
    :try_start_1b
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 404
    new-instance v4, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_30} :catch_35

    .line 409
    nop

    .line 411
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_15

    .line 406
    :catch_35
    move-exception v4

    .line 408
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 414
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_3e
    return-object v0
.end method

.method private static blacklist getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "cert"    # Ljava/lang/Object;

    .line 930
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;
    .registers 9
    .param p0, "validityDate"    # Ljava/util/Date;
    .param p1, "validityModel"    # I
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1226
    const-string v0, "Date of cert gen extension could not be read."

    const/4 v1, 0x1

    if-ne v1, p1, :cond_5e

    if-gtz p3, :cond_8

    goto :goto_5e

    .line 1232
    :cond_8
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1234
    .local v1, "issuedCert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, p3, -0x1

    if-nez v2, :cond_59

    .line 1237
    const/4 v2, 0x0

    .line 1240
    .local v2, "dateOfCertgen":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_start_19
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Lcom/android/internal/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1241
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 1242
    .local v3, "extBytes":[B
    if-eqz v3, :cond_3a

    .line 1244
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_39} :catch_4b

    move-object v2, v0

    .line 1254
    .end local v3    # "extBytes":[B
    :cond_3a
    nop

    .line 1255
    if-eqz v2, :cond_59

    .line 1259
    :try_start_3d
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_41
    .catch Ljava/text/ParseException; {:try_start_3d .. :try_end_41} :catch_42

    return-object v0

    .line 1261
    :catch_42
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1251
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_4b
    move-exception v3

    .line 1253
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1247
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_52
    move-exception v3

    .line 1249
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1268
    .end local v2    # "dateOfCertgen":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_59
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1229
    .end local v1    # "issuedCert":Ljava/security/cert/X509Certificate;
    :cond_5e
    :goto_5e
    return-object p0
.end method

.method protected static blacklist getValidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;
    .registers 4
    .param p0, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p1, "currentDate"    # Ljava/util/Date;

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityDate()Ljava/util/Date;

    move-result-object v0

    .line 328
    .local v0, "validityDate":Ljava/util/Date;
    if-nez v0, :cond_8

    move-object v1, p1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method protected static blacklist isAnyPolicy(Ljava/util/Set;)Z
    .registers 2
    .param p0, "policySet"    # Ljava/util/Set;

    .line 659
    if-eqz p0, :cond_13

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static blacklist isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .registers 3
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .line 1167
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 1169
    .local v0, "critical":Ljava/util/Set;
    if-nez v0, :cond_8

    .line 1171
    const/4 v1, 0x0

    return v1

    .line 1174
    :cond_8
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static blacklist isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .registers 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_9

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    .line 287
    :catch_9
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method protected static blacklist isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 333
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static blacklist prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .registers 20
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "m_idp"    # Ljava/util/Map;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 540
    move-object/from16 v6, p2

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 541
    .local v0, "idp_found":Z
    aget-object v1, p1, p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 542
    .local v1, "nodes_i":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 544
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 545
    .local v2, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 547
    const/4 v0, 0x1

    .line 548
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, v2, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 549
    move v9, v0

    goto :goto_2e

    .line 551
    .end local v2    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2c
    goto :goto_b

    .line 542
    :cond_2d
    move v9, v0

    .line 553
    .end local v0    # "idp_found":Z
    .local v9, "idp_found":Z
    :goto_2e
    if-nez v9, :cond_f8

    .line 555
    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 556
    .end local v1    # "nodes_i":Ljava/util/Iterator;
    .local v10, "nodes_i":Ljava/util/Iterator;
    :goto_36
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 558
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 559
    .local v11, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.5.29.32.0"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 561
    const/4 v2, 0x0

    .line 562
    .local v2, "pq":Ljava/util/Set;
    const/4 v3, 0x0

    .line 565
    .local v3, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_51
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_53} :catch_e3

    move-object/from16 v12, p4

    :try_start_55
    invoke-static {v12, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_e1

    move-object v13, v0

    .line 570
    .end local v3    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v13, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 571
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v14

    .line 572
    .local v14, "e":Ljava/util/Enumeration;
    :goto_63
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 574
    const/4 v3, 0x0

    .line 578
    .local v3, "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_6a
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_72} :catch_97

    move-object v3, v0

    .line 583
    nop

    .line 584
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 588
    :try_start_82
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_8a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_82 .. :try_end_8a} :catch_8d

    move-object v2, v0

    .line 594
    move-object v5, v2

    goto :goto_a1

    .line 590
    :catch_8d
    move-exception v0

    .line 592
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Policy qualifier info set could not be built."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 597
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v3    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_96
    goto :goto_63

    .line 580
    .restart local v3    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_97
    move-exception v0

    .line 582
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Policy information cannot be decoded."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 572
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_a0
    move-object v5, v2

    .line 598
    .end local v2    # "pq":Ljava/util/Set;
    .local v5, "pq":Ljava/util/Set;
    :goto_a1
    const/4 v0, 0x0

    .line 599
    .local v0, "ci":Z
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_b4

    .line 601
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v7, v0

    goto :goto_b5

    .line 599
    :cond_b4
    move v7, v0

    .line 604
    .end local v0    # "ci":Z
    .local v7, "ci":Z
    :goto_b5
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 605
    .local v4, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 607
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 609
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Set;

    move v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 611
    .local v0, "c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 612
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v0    # "c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_f6

    .line 567
    .end local v4    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5    # "pq":Ljava/util/Set;
    .end local v7    # "ci":Z
    .end local v13    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v14    # "e":Ljava/util/Enumeration;
    .restart local v2    # "pq":Ljava/util/Set;
    .local v3, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_e1
    move-exception v0

    goto :goto_e6

    :catch_e3
    move-exception v0

    move-object/from16 v12, p4

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    :goto_e6
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate policies cannot be decoded."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "pq":Ljava/util/Set;
    .end local v3    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_ee
    move-object/from16 v12, p4

    .line 616
    .end local v11    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v6, p2

    goto/16 :goto_36

    .line 556
    :cond_f4
    move-object/from16 v12, p4

    .line 618
    :cond_f6
    :goto_f6
    move-object v1, v10

    goto :goto_fa

    .line 553
    .end local v10    # "nodes_i":Ljava/util/Iterator;
    .restart local v1    # "nodes_i":Ljava/util/Iterator;
    :cond_f8
    move-object/from16 v12, p4

    .line 618
    :goto_fa
    return-void
.end method

.method protected static blacklist prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 12
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 626
    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 627
    .local v0, "nodes_i":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 629
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 630
    .local v1, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 632
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 633
    .local v2, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 634
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 635
    add-int/lit8 v3, p0, -0x1

    .local v3, "k":I
    :goto_2a
    if-ltz v3, :cond_4e

    .line 637
    aget-object v4, p1, v3

    .line 638
    .local v4, "nodes":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 640
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 641
    .local v6, "node2":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_48

    .line 643
    invoke-static {p3, p1, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    .line 644
    if-nez p3, :cond_48

    .line 646
    goto :goto_4b

    .line 638
    .end local v6    # "node2":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 635
    .end local v4    # "nodes":Ljava/util/List;
    .end local v5    # "l":I
    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 652
    .end local v1    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v2    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "k":I
    :cond_4e
    goto :goto_6

    .line 653
    :cond_4f
    return-object p3
.end method

.method protected static blacklist processCertD1i(I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z
    .registers 15
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "pOid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "pq"    # Ljava/util/Set;

    .line 471
    add-int/lit8 v0, p0, -0x1

    aget-object v0, p1, v0

    .line 473
    .local v0, "policyNodeVec":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 476
    .local v7, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v2

    .line 478
    .local v2, "expectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 480
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 481
    .local v6, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v5, p0

    move-object v8, p3

    .end local p0    # "index":I
    .end local p3    # "pq":Ljava/util/Set;
    .local v5, "index":I
    .local v8, "pq":Ljava/util/Set;
    invoke-direct/range {v3 .. v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 490
    .local v3, "child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 491
    aget-object p0, p1, v5

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    const/4 p0, 0x1

    return p0

    .line 478
    .end local v3    # "child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5    # "index":I
    .end local v6    # "childExpectedPolicies":Ljava/util/Set;
    .end local v8    # "pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "pq":Ljava/util/Set;
    :cond_47
    move v5, p0

    move-object v8, p3

    .line 473
    .end local v2    # "expectedPolicies":Ljava/util/Set;
    .end local v7    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local p0    # "index":I
    .end local p3    # "pq":Ljava/util/Set;
    .restart local v5    # "index":I
    .restart local v8    # "pq":Ljava/util/Set;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v5    # "index":I
    .end local v8    # "pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "pq":Ljava/util/Set;
    :cond_4c
    move v5, p0

    .line 497
    .end local v1    # "j":I
    .end local p0    # "index":I
    .restart local v5    # "index":I
    const/4 p0, 0x0

    return p0
.end method

.method protected static blacklist processCertD1ii(I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    .registers 15
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_poid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "_pq"    # Ljava/util/Set;

    .line 506
    add-int/lit8 v0, p0, -0x1

    aget-object v0, p1, v0

    .line 508
    .local v0, "policyNodeVec":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 512
    .local v7, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v2, "2.5.29.32.0"

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 514
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 515
    .local v6, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v5, p0

    move-object v8, p3

    .end local p0    # "index":I
    .end local p3    # "_pq":Ljava/util/Set;
    .local v5, "index":I
    .local v8, "_pq":Ljava/util/Set;
    invoke-direct/range {v3 .. v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 524
    .local v3, "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 525
    aget-object p0, p1, v5

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    return-void

    .line 512
    .end local v3    # "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5    # "index":I
    .end local v6    # "_childExpectedPolicies":Ljava/util/Set;
    .end local v8    # "_pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "_pq":Ljava/util/Set;
    :cond_44
    move v5, p0

    move-object v8, p3

    .line 508
    .end local v7    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local p0    # "index":I
    .end local p3    # "_pq":Ljava/util/Set;
    .restart local v5    # "index":I
    .restart local v8    # "_pq":Ljava/util/Set;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 529
    .end local v1    # "j":I
    .end local v5    # "index":I
    .end local v8    # "_pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "_pq":Ljava/util/Set;
    :cond_49
    return-void
.end method

.method protected static blacklist removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 7
    .param p0, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_node"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 422
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 424
    .local v0, "_parent":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v1, 0x0

    if-nez p0, :cond_a

    .line 426
    return-object v1

    .line 429
    :cond_a
    if-nez v0, :cond_1b

    .line 431
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    array-length v3, p1

    if-ge v2, v3, :cond_1a

    .line 433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, p1, v2

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 436
    .end local v2    # "j":I
    :cond_1a
    return-object v1

    .line 440
    :cond_1b
    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 441
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 443
    return-object p0
.end method

.method private static blacklist removePolicyNodeRecurse([Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 4
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 451
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v0

    aget-object v0, p0, v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 455
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 456
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 458
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 459
    .local v1, "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 460
    .end local v1    # "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_13

    .line 462
    .end local v0    # "_iter":Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method protected static blacklist verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1401
    if-nez p2, :cond_6

    .line 1403
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_9

    .line 1407
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 1409
    :goto_9
    return-void
.end method
