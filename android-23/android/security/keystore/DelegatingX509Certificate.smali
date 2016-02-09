.class Landroid/security/keystore/DelegatingX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "DelegatingX509Certificate.java"


# instance fields
.field private final mDelegate:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "delegate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@5
    .line 42
    return-void
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    #@5
    .line 68
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    #@5
    .line 74
    return-void
.end method

.method public getBasicConstraints()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 190
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
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
    .line 195
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerUniqueID()[Z

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 205
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectUniqueID()[Z

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTBSCertificate()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    #@5
    .line 174
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/security/keystore/DelegatingX509Certificate;->mDelegate:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@5
    .line 184
    return-void
.end method
