.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;
.super Ljava/lang/Object;
.source "BCECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPointEncoder;


# static fields
.field static final whitelist serialVersionUID:J = 0xdcd5cdd2909ced4L


# instance fields
.field private blacklist algorithm:Ljava/lang/String;

.field private transient blacklist attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient blacklist baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private transient blacklist configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private transient blacklist d:Ljava/math/BigInteger;

.field private transient blacklist ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient blacklist encoding:[B

.field private transient blacklist privateKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

.field private transient blacklist publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private blacklist withCompression:Z


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 64
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 219
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 221
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 222
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 12
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    .param p4, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .param p5, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 168
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 169
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 170
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 171
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 173
    if-nez p4, :cond_48

    .line 175
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 176
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 178
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 180
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 181
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 182
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 183
    .end local v0    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_5a

    .line 186
    :cond_48
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 188
    .local v0, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-static {v0, p4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 193
    .end local v0    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_5a
    :try_start_5a
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_60} :catch_61

    .line 198
    goto :goto_65

    .line 195
    :catch_61
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 12
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    .param p4, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p5, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 137
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 138
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 139
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 140
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 142
    if-nez p4, :cond_48

    .line 144
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 145
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 147
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 149
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 150
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 151
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 152
    .end local v0    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_4a

    .line 155
    :cond_48
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 158
    :goto_4a
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 159
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 206
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 207
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 209
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 210
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 211
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 120
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 121
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 122
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 123
    iget-boolean v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    .line 124
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 125
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 126
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 127
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 82
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 83
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 85
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 87
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 90
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 92
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 93
    .end local v0    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_3e

    .line 96
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 99
    :goto_3e
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 100
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->convertToBaseKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPrivateKeySpec;
    .param p3, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 109
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 111
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 112
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 113
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->convertToBaseKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/interfaces/ECPrivateKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .registers 4
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;
    .param p2, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 70
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 71
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    .line 72
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 73
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 74
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->convertToBaseKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 75
    return-void
.end method

.method private static blacklist convertToBaseKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .registers 13
    .param p0, "key"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 476
    move-object v0, p0

    .line 477
    .local v0, "k":Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 479
    .local v1, "s":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    if-nez v1, :cond_d

    .line 481
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 484
    :cond_d
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    if-eqz v2, :cond_48

    .line 486
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;->getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_48

    .line 489
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 490
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    .line 491
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 492
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 489
    return-object v3

    .line 496
    .end local v2    # "name":Ljava/lang/String;
    :cond_48
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 497
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 498
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 496
    return-object v2
.end method

.method private blacklist getPrivateKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 8

    .line 296
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->privateKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-nez v0, :cond_56

    .line 298
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 301
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 303
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    .local v1, "orderBitLength":I
    goto :goto_2c

    .line 307
    .end local v1    # "orderBitLength":I
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    .line 312
    .restart local v1    # "orderBitLength":I
    :goto_2c
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v3, :cond_3c

    .line 314
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .local v3, "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    goto :goto_45

    .line 318
    .end local v3    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :cond_3c
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 323
    .restart local v3    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :goto_45
    :try_start_45
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v6, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->privateKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_53} :catch_54

    .line 328
    goto :goto_56

    .line 325
    :catch_54
    move-exception v4

    .line 327
    .local v4, "e":Ljava/io/IOException;
    return-object v2

    .line 331
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v1    # "orderBitLength":I
    .end local v3    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->privateKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    return-object v0
.end method

.method private blacklist getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 4
    .param p1, "pub"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 440
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 442
    .local v0, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 444
    .end local v0    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_11
    move-exception v0

    .line 446
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 7
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 229
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getCurve(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 230
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 233
    .local v2, "privKey":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_2b

    .line 235
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    .line 237
    .local v3, "derD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 238
    .end local v3    # "derD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    goto :goto_3b

    .line 241
    :cond_2b
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v3

    .line 243
    .local v3, "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    .line 244
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getPublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 246
    .end local v3    # "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :goto_3b
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->convertToBaseKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 247
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 454
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 456
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 458
    .local v0, "enc":[B
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 460
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 462
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 463
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 472
    return-void
.end method


# virtual methods
.method public blacklist engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->baseKey:Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method blacklist engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_b

    .line 357
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 360
    :cond_b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 398
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 400
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 402
    .local v0, "other":Ljava/security/interfaces/ECPrivateKey;
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPrivateKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v2

    .line 403
    .local v2, "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    instance-of v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    if-eqz v3, :cond_18

    move-object v3, v0

    check-cast v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPrivateKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v3

    goto :goto_20

    :cond_18
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v3

    .line 405
    .local v3, "otherInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_20
    if-eqz v2, :cond_52

    if-nez v3, :cond_25

    goto :goto_52

    .line 412
    :cond_25
    :try_start_25
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    .line 413
    .local v4, "algEquals":Z
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_4d} :catch_50

    .line 415
    .local v1, "keyEquals":Z
    and-int v5, v4, v1

    return v5

    .line 417
    .end local v1    # "keyEquals":Z
    .end local v4    # "algEquals":Z
    :catch_50
    move-exception v4

    .line 419
    .local v4, "e":Ljava/io/IOException;
    return v1

    .line 407
    .end local v4    # "e":Ljava/io/IOException;
    :cond_52
    :goto_52
    return v1

    .line 423
    .end local v0    # "other":Ljava/security/interfaces/ECPrivateKey;
    .end local v2    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v3    # "otherInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_53
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 383
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getD()Ljava/math/BigInteger;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->encoding:[B

    if-nez v0, :cond_17

    .line 274
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPrivateKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 276
    .local v0, "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 278
    return-object v1

    .line 283
    :cond_c
    :try_start_c
    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->encoding:[B
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_15

    .line 288
    goto :goto_17

    .line 285
    :catch_15
    move-exception v2

    .line 287
    .local v2, "e":Ljava/io/IOException;
    return-object v1

    .line 291
    .end local v0    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->encoding:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 261
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_6

    .line 348
    const/4 v0, 0x0

    return-object v0

    .line 350
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getS()Ljava/math/BigInteger;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 377
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 378
    return-void
.end method

.method public blacklist setPointFormat(Ljava/lang/String;)V
    .registers 3
    .param p1, "style"    # Ljava/lang/String;

    .line 393
    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    .line 394
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    const-string v2, "EC"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->privateKeyToString(Ljava/lang/String;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
