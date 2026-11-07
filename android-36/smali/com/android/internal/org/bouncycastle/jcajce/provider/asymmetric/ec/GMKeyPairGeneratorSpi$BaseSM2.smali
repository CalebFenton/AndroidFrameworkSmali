.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi;
.source "GMKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSM2"
.end annotation


# static fields
.field private static blacklist ecParameters:Ljava/util/Hashtable;


# instance fields
.field blacklist algorithm:Ljava/lang/String;

.field blacklist configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field blacklist ecParams:Ljava/lang/Object;

.field blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

.field blacklist initialised:Z

.field blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

.field blacklist random:Ljava/security/SecureRandom;

.field blacklist strength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParameters:Ljava/util/Hashtable;

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0xc0

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string/jumbo v3, "prime192v1"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0xef

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string/jumbo v3, "prime239v1"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x100

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string/jumbo v3, "prime256v1"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0xe0

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x180

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x209

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 75
    const-string v0, "EC"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    .line 52
    const/16 v1, 0xef

    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->strength:I

    .line 53
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->random:Ljava/security/SecureRandom;

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initialised:Z

    .line 76
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->algorithm:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    .line 52
    const/16 v0, 0xef

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->strength:I

    .line 53
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->random:Ljava/security/SecureRandom;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initialised:Z

    .line 85
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->algorithm:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 87
    return-void
.end method


# virtual methods
.method protected blacklist createKeyGenParamsBC(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    .registers 9
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .line 200
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method protected blacklist createKeyGenParamsJCE(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    .registers 8
    .param p1, "x9"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .line 226
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 228
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    return-object v1
.end method

.method protected blacklist createKeyGenParamsJCE(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    .registers 9
    .param p1, "p"    # Ljava/security/spec/ECParameterSpec;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .line 205
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_18

    .line 207
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "curveName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 210
    .local v1, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v1, :cond_18

    .line 212
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->createKeyGenParamsJCE(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v2

    return-object v2

    .line 216
    .end local v0    # "curveName":Ljava/lang/String;
    .end local v1    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_18
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 217
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 218
    .local v1, "g":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    .line 219
    .local v2, "n":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 220
    .local v3, "h":Ljava/math/BigInteger;
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 221
    .local v4, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-direct {v5, v4, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    return-object v5
.end method

.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 10

    .line 166
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initialised:Z

    if-nez v0, :cond_e

    .line 168
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->strength:I

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initialize(ILjava/security/SecureRandom;)V

    .line 171
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 172
    .local v0, "pair":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 173
    .local v1, "pub":Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 175
    .local v5, "priv":Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v2, :cond_44

    .line 177
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 179
    .local v7, "p":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v6, v2, v1, v7, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 180
    .local v6, "pubKey":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->algorithm:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v2, v6, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    .line 183
    .end local v6    # "pubKey":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    .end local v7    # "p":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_44
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    if-nez v2, :cond_60

    .line 185
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->algorithm:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v3, v4, v1, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->algorithm:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v4, v6, v5, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    .line 190
    :cond_60
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/security/spec/ECParameterSpec;

    .line 192
    .local v7, "p":Ljava/security/spec/ECParameterSpec;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v6, v2, v1, v7, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 194
    .restart local v6    # "pubKey":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->algorithm:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v2, v6, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 7
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 93
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->strength:I

    .line 94
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->random:Ljava/security/SecureRandom;

    .line 96
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    .line 97
    .local v0, "ecParams":Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;
    if-eqz v0, :cond_20

    .line 104
    :try_start_12
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_15
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_12 .. :try_end_15} :catch_17

    .line 109
    nop

    .line 110
    return-void

    .line 106
    :catch_17
    move-exception v1

    .line 108
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "key size not configurable."

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_20
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "unknown key size."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 117
    if-nez p1, :cond_1c

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 120
    .local v0, "implicitCA":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_14

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->createKeyGenParamsBC(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 127
    .end local v0    # "implicitCA":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_63

    .line 122
    .restart local v0    # "implicitCA":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_14
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "null parameter passed but no implicitCA set"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "implicitCA":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1c
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_2c

    .line 130
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    .line 131
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->createKeyGenParamsBC(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    goto :goto_63

    .line 133
    :cond_2c
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_3c

    .line 135
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    .line 136
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->createKeyGenParamsJCE(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    goto :goto_63

    .line 138
    :cond_3c
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_4b

    .line 140
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_63

    .line 142
    :cond_4b
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    if-eqz v0, :cond_5a

    .line 144
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_63

    .line 148
    :cond_5a
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_6e

    .line 152
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 160
    .end local v0    # "name":Ljava/lang/String;
    :goto_63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->initialised:Z

    .line 162
    return-void

    .line 156
    .restart local v0    # "name":Ljava/lang/String;
    :cond_6e
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameterSpec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .registers 11
    .param p1, "curveName"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 235
    .local v0, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v0, :cond_28

    .line 241
    const/4 v7, 0x0

    .line 243
    .local v7, "seed":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    move-object v2, p1

    .end local p1    # "curveName":Ljava/lang/String;
    .local v2, "curveName":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->ecParams:Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->createKeyGenParamsJCE(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/GMKeyPairGeneratorSpi$BaseSM2;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 245
    return-void

    .line 237
    .end local v2    # "curveName":Ljava/lang/String;
    .end local v7    # "seed":[B
    .restart local p1    # "curveName":Ljava/lang/String;
    :cond_28
    move-object v2, p1

    .end local p1    # "curveName":Ljava/lang/String;
    .restart local v2    # "curveName":Ljava/lang/String;
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown curve name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
