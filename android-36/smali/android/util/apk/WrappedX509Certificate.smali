.class Landroid/util/apk/WrappedX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "WrappedX509Certificate.java"


# instance fields
.field private final blacklist mWrapped:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;

    .line 37
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 65
    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .registers 3
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 71
    return-void
.end method

.method public whitelist test-api getBasicConstraints()I
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 3
    .param p1, "oid"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getKeyUsage()[Z
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTBSCertificate()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3
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

    .line 156
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 157
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4
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

    .line 163
    iget-object v0, p0, Landroid/util/apk/WrappedX509Certificate;->mWrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 164
    return-void
.end method
