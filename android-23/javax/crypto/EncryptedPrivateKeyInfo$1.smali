.class final Ljavax/crypto/EncryptedPrivateKeyInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EncryptedPrivateKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/EncryptedPrivateKeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 494
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 495
    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    move-object v2, p1

    #@1
    .line 500
    check-cast v2, Ljavax/crypto/EncryptedPrivateKeyInfo;

    #@3
    .line 503
    .local v2, "epki":Ljavax/crypto/EncryptedPrivateKeyInfo;
    :try_start_0
    invoke-static {v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->-get0(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;

    #@6
    move-result-object v3

    #@7
    if-nez v3, :cond_0

    #@9
    invoke-static {}, Ljavax/crypto/EncryptedPrivateKeyInfo;->-get2()[B

    #@c
    move-result-object v0

    #@d
    .line 505
    .local v0, "algParmsEncoded":[B
    :goto_0
    new-instance v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@f
    invoke-static {v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->-get3(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-direct {v3, v4, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, p2, v4

    #@19
    .line 506
    invoke-static {v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->-get1(Ljavax/crypto/EncryptedPrivateKeyInfo;)[B

    #@1c
    move-result-object v3

    #@1d
    const/4 v4, 0x1

    #@1e
    aput-object v3, p2, v4

    #@20
    .line 498
    return-void

    #@21
    .line 504
    .end local v0    # "algParmsEncoded":[B
    :cond_0
    invoke-static {v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->-get0(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-object v0

    #@29
    .restart local v0    # "algParmsEncoded":[B
    goto :goto_0

    #@2a
    .line 507
    .end local v0    # "algParmsEncoded":[B
    :catch_0
    move-exception v1

    #@2b
    .line 508
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@2d
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3
.end method
