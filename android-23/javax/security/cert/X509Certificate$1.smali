.class final Ljavax/security/cert/X509Certificate$1;
.super Ljavax/security/cert/X509Certificate;
.source "X509Certificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cert:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "val$cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public checkValidity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    :try_start_0
    iget-object v2, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 137
    return-void

    #@6
    .line 142
    :catch_0
    move-exception v0

    #@7
    .line 143
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v2, Ljavax/security/cert/CertificateExpiredException;

    #@9
    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 140
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v1

    #@12
    .line 141
    .local v1, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v2, Ljavax/security/cert/CertificateNotYetValidException;

    #@14
    invoke-virtual {v1}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    :try_start_0
    iget-object v2, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v2, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 149
    return-void

    #@6
    .line 154
    :catch_0
    move-exception v0

    #@7
    .line 155
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v2, Ljavax/security/cert/CertificateExpiredException;

    #@9
    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 152
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v1

    #@12
    .line 153
    .local v1, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v2, Ljavax/security/cert/CertificateNotYetValidException;

    #@14
    invoke-virtual {v1}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 102
    :catch_0
    move-exception v0

    #@8
    .line 103
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljavax/security/cert/CertificateEncodingException;

    #@a
    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

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
    .line 176
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

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
    .line 133
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

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
    .line 164
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

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
    .line 184
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

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
    .line 188
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

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
    .line 192
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 160
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v1, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 109
    return-void

    #@6
    .line 112
    :catch_0
    move-exception v0

    #@7
    .line 113
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    #@9
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$1;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {v1, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 120
    return-void

    #@6
    .line 123
    :catch_0
    move-exception v0

    #@7
    .line 124
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    #@9
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method
