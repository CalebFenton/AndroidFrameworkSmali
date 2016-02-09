.class Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyPairGeneratorImpl"
.end annotation


# instance fields
.field private spiImpl:Ljava/security/KeyPairGeneratorSpi;


# direct methods
.method private constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPairGeneratorSpi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 260
    invoke-direct {p0, p3}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@3
    .line 261
    invoke-static {p0, p2}, Ljava/security/KeyPairGenerator;->-set0(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;

    #@6
    .line 262
    iput-object p1, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    #@8
    .line 259
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;)V
    .locals 0
    .param p1, "keyPairGeneratorSpi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    #@2
    invoke-virtual {v0}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    #@5
    .line 268
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;->spiImpl:Ljava/security/KeyPairGeneratorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@5
    .line 283
    return-void
.end method
