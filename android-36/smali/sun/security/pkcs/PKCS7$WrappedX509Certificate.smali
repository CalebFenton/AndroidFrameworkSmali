.class Lsun/security/pkcs/PKCS7$WrappedX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "PKCS7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/pkcs/PKCS7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedX509Certificate"
.end annotation


# instance fields
.field private final greylist-max-o wrapped:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;

    .line 845
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 846
    iput-object p1, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    .line 847
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

    .line 872
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 873
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

    .line 878
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 879
    return-void
.end method

.method public whitelist test-api getBasicConstraints()I
    .registers 2

    .line 953
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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

    .line 851
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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

    .line 958
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
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

    .line 986
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 3
    .param p1, "oid"    # Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

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

    .line 991
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 893
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .registers 2

    .line 938
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 996
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getKeyUsage()[Z
    .registers 2

    .line 948
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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

    .line 861
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .registers 2

    .line 908
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .registers 2

    .line 903
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 981
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 888
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 2

    .line 923
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 2

    .line 928
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 2

    .line 933
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .registers 2

    .line 918
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v0

    return-object v0
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

    .line 1001
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .registers 2

    .line 898
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .registers 2

    .line 943
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 1006
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

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

    .line 913
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 2

    .line 883
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 2

    .line 866
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 976
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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

    .line 964
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 965
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

    .line 971
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4
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

    .line 1012
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    .line 1013
    return-void
.end method
