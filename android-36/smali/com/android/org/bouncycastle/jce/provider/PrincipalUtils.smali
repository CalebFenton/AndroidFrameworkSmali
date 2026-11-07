.class abstract Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;
.super Ljava/lang/Object;
.source "PrincipalUtils.java"


# direct methods
.method static blacklist getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 19
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/TrustAnchor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getEncoded(Ljavax/security/auth/x500/X500Principal;)[B
    .registers 1

    .line 85
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->notNull([B)[B

    move-result-object p0

    return-object p0
.end method

.method static blacklist getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 30
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    .line 32
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0

    .line 36
    :cond_b
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method static blacklist getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 55
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509CRL;)Ljava/security/cert/X509CRL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 68
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 73
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getEncoded(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist notNull(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 129
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static blacklist notNull(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/TrustAnchor;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 102
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static blacklist notNull(Ljava/security/cert/X509CRL;)Ljava/security/cert/X509CRL;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 120
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static blacklist notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static blacklist notNull(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 138
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static blacklist notNull([B)[B
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
