.class public abstract Ljava/security/cert/X509Certificate;
.super Ljava/security/cert/Certificate;
.source "X509Certificate.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# static fields
.field private static final whitelist serialVersionUID:J = -0x22924357c8106208L


# instance fields
.field private transient greylist-max-o issuerX500Principal:Ljavax/security/auth/x500/X500Principal;

.field private transient greylist-max-o subjectX500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 116
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/Certificate;-><init>(Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getBasicConstraints()I
.end method

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 647
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api getIssuerUniqueID()[Z
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 247
    iget-object v0, p0, Ljava/security/cert/X509Certificate;->issuerX500Principal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_a

    .line 248
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509Certificate;->issuerX500Principal:Ljavax/security/auth/x500/X500Principal;

    .line 250
    :cond_a
    iget-object v0, p0, Ljava/security/cert/X509Certificate;->issuerX500Principal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public abstract whitelist test-api getKeyUsage()[Z
.end method

.method public abstract whitelist test-api getNotAfter()Ljava/util/Date;
.end method

.method public abstract whitelist test-api getNotBefore()Ljava/util/Date;
.end method

.method public abstract whitelist test-api getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getSigAlgName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSigAlgParams()[B
.end method

.method public abstract whitelist test-api getSignature()[B
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 605
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api getSubjectUniqueID()[Z
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 290
    iget-object v0, p0, Ljava/security/cert/X509Certificate;->subjectX500Principal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_a

    .line 291
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509Certificate;->subjectX500Principal:Ljavax/security/auth/x500/X500Principal;

    .line 293
    :cond_a
    iget-object v0, p0, Ljava/security/cert/X509Certificate;->subjectX500Principal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public abstract whitelist test-api getTBSCertificate()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getVersion()I
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 3
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

    .line 683
    invoke-super {p0, p1, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    .line 684
    return-void
.end method
