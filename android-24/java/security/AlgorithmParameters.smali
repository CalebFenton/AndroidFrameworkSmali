.class public Ljava/security/AlgorithmParameters;
.super Ljava/lang/Object;
.source "AlgorithmParameters.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private initialized:Z

.field private paramSpi:Ljava/security/AlgorithmParametersSpi;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "paramSpi"    # Ljava/security/AlgorithmParametersSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@6
    .line 144
    iput-object p1, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    #@8
    .line 145
    iput-object p2, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    #@a
    .line 146
    iput-object p3, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    #@c
    .line 142
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    :try_start_0
    const-string/jumbo v3, "AlgorithmParameters"

    #@3
    .line 192
    const/4 v2, 0x0

    #@4
    check-cast v2, Ljava/lang/String;

    #@6
    .line 191
    invoke-static {p0, v3, v2}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 193
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v4, Ljava/security/AlgorithmParameters;

    #@c
    const/4 v2, 0x0

    #@d
    aget-object v2, v1, v2

    #@f
    check-cast v2, Ljava/security/AlgorithmParametersSpi;

    #@11
    .line 194
    const/4 v3, 0x1

    #@12
    aget-object v3, v1, v3

    #@14
    check-cast v3, Ljava/security/Provider;

    #@16
    .line 193
    invoke-direct {v4, v2, v3, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    return-object v4

    #@1a
    .line 196
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@1b
    .line 197
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

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
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
    .line 242
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 243
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "missing provider"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 244
    :cond_1
    const-string/jumbo v1, "AlgorithmParameters"

    #@15
    invoke-static {p0, v1, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    .line 246
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v3, Ljava/security/AlgorithmParameters;

    #@1b
    aget-object v1, v0, v2

    #@1d
    check-cast v1, Ljava/security/AlgorithmParametersSpi;

    #@1f
    .line 247
    const/4 v2, 0x1

    #@20
    aget-object v2, v0, v2

    #@22
    check-cast v2, Ljava/security/Provider;

    #@24
    .line 246
    invoke-direct {v3, v1, v2, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@27
    return-object v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
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
    .line 287
    if-nez p1, :cond_0

    #@2
    .line 288
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "missing provider"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 289
    :cond_0
    const-string/jumbo v1, "AlgorithmParameters"

    #@e
    invoke-static {p0, v1, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 291
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v3, Ljava/security/AlgorithmParameters;

    #@14
    const/4 v1, 0x0

    #@15
    aget-object v1, v0, v1

    #@17
    check-cast v1, Ljava/security/AlgorithmParametersSpi;

    #@19
    .line 292
    const/4 v2, 0x1

    #@1a
    aget-object v2, v0, v2

    #@1c
    check-cast v2, Ljava/security/Provider;

    #@1e
    .line 291
    invoke-direct {v3, v1, v2, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@21
    return-object v3
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 404
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 406
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineGetEncoded()[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final getEncoded(Ljava/lang/String;)[B
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 425
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 426
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 428
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineGetEncoded(Ljava/lang/String;)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    .local p1, "paramSpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 386
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 388
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 319
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "already initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 320
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@12
    .line 321
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@15
    .line 316
    return-void
.end method

.method public final init([B)V
    .locals 2
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 336
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 337
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "already initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 338
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit([B)V

    #@12
    .line 339
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@15
    .line 335
    return-void
.end method

.method public final init([BLjava/lang/String;)V
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
    .line 358
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 359
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "already initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 360
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParametersSpi;->engineInit([BLjava/lang/String;)V

    #@12
    .line 361
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@15
    .line 357
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 438
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 439
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 441
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    #@8
    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineToString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
