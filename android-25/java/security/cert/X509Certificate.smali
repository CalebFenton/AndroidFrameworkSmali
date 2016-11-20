.class public abstract Ljava/security/cert/X509Certificate;
.super Ljava/security/cert/Certificate;
.source "X509Certificate.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# static fields
.field private static final serialVersionUID:J = -0x22924357c8106208L


# instance fields
.field private transient issuerX500Principal:Ljavax/security/auth/x500/X500Principal;

.field private transient subjectX500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "X.509"

    #@3
    invoke-direct {p0, v0}, Ljava/security/cert/Certificate;-><init>(Ljava/lang/String;)V

    #@6
    .line 115
    return-void
.end method


# virtual methods
.method public abstract checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract getBasicConstraints()I
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    .line 508
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 647
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract getIssuerUniqueID()[Z
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Ljava/security/cert/X509Certificate;->issuerX500Principal:Ljavax/security/auth/x500/X500Principal;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 248
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/security/cert/X509Certificate;->issuerX500Principal:Ljavax/security/auth/x500/X500Principal;

    #@a
    .line 250
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509Certificate;->issuerX500Principal:Ljavax/security/auth/x500/X500Principal;

    #@c
    return-object v0
.end method

.method public abstract getKeyUsage()[Z
.end method

.method public abstract getNotAfter()Ljava/util/Date;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSignature()[B
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 605
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract getSubjectUniqueID()[Z
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Ljava/security/cert/X509Certificate;->subjectX500Principal:Ljavax/security/auth/x500/X500Principal;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 291
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/security/cert/X509Certificate;->subjectX500Principal:Ljavax/security/auth/x500/X500Principal;

    #@a
    .line 293
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509Certificate;->subjectX500Principal:Ljavax/security/auth/x500/X500Principal;

    #@c
    return-object v0
.end method

.method public abstract getTBSCertificate()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 676
    invoke-static {p0, p1, p2}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/Provider;)V

    #@3
    .line 675
    return-void
.end method
