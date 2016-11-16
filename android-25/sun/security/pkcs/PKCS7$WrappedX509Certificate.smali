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
.field private final wrapped:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "wrapped"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 796
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    #@3
    .line 797
    iput-object p1, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@5
    .line 796
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
    .line 823
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    #@5
    .line 822
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
    .line 829
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    #@5
    .line 828
    return-void
.end method

.method public getBasicConstraints()I
    .locals 1

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 802
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 909
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

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
    .line 937
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 807
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 942
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 844
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 889
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 947
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 899
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 812
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 859
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 854
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 932
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 839
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 874
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 879
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 884
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 869
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 952
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 849
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 894
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 957
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 864
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 834
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 817
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

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
    .line 927
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

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
    .line 915
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    #@5
    .line 914
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
    .line 922
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@5
    .line 921
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 1
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
    .line 963
    iget-object v0, p0, Lsun/security/pkcs/PKCS7$WrappedX509Certificate;->wrapped:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    #@5
    .line 962
    return-void
.end method
