.class public Ljavax/crypto/ExemptionMechanism;
.super Ljava/lang/Object;
.source "ExemptionMechanism.java"


# instance fields
.field private done:Z

.field private exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

.field private initialized:Z

.field private keyStored:Ljava/security/Key;

.field private mechanism:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "exmechSpi"    # Ljavax/crypto/ExemptionMechanismSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "mechanism"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 64
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    #@6
    .line 67
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@8
    .line 70
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    #@b
    .line 82
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    #@d
    .line 83
    iput-object p2, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    #@f
    .line 84
    iput-object p3, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    #@11
    .line 81
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
    .line 136
    const-string/jumbo v1, "ExemptionMechanism"

    #@3
    .line 137
    const-class v2, Ljavax/crypto/ExemptionMechanismSpi;

    #@5
    .line 136
    invoke-static {v1, v2, p0}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 138
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/ExemptionMechanismSpi;

    #@f
    .line 139
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 138
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
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
    .line 184
    const-string/jumbo v1, "ExemptionMechanism"

    #@3
    .line 185
    const-class v2, Ljavax/crypto/ExemptionMechanismSpi;

    #@5
    .line 184
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 186
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/ExemptionMechanismSpi;

    #@f
    .line 187
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 186
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;
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
    .line 224
    const-string/jumbo v1, "ExemptionMechanism"

    #@3
    .line 225
    const-class v2, Ljavax/crypto/ExemptionMechanismSpi;

    #@5
    .line 224
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 226
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    #@b
    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v1, Ljavax/crypto/ExemptionMechanismSpi;

    #@f
    .line 227
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 226
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@14
    return-object v2
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 483
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    #@3
    .line 482
    return-void
.end method

.method public final genExemptionBlob([B)I
    .locals 3
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
    .line 433
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 434
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    .line 435
    const-string/jumbo v2, "ExemptionMechanism not initialized"

    #@9
    .line 434
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 437
    :cond_0
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, p1, v2}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    #@13
    move-result v0

    #@14
    .line 438
    .local v0, "n":I
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    #@17
    .line 439
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
    .line 469
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 470
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    .line 471
    const-string/jumbo v2, "ExemptionMechanism not initialized"

    #@9
    .line 470
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 473
    :cond_0
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    #@f
    invoke-virtual {v1, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    #@12
    move-result v0

    #@13
    .line 474
    .local v0, "n":I
    const/4 v1, 0x1

    #@14
    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    #@16
    .line 475
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
    .line 400
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 401
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    .line 402
    const-string/jumbo v2, "ExemptionMechanism not initialized"

    #@9
    .line 401
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 404
    :cond_0
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    #@f
    invoke-virtual {v1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob()[B

    #@12
    move-result-object v0

    #@13
    .line 405
    .local v0, "blob":[B
    const/4 v1, 0x1

    #@14
    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    #@16
    .line 406
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
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
    .line 286
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 288
    const-string/jumbo v1, "ExemptionMechanism not initialized"

    #@9
    .line 287
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 290
    :cond_0
    if-gez p1, :cond_1

    #@f
    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 292
    const-string/jumbo v1, "Input size must be equal to or greater than zero"

    #@14
    .line 291
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 294
    :cond_1
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    #@1a
    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGetOutputSize(I)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 236
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
    const/4 v0, 0x0

    #@1
    .line 316
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    #@3
    .line 317
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@5
    .line 319
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    #@7
    .line 320
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    #@9
    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;)V

    #@c
    .line 321
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@f
    .line 315
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 380
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    #@3
    .line 381
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@5
    .line 383
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    #@7
    .line 384
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    #@9
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V

    #@c
    .line 385
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@f
    .line 379
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 348
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    #@3
    .line 349
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@5
    .line 351
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    #@7
    .line 352
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    #@9
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@c
    .line 353
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    #@f
    .line 347
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
    .line 259
    const/4 v0, 0x0

    #@1
    .line 260
    .local v0, "ret":Z
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 263
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    .line 265
    .end local v0    # "ret":Z
    :cond_0
    return v0
.end method
