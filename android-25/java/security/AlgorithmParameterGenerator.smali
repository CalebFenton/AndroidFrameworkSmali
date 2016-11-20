.class public Ljava/security/AlgorithmParameterGenerator;
.super Ljava/lang/Object;
.source "AlgorithmParameterGenerator.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramGenSpi"    # Ljava/security/AlgorithmParameterGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    iput-object p1, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@5
    .line 137
    iput-object p2, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    #@7
    .line 138
    iput-object p3, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    #@9
    .line 135
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    :try_start_0
    const-string/jumbo v3, "AlgorithmParameterGenerator"

    #@3
    .line 184
    const/4 v2, 0x0

    #@4
    nop

    #@5
    nop

    #@6
    .line 182
    invoke-static {p0, v3, v2}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 185
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v4, Ljava/security/AlgorithmParameterGenerator;

    #@c
    .line 186
    const/4 v2, 0x0

    #@d
    aget-object v2, v1, v2

    #@f
    check-cast v2, Ljava/security/AlgorithmParameterGeneratorSpi;

    #@11
    .line 187
    const/4 v3, 0x1

    #@12
    aget-object v3, v1, v3

    #@14
    check-cast v3, Ljava/security/Provider;

    #@16
    .line 185
    invoke-direct {v4, v2, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    return-object v4

    #@1a
    .line 189
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@1b
    .line 190
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, " not found"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 233
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 234
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "missing provider"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 236
    :cond_1
    const-string/jumbo v1, "AlgorithmParameterGenerator"

    #@15
    .line 235
    invoke-static {p0, v1, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    .line 238
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v3, Ljava/security/AlgorithmParameterGenerator;

    #@1b
    .line 239
    aget-object v1, v0, v2

    #@1d
    check-cast v1, Ljava/security/AlgorithmParameterGeneratorSpi;

    #@1f
    const/4 v2, 0x1

    #@20
    aget-object v2, v0, v2

    #@22
    check-cast v2, Ljava/security/Provider;

    #@24
    .line 238
    invoke-direct {v3, v1, v2, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@27
    return-object v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    if-nez p1, :cond_0

    #@2
    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "missing provider"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 280
    :cond_0
    const-string/jumbo v1, "AlgorithmParameterGenerator"

    #@e
    .line 279
    invoke-static {p0, v1, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 282
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v3, Ljava/security/AlgorithmParameterGenerator;

    #@14
    .line 283
    const/4 v1, 0x0

    #@15
    aget-object v1, v0, v1

    #@17
    check-cast v1, Ljava/security/AlgorithmParameterGeneratorSpi;

    #@19
    const/4 v2, 0x1

    #@1a
    aget-object v2, v0, v2

    #@1c
    check-cast v2, Ljava/security/Provider;

    #@1e
    .line 282
    invoke-direct {v3, v1, v2, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@21
    return-object v3
.end method


# virtual methods
.method public final generateParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineGenerateParameters()Ljava/security/AlgorithmParameters;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final init(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    new-instance v1, Ljava/security/SecureRandom;

    #@4
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@a
    .line 307
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    #@5
    .line 318
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    new-instance v1, Ljava/security/SecureRandom;

    #@4
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@a
    .line 338
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5
    .line 354
    return-void
.end method
