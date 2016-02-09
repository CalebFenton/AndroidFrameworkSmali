.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsGCM"
.end annotation


# instance fields
.field private gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getEncoded()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 551
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "unknown format specified"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@11
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getEncoded()[B

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->-get0()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 511
    :try_start_0
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->-get0()Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    const-string/jumbo v4, "getTLen"

    #@d
    const/4 v5, 0x0

    #@e
    new-array v5, v5, [Ljava/lang/Class;

    #@10
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@13
    move-result-object v2

    #@14
    .line 512
    .local v2, "tLen":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->-get0()Ljava/lang/Class;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, "getIV"

    #@1b
    const/4 v5, 0x0

    #@1c
    new-array v5, v5, [Ljava/lang/Class;

    #@1e
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@21
    move-result-object v1

    #@22
    .line 514
    .local v1, "iv":Ljava/lang/reflect/Method;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@24
    const/4 v3, 0x0

    #@25
    new-array v3, v3, [Ljava/lang/Object;

    #@27
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, [B

    #@2d
    const/4 v4, 0x0

    #@2e
    new-array v4, v4, [Ljava/lang/Object;

    #@30
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Ljava/lang/Integer;

    #@36
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@39
    move-result v4

    #@3a
    div-int/lit8 v4, v4, 0x8

    #@3c
    invoke-direct {v5, v3, v4}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V

    #@3f
    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 505
    .end local v1    # "iv":Ljava/lang/reflect/Method;
    .end local v2    # "tLen":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    #@42
    .line 517
    :catch_0
    move-exception v0

    #@43
    .line 518
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidParameterSpecException;

    #@45
    const-string/jumbo v4, "Cannot process GCMParameterSpec."

    #@48
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v3
.end method

.method protected engineInit([B)V
    .locals 1
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 526
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@6
    .line 524
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 2
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 534
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "unknown format specified"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 537
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@15
    .line 530
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 559
    const-string/jumbo v0, "GCM"

    #@3
    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 7
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 565
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->-get0()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 569
    :try_start_0
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;->-get0()Ljava/lang/Class;

    #@9
    move-result-object v3

    #@a
    const/4 v4, 0x2

    #@b
    new-array v4, v4, [Ljava/lang/Class;

    #@d
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@f
    const/4 v6, 0x0

    #@10
    aput-object v5, v4, v6

    #@12
    const-class v5, [B

    #@14
    const/4 v6, 0x1

    #@15
    aput-object v5, v4, v6

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@1a
    move-result-object v0

    #@1b
    .line 571
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x2

    #@1c
    new-array v3, v3, [Ljava/lang/Object;

    #@1e
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@20
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getIcvLen()I

    #@23
    move-result v4

    #@24
    mul-int/lit8 v4, v4, 0x8

    #@26
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v4

    #@2a
    const/4 v5, 0x0

    #@2b
    aput-object v4, v3, v5

    #@2d
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@2f
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    #@32
    move-result-object v4

    #@33
    const/4 v5, 0x1

    #@34
    aput-object v4, v3, v5

    #@36
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    return-object v3

    #@3d
    .line 578
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v1

    #@3e
    .line 579
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidParameterSpecException;

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v5, "construction failed: "

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3

    #@5c
    .line 574
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@5d
    .line 575
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/security/spec/InvalidParameterSpecException;

    #@5f
    const-string/jumbo v4, "no constructor found!"

    #@62
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@65
    throw v3

    #@66
    .line 583
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    new-instance v3, Ljava/security/spec/InvalidParameterSpecException;

    #@68
    new-instance v4, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v5, "unknown parameter spec: "

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@83
    throw v3
.end method
