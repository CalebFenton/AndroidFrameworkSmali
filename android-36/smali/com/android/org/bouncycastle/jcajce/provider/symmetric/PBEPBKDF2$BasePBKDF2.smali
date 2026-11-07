.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "PBEPBKDF2.java"


# instance fields
.field private blacklist defaultDigest:I

.field private blacklist ivSizeInBits:I

.field private blacklist keySizeInBits:I

.field private blacklist scheme:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    .line 170
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIII)V
    .registers 7

    .line 179
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 181
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    .line 183
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->keySizeInBits:I

    .line 184
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->ivSizeInBits:I

    .line 186
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIIILcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IILcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private blacklist getDigestCode(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .registers 4

    .line 272
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->-$$Nest$sfgetprfCodes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_11

    .line 275
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 278
    :cond_11
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid KeySpec: unknown PRF algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 12

    .line 199
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_d7

    .line 201
    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    .line 205
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_35

    .line 206
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p1

    if-nez p1, :cond_35

    .line 207
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result p1

    if-nez p1, :cond_35

    .line 208
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_35

    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->keySizeInBits:I

    if-eqz v6, :cond_35

    .line 210
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->ivSizeInBits:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 218
    :cond_35
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-eqz p1, :cond_cf

    .line 226
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p1

    if-lez p1, :cond_b4

    .line 232
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result p1

    if-lez p1, :cond_99

    .line 238
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_91

    .line 243
    instance-of p1, v8, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    if-eqz p1, :cond_78

    .line 245
    move-object p1, v8

    check-cast p1, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    .line 247
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->getDigestCode(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v5

    .line 248
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v6

    .line 250
    iget p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v8, p1, v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .line 252
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    const/4 v7, -0x1

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 256
    :cond_78
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    .line 257
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v6

    .line 259
    iget p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v8, p1, v5, v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    .line 261
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    const/4 v7, -0x1

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 240
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "password empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_99
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "positive key length required: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_b4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "positive iteration count required: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_cf
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "missing required salt"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_d7
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
