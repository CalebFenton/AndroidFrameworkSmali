.class Ljavax/crypto/Cipher$SpiAndProviderUpdater;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpiAndProviderUpdater"
.end annotation


# instance fields
.field private final initSpiLock:Ljava/lang/Object;

.field private final specifiedProvider:Ljava/security/Provider;

.field private final specifiedSpi:Ljavax/crypto/CipherSpi;

.field final synthetic this$0:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V
    .locals 1
    .param p1, "this$0"    # Ljavax/crypto/Cipher;
    .param p2, "specifiedProvider"    # Ljava/security/Provider;
    .param p3, "specifiedSpi"    # Ljavax/crypto/CipherSpi;

    #@0
    .prologue
    .line 2755
    iput-object p1, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2743
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    #@c
    .line 2756
    iput-object p2, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedProvider:Ljava/security/Provider;

    #@e
    .line 2757
    iput-object p3, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@10
    .line 2755
    return-void
.end method


# virtual methods
.method getCurrentSpi(Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;
    .locals 1
    .param p1, "spiImpl"    # Ljavax/crypto/CipherSpi;

    #@0
    .prologue
    .line 2812
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2813
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@6
    return-object v0

    #@7
    .line 2816
    :cond_0
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    #@9
    monitor-enter v0

    #@a
    monitor-exit v0

    #@b
    .line 2817
    return-object p1
.end method

.method setCipherSpiImplAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    .locals 1
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 2761
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    #@2
    invoke-static {v0, p1}, Ljavax/crypto/Cipher;->-set1(Ljavax/crypto/Cipher;Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;

    #@5
    .line 2762
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    #@7
    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->-set0(Ljavax/crypto/Cipher;Ljava/security/Provider;)Ljava/security/Provider;

    #@a
    .line 2760
    return-void
.end method

.method updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 5
    .param p1, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p2, "spiImpl"    # Ljavax/crypto/CipherSpi;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 2779
    iget-object v1, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2780
    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    #@6
    iget-object v2, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    #@8
    invoke-direct {v1, v2, p3}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    #@b
    return-object v1

    #@c
    .line 2782
    :cond_0
    iget-object v2, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 2786
    if-eqz p2, :cond_1

    #@11
    if-nez p1, :cond_1

    #@13
    .line 2787
    :try_start_0
    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    #@15
    invoke-direct {v1, p2, p3}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    return-object v1

    #@1a
    .line 2790
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedProvider:Ljava/security/Provider;

    #@1c
    iget-object v3, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    #@1e
    invoke-static {v3}, Ljavax/crypto/Cipher;->-get0(Ljavax/crypto/Cipher;)[Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 2789
    invoke-static {p1, v1, v3}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    #@25
    move-result-object v0

    #@26
    .line 2791
    .local v0, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-nez v0, :cond_2

    #@28
    .line 2792
    new-instance v1, Ljava/security/ProviderException;

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "No provider found for "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 2793
    iget-object v4, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    #@38
    invoke-static {v4}, Ljavax/crypto/Cipher;->-get0(Ljavax/crypto/Cipher;)[Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 2792
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-direct {v1, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    .line 2782
    .end local v0    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1

    #@4f
    .line 2795
    .restart local v0    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_2
    :try_start_2
    iget-object v1, v0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    #@51
    iget-object v3, v0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    #@53
    invoke-virtual {p0, v1, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->setCipherSpiImplAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    #@56
    .line 2796
    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    #@58
    iget-object v3, v0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    #@5a
    iget-object v4, v0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    #@5c
    invoke-direct {v1, v3, v4}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    monitor-exit v2

    #@60
    return-object v1
.end method

.method updateAndGetSpiAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .locals 3
    .param p1, "spiImpl"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 2805
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v1

    #@5
    return-object v1

    #@6
    .line 2806
    :catch_0
    move-exception v0

    #@7
    .line 2807
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/ProviderException;

    #@9
    const-string/jumbo v2, "Exception thrown when params == null"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method
