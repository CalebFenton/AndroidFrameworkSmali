.class abstract Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final blacklist AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final blacklist BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final blacklist CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final blacklist CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final blacklist CRL_NUMBER:Ljava/lang/String;

.field protected static final blacklist DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final blacklist FRESHEST_CRL:Ljava/lang/String;

.field protected static final blacklist INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final blacklist ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

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
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 113
    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method static blacklist checkCRLsNotEmpty(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/util/Set;Ljava/lang/Object;)V
    .registers 5

    .line 1414
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 1425
    :cond_7
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 1427
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No CRLs found for issuer \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1428
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result p0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0, p0}, Lcom/android/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1
.end method

.method protected static blacklist findCertificates(Ljava/util/LinkedHashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    .registers 4

    .line 679
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 680
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 682
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 702
    check-cast v0, Ljava/security/cert/CertStore;

    .line 705
    :try_start_10
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_17
    .catch Ljava/security/cert/CertStoreException; {:try_start_10 .. :try_end_17} :catch_18

    goto :goto_4

    :catch_18
    move-exception p0

    .line 709
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Problem while picking certificates from certificate store."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_21
    return-void
.end method

.method static blacklist findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .registers 5

    .line 1350
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 1354
    :try_start_5
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_54

    .line 1364
    :try_start_10
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_36

    .line 1367
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    .line 1368
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object p0

    if-eqz p0, :cond_36

    .line 1371
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_36

    .line 1380
    :catch_36
    :cond_36
    new-instance p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object p0

    .line 1381
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1385
    :try_start_44
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 1386
    invoke-static {v0, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_4a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_44 .. :try_end_4a} :catch_4b

    return-object v0

    :catch_4b
    move-exception p0

    .line 1390
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuer certificate cannot be searched."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_54
    move-exception p0

    .line 1358
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static blacklist findTargets(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)Ljava/util/Collection;
    .registers 4

    .line 128
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 134
    :try_start_d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_1b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_1b} :catch_35

    .line 142
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_22

    return-object v1

    .line 147
    :cond_22
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 153
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 150
    :cond_2d
    new-instance p0, Ljava/security/cert/CertPathBuilderException;

    const-string v0, "No certificate found matching targetConstraints."

    invoke-direct {p0, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_35
    move-exception p0

    .line 139
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "Error finding target certificate."

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static blacklist findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .registers 11

    .line 200
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 202
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 207
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 208
    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7a

    if-nez v3, :cond_7a

    .line 210
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 211
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_3e

    .line 213
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 215
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    goto :goto_70

    :catch_3c
    :cond_3c
    move-object v3, v2

    goto :goto_70

    .line 222
    :cond_3e
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    if-eqz v7, :cond_3c

    .line 223
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3c

    .line 224
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    if-eqz v7, :cond_3c

    if-nez v5, :cond_5a

    .line 228
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 233
    :cond_5a
    :try_start_5a
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    .line 235
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 237
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v6
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_70} :catch_3c

    :goto_70
    if-eqz v6, :cond_15

    .line 258
    :try_start_72
    invoke-static {p0, v6, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_15

    :catch_76
    move-exception v4

    move-object v3, v2

    move-object v6, v3

    goto :goto_15

    :cond_7a
    if-nez v3, :cond_87

    if-nez v4, :cond_7f

    goto :goto_87

    .line 271
    :cond_7f
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "TrustAnchor found but certificate validation failed."

    invoke-direct {p0, p1, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_87
    :goto_87
    return-object v3
.end method

.method static blacklist getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;
    .registers 5

    if-nez p0, :cond_5

    .line 302
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 305
    :cond_5
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 310
    :goto_1b
    array-length v2, p0

    if-eq v1, v2, :cond_2a

    .line 312
    aget-object v2, p0, v1

    .line 314
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2a
    return-object v0
.end method

.method static blacklist getAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;
    .registers 9

    if-nez p0, :cond_5

    .line 721
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 727
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a2

    .line 734
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 736
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_40

    .line 738
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 740
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-nez v3, :cond_3d

    .line 742
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    move v3, v0

    .line 744
    :goto_2e
    array-length v4, v2

    if-ge v3, v4, :cond_3d

    .line 746
    aget-object v4, v2, v3

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 756
    :cond_40
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a1

    const-string p1, "com.android.org.bouncycastle.x509.enableCRLDP"

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 761
    :try_start_4e
    const-string p1, "X.509"

    invoke-interface {p3, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_85

    move p1, v0

    .line 768
    :goto_54
    array-length p3, p0

    if-ge p1, p3, :cond_a1

    .line 770
    aget-object p3, p0, p1

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p3

    if-eqz p3, :cond_82

    .line 772
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v1

    if-nez v1, :cond_82

    .line 774
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p3

    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p3

    move v1, v0

    .line 776
    :goto_72
    array-length v2, p3

    if-ge v1, v2, :cond_82

    .line 778
    aget-object v2, p3, v1

    .line 779
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7f

    goto :goto_82

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_82
    :goto_82
    add-int/lit8 p1, p1, 0x1

    goto :goto_54

    :catch_85
    move-exception p0

    .line 765
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot create certificate factory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_a1
    return-object p2

    :catch_a2
    move-exception p0

    .line 731
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Distribution points could not be read."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static blacklist getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 3

    .line 369
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 373
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Subject public key cannot be decoded."

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static blacklist getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    .registers 7

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 832
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    .line 834
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0

    move p1, v2

    .line 836
    :goto_15
    array-length v1, p0

    if-ge p1, v1, :cond_5b

    .line 838
    aget-object v1, p0, p1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_40

    .line 842
    :try_start_21
    aget-object v1, p0, p1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_36} :catch_37

    goto :goto_40

    :catch_37
    move-exception p0

    .line 846
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_40
    :goto_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 858
    :cond_43
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 864
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 866
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 913
    :cond_5b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_5f
    if-ge v2, p0, :cond_7a

    .line 918
    :try_start_61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_70} :catch_71

    goto :goto_5f

    :catch_71
    move-exception p0

    .line 922
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Cannot decode CRL issuer information."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7a
    return-void

    .line 860
    :cond_7b
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static blacklist getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .registers 9

    .line 943
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    move-result v0
    :try_end_4
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_4} :catch_a5

    if-eqz v0, :cond_2d

    .line 953
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_99

    .line 960
    :cond_12
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 965
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    goto :goto_21

    .line 969
    :cond_1d
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    .line 972
    :goto_21
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto/16 :goto_99

    .line 977
    :cond_2d
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_99

    .line 983
    :cond_3c
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    if-nez v0, :cond_47

    goto :goto_99

    .line 992
    :cond_47
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 994
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->hasUnsupportedCriticalExtension()Z

    move-result p1

    if-nez p1, :cond_6b

    .line 1001
    :try_start_53
    sget-object p1, Lcom/android/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1002
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_61} :catch_62

    goto :goto_74

    :catch_62
    move-exception p0

    .line 1006
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Reason code CRL entry extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 996
    :cond_6b
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CRL entry has unsupported critical extensions."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    const/4 p1, 0x0

    :goto_74
    if-nez p1, :cond_78

    const/4 p1, 0x0

    goto :goto_7c

    .line 1012
    :cond_78
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result p1

    .line 1015
    :goto_7c
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_9a

    if-eqz p1, :cond_9a

    const/4 p0, 0x1

    if-eq p1, p0, :cond_9a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9a

    const/16 p0, 0xa

    if-ne p1, p0, :cond_99

    goto :goto_9a

    :cond_99
    :goto_99
    return-void

    .line 1022
    :cond_9a
    :goto_9a
    invoke-virtual {p3, p1}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1023
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    return-void

    :catch_a5
    move-exception p0

    .line 947
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Failed check for indirect CRL."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static blacklist getCompleteCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;
    .registers 8

    .line 1194
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1198
    :try_start_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1199
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1201
    invoke-static {p1, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_14} :catch_3c

    .line 1208
    instance-of p1, p2, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_1e

    .line 1210
    move-object p1, p2

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1213
    :cond_1e
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object p1

    .line 1214
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object p1

    .line 1216
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object p3

    invoke-static {p1, p4, v0, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 1218
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkCRLsNotEmpty(Lcom/android/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/util/Set;Ljava/lang/Object;)V

    return-object p1

    :catch_3c
    move-exception p0

    .line 1205
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Could not get issuer information from distribution point."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static blacklist getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .registers 9

    .line 1043
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1047
    :try_start_5
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_ec

    .line 1057
    :try_start_10
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 1060
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_e3

    goto :goto_23

    :cond_22
    move-object v1, v2

    .line 1073
    :goto_23
    :try_start_23
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_da

    if-nez v1, :cond_2c

    goto :goto_36

    :cond_2c
    const-wide/16 v2, 0x1

    .line 1082
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_36
    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1084
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    .line 1086
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPoint([B)V

    const/4 v0, 0x1

    .line 1087
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPointEnabled(Z)V

    .line 1090
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 1092
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v0

    .line 1095
    invoke-static {v0, p0, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    .line 1098
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_ba

    const-string p2, "com.android.org.bouncycastle.x509.enableCRLDP"

    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 1103
    :try_start_5e
    const-string p2, "X.509"

    invoke-interface {p4, p2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_9e

    .line 1110
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object p1

    .line 1111
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 1112
    :goto_6d
    array-length p4, p1

    if-ge p3, p4, :cond_ba

    .line 1114
    aget-object p4, p1, p3

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object p4

    if-eqz p4, :cond_9b

    .line 1116
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v0

    if-nez v0, :cond_9b

    .line 1118
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p4

    invoke-static {p4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p4

    move v0, p2

    .line 1120
    :goto_8b
    array-length v1, p4

    if-ge v0, v1, :cond_9b

    .line 1122
    aget-object v1, p4, p3

    .line 1123
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_98

    goto :goto_9b

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_9b
    :goto_9b
    add-int/lit8 p3, p3, 0x1

    goto :goto_6d

    :catch_9e
    move-exception p0

    .line 1107
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot create certificate factory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1150
    :cond_ba
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1152
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c3
    :goto_c3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d9

    .line 1154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509CRL;

    .line 1156
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result p3

    if-eqz p3, :cond_c3

    .line 1158
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    :cond_d9
    return-object p1

    :catch_da
    move-exception p0

    .line 1077
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuing distribution point extension value could not be read."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_e3
    move-exception p0

    .line 1065
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "CRL number extension could not be extracted from CRL."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_ec
    move-exception p0

    .line 1051
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Cannot extract issuer from CRL."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static blacklist getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 346
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 348
    :cond_8
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist getNextWorkingKey(Ljava/util/List;ILcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;
    .registers 7

    .line 1295
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 1296
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 1297
    instance-of v1, v0, Ljava/security/interfaces/DSAPublicKey;

    if-nez v1, :cond_f

    return-object v0

    .line 1301
    :cond_f
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 1302
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    if-eqz v1, :cond_18

    return-object v0

    :cond_18
    :goto_18
    add-int/lit8 p1, p1, 0x1

    .line 1306
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "DSA parameters cannot be inherited from previous certificate."

    if-ge p1, v1, :cond_6e

    .line 1308
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1309
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1310
    instance-of v3, v1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v3, :cond_68

    .line 1315
    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    .line 1316
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    if-nez v2, :cond_39

    goto :goto_18

    .line 1320
    :cond_39
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p0

    .line 1321
    new-instance p1, Ljava/security/spec/DSAPublicKeySpec;

    .line 1322
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1325
    :try_start_52
    const-string p0, "DSA"

    invoke-interface {p2, p0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 1326
    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_5d

    return-object p0

    :catch_5d
    move-exception p0

    .line 1330
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1312
    :cond_68
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {p0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1333
    :cond_6e
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {p0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 355
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    .line 357
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    .line 361
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static final blacklist getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 6

    .line 387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_8

    goto :goto_3d

    .line 394
    :cond_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v2

    .line 397
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    .line 398
    :goto_15
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 402
    :try_start_1b
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 404
    new-instance v3, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_30} :catch_34

    .line 411
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_15

    :catch_34
    move-exception p0

    .line 408
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Policy qualifier info cannot be decoded."

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method private static blacklist getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .registers 1

    .line 930
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;
    .registers 6

    .line 1226
    const-string v0, "Date of cert gen extension could not be read."

    const/4 v1, 0x1

    if-ne v1, p1, :cond_55

    if-gtz p3, :cond_8

    goto :goto_55

    .line 1232
    :cond_8
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    sub-int/2addr p3, v1

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    if-nez p3, :cond_51

    .line 1240
    :try_start_15
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    sget-object p2, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1241
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_34

    .line 1244
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_33} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_33} :catch_45

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    if-eqz p1, :cond_51

    .line 1259
    :try_start_37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object p0
    :try_end_3b
    .catch Ljava/text/ParseException; {:try_start_37 .. :try_end_3b} :catch_3c

    return-object p0

    :catch_3c
    move-exception p0

    .line 1263
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Date from date of cert gen extension could not be parsed."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1253
    :catch_45
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1249
    :catch_4b
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1268
    :cond_51
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object p0

    :cond_55
    :goto_55
    return-object p0
.end method

.method protected static blacklist getValidityDate(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;
    .registers 2

    .line 326
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityDate()Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p1

    :cond_7
    return-object p0
.end method

.method protected static blacklist isAnyPolicy(Ljava/util/Set;)Z
    .registers 2

    if-eqz p0, :cond_13

    .line 659
    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .registers 2

    .line 1167
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1174
    :cond_8
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static blacklist isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 285
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_9

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :catch_9
    :cond_9
    return v0
.end method

.method protected static blacklist isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .registers 2

    .line 333
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static blacklist processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z
    .registers 16

    add-int/lit8 v0, p0, -0x1

    .line 471
    aget-object v0, p1, v0

    const/4 v1, 0x0

    move v2, v1

    .line 473
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 475
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 476
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v3

    .line 478
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 480
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 481
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move v6, p0

    move-object v9, p3

    invoke-direct/range {v4 .. v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 490
    invoke-virtual {v8, v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 491
    aget-object p0, p1, v6

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_48
    move v6, p0

    move-object v9, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4d
    return v1
.end method

.method protected static blacklist processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    .registers 15

    add-int/lit8 v0, p0, -0x1

    .line 506
    aget-object v0, p1, v0

    const/4 v1, 0x0

    .line 508
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 512
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.5.29.32.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 514
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 515
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v5, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 524
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 525
    aget-object p0, p1, v5

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_44
    move v5, p0

    move-object v8, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_49
    return-void
.end method

.method protected static blacklist removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 5

    .line 422
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    const/4 v1, 0x0

    if-nez p0, :cond_a

    return-object v1

    :cond_a
    if-nez v0, :cond_1b

    const/4 p0, 0x0

    .line 431
    :goto_d
    array-length p2, p1

    if-ge p0, p2, :cond_1a

    .line 433
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    aput-object p2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_d

    :cond_1a
    return-object v1

    .line 440
    :cond_1b
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 441
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    return-object p0
.end method

.method private static blacklist removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 3

    .line 451
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v0

    aget-object v0, p0, v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 455
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object p1

    .line 456
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 458
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 459
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_13

    :cond_23
    return-void
.end method

.method protected static blacklist verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3

    if-nez p2, :cond_6

    .line 1403
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    return-void

    .line 1407
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    return-void
.end method
