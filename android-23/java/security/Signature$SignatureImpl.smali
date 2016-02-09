.class Ljava/security/Signature$SignatureImpl;
.super Ljava/security/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignatureImpl"
.end annotation


# instance fields
.field private final initLock:Ljava/lang/Object;

.field private final specifiedProvider:Ljava/security/Provider;

.field private spiImpl:Ljava/security/SignatureSpi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 670
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    #@3
    .line 662
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Ljava/security/Signature$SignatureImpl;->initLock:Ljava/lang/Object;

    #@a
    .line 671
    iput-object p2, p0, Ljava/security/Signature$SignatureImpl;->specifiedProvider:Ljava/security/Provider;

    #@c
    .line 669
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/security/Provider;Ljava/security/SignatureSpi;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "spi"    # Ljava/security/SignatureSpi;

    #@0
    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    #@3
    .line 676
    iput-object p3, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    #@5
    .line 674
    return-void
.end method

.method private getSpi()Ljava/security/SignatureSpi;
    .locals 3

    #@0
    .prologue
    .line 766
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-direct {p0, v1}, Ljava/security/Signature$SignatureImpl;->getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 767
    :catch_0
    move-exception v0

    #@7
    .line 768
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "InvalidKeyException thrown when key == null"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method private getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 744
    iget-object v2, p0, Ljava/security/Signature$SignatureImpl;->initLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 745
    :try_start_0
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    #@5
    if-eqz v1, :cond_0

    #@7
    if-nez p1, :cond_0

    #@9
    .line 746
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v2

    #@c
    return-object v1

    #@d
    .line 749
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->specifiedProvider:Ljava/security/Provider;

    #@f
    iget-object v3, p0, Ljava/security/Signature$SignatureImpl;->algorithm:Ljava/lang/String;

    #@11
    invoke-static {p1, v1, v3}, Ljava/security/Signature;->-wrap0(Ljava/security/Key;Ljava/security/Provider;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@14
    move-result-object v0

    #@15
    .line 750
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    if-nez v0, :cond_1

    #@17
    .line 751
    new-instance v1, Ljava/security/ProviderException;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "No provider for "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getAlgorithm()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 744
    .end local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1

    #@38
    .line 754
    .restart local v0    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :cond_1
    :try_start_2
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@3a
    check-cast v1, Ljava/security/SignatureSpi;

    #@3c
    iput-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    #@3e
    .line 755
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@40
    iput-object v1, p0, Ljava/security/Signature$SignatureImpl;->provider:Ljava/security/Provider;

    #@42
    .line 757
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    monitor-exit v2

    #@45
    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 733
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;

    #@6
    invoke-virtual {v1}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/security/SignatureSpi;

    #@c
    .line 734
    :goto_0
    new-instance v1, Ljava/security/Signature$SignatureImpl;

    #@e
    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getAlgorithm()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p0}, Ljava/security/Signature$SignatureImpl;->getProvider()Ljava/security/Provider;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v1, v2, v3, v0}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/lang/String;Ljava/security/Provider;Ljava/security/SignatureSpi;)V

    #@19
    return-object v1

    #@1a
    .line 733
    :cond_0
    const/4 v0, 0x0

    #@1b
    .local v0, "spi":Ljava/security/SignatureSpi;
    goto :goto_0
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 716
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "arg0"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 706
    invoke-direct {p0, p1}, Ljava/security/Signature$SignatureImpl;->getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    #@7
    .line 705
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "arg0"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 711
    invoke-direct {p0, p1}, Ljava/security/Signature$SignatureImpl;->getSpi(Ljava/security/Key;)Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    #@7
    .line 710
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 722
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    #@7
    .line 721
    return-void
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "arg0"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 728
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@7
    .line 727
    return-void
.end method

.method protected engineSign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineSign()[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "arg0"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 691
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(B)V

    #@7
    .line 690
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 701
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    #@7
    .line 700
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .param p1, "arg0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 696
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method ensureProviderChosen()V
    .locals 0

    #@0
    .prologue
    .line 681
    invoke-direct {p0}, Ljava/security/Signature$SignatureImpl;->getSpi()Ljava/security/SignatureSpi;

    #@3
    .line 680
    return-void
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .locals 2

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Ljava/security/Signature$SignatureImpl;->initLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 775
    :try_start_0
    iget-object v1, p0, Ljava/security/Signature$SignatureImpl;->spiImpl:Ljava/security/SignatureSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 774
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method
