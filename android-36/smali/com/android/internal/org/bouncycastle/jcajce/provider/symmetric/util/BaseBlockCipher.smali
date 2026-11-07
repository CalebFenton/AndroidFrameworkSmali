.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
    }
.end annotation


# static fields
.field private static final blacklist BUF_SIZE:I = 0x200


# instance fields
.field private blacklist aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

.field private blacklist availableSpecs:[Ljava/lang/Class;

.field private blacklist baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

.field private blacklist digest:I

.field private blacklist engineProvider:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

.field private blacklist fixedIv:Z

.field private blacklist ivLength:I

.field private blacklist ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

.field private blacklist keySizeInBits:I

.field private blacklist modeName:Ljava/lang/String;

.field private blacklist padded:Z

.field private blacklist pbeAlgorithm:Ljava/lang/String;

.field private blacklist pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

.field private blacklist scheme:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 7
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 144
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 147
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 148
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "ivLength"    # I

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ZI)V

    .line 218
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;IIII)V
    .registers 11
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "scheme"    # I
    .param p3, "digest"    # I
    .param p4, "keySizeInBits"    # I
    .param p5, "ivLength"    # I

    .line 156
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 159
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 160
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    .line 161
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    .line 162
    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 164
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 165
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ZI)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    .line 224
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 227
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 228
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 229
    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 230
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;I)V
    .registers 4
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
    .param p2, "ivLength"    # I

    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;ZI)V

    .line 237
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;ZI)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    .line 243
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 246
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 247
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 248
    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 249
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .registers 7
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 178
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 179
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 180
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3c

    .line 182
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    goto :goto_44

    .line 186
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 188
    :goto_44
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 189
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;ZI)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    .line 206
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 207
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 208
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 209
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 210
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 211
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;ZI)V
    .registers 9
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    .line 195
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 197
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 198
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 199
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 200
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    .line 169
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v4, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    .line 133
    iput v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 170
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 171
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineProvider:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    .line 173
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 174
    return-void
.end method

.method private blacklist adjustParameters(Ljava/security/spec/AlgorithmParameterSpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 1067
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_20

    .line 1069
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 1070
    .local v0, "key":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    instance-of v1, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_34

    .line 1072
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 1074
    .local v1, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1075
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1076
    .end local v1    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_34

    .line 1097
    .end local v0    # "key":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_20
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_34

    .line 1099
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 1101
    .local v0, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1102
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1121
    .end local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    :cond_34
    :goto_34
    return-object p2
.end method

.method private blacklist isAEADModeName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "modeName"    # Ljava/lang/String;

    .line 1340
    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist isBCPBEKeyWithoutIV(Ljava/security/Key;)Z
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .line 618
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1309
    const/4 v1, 0x0

    .line 1311
    .local v1, "len":I
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v2, p4

    if-gt v0, v2, :cond_4f

    .line 1318
    if-eqz p3, :cond_28

    .line 1320
    :try_start_b
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;
    :try_end_d
    .catch Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException; {:try_start_b .. :try_end_d} :catch_20
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_b .. :try_end_d} :catch_18

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .local v4, "input":[B
    .local v5, "inputOffset":I
    .local v6, "inputLen":I
    .local v7, "output":[B
    .local v8, "outputOffset":I
    :try_start_12
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result p1

    move v1, p1

    .end local v1    # "len":I
    .local p1, "len":I
    goto :goto_2d

    .line 1329
    .end local v4    # "input":[B
    .end local v5    # "inputOffset":I
    .end local v6    # "inputLen":I
    .end local v7    # "output":[B
    .end local v8    # "outputOffset":I
    .restart local v1    # "len":I
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :catch_18
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move-object p1, v0

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .restart local v4    # "input":[B
    .restart local v5    # "inputOffset":I
    .restart local v6    # "inputLen":I
    .restart local v7    # "output":[B
    .restart local v8    # "outputOffset":I
    goto :goto_39

    .line 1325
    .end local v4    # "input":[B
    .end local v5    # "inputOffset":I
    .end local v6    # "inputLen":I
    .end local v7    # "output":[B
    .end local v8    # "outputOffset":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :catch_20
    move-exception v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    move-object p1, v0

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .restart local v4    # "input":[B
    .restart local v5    # "inputOffset":I
    .restart local v6    # "inputLen":I
    .restart local v7    # "output":[B
    .restart local v8    # "outputOffset":I
    goto :goto_45

    .line 1318
    .end local v4    # "input":[B
    .end local v5    # "inputOffset":I
    .end local v6    # "inputLen":I
    .end local v7    # "output":[B
    .end local v8    # "outputOffset":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :cond_28
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 1323
    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .restart local v4    # "input":[B
    .restart local v5    # "inputOffset":I
    .restart local v6    # "inputLen":I
    .restart local v7    # "output":[B
    .restart local v8    # "outputOffset":I
    :goto_2d
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    add-int p5, v8, v1

    invoke-interface {p1, v7, p5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I

    move-result p1
    :try_end_35
    .catch Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException; {:try_start_12 .. :try_end_35} :catch_43
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_12 .. :try_end_35} :catch_37

    add-int/2addr p1, v1

    return p1

    .line 1329
    :catch_37
    move-exception v0

    move-object p1, v0

    .line 1331
    .local p1, "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    :goto_39
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1325
    .end local p1    # "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    :catch_43
    move-exception v0

    move-object p1, v0

    .line 1327
    .local p1, "e":Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;
    :goto_45
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1313
    .end local v4    # "input":[B
    .end local v5    # "inputOffset":I
    .end local v6    # "inputLen":I
    .end local v7    # "output":[B
    .end local v8    # "outputOffset":I
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :cond_4f
    move-object v4, p1

    move v5, p2

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .restart local v4    # "input":[B
    .restart local v5    # "inputOffset":I
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "len":I
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    move-result v1

    new-array v6, v1, [B

    .line 1270
    .local v6, "tmp":[B
    if-eqz p3, :cond_15

    .line 1272
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .local v3, "input":[B
    .local v4, "inputOffset":I
    .local v5, "inputLen":I
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v0

    move p1, v0

    goto :goto_19

    .line 1270
    .end local v3    # "input":[B
    .end local v4    # "inputOffset":I
    .end local v5    # "inputLen":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    :cond_15
    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .restart local v3    # "input":[B
    .restart local v4    # "inputOffset":I
    .restart local v5    # "inputLen":I
    move p1, v0

    .line 1277
    .end local v0    # "len":I
    .local p1, "len":I
    :goto_19
    :try_start_19
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {p2, v6, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I

    move-result p2
    :try_end_1f
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_19 .. :try_end_1f} :catch_37

    add-int/2addr p1, p2

    .line 1282
    nop

    .line 1284
    array-length p2, v6

    if-ne p1, p2, :cond_25

    .line 1286
    return-object v6

    .line 1289
    :cond_25
    array-length p2, v6

    if-gt p1, p2, :cond_2f

    .line 1294
    new-array p2, p1, [B

    .line 1296
    .local p2, "out":[B
    const/4 p3, 0x0

    invoke-static {v6, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    return-object p2

    .line 1291
    .end local p2    # "out":[B
    :cond_2f
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    const-string p3, "internal buffer overflow"

    invoke-direct {p2, p3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1279
    :catch_37
    move-exception v0

    move-object p2, v0

    .line 1281
    .local p2, "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    new-instance p3, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-nez v0, :cond_6

    .line 255
    const/4 v0, -0x1

    return v0

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_b

    .line 264
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v0

    return-object v0

    .line 267
    :cond_b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .line 273
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 279
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_c2

    .line 286
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_1c

    .line 290
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 291
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    .line 296
    goto/16 :goto_c2

    .line 293
    :catch_19
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_81

    .line 301
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-nez v0, :cond_51

    .line 305
    :try_start_24
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_AEADChaCha20Poly1305:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 306
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_44} :catch_46

    .line 311
    goto/16 :goto_c2

    .line 308
    :catch_46
    move-exception v0

    .line 310
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    :try_start_51
    const-string v0, "GCM"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 318
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v1, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;-><init>([BI)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_75} :catch_76

    .line 323
    goto :goto_c2

    .line 320
    :catch_76
    move-exception v0

    .line 322
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_c2

    .line 328
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_a0

    .line 332
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_a0
    :try_start_a0
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 338
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b6} :catch_b7

    .line 343
    goto :goto_c2

    .line 340
    :catch_b7
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c2
    :goto_c2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 9
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1131
    const/4 v0, 0x0

    .line 1133
    .local v0, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_29

    .line 1135
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    invoke-static {p3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;->extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_c

    goto :goto_29

    .line 1139
    :cond_c
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t handle parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1143
    :cond_29
    :goto_29
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1145
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 1146
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1156
    const/4 v0, 0x0

    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_7} :catch_9

    .line 1161
    nop

    .line 1162
    return-void

    .line 1158
    :catch_9
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 24
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 631
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 632
    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 633
    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 634
    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 639
    instance-of v6, v3, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_3c

    .line 641
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key for algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_2a

    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    :cond_2a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " not suitable for symmetric enryption."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 647
    :cond_3c
    if-nez v4, :cond_59

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_59

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "RC5-64"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_59

    .line 649
    :cond_51
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_59
    :goto_59
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    const/4 v6, 0x2

    const-string v7, "Algorithm requires a PBE key"

    if-eq v0, v6, :cond_64

    instance-of v0, v3, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    if-eqz v0, :cond_ff

    :cond_64
    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 664
    :try_start_6a
    move-object v0, v3

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_f6

    .line 669
    .local v0, "k":Ljavax/crypto/SecretKey;
    nop

    .line 671
    instance-of v6, v4, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v6, :cond_77

    .line 673
    move-object v6, v4

    check-cast v6, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 676
    :cond_77
    instance-of v6, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v6, :cond_a0

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_a0

    .line 678
    move-object v6, v0

    check-cast v6, Ljavax/crypto/interfaces/PBEKey;

    .line 679
    .local v6, "pbeKey":Ljavax/crypto/interfaces/PBEKey;
    invoke-interface {v6}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v9

    if-eqz v9, :cond_98

    .line 683
    new-instance v9, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v6}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v10

    invoke-interface {v6}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v11

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v9, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_a0

    .line 681
    :cond_98
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "PBEKey requires parameters to specify salt"

    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 686
    .end local v6    # "pbeKey":Ljavax/crypto/interfaces/PBEKey;
    :cond_a0
    :goto_a0
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_af

    instance-of v6, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v6, :cond_a9

    goto :goto_af

    .line 688
    :cond_a9
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 691
    :cond_af
    :goto_af
    instance-of v6, v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v6, :cond_d2

    .line 695
    move-object v6, v3

    check-cast v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    .line 696
    .local v6, "pbeKeyParam":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    instance-of v7, v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_c0

    .line 698
    move-object v7, v6

    .line 712
    .end local v6    # "pbeKeyParam":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .local v7, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_eb

    .line 700
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v6    # "pbeKeyParam":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_c0
    if-nez v6, :cond_ca

    .line 705
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Unreachable code"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 710
    :cond_ca
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "Algorithm requires a PBE key suitable for PKCS12"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 715
    .end local v6    # "pbeKeyParam":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_d2
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v9

    iget v11, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    iget v12, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    iget v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    mul-int/lit8 v13, v6, 0x8

    iget-object v14, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v15

    const/4 v10, 0x2

    invoke-static/range {v9 .. v15}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 717
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_eb
    instance-of v6, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_f4

    .line 719
    move-object v6, v7

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 721
    .end local v0    # "k":Ljavax/crypto/SecretKey;
    :cond_f4
    goto/16 :goto_218

    .line 666
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :catch_f6
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 745
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ff
    instance-of v0, v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_1b4

    .line 747
    move-object v0, v3

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 749
    .local v0, "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    if-eqz v6, :cond_117

    .line 751
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_11d

    .line 755
    :cond_117
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 758
    :goto_11d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    if-eqz v6, :cond_12e

    .line 760
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->adjustParameters(Ljava/security/spec/AlgorithmParameterSpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    move-object v7, v6

    .local v6, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_1a0

    .line 762
    .end local v6    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_12e
    instance-of v6, v4, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v6, :cond_1aa

    .line 764
    move-object v6, v4

    check-cast v6, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 769
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_18d

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    if-lez v6, :cond_18d

    .line 770
    new-instance v9, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v13

    .line 771
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v14

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v15

    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    .line 773
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getPassword()[C

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v8

    move-object/from16 v18, v0

    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .local v18, "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v0

    .line 774
    move-object/from16 v16, v9

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v9

    invoke-direct {v6, v7, v8, v0, v9}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const/16 v17, 0x0

    move-object/from16 v9, v16

    move-object/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    .end local v18    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .local v16, "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    goto :goto_191

    .line 769
    .end local v16    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_18d
    move-object/from16 v18, v0

    .line 778
    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local v18    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    move-object/from16 v0, v18

    .end local v18    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :goto_191
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    move-object v7, v6

    .line 785
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_1a0
    instance-of v6, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_1a9

    .line 787
    move-object v6, v7

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 789
    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1a9
    goto :goto_218

    .line 782
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1aa
    move-object/from16 v18, v0

    .end local v0    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local v18    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    .end local v18    # "k":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1b4
    instance-of v0, v3, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v0, :cond_1fb

    .line 792
    move-object v0, v3

    check-cast v0, Ljavax/crypto/interfaces/PBEKey;

    .line 793
    .local v0, "k":Ljavax/crypto/interfaces/PBEKey;
    move-object v6, v4

    check-cast v6, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 794
    instance-of v6, v0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;

    if-eqz v6, :cond_1d7

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_1d7

    .line 796
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v0}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v7

    invoke-interface {v0}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 799
    :cond_1d7
    invoke-interface {v0}, Ljavax/crypto/interfaces/PBEKey;->getEncoded()[B

    move-result-object v9

    iget v10, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    iget v11, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    iget v12, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    iget v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    mul-int/lit8 v13, v6, 0x8

    iget-object v14, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v9 .. v15}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 800
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    instance-of v6, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_1fa

    .line 802
    move-object v6, v7

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 804
    .end local v0    # "k":Ljavax/crypto/interfaces/PBEKey;
    :cond_1fa
    goto :goto_218

    .line 810
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_1fb
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    if-eqz v0, :cond_3ef

    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    const/4 v6, 0x4

    if-eq v0, v6, :cond_3ef

    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3ef

    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    const/4 v6, 0x5

    if-eq v0, v6, :cond_3ef

    .line 814
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v7, v0

    .line 823
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_218
    instance-of v0, v4, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_25d

    .line 825
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_233

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-eqz v0, :cond_22b

    goto :goto_233

    .line 827
    :cond_22b
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "AEADParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_233
    :goto_233
    move-object v0, v4

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    .line 833
    .local v0, "aeadSpec":Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;
    instance-of v6, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_244

    .line 835
    move-object v6, v7

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .local v6, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_247

    .line 839
    .end local v6    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_244
    move-object v6, v7

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 841
    .restart local v6    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :goto_247
    new-instance v8, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getAssociatedData()[B

    move-result-object v11

    invoke-direct {v8, v6, v9, v10, v11}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    iput-object v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    move-object v7, v8

    .line 842
    .end local v0    # "aeadSpec":Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;
    .end local v6    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto/16 :goto_320

    .line 843
    :cond_25d
    instance-of v0, v4, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_2da

    .line 845
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    if-eqz v0, :cond_2c3

    .line 847
    move-object v0, v4

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 849
    .local v0, "p":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v6

    array-length v6, v6

    iget v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    if-eq v6, v8, :cond_29d

    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v6, v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-nez v6, :cond_29d

    iget-boolean v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    if-nez v6, :cond_27c

    goto :goto_29d

    .line 851
    :cond_27c
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IV must be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes long."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 854
    :cond_29d
    :goto_29d
    instance-of v6, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_2b3

    .line 856
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    move-object v8, v7

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v6

    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .local v6, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_2bd

    .line 860
    .end local v6    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_2b3
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v6

    .line 862
    :goto_2bd
    move-object v6, v7

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 863
    .end local v0    # "p":Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_320

    .line 866
    :cond_2c3
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v0, :cond_320

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v6, "ECB"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d2

    goto :goto_320

    .line 868
    :cond_2d2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "ECB mode does not use an IV"

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_2da
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_310

    .line 962
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f7

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-eqz v0, :cond_2ef

    goto :goto_2f7

    .line 964
    :cond_2ef
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "GCMParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_2f7
    :goto_2f7
    instance-of v0, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_305

    .line 970
    move-object v0, v7

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .local v0, "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_308

    .line 974
    .end local v0    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_305
    move-object v0, v7

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 977
    .restart local v0    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :goto_308
    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractAeadParameters(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    move-object v7, v6

    .line 978
    .end local v0    # "keyParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_320

    .line 979
    :cond_310
    if-eqz v4, :cond_320

    instance-of v0, v4, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_317

    goto :goto_320

    .line 981
    :cond_317
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v6, "unknown parameter type."

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_320
    :goto_320
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    if-eqz v0, :cond_375

    instance-of v0, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_375

    instance-of v0, v7, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-nez v0, :cond_375

    .line 986
    move-object/from16 v0, p4

    .line 988
    .local v0, "ivRandom":Ljava/security/SecureRandom;
    if-nez v0, :cond_334

    .line 990
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 993
    :cond_334
    const-string v6, "No IV set when using PBE key"

    const/4 v8, 0x1

    if-eq v2, v8, :cond_356

    const/4 v8, 0x3

    if-ne v2, v8, :cond_33d

    goto :goto_356

    .line 1010
    :cond_33d
    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PGPCFB"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_350

    goto :goto_375

    .line 1015
    :cond_350
    new-instance v8, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v8, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 995
    :cond_356
    :goto_356
    iget v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    new-array v8, v8, [B

    .line 1001
    .local v8, "iv":[B
    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    move-result v9

    if-nez v9, :cond_36f

    .line 1002
    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1007
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v6

    .line 1008
    move-object v6, v7

    check-cast v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 1009
    .end local v8    # "iv":[B
    goto :goto_375

    .line 1004
    .restart local v8    # "iv":[B
    :cond_36f
    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v9, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1021
    .end local v0    # "ivRandom":Ljava/security/SecureRandom;
    .end local v8    # "iv":[B
    :cond_375
    :goto_375
    if-eqz v5, :cond_381

    iget-boolean v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    if-eqz v0, :cond_381

    .line 1023
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v7, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v7, v0

    .line 1028
    :cond_381
    packed-switch v2, :pswitch_data_3f6

    .line 1039
    :try_start_384
    new-instance v0, Ljava/security/InvalidParameterException;

    goto :goto_3c7

    .line 1036
    :pswitch_387
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    invoke-interface {v0, v6, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 1037
    goto :goto_395

    .line 1032
    :pswitch_38e
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v6, 0x1

    invoke-interface {v0, v6, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 1033
    nop

    .line 1042
    :goto_395
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    if-eqz v0, :cond_3c3

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-nez v0, :cond_3c3

    .line 1044
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->-$$Nest$fgetcipher(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    move-result-object v0

    .line 1046
    .local v0, "aeadCipher":Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    iget-object v8, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->getMac()[B

    move-result-object v9

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x8

    iget-object v10, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v10

    invoke-direct {v6, v8, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B)V

    iput-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 1060
    .end local v0    # "aeadCipher":Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
    :cond_3c3
    nop

    .line 1061
    return-void

    .line 1057
    :catch_3c5
    move-exception v0

    goto :goto_3e5

    .line 1039
    :goto_3c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown opmode "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " passed"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "random":Ljava/security/SecureRandom;
    throw v0
    :try_end_3e5
    .catch Ljava/lang/Exception; {:try_start_384 .. :try_end_3e5} :catch_3c5

    .line 1059
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
    .restart local p1    # "opmode":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p4    # "random":Ljava/security/SecureRandom;
    :goto_3e5
    new-instance v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 812
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_3ef
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_3f6
    .packed-switch 0x1
        :pswitch_38e
        :pswitch_387
        :pswitch_38e
        :pswitch_387
    .end packed-switch
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_17b

    .line 358
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 362
    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 363
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_161

    .line 365
    :cond_22
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 367
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 368
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 369
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_161

    .line 371
    :cond_43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_90

    .line 373
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 374
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_78

    .line 376
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 378
    .local v0, "wordSize":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 380
    .end local v0    # "wordSize":I
    goto/16 :goto_161

    .line 383
    :cond_78
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 384
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_161

    .line 387
    :cond_90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CFB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 389
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 390
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_c3

    .line 392
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 394
    .restart local v0    # "wordSize":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 395
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)Lcom/android/internal/org/bouncycastle/crypto/modes/CFBModeCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 396
    .end local v0    # "wordSize":I
    goto/16 :goto_161

    .line 399
    :cond_c3
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 400
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)Lcom/android/internal/org/bouncycastle/crypto/modes/CFBModeCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_161

    .line 449
    :cond_da
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 451
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 452
    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    .line 463
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 464
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_161

    .line 485
    :cond_101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "CTS"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 487
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 488
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_161

    .line 490
    :cond_126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "CCM"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 492
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 502
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CCMModeCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_161

    .line 531
    :cond_142
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 533
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    .line 544
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/GCMModeCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 553
    :goto_161
    return-void

    .line 551
    :cond_162
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_17b
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "no mode supported for this algorithm"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 6
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_150

    .line 564
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "paddingName":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 568
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 570
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_14f

    .line 573
    :cond_2c
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13d

    const-string v1, "CTSPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13d

    const-string v1, "CS3PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto/16 :goto_13d

    .line 579
    :cond_46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    .line 581
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_135

    .line 585
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    goto/16 :goto_127

    .line 589
    :cond_63
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 591
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_14f

    .line 593
    :cond_7f
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    goto/16 :goto_114

    .line 597
    :cond_91
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_101

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    goto :goto_101

    .line 601
    :cond_a2
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ee

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    goto :goto_ee

    .line 605
    :cond_b3
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 607
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/TBCPadding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto/16 :goto_14f

    .line 611
    :cond_cf
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_ee
    :goto_ee
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_14f

    .line 599
    :cond_101
    :goto_101
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_14f

    .line 595
    :cond_114
    :goto_114
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_14f

    .line 587
    :cond_127
    :goto_127
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    goto :goto_14f

    .line 583
    :cond_135
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only NoPadding can be used with AEAD modes."

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_13d
    :goto_13d
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    .line 614
    :cond_14f
    :goto_14f
    return-void

    .line 561
    .end local v0    # "paddingName":Ljava/lang/String;
    :cond_150
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "no padding supported for this algorithm"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 14
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_2a

    .line 1252
    :try_start_a
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;
    :try_end_c
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_a .. :try_end_c} :catch_19

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .local v3, "input":[B
    .local v4, "inputOffset":I
    .local v5, "inputLen":I
    .local v6, "output":[B
    .local v7, "outputOffset":I
    :try_start_11
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result p1
    :try_end_15
    .catch Lcom/android/internal/org/bouncycastle/crypto/DataLengthException; {:try_start_11 .. :try_end_15} :catch_16

    return p1

    .line 1254
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v3    # "input":[B
    .end local v4    # "inputOffset":I
    .end local v5    # "inputLen":I
    .end local v6    # "output":[B
    .end local v7    # "outputOffset":I
    .restart local p1    # "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :catch_19
    move-exception v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object p1, v0

    .line 1257
    .end local p2    # "inputOffset":I
    .end local p3    # "inputLen":I
    .end local p4    # "output":[B
    .end local p5    # "outputOffset":I
    .restart local v3    # "input":[B
    .restart local v4    # "inputOffset":I
    .restart local v5    # "inputLen":I
    .restart local v6    # "output":[B
    .restart local v7    # "outputOffset":I
    .local p1, "e":Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
    :goto_20
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1247
    .end local v3    # "input":[B
    .end local v4    # "inputOffset":I
    .end local v5    # "inputLen":I
    .end local v6    # "output":[B
    .end local v7    # "outputOffset":I
    .local p1, "input":[B
    .restart local p2    # "inputOffset":I
    .restart local p3    # "inputLen":I
    .restart local p4    # "output":[B
    .restart local p5    # "outputOffset":I
    :cond_2a
    move-object v3, p1

    move v4, p2

    .end local p1    # "input":[B
    .end local p2    # "inputOffset":I
    .restart local v3    # "input":[B
    .restart local v4    # "inputOffset":I
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 1208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    .line 1210
    .local v0, "length":I
    const/4 v7, 0x0

    if-lez v0, :cond_23

    .line 1212
    new-array v5, v0, [B

    .line 1214
    .local v5, "out":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v1

    .line 1216
    .local v1, "len":I
    if-nez v1, :cond_18

    .line 1218
    return-object v7

    .line 1220
    :cond_18
    array-length v2, v5

    if-eq v1, v2, :cond_22

    .line 1222
    new-array v2, v1, [B

    .line 1224
    .local v2, "tmp":[B
    const/4 v3, 0x0

    invoke-static {v5, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1226
    return-object v2

    .line 1229
    .end local v2    # "tmp":[B
    :cond_22
    return-object v5

    .line 1232
    .end local v1    # "len":I
    .end local v5    # "out":[B
    :cond_23
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    .line 1234
    return-object v7
.end method

.method protected whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1172
    .local v0, "remaining":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    goto :goto_4b

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

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 1179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4b

    .line 1181
    :cond_26
    const/16 v1, 0x200

    const/4 v2, 0x0

    if-gt v0, v1, :cond_38

    .line 1183
    new-array v1, v0, [B

    .line 1184
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1185
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 1186
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 1187
    .end local v1    # "data":[B
    goto :goto_4b

    .line 1190
    :cond_38
    new-array v1, v1, [B

    .line 1193
    .restart local v1    # "data":[B
    :cond_3a
    array-length v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1194
    .local v3, "length":I
    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1195
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    .line 1196
    sub-int/2addr v0, v3

    .line 1198
    .end local v3    # "length":I
    if-gtz v0, :cond_3a

    .line 1199
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 1201
    .end local v1    # "data":[B
    :goto_4b
    return-void
.end method

.method protected whitelist test-api engineUpdateAAD([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1166
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->updateAAD([BII)V

    .line 1167
    return-void
.end method
