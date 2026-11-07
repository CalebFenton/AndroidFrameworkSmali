.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private blacklist aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

.field private blacklist availableSpecs:[Ljava/lang/Class;

.field private blacklist baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

.field private blacklist digest:I

.field private blacklist engineProvider:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

.field private blacklist fixedIv:Z

.field private blacklist ivLength:I

.field private blacklist ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private blacklist keySizeInBits:I

.field private blacklist modeName:Ljava/lang/String;

.field private blacklist padded:Z

.field private blacklist pbeAlgorithm:Ljava/lang/String;

.field private blacklist pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

.field private blacklist scheme:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 7

    .line 144
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    .line 111
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 147
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4

    const/4 v0, 0x1

    .line 217
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ZI)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;IIII)V
    .registers 10

    .line 156
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    .line 111
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    aput-object v2, v0, v1

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v3, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 136
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 159
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 160
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    .line 161
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    .line 162
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 164
    new-instance p2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {p2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ZI)V
    .registers 8

    .line 224
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    .line 111
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-class v3, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 227
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 228
    new-instance p2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {p2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 229
    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;I)V
    .registers 4

    const/4 v0, 0x1

    .line 236
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;ZI)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;ZI)V
    .registers 9

    .line 243
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    .line 111
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 246
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 247
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 248
    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V
    .registers 7

    .line 169
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x3

    .line 111
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 170
    invoke-interface {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 171
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineProvider:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    .line 173
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void
.end method

.method private blacklist adjustParameters(Ljava/security/spec/AlgorithmParameterSpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    .line 1067
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1d

    .line 1069
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 1070
    instance-of v1, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_2f

    .line 1072
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 1074
    new-instance p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    return-object p2

    .line 1097
    :cond_1d
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_2f

    .line 1099
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 1101
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    return-object v0

    :cond_2f
    return-object p2
.end method

.method private blacklist isAEADModeName(Ljava/lang/String;)Z
    .registers 2

    .line 1340
    const-string p0, "CCM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "GCM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isBCPBEKeyWithoutIV(Ljava/security/Key;)Z
    .registers 2

    .line 618
    instance-of p0, p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz p0, :cond_10

    check-cast p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    instance-of p0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 14

    .line 1311
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_3b

    if-eqz p3, :cond_16

    .line 1320
    :try_start_a
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result p1

    goto :goto_19

    :cond_16
    move-object v6, p4

    move v7, p5

    const/4 p1, 0x0

    .line 1323
    :goto_19
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    add-int p5, v7, p1

    invoke-interface {p0, v6, p5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I

    move-result p0
    :try_end_21
    .catch Lcom/android/org/bouncycastle/crypto/OutputLengthException; {:try_start_a .. :try_end_21} :catch_2f
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_a .. :try_end_21} :catch_23

    add-int/2addr p1, p0

    return p1

    :catch_23
    move-exception v0

    move-object p0, v0

    .line 1331
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2f
    move-exception v0

    move-object p0, v0

    .line 1327
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1313
    :cond_3b
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 12

    .line 1268
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v5, v0, [B

    const/4 v7, 0x0

    if-eqz p3, :cond_14

    .line 1272
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result p1

    goto :goto_15

    :cond_14
    move p1, v7

    .line 1277
    :goto_15
    :try_start_15
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {p0, v5, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I

    move-result p0
    :try_end_1b
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_15 .. :try_end_1b} :catch_2f

    add-int/2addr p1, p0

    if-ne p1, v0, :cond_1f

    return-object v5

    :cond_1f
    if-gt p1, v0, :cond_27

    .line 1294
    new-array p0, p1, [B

    .line 1296
    invoke-static {v5, v7, p0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 1291
    :cond_27
    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string p1, "internal buffer overflow"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2f
    move-exception v0

    move-object p0, v0

    .line 1281
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 257
    :cond_6
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_9

    .line 264
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object p0

    return-object p0

    .line 267
    :cond_9
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 2

    .line 273
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result p0

    return p0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_b9

    .line 286
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_19

    .line 290
    :try_start_8
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 291
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_17

    goto/16 :goto_b9

    :catch_17
    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_7a

    .line 301
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    if-nez v0, :cond_4c

    .line 305
    :try_start_21
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_AEADChaCha20Poly1305:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 306
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_41

    goto/16 :goto_b9

    :catch_41
    move-exception p0

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_4c
    :try_start_4c
    const-string v0, "GCM"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 318
    new-instance v1, Lcom/android/org/bouncycastle/internal/asn1/cms/GCMParameters;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/internal/asn1/cms/GCMParameters;-><init>([BI)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6e} :catch_6f

    goto :goto_b9

    :catch_6f
    move-exception p0

    .line 322
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_7a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_b9

    .line 328
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_99

    const/4 v2, 0x0

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_99
    :try_start_99
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 338
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ad} :catch_ae

    goto :goto_b9

    :catch_ae
    move-exception p0

    .line 342
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_b9
    :goto_b9
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6

    if-eqz p3, :cond_26

    .line 1135
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    invoke-static {p3, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;->extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_27

    .line 1139
    :cond_b
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can\'t handle parameter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    const/4 v0, 0x0

    .line 1143
    :goto_27
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1145
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x0

    .line 1156
    :try_start_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p0

    .line 1160
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    .line 631
    iput-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 632
    iput-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 633
    iput-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 634
    iput-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    .line 639
    instance-of v6, v2, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_39

    .line 641
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key for algorithm "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_29

    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    :cond_29
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not suitable for symmetric enryption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    if-nez v3, :cond_54

    .line 647
    iget-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    if-eqz v5, :cond_54

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RC5-64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    goto :goto_54

    .line 649
    :cond_4c
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_54
    :goto_54
    iget v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    const-string v7, "Algorithm requires a PBE key"

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5f

    instance-of v5, v2, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    if-eqz v5, :cond_f5

    :cond_5f
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    move-result v5

    if-nez v5, :cond_f5

    .line 664
    :try_start_65
    move-object v5, v2

    check-cast v5, Ljavax/crypto/SecretKey;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_ed

    .line 671
    instance-of v10, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v10, :cond_71

    .line 673
    move-object v10, v3

    check-cast v10, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v10, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 676
    :cond_71
    instance-of v10, v5, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v10, :cond_9a

    iget-object v11, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v11, :cond_9a

    .line 678
    move-object v11, v5

    check-cast v11, Ljavax/crypto/interfaces/PBEKey;

    .line 679
    invoke-interface {v11}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v12

    if-eqz v12, :cond_92

    .line 683
    new-instance v12, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v11}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v13

    invoke-interface {v11}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v11

    invoke-direct {v12, v13, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v12, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_9a

    .line 681
    :cond_92
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBEKey requires parameters to specify salt"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_9a
    :goto_9a
    iget-object v11, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v11, :cond_a7

    if-eqz v10, :cond_a1

    goto :goto_a7

    .line 688
    :cond_a1
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_a7
    :goto_a7
    instance-of v7, v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v7, :cond_c9

    .line 695
    move-object v5, v2

    check-cast v5, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 696
    instance-of v7, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_b7

    goto :goto_e2

    :cond_b7
    if-nez v5, :cond_c1

    .line 705
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 710
    :cond_c1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Algorithm requires a PBE key suitable for PKCS12"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_c9
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    iget v12, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    iget v13, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    iget v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    mul-int/lit8 v14, v5, 0x8

    iget-object v15, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x2

    invoke-static/range {v10 .. v16}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 717
    :goto_e2
    instance-of v7, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_1db

    .line 719
    move-object v7, v5

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_1db

    .line 668
    :catch_ed
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_f5
    instance-of v5, v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v5, :cond_195

    .line 747
    move-object v5, v2

    check-cast v5, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 749
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    if-eqz v7, :cond_10d

    .line 751
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_113

    .line 755
    :cond_10d
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 758
    :goto_113
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    if-eqz v7, :cond_122

    .line 760
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->adjustParameters(Ljava/security/spec/AlgorithmParameterSpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    goto :goto_183

    .line 762
    :cond_122
    instance-of v7, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v7, :cond_18d

    .line 764
    move-object v7, v3

    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 769
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v7

    array-length v7, v7

    if-eqz v7, :cond_175

    iget-object v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    if-lez v7, :cond_175

    .line 770
    new-instance v10, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v13

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v14

    .line 771
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v15

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v16

    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    .line 773
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getPassword()[C

    move-result-object v8

    iget-object v9, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v9}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v9

    iget-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    .line 774
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v5

    invoke-direct {v7, v8, v9, v6, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const/16 v18, 0x0

    move-object/from16 v17, v7

    invoke-direct/range {v10 .. v18}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    move-object v5, v10

    .line 778
    :cond_175
    iget-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 785
    :goto_183
    instance-of v6, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_1db

    .line 787
    move-object v6, v5

    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_1db

    .line 782
    :cond_18d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_195
    instance-of v5, v2, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v5, :cond_1c5

    .line 792
    move-object v5, v2

    check-cast v5, Ljavax/crypto/interfaces/PBEKey;

    .line 793
    move-object v6, v3

    check-cast v6, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 799
    invoke-interface {v5}, Ljavax/crypto/interfaces/PBEKey;->getEncoded()[B

    move-result-object v7

    iget v8, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    iget v9, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    iget v10, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    iget v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    mul-int/lit8 v11, v5, 0x8

    iget-object v12, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v7 .. v13}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 800
    instance-of v6, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_1db

    .line 802
    move-object v6, v5

    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_1db

    .line 810
    :cond_1c5
    iget v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    if-eqz v5, :cond_35b

    const/4 v6, 0x4

    if-eq v5, v6, :cond_35b

    const/4 v6, 0x1

    if-eq v5, v6, :cond_35b

    const/4 v6, 0x5

    if-eq v5, v6, :cond_35b

    .line 814
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 843
    :cond_1db
    :goto_1db
    instance-of v6, v3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v6, :cond_24e

    .line 845
    iget v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    if-eqz v6, :cond_239

    .line 847
    check-cast v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 849
    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v6

    array-length v6, v6

    iget v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    if-eq v6, v7, :cond_217

    iget-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v6, v6, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-nez v6, :cond_217

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    if-nez v6, :cond_1f9

    goto :goto_217

    .line 851
    :cond_1f9
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV must be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes long."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 854
    :cond_217
    :goto_217
    instance-of v6, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_22c

    .line 856
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v6, v5, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    :goto_22a
    move-object v5, v6

    goto :goto_236

    .line 860
    :cond_22c
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v6, v5, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    goto :goto_22a

    .line 862
    :goto_236
    iput-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_290

    .line 866
    :cond_239
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v3, :cond_290

    const-string v6, "ECB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_246

    goto :goto_290

    .line 868
    :cond_246
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ECB mode does not use an IV"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_24e
    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v6

    if-eqz v6, :cond_281

    .line 962
    iget-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26b

    iget-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v6, v6, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-eqz v6, :cond_263

    goto :goto_26b

    .line 964
    :cond_263
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "GCMParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_26b
    :goto_26b
    instance-of v6, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_278

    .line 970
    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_27a

    .line 974
    :cond_278
    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 977
    :goto_27a
    invoke-static {v5, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractAeadParameters(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    move-result-object v5

    iput-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    goto :goto_290

    :cond_281
    if-eqz v3, :cond_290

    .line 979
    instance-of v3, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v3, :cond_288

    goto :goto_290

    .line 981
    :cond_288
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_290
    :goto_290
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    const/4 v6, 0x3

    if-eqz v3, :cond_2e2

    instance-of v3, v5, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_2e2

    instance-of v3, v5, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-nez v3, :cond_2e2

    if-nez v4, :cond_2a4

    .line 990
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    goto :goto_2a5

    :cond_2a4
    move-object v3, v4

    .line 993
    :goto_2a5
    const-string v7, "No IV set when using PBE key"

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2c6

    if-ne v1, v6, :cond_2ad

    goto :goto_2c6

    .line 1010
    :cond_2ad
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PGPCFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2c0

    goto :goto_2e2

    .line 1015
    :cond_2c0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_2c6
    :goto_2c6
    iget v8, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    new-array v8, v8, [B

    .line 1001
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    move-result v2

    if-nez v2, :cond_2dc

    .line 1002
    invoke-virtual {v3, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1007
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v2, v5, v8}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 1008
    iput-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v5, v2

    goto :goto_2e2

    .line 1004
    :cond_2dc
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e2
    :goto_2e2
    if-eqz v4, :cond_2ee

    .line 1021
    iget-boolean v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    if-eqz v2, :cond_2ee

    .line 1023
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v5, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v5, v2

    :cond_2ee
    const/4 v8, 0x1

    if-eq v1, v8, :cond_31d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_316

    if-eq v1, v6, :cond_31d

    const/4 v6, 0x4

    if-ne v1, v6, :cond_2fa

    goto :goto_316

    .line 1039
    :cond_2fa
    :try_start_2fa
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown opmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " passed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_316
    :goto_316
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_323

    .line 1032
    :cond_31d
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v8, 0x1

    invoke-interface {v1, v8, v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 1042
    :goto_323
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v2, v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-eqz v2, :cond_34f

    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-nez v2, :cond_34f

    .line 1044
    check-cast v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->-$$Nest$fgetcipher(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    move-result-object v1

    .line 1046
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;->getMac()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B)V

    iput-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    :try_end_34f
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_34f} :catch_350

    :cond_34f
    return-void

    :catch_350
    move-exception v0

    .line 1059
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 812
    :cond_35b
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 6

    .line 354
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_16d

    .line 358
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 360
    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 362
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 363
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 365
    :cond_1f
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 367
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 368
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 369
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 371
    :cond_3f
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_88

    .line 373
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 374
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v2, :cond_73

    .line 376
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 378
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v2, p1}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 383
    :cond_73
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 384
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 387
    :cond_88
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CFB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 389
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 390
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v2, :cond_ba

    .line 392
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 394
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 395
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)Lcom/android/org/bouncycastle/crypto/modes/CFBModeCipher;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 399
    :cond_ba
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 400
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)Lcom/android/org/bouncycastle/crypto/modes/CFBModeCipher;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 449
    :cond_ce
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 451
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 452
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 463
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 464
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 485
    :cond_f5
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "CTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 487
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 488
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 490
    :cond_11a
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "CCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/16 p1, 0xc

    .line 492
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 502
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CCMModeCipher;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 531
    :cond_136
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 533
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 544
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/GCMModeCipher;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 551
    :cond_156
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t support mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_16d
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "no mode supported for this algorithm"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_14a

    .line 564
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 568
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 570
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    :cond_2a
    return-void

    .line 573
    :cond_2b
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    const-string v1, "CTSPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    const-string v1, "CS3PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    goto/16 :goto_137

    :cond_45
    const/4 v1, 0x1

    .line 579
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    .line 581
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12f

    .line 585
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_121

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto/16 :goto_121

    .line 589
    :cond_62
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 591
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 593
    :cond_7d
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10e

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    goto/16 :goto_10e

    .line 597
    :cond_8f
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    goto :goto_fb

    .line 601
    :cond_a0
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    goto :goto_e8

    .line 605
    :cond_b1
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 607
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 611
    :cond_cc
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Padding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unknown."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 603
    :cond_e8
    :goto_e8
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 599
    :cond_fb
    :goto_fb
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 595
    :cond_10e
    :goto_10e
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 587
    :cond_121
    :goto_121
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 583
    :cond_12f
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string p1, "Only NoPadding can be used with AEAD modes."

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :cond_137
    :goto_137
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    return-void

    .line 561
    :cond_14a
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string p1, "no padding supported for this algorithm"

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 8

    .line 1245
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_1d

    .line 1252
    :try_start_a
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface/range {p0 .. p5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result p0
    :try_end_10
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_a .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception v0

    move-object p0, v0

    .line 1257
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1247
    :cond_1d
    new-instance p0, Ljavax/crypto/ShortBufferException;

    const-string p1, "output buffer too short for input."

    invoke-direct {p0, p1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 13

    .line 1208
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    const/4 v8, 0x0

    if-lez v1, :cond_22

    .line 1212
    new-array v6, v1, [B

    .line 1214
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v0

    if-nez v0, :cond_18

    return-object v8

    :cond_18
    if-eq v0, v1, :cond_21

    .line 1222
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1224
    invoke-static {v6, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_21
    return-object v6

    .line 1232
    :cond_22
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    return-object v8
.end method

.method protected whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 1171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    return-void

    .line 1176
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 1179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_26
    const/16 v1, 0x200

    const/4 v2, 0x0

    if-gt v0, v1, :cond_37

    .line 1183
    new-array v1, v0, [B

    .line 1184
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1185
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 1186
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    return-void

    .line 1190
    :cond_37
    new-array v3, v1, [B

    .line 1193
    :cond_39
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1194
    invoke-virtual {p1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1195
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    sub-int/2addr v0, v4

    if-gtz v0, :cond_39

    .line 1199
    invoke-static {v3, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method protected whitelist test-api engineUpdateAAD([BII)V
    .registers 4

    .line 1166
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->updateAAD([BII)V

    return-void
.end method
