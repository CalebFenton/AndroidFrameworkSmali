.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    #@0
    .prologue
    .line 176
    const/16 v3, 0x8

    #@2
    new-array v1, v3, [B

    #@4
    .line 178
    .local v1, "iv":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;->random:Ljava/security/SecureRandom;

    #@6
    if-nez v3, :cond_0

    #@8
    .line 180
    new-instance v3, Ljava/security/SecureRandom;

    #@a
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    #@d
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;->random:Ljava/security/SecureRandom;

    #@f
    .line 183
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;->random:Ljava/security/SecureRandom;

    #@11
    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@14
    .line 189
    :try_start_0
    const-string/jumbo v3, "DES"

    #@17
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$AlgParamGen;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@1a
    move-result-object v2

    #@1b
    .line 190
    .local v2, "params":Ljava/security/AlgorithmParameters;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    #@1d
    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@20
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 197
    return-object v2

    #@24
    .line 193
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    #@25
    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@27
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@2
    const-string/jumbo v1, "No supported AlgorithmParameterSpec for DES parameter generation."

    #@5
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
