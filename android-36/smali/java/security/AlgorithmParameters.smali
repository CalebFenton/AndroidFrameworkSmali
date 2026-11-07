.class public Ljava/security/AlgorithmParameters;
.super Ljava/lang/Object;
.source "AlgorithmParameters.java"


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o initialized:Z

.field private greylist-max-o paramSpi:Ljava/security/AlgorithmParametersSpi;

.field private greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "paramSpi"    # Ljava/security/AlgorithmParametersSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    .line 193
    iput-object p1, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    .line 194
    iput-object p2, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    .line 195
    iput-object p3, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 240
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_d

    .line 241
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    :cond_d
    :try_start_d
    const-string v0, "AlgorithmParameters"

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameters;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParametersSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_26} :catch_27

    return-object v1

    .line 249
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_27
    move-exception v0

    .line 250
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

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 296
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_d

    .line 297
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    :cond_d
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 302
    const-string v0, "AlgorithmParameters"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 305
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameters;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParametersSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 300
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 348
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_d

    .line 349
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 351
    :cond_d
    if-eqz p1, :cond_28

    .line 354
    const-string v0, "AlgorithmParameters"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameters;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/AlgorithmParametersSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 352
    .end local v0    # "objs":[Ljava/lang/Object;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getEncoded()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_b

    .line 473
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 471
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getEncoded(Ljava/lang/String;)[B
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_b

    .line 495
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 493
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 452
    .local p1, "paramSpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_b

    .line 455
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 453
    :cond_b
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 368
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 384
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_d

    .line 386
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    .line 388
    return-void

    .line 385
    :cond_d
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "already initialized"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api init([B)V
    .registers 4
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_d

    .line 404
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit([B)V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    .line 406
    return-void

    .line 403
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "already initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api init([BLjava/lang/String;)V
    .registers 5
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_d

    .line 426
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParametersSpi;->engineInit([BLjava/lang/String;)V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    .line 428
    return-void

    .line 425
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "already initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 505
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_6

    .line 506
    const/4 v0, 0x0

    return-object v0

    .line 508
    :cond_6
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
