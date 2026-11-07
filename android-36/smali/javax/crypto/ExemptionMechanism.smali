.class public Ljavax/crypto/ExemptionMechanism;
.super Ljava/lang/Object;
.source "ExemptionMechanism.java"


# instance fields
.field private greylist-max-o done:Z

.field private greylist-max-o exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

.field private greylist-max-o initialized:Z

.field private greylist-max-o keyStored:Ljava/security/Key;

.field private greylist-max-o mechanism:Ljava/lang/String;

.field private greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "exmechSpi"    # Ljavax/crypto/ExemptionMechanismSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "mechanism"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    .line 67
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    .line 82
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    .line 83
    iput-object p2, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    .line 84
    iput-object p3, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 136
    const-string v0, "ExemptionMechanism"

    const-class v1, Ljavax/crypto/ExemptionMechanismSpi;

    invoke-static {v0, v1, p0}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 138
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/ExemptionMechanism;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/ExemptionMechanismSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 184
    const-string v0, "ExemptionMechanism"

    const-class v1, Ljavax/crypto/ExemptionMechanismSpi;

    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 186
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/ExemptionMechanism;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/ExemptionMechanismSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 224
    const-string v0, "ExemptionMechanism"

    const-class v1, Ljavax/crypto/ExemptionMechanismSpi;

    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 226
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/ExemptionMechanism;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/ExemptionMechanismSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final whitelist test-api genExemptionBlob([B)I
    .registers 4
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .line 433
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    if-eqz v0, :cond_f

    .line 437
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    move-result v0

    .line 438
    .local v0, "n":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    .line 439
    return v0

    .line 434
    .end local v0    # "n":I
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExemptionMechanism not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api genExemptionBlob([BI)I
    .registers 5
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .line 469
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    if-eqz v0, :cond_e

    .line 473
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    move-result v0

    .line 474
    .local v0, "n":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    .line 475
    return v0

    .line 470
    .end local v0    # "n":I
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExemptionMechanism not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api genExemptionBlob()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    if-eqz v0, :cond_e

    .line 404
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob()[B

    move-result-object v0

    .line 405
    .local v0, "blob":[B
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    .line 406
    return-object v0

    .line 401
    .end local v0    # "blob":[B
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExemptionMechanism not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getOutputSize(I)I
    .registers 4
    .param p1, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 286
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    if-eqz v0, :cond_15

    .line 290
    if-ltz p1, :cond_d

    .line 294
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0

    .line 291
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input size must be equal to or greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExemptionMechanism not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 236
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api init(Ljava/security/Key;)V
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    .line 317
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    .line 319
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    .line 320
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    .line 322
    return-void
.end method

.method public final whitelist test-api init(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    .line 381
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    .line 383
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    .line 384
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    .line 386
    return-void
.end method

.method public final whitelist test-api init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    .line 349
    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    .line 351
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    .line 352
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    .line 354
    return-void
.end method

.method public final whitelist test-api isCryptoAllowed(Ljava/security/Key;)Z
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "ret":Z
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    if-eqz v1, :cond_d

    if-eqz p1, :cond_d

    .line 263
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 265
    :cond_d
    return v0
.end method
