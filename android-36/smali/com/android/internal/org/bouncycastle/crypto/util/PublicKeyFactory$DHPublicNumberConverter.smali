.class Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;
.super Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DHPublicNumberConverter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getPublicKeyParameters(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 16
    .param p1, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "defaultParams"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;

    move-result-object v0

    .line 212
    .local v0, "dhPublicKey":Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    .line 214
    .local v1, "y":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;

    move-result-object v2

    .line 216
    .local v2, "dhParams":Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 217
    .local v4, "p":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    .line 218
    .local v5, "g":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 220
    .local v6, "q":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .line 221
    .local v3, "j":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v7

    if-eqz v7, :cond_31

    .line 223
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v3

    move-object v7, v3

    goto :goto_32

    .line 221
    :cond_31
    move-object v7, v3

    .line 226
    .end local v3    # "j":Ljava/math/BigInteger;
    .local v7, "j":Ljava/math/BigInteger;
    :goto_32
    const/4 v3, 0x0

    .line 227
    .local v3, "validation":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/DomainParameters;->getValidationParams()Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v9

    .line 228
    .local v9, "dhValidationParms":Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;
    if-eqz v9, :cond_4d

    .line 230
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->getSeed()[B

    move-result-object v8

    .line 231
    .local v8, "seed":[B
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/x9/ValidationParams;->getPgenCounter()Ljava/math/BigInteger;

    move-result-object v10

    .line 235
    .local v10, "pgenCounter":Ljava/math/BigInteger;
    new-instance v11, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    invoke-direct {v11, v8, v12}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    move-object v3, v11

    move-object v8, v3

    goto :goto_4e

    .line 228
    .end local v8    # "seed":[B
    .end local v10    # "pgenCounter":Ljava/math/BigInteger;
    :cond_4d
    move-object v8, v3

    .line 238
    .end local v3    # "validation":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    .local v8, "validation":Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    :goto_4e
    new-instance v10, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    invoke-direct {v10, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v10
.end method
