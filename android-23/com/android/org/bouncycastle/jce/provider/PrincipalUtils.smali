.class Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;
.super Ljava/lang/Object;
.source "PrincipalUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "trustAnchor"    # Ljava/security/cert/TrustAnchor;

    #@0
    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method static getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "cert"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 44
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 46
    check-cast p0, Ljava/security/cert/X509Certificate;

    #@6
    .end local p0    # "cert":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 50
    .restart local p0    # "cert":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    #@d
    .end local p0    # "cert":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    #@14
    move-result-object v0

    #@15
    const/4 v1, 0x0

    #@16
    aget-object v0, v0, v1

    #@18
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    #@1a
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    #@0
    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method static getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
