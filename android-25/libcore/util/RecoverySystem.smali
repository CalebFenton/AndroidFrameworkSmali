.class public Llibcore/util/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static verify(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/util/Set;)V
    .locals 12
    .param p0, "blockStream"    # Ljava/io/InputStream;
    .param p1, "contentStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/InputStream;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "trustedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v11, 0x0

    #@1
    .line 42
    new-instance v0, Lsun/security/pkcs/PKCS7;

    #@3
    invoke-direct {v0, p0}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    #@6
    .line 46
    .local v0, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    #@9
    move-result-object v4

    #@a
    .line 47
    .local v4, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_0

    #@c
    array-length v10, v4

    #@d
    if-nez v10, :cond_1

    #@f
    .line 48
    :cond_0
    new-instance v10, Ljava/security/SignatureException;

    #@11
    const-string/jumbo v11, "signature contains no certificates"

    #@14
    invoke-direct {v10, v11}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@17
    throw v10

    #@18
    .line 50
    :cond_1
    aget-object v3, v4, v11

    #@1a
    .line 51
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1d
    move-result-object v5

    #@1e
    .line 53
    .local v5, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    #@21
    move-result-object v7

    #@22
    .line 54
    .local v7, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v7, :cond_2

    #@24
    array-length v10, v7

    #@25
    if-nez v10, :cond_3

    #@27
    .line 55
    :cond_2
    new-instance v10, Ljava/security/SignatureException;

    #@29
    const-string/jumbo v11, "signature contains no signedData"

    #@2c
    invoke-direct {v10, v11}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v10

    #@30
    .line 57
    :cond_3
    aget-object v6, v7, v11

    #@32
    .line 59
    .local v6, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/4 v8, 0x0

    #@33
    .line 60
    .local v8, "verified":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v2

    #@37
    .local v2, "c$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v10

    #@3b
    if-eqz v10, :cond_5

    #@3d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@43
    .line 61
    .local v1, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@46
    move-result-object v10

    #@47
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v10

    #@4b
    if-eqz v10, :cond_4

    #@4d
    .line 62
    const/4 v8, 0x1

    #@4e
    .line 67
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    :cond_5
    if-nez v8, :cond_6

    #@50
    .line 68
    new-instance v10, Ljava/security/SignatureException;

    #@52
    const-string/jumbo v11, "signature doesn\'t match any trusted key"

    #@55
    invoke-direct {v10, v11}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@58
    throw v10

    #@59
    .line 71
    :cond_6
    invoke-virtual {v0, v6, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    #@5c
    move-result-object v9

    #@5d
    .line 72
    .local v9, "verifyResult":Lsun/security/pkcs/SignerInfo;
    if-nez v9, :cond_7

    #@5f
    .line 73
    new-instance v10, Ljava/security/SignatureException;

    #@61
    const-string/jumbo v11, "signature digest verification failed"

    #@64
    invoke-direct {v10, v11}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@67
    throw v10

    #@68
    .line 41
    :cond_7
    return-void
.end method
