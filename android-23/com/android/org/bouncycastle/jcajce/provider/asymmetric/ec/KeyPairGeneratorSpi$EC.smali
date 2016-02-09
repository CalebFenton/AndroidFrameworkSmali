.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# static fields
.field private static ecParameters:Ljava/util/Hashtable;


# instance fields
.field algorithm:Ljava/lang/String;

.field certainty:I

.field configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field ecParams:Ljava/lang/Object;

.field engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    #@7
    .line 59
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    #@9
    const/16 v1, 0xc0

    #@b
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    #@11
    const-string/jumbo v3, "prime192v1"

    #@14
    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 60
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    #@1c
    const/16 v1, 0xef

    #@1e
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v1

    #@22
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    #@24
    const-string/jumbo v3, "prime239v1"

    #@27
    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 61
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    #@2f
    const/16 v1, 0x100

    #@31
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v1

    #@35
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    #@37
    const-string/jumbo v3, "prime256v1"

    #@3a
    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@3d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    #@42
    const/16 v1, 0xe0

    #@44
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v1

    #@48
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    #@4a
    const-string/jumbo v3, "P-224"

    #@4d
    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@50
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 64
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    #@55
    const/16 v1, 0x180

    #@57
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v1

    #@5b
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    #@5d
    const-string/jumbo v3, "P-384"

    #@60
    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@63
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    #@68
    const/16 v1, 0x209

    #@6a
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v1

    #@6e
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    #@70
    const-string/jumbo v3, "P-521"

    #@73
    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    #@76
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "EC"

    #@3
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    #@6
    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    #@8
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    #@d
    .line 44
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@10
    .line 46
    const/16 v0, 0x100

    #@12
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->strength:I

    #@14
    .line 48
    const/16 v0, 0x32

    #@16
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->certainty:I

    #@18
    .line 49
    new-instance v0, Ljava/security/SecureRandom;

    #@1a
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->random:Ljava/security/SecureRandom;

    #@1f
    .line 50
    const/4 v0, 0x0

    #@20
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialised:Z

    #@22
    .line 71
    const-string/jumbo v0, "EC"

    #@25
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    #@27
    .line 72
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@2b
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@0
    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    #@3
    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    #@a
    .line 44
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@d
    .line 46
    const/16 v0, 0x100

    #@f
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->strength:I

    #@11
    .line 48
    const/16 v0, 0x32

    #@13
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->certainty:I

    #@15
    .line 49
    new-instance v0, Ljava/security/SecureRandom;

    #@17
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->random:Ljava/security/SecureRandom;

    #@1c
    .line 50
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialised:Z

    #@1f
    .line 80
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    #@21
    .line 81
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@23
    .line 77
    return-void
.end method


# virtual methods
.method protected createKeyGenParamsBC(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    .locals 5
    .param p1, "p"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .param p2, "r"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 197
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    #@f
    move-result-object v4

    #@10
    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    #@13
    invoke-direct {v0, v1, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    #@16
    return-object v0
.end method

.method protected createKeyGenParamsJCE(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    .locals 8
    .param p1, "p"    # Ljava/security/spec/ECParameterSpec;
    .param p2, "r"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 202
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@3
    move-result-object v5

    #@4
    invoke-static {v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@7
    move-result-object v0

    #@8
    .line 203
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    #@b
    move-result-object v5

    #@c
    const/4 v6, 0x0

    #@d
    invoke-static {v0, v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10
    move-result-object v2

    #@11
    .line 204
    .local v2, "g":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    #@14
    move-result-object v4

    #@15
    .line 205
    .local v4, "n":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    #@18
    move-result v5

    #@19
    int-to-long v6, v5

    #@1a
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1d
    move-result-object v3

    #@1e
    .line 206
    .local v3, "h":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@20
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@23
    .line 207
    .local v1, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@25
    invoke-direct {v5, v1, p2}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    #@28
    return-object v5
.end method

.method protected createNamedCurveSpec(Ljava/lang/String;)Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;
    .locals 9
    .param p1, "curveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@3
    move-result-object v8

    #@4
    .line 216
    .local v8, "p":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v8, :cond_0

    #@6
    .line 221
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@e
    move-result-object v8

    #@f
    .line 222
    if-nez v8, :cond_0

    #@11
    .line 224
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "unknown curve OID: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 228
    :catch_0
    move-exception v7

    #@2c
    .line 229
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "unknown curve name: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 234
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v6, 0x0

    #@47
    .line 236
    .local v6, "seed":[B
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@49
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    #@58
    move-result-object v5

    #@59
    move-object v1, p1

    #@5a
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@5d
    return-object v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 13

    #@0
    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialised:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 165
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->strength:I

    #@6
    new-instance v1, Ljava/security/SecureRandom;

    #@8
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@b
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialize(ILjava/security/SecureRandom;)V

    #@e
    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    #@10
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    #@13
    move-result-object v11

    #@14
    .line 169
    .local v11, "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@17
    move-result-object v12

    #@18
    check-cast v12, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@1a
    .line 170
    .local v12, "pub":Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@20
    .line 172
    .local v2, "priv":Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@22
    instance-of v0, v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 174
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@28
    check-cast v4, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@2a
    .line 176
    .local v4, "p":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@2c
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    #@2e
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@30
    invoke-direct {v3, v0, v12, v4, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@33
    .line 177
    .local v3, "pubKey":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    new-instance v6, Ljava/security/KeyPair;

    #@35
    .line 178
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@37
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    #@39
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@3b
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@3e
    .line 177
    invoke-direct {v6, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@41
    return-object v6

    #@42
    .line 180
    .end local v3    # "pubKey":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    .end local v4    # "p":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@44
    if-nez v0, :cond_2

    #@46
    .line 182
    new-instance v0, Ljava/security/KeyPair;

    #@48
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@4a
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    #@4c
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@4e
    invoke-direct {v1, v5, v12, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@51
    .line 183
    new-instance v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@53
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    #@55
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@57
    invoke-direct {v5, v6, v2, v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@5a
    .line 182
    invoke-direct {v0, v1, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@5d
    return-object v0

    #@5e
    .line 187
    :cond_2
    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@60
    check-cast v9, Ljava/security/spec/ECParameterSpec;

    #@62
    .line 189
    .local v9, "p":Ljava/security/spec/ECParameterSpec;
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    #@64
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    #@66
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@68
    invoke-direct {v3, v0, v12, v9, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@6b
    .line 191
    .restart local v3    # "pubKey":Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    new-instance v0, Ljava/security/KeyPair;

    #@6d
    new-instance v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    #@6f
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    #@71
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@73
    move-object v7, v2

    #@74
    move-object v8, v3

    #@75
    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    #@78
    invoke-direct {v0, v3, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@7b
    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 88
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->strength:I

    #@2
    .line 90
    if-eqz p2, :cond_0

    #@4
    .line 92
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->random:Ljava/security/SecureRandom;

    #@6
    .line 97
    :cond_0
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    #@8
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    #@12
    .line 98
    .local v1, "ecParams":Ljava/security/spec/ECGenParameterSpec;
    if-nez v1, :cond_1

    #@14
    .line 100
    new-instance v2, Ljava/security/InvalidParameterException;

    #@16
    const-string/jumbo v3, "unknown key size."

    #@19
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 105
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 86
    return-void

    #@21
    .line 108
    :catch_0
    move-exception v0

    #@22
    .line 109
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidParameterException;

    #@24
    const-string/jumbo v3, "key size not configurable."

    #@27
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 119
    if-nez p2, :cond_0

    #@3
    .line 120
    iget-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->random:Ljava/security/SecureRandom;

    #@5
    .line 123
    :cond_0
    if-nez p1, :cond_2

    #@7
    .line 125
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    #@9
    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@c
    move-result-object v0

    #@d
    .line 126
    .local v0, "implicitCA":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v0, :cond_1

    #@f
    .line 128
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@11
    const-string/jumbo v2, "null parameter passed but no implicitCA set"

    #@14
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 131
    :cond_1
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@1a
    .line 132
    invoke-virtual {p0, v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createKeyGenParamsBC(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@20
    .line 157
    .end local v0    # "implicitCA":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->engine:Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    #@22
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@24
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@27
    .line 158
    const/4 v1, 0x1

    #@28
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialised:Z

    #@2a
    .line 116
    return-void

    #@2b
    .line 134
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2
    instance-of v1, p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 136
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@31
    .line 137
    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@33
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createKeyGenParamsBC(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@39
    goto :goto_0

    #@3a
    .line 139
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    instance-of v1, p1, Ljava/security/spec/ECParameterSpec;

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 141
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@40
    .line 142
    check-cast p1, Ljava/security/spec/ECParameterSpec;

    #@42
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createKeyGenParamsJCE(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@45
    move-result-object v1

    #@46
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@48
    goto :goto_0

    #@49
    .line 144
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    instance-of v1, p1, Ljava/security/spec/ECGenParameterSpec;

    #@4b
    if-eqz v1, :cond_5

    #@4d
    .line 146
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    #@4f
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {p0, v1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V

    #@56
    goto :goto_0

    #@57
    .line 148
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    instance-of v1, p1, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    #@59
    if-eqz v1, :cond_6

    #@5b
    .line 150
    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    #@5d
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;->getName()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {p0, v1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V

    #@64
    goto :goto_0

    #@65
    .line 154
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_6
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@67
    const-string/jumbo v2, "parameter object not a ECParameterSpec"

    #@6a
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v1
.end method

.method protected initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "curveName"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createNamedCurveSpec(Ljava/lang/String;)Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    #@3
    move-result-object v0

    #@4
    .line 243
    .local v0, "namedCurve":Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    #@6
    .line 244
    invoke-virtual {p0, v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createKeyGenParamsJCE(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    #@c
    .line 240
    return-void
.end method
