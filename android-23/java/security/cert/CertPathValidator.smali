.class public Ljava/security/cert/CertPathValidator;
.super Ljava/lang/Object;
.source "CertPathValidator.java"


# static fields
.field private static final DEFAULT_PROPERTY:Ljava/lang/String; = "PKIX"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final PROPERTY_NAME:Ljava/lang/String; = "certpathvalidator.type"

.field private static final SERVICE:Ljava/lang/String; = "CertPathValidator"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertPathValidatorSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "CertPathValidator"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/cert/CertPathValidator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "validatorSpi"    # Ljava/security/cert/CertPathValidatorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p2, p0, Ljava/security/cert/CertPathValidator;->provider:Ljava/security/Provider;

    #@5
    .line 68
    iput-object p3, p0, Ljava/security/cert/CertPathValidator;->algorithm:Ljava/lang/String;

    #@7
    .line 69
    iput-object p1, p0, Ljava/security/cert/CertPathValidator;->spiImpl:Ljava/security/cert/CertPathValidatorSpi;

    #@9
    .line 66
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 203
    const-string/jumbo v1, "certpathvalidator.type"

    #@3
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 204
    .local v0, "defaultType":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .end local v0    # "defaultType":Ljava/lang/String;
    :goto_0
    return-object v0

    #@a
    .restart local v0    # "defaultType":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "PKIX"

    #@d
    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
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
    .line 103
    if-nez p0, :cond_0

    #@3
    .line 104
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "algorithm == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 106
    :cond_0
    sget-object v1, Ljava/security/cert/CertPathValidator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v0

    #@12
    .line 107
    .local v0, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v2, Ljava/security/cert/CertPathValidator;

    #@14
    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v1, Ljava/security/cert/CertPathValidatorSpi;

    #@18
    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v2, v1, v3, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@1d
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    .locals 2
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
    .line 131
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v1

    #@e
    .line 134
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@11
    move-result-object v0

    #@12
    .line 135
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@14
    .line 136
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@16
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 138
    :cond_2
    invoke-static {p0, v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathValidator;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathValidator;
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
    .line 160
    if-nez p1, :cond_0

    #@3
    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "provider == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 163
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 164
    new-instance v1, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v2, "algorithm == null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 166
    :cond_1
    sget-object v1, Ljava/security/cert/CertPathValidator;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 167
    .local v0, "spi":Ljava/lang/Object;
    new-instance v1, Ljava/security/cert/CertPathValidator;

    #@1f
    check-cast v0, Ljava/security/cert/CertPathValidatorSpi;

    #@21
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-direct {v1, v0, p1, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@24
    return-object v1
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 1
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->spiImpl:Ljava/security/cert/CertPathValidatorSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/cert/CertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
