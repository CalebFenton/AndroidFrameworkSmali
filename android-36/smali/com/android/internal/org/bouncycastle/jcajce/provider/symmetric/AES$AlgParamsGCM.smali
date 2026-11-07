.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsGCM"
.end annotation


# instance fields
.field private blacklist gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 716
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 769
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 766
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 724
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 726
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    goto :goto_28

    .line 728
    :cond_d
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_29

    .line 730
    new-instance v0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;-><init>([BI)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    .line 736
    :goto_28
    return-void

    .line 734
    :cond_29
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 3
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    .line 742
    return-void
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 5
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 752
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    .line 753
    return-void

    .line 749
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 774
    const-string v0, "GCM"

    return-object v0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 780
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_50

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_50

    .line 788
    :cond_b
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-ne p1, v0, :cond_23

    .line 790
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0

    .line 792
    :cond_23
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_33

    .line 794
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 797
    :cond_33
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_50
    :goto_50
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecExtractable()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 784
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmSpec(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 786
    :cond_61
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0
.end method
