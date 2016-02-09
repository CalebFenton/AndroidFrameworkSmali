.class public abstract Ljavax/security/cert/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 56
    if-ne p1, p0, :cond_0

    #@3
    .line 57
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 59
    :cond_0
    instance-of v2, p1, Ljavax/security/cert/Certificate;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 60
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 62
    check-cast v1, Ljavax/security/cert/Certificate;

    #@d
    .line 64
    .local v1, "object":Ljavax/security/cert/Certificate;
    :try_start_0
    invoke-virtual {p0}, Ljavax/security/cert/Certificate;->getEncoded()[B

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1}, Ljavax/security/cert/Certificate;->getEncoded()[B

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 65
    :catch_0
    move-exception v0

    #@1b
    .line 66
    .local v0, "e":Ljavax/security/cert/CertificateEncodingException;
    return v4
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 79
    const/4 v3, 0x0

    #@1
    .line 81
    .local v3, "res":I
    :try_start_0
    invoke-virtual {p0}, Ljavax/security/cert/Certificate;->getEncoded()[B

    #@4
    move-result-object v0

    #@5
    .line 82
    .local v0, "array":[B
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@7
    if-ge v2, v4, :cond_0

    #@9
    .line 83
    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    add-int/2addr v3, v4

    #@c
    .line 82
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 85
    .end local v0    # "array":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@10
    .line 87
    :cond_0
    return v3
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method
