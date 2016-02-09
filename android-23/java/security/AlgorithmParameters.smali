.class public Ljava/security/AlgorithmParameters;
.super Ljava/lang/Object;
.source "AlgorithmParameters.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SEVICE:Ljava/lang/String; = "AlgorithmParameters"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initialized:Z

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/AlgorithmParametersSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "AlgorithmParameters"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/AlgorithmParameters;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "algPramSpi"    # Ljava/security/AlgorithmParametersSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p2, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    #@5
    .line 75
    iput-object p3, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    #@7
    .line 76
    iput-object p1, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    #@9
    .line 73
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 94
    if-nez p0, :cond_0

    #@3
    .line 95
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 97
    :cond_0
    sget-object v1, Ljava/security/AlgorithmParameters;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 98
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljava/security/AlgorithmParameters;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljava/security/AlgorithmParametersSpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 3
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
    .line 122
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 123
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "provider == null || provider.isEmpty()"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 125
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 126
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 127
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 129
    :cond_2
    invoke-static {p0, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 151
    if-nez p1, :cond_0

    #@3
    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "provider == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 154
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 155
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "algorithm == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 157
    :cond_1
    sget-object v1, Ljava/security/AlgorithmParameters;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 158
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljava/security/AlgorithmParameters;

    #@1f
    check-cast v0, Ljava/security/AlgorithmParametersSpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 176
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
    .line 270
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 271
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Parameter has not been initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 273
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

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
    .line 288
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 289
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Parameter has not been initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 291
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

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
    .line 254
    .local p1, "paramSpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 255
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "Parameter has not been initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 257
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

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
    .line 167
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
    .line 192
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 193
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "Parameter has already been initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 195
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@12
    .line 196
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@15
    .line 191
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
    .line 211
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 212
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Parameter has already been initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 214
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit([B)V

    #@12
    .line 215
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@15
    .line 210
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
    .line 231
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 232
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Parameter has already been initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 234
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    #@f
    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParametersSpi;->engineInit([BLjava/lang/String;)V

    #@12
    .line 235
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@15
    .line 230
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 302
    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 303
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 305
    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->spiImpl:Ljava/security/AlgorithmParametersSpi;

    #@8
    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineToString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
