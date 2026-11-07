.class Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;
.super Ljava/lang/Object;
.source "PrincipalUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "trustAnchor"    # Ljava/security/cert/TrustAnchor;

    .line 19
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getEncoded(Ljavax/security/auth/x500/X500Principal;)[B
    .registers 3
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 85
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    .line 86
    .local v0, "encoding":[B
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->notNull([B)[B

    move-result-object v1

    return-object v1
.end method

.method static blacklist getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "cert"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_c

    .line 32
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    .line 36
    :cond_c
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .line 55
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509CRL;)Ljava/security/cert/X509CRL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 50
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 68
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getX500Name(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 4
    .param p0, "style"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 79
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncoded(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 80
    .local v0, "name":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 73
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncoded(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 74
    .local v0, "name":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->notNull(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist notNull(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 127
    if-eqz p0, :cond_3

    .line 131
    return-object p0

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static blacklist notNull(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/TrustAnchor;
    .registers 2
    .param p0, "trustAnchor"    # Ljava/security/cert/TrustAnchor;

    .line 100
    if-eqz p0, :cond_3

    .line 104
    return-object p0

    .line 102
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static blacklist notNull(Ljava/security/cert/X509CRL;)Ljava/security/cert/X509CRL;
    .registers 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .line 118
    if-eqz p0, :cond_3

    .line 122
    return-object p0

    .line 120
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static blacklist notNull(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 2
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 109
    if-eqz p0, :cond_3

    .line 113
    return-object p0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static blacklist notNull(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .registers 2
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 136
    if-eqz p0, :cond_3

    .line 140
    return-object p0

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static blacklist notNull([B)[B
    .registers 2
    .param p0, "encoding"    # [B

    .line 91
    if-eqz p0, :cond_3

    .line 95
    return-object p0

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
