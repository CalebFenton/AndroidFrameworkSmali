.class public abstract Ljava/security/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyPairGenerator$Delegate;
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    #@3
    .line 163
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    #@5
    .line 162
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 9
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    const-string/jumbo v6, "KeyPairGenerator"

    #@3
    invoke-static {v6, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@6
    move-result-object v3

    #@7
    .line 223
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v5

    #@b
    .line 224
    .local v5, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v6

    #@f
    if-nez v6, :cond_0

    #@11
    .line 225
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    #@13
    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    const-string/jumbo v8, " KeyPairGenerator not available"

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    .line 225
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v6

    #@2b
    .line 229
    :cond_0
    const/4 v1, 0x0

    #@2c
    .line 231
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Ljava/security/Provider$Service;

    #@32
    .line 234
    .local v4, "s":Ljava/security/Provider$Service;
    :try_start_0
    const-class v6, Ljava/security/KeyPairGeneratorSpi;

    #@34
    invoke-static {v4, v6}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    #@37
    move-result-object v2

    #@38
    .line 235
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    iget-object v6, v2, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@3a
    instance-of v6, v6, Ljava/security/KeyPairGenerator;

    #@3c
    if-eqz v6, :cond_2

    #@3e
    .line 236
    invoke-static {v2, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@41
    move-result-object v6

    #@42
    return-object v6

    #@43
    .line 238
    :cond_2
    new-instance v6, Ljava/security/KeyPairGenerator$Delegate;

    #@45
    invoke-direct {v6, v2, v5, p0}, Ljava/security/KeyPairGenerator$Delegate;-><init>(Lsun/security/jca/GetInstance$Instance;Ljava/util/Iterator;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    return-object v6

    #@49
    .line 240
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    #@4a
    .line 241
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    if-nez v1, :cond_3

    #@4c
    .line 242
    move-object v1, v0

    #@4d
    .line 245
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v6

    #@51
    if-nez v6, :cond_1

    #@53
    .line 246
    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
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
    .line 286
    const-string/jumbo v1, "KeyPairGenerator"

    #@3
    .line 287
    const-class v2, Ljava/security/KeyPairGeneratorSpi;

    #@5
    .line 286
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 288
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;
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
    .line 322
    const-string/jumbo v1, "KeyPairGenerator"

    #@3
    .line 323
    const-class v2, Ljava/security/KeyPairGeneratorSpi;

    #@5
    .line 322
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v0

    #@9
    .line 324
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method private static getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 3
    .param p0, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@2
    instance-of v2, v2, Ljava/security/KeyPairGenerator;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 183
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@8
    check-cast v0, Ljava/security/KeyPairGenerator;

    #@a
    .line 188
    .local v0, "kpg":Ljava/security/KeyPairGenerator;
    :goto_0
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@c
    iput-object v2, v0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    #@e
    .line 189
    return-object v0

    #@f
    .line 185
    .end local v0    # "kpg":Ljava/security/KeyPairGenerator;
    :cond_0
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@11
    check-cast v1, Ljava/security/KeyPairGeneratorSpi;

    #@13
    .line 186
    .local v1, "spi":Ljava/security/KeyPairGeneratorSpi;
    new-instance v0, Ljava/security/KeyPairGenerator$Delegate;

    #@15
    invoke-direct {v0, v1, p1}, Ljava/security/KeyPairGenerator$Delegate;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/lang/String;)V

    #@18
    .restart local v0    # "kpg":Ljava/security/KeyPairGenerator;
    goto :goto_0
.end method


# virtual methods
.method disableFailover()V
    .locals 0

    #@0
    .prologue
    .line 337
    return-void
.end method

.method public final genKeyPair()Ljava/security/KeyPair;
    .locals 1

    #@0
    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 1

    #@0
    .prologue
    .line 508
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->disableFailover()V

    #@3
    .line 334
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    #@5
    return-object v0
.end method

.method public initialize(I)V
    .locals 1
    .param p1, "keysize"    # I

    #@0
    .prologue
    .line 358
    invoke-static {}, Lsun/security/jca/JCAUtil;->getSecureRandom()Ljava/security/SecureRandom;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    #@7
    .line 357
    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 375
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 418
    invoke-static {}, Lsun/security/jca/JCAUtil;->getSecureRandom()Ljava/security/SecureRandom;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@7
    .line 417
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    return-void
.end method
