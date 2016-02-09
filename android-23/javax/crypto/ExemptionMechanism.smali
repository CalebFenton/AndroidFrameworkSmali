.class public Ljavax/crypto/ExemptionMechanism;
.super Ljava/lang/Object;
.source "ExemptionMechanism.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private generated:Z

.field private initKey:Ljava/security/Key;

.field private isInit:Z

.field private final mechanism:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/ExemptionMechanismSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "ExemptionMechanism"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljavax/crypto/ExemptionMechanism;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 36
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "exmechSpi"    # Ljavax/crypto/ExemptionMechanismSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "mechanism"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p3, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    #@5
    .line 72
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    #@7
    .line 73
    iput-object p2, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    #@9
    .line 74
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    #@c
    .line 70
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
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
    .line 100
    if-nez p0, :cond_0

    #@3
    .line 101
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 103
    :cond_0
    sget-object v1, Ljavax/crypto/ExemptionMechanism;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 104
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljavax/crypto/ExemptionMechanismSpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
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
    .line 129
    if-nez p1, :cond_0

    #@2
    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "provider == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 132
    :cond_0
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@e
    move-result-object v0

    #@f
    .line 133
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_1

    #@11
    .line 134
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@13
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 136
    :cond_1
    if-nez p0, :cond_2

    #@19
    .line 137
    new-instance v1, Ljava/lang/NullPointerException;

    #@1b
    const-string/jumbo v2, "algorithm == null"

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 139
    :cond_2
    invoke-static {p0, v0}, Ljavax/crypto/ExemptionMechanism;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;
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
    .line 162
    if-nez p0, :cond_0

    #@3
    .line 163
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 165
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "provider == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 168
    :cond_1
    sget-object v1, Ljavax/crypto/ExemptionMechanism;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 169
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljavax/crypto/ExemptionMechanism;

    #@1f
    check-cast v0, Ljavax/crypto/ExemptionMechanismSpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 366
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 364
    return-void

    #@4
    .line 367
    :catch_0
    move-exception v0

    #@5
    .line 370
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@7
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@a
    throw v1
.end method

.method public final genExemptionBlob([B)I
    .locals 1
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljavax/crypto/ExemptionMechanism;->genExemptionBlob([BI)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final genExemptionBlob([BI)I
    .locals 3
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 356
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "ExemptionMechanism is not initialized"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 358
    :cond_0
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    #@10
    .line 359
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    #@12
    invoke-virtual {v1, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    #@15
    move-result v0

    #@16
    .line 360
    .local v0, "len":I
    const/4 v1, 0x1

    #@17
    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    #@19
    .line 361
    return v0
.end method

.method public final genExemptionBlob()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 306
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "ExemptionMechanism is not initialized"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 308
    :cond_0
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    #@10
    .line 309
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    #@12
    invoke-virtual {v1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob()[B

    #@15
    move-result-object v0

    #@16
    .line 310
    .local v0, "result":[B
    const/4 v1, 0x1

    #@17
    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    #@19
    .line 311
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2
    .param p1, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "ExemptionMechanism is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 221
    :cond_0
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    #@f
    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGetOutputSize(I)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    #@3
    .line 238
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    #@5
    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;)V

    #@8
    .line 239
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    #@a
    .line 240
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    #@d
    .line 236
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "param"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    #@3
    .line 263
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    #@5
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V

    #@8
    .line 264
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    #@a
    .line 265
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    #@d
    .line 261
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    #@3
    .line 288
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    #@5
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@8
    .line 289
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    #@a
    .line 290
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    #@d
    .line 286
    return-void
.end method

.method public final isCryptoAllowed(Ljava/security/Key;)Z
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 198
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    #@e
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    #@11
    move-result-object v0

    #@12
    .line 199
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@15
    move-result-object v1

    #@16
    .line 198
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@19
    move-result v0

    #@1a
    .line 197
    if-eqz v0, :cond_1

    #@1c
    .line 200
    :cond_0
    const/4 v0, 0x1

    #@1d
    return v0

    #@1e
    .line 202
    :cond_1
    const/4 v0, 0x0

    #@1f
    return v0
.end method
