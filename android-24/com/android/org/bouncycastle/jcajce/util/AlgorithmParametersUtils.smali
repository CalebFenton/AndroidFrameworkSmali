.class public Lcom/android/org/bouncycastle/jcajce/util/AlgorithmParametersUtils;
.super Ljava/lang/Object;
.source "AlgorithmParametersUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static extractParameters(Ljava/security/AlgorithmParameters;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    :try_start_0
    const-string/jumbo v2, "ASN.1"

    #@3
    invoke-virtual {p0, v2}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    #@6
    move-result-object v2

    #@7
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 45
    .local v0, "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    return-object v0

    #@c
    .line 41
    .end local v0    # "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v1

    #@d
    .line 42
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    #@10
    move-result-object v2

    #@11
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v0

    #@15
    .restart local v0    # "asn1Params":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0
.end method

.method public static loadParameters(Ljava/security/AlgorithmParameters;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .param p1, "sParams"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    :try_start_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v2, "ASN.1"

    #@b
    invoke-virtual {p0, v1, v2}, Ljava/security/AlgorithmParameters;->init([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 56
    :goto_0
    return-void

    #@f
    .line 64
    :catch_0
    move-exception v0

    #@10
    .line 65
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    #@1b
    goto :goto_0
.end method
