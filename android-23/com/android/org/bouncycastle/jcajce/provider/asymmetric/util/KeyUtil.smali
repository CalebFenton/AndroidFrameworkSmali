.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getEncodedPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B
    .locals 2
    .param p0, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@0
    .prologue
    .line 65
    :try_start_0
    const-string/jumbo v1, "DER"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 68
    :catch_0
    move-exception v0

    #@9
    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@a
    return-object v1
.end method

.method public static getEncodedPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .param p0, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "privKey"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 51
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@2
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    .line 53
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v2

    #@d
    return-object v2

    #@e
    .line 56
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v0

    #@f
    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@10
    return-object v2
.end method

.method public static getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 2
    .param p0, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "keyData"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 15
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 18
    :catch_0
    move-exception v0

    #@b
    .line 19
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method public static getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)[B
    .locals 2
    .param p0, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "keyData"    # [B

    #@0
    .prologue
    .line 27
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    #@5
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 30
    :catch_0
    move-exception v0

    #@b
    .line 31
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method public static getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 2
    .param p0, "info"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    .line 39
    :try_start_0
    const-string/jumbo v1, "DER"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 42
    :catch_0
    move-exception v0

    #@9
    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@a
    return-object v1
.end method
