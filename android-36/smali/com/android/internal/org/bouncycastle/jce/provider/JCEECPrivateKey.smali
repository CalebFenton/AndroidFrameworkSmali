.class public Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "JCEECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/ECPointEncoder;


# instance fields
.field private blacklist algorithm:Ljava/lang/String;

.field private blacklist attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private blacklist d:Ljava/math/BigInteger;

.field private blacklist ecSpec:Ljava/security/spec/ECParameterSpec;

.field private blacklist publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private blacklist withCompression:Z


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 59
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 189
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 179
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 180
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 182
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 147
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 148
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 150
    if-nez p4, :cond_44

    .line 152
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 153
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 155
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 157
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 158
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 159
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 160
    .end local v0    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_6b

    .line 163
    :cond_44
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 165
    .local v0, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v1, Ljava/security/spec/ECParameterSpec;

    .line 167
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v2

    .line 168
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 169
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 172
    .end local v0    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_6b
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 173
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .registers 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 119
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 120
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 122
    if-nez p4, :cond_44

    .line 124
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 125
    .local v0, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 127
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 130
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 131
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 132
    .end local v0    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_46

    .line 135
    :cond_44
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 138
    :goto_46
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 139
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 105
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 106
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 107
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 108
    iget-boolean v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 109
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 110
    iget-object v0, p2, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;)V
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 73
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 76
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 78
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 81
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 83
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 84
    .end local v0    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    goto :goto_3e

    .line 87
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 89
    :goto_3e
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPrivateKeySpec;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 96
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 97
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 98
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "EC"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 65
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 66
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 67
    return-void
.end method

.method private blacklist getPublicKeyDetails(Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 4
    .param p1, "pub"    # Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;

    .line 449
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 451
    .local v0, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 453
    .end local v0    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_11
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 13
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 196
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 199
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 218
    .local v2, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v2, :cond_47

    .line 220
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v7

    .line 222
    .local v7, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    .line 223
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 225
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v8

    .line 226
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v9

    .line 227
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 229
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v2    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v7    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_47
    goto :goto_81

    .line 230
    :cond_48
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_81

    .line 236
    :cond_52
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 237
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 239
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v3, Ljava/security/spec/ECParameterSpec;

    .line 241
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 242
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 243
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 246
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_81
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 247
    .local v1, "privKey":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_94

    .line 249
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    .line 251
    .local v2, "derD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 252
    .end local v2    # "derD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    goto :goto_a4

    .line 255
    :cond_94
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v2

    .line 257
    .local v2, "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 258
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getPublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 260
    .end local v2    # "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :goto_a4
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

    .line 463
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 465
    .local v0, "enc":[B
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 467
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 469
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 471
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 472
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

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 480
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 483
    return-void
.end method


# virtual methods
.method blacklist engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_b

    .line 377
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 380
    :cond_b
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 418
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 420
    return v1

    .line 423
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 425
    .local v0, "other":Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 403
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getD()Ljava/math/BigInteger;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 9

    .line 287
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_28

    .line 289
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 290
    .local v0, "curveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_22

    .line 292
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 294
    :cond_22
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 295
    .end local v0    # "curveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v1, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_76

    .line 296
    .end local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_35

    .line 298
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;)V

    move-object v1, v0

    .restart local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_76

    .line 302
    .end local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 304
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 306
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-direct {v3, v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 307
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 308
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 309
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 311
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v1, v0

    .line 318
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v1, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-nez v0, :cond_85

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v2, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    move v3, v0

    .local v0, "orderBitLength":I
    goto :goto_94

    .line 324
    .end local v0    # "orderBitLength":I
    :cond_85
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getOrderBitLength(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    move v3, v0

    .line 327
    .local v3, "orderBitLength":I
    :goto_94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_a5

    .line 329
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v4, v0

    .local v0, "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    goto :goto_af

    .line 333
    .end local v0    # "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :cond_a5
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v4, v0

    .line 347
    .local v4, "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    :goto_af
    :try_start_af
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 350
    .local v0, "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string v5, "DER"

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_c9} :catch_ca

    return-object v2

    .line 352
    .end local v0    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_ca
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 274
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_6

    .line 367
    const/4 v0, 0x0

    return-object v0

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getS()Ljava/math/BigInteger;
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

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

    .line 397
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 398
    return-void
.end method

.method public blacklist setPointFormat(Ljava/lang/String;)V
    .registers 3
    .param p1, "style"    # Ljava/lang/String;

    .line 413
    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 414
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 435
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 436
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "nl":Ljava/lang/String;
    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
