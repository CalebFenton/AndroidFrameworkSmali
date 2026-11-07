.class public Ljava/security/AlgorithmParameterGenerator;
.super Ljava/lang/Object;
.source "AlgorithmParameterGenerator.java"


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

.field private greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "paramGenSpi"    # Ljava/security/AlgorithmParameterGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    .line 137
    iput-object p2, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    .line 138
    iput-object p3, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 182
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_d

    .line 183
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    :cond_d
    :try_start_d
    const-string v0, "AlgorithmParameterGenerator"

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameterGenerator;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParameterGeneratorSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_26} :catch_27

    return-object v1

    .line 193
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_27
    move-exception v0

    .line 194
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 239
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_d

    .line 240
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    :cond_d
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 244
    const-string v0, "AlgorithmParameterGenerator"

    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameterGenerator;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParameterGeneratorSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 243
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 289
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_d

    .line 290
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    :cond_d
    if-eqz p1, :cond_25

    .line 294
    const-string v0, "AlgorithmParameterGenerator"

    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 297
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameterGenerator;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParameterGeneratorSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 293
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api generateParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 379
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineGenerateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 308
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api init(I)V
    .registers 4
    .param p1, "size"    # I

    .line 323
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 324
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/SecureRandom;)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 334
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 335
    return-void
.end method

.method public final whitelist test-api init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 355
    return-void
.end method

.method public final whitelist test-api init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 371
    return-void
.end method
