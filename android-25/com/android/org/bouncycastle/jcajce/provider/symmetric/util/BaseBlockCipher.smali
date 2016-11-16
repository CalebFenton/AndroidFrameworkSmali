.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;
    }
.end annotation


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# instance fields
.field private aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

.field private availableSpecs:[Ljava/lang/Class;

.field private baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

.field private digest:I

.field private engineProvider:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

.field private fixedIv:Z

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private keySizeInBits:I

.field private modeName:Ljava/lang/String;

.field private padded:Z

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

.field private scheme:I


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 88
    const-string/jumbo v0, "javax.crypto.spec.GCMParameterSpec"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@9
    .line 84
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 6
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 140
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@6
    .line 94
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [Ljava/lang/Class;

    #@9
    .line 99
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@b
    aput-object v1, v0, v4

    #@d
    .line 100
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@f
    aput-object v1, v0, v5

    #@11
    .line 101
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 93
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 114
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@1b
    .line 117
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1d
    .line 120
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@1f
    .line 121
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@21
    .line 122
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@23
    .line 124
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@25
    .line 143
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@27
    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@29
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@2c
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2e
    .line 141
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 6
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "ivLength"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 193
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@6
    .line 94
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [Ljava/lang/Class;

    #@9
    .line 99
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@b
    aput-object v1, v0, v4

    #@d
    .line 100
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@f
    aput-object v1, v0, v5

    #@11
    .line 101
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 93
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 114
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@1b
    .line 117
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1d
    .line 120
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@1f
    .line 121
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@21
    .line 122
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@23
    .line 124
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@25
    .line 197
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@27
    .line 199
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@29
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@2c
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2e
    .line 200
    div-int/lit8 v0, p2, 0x8

    #@30
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@32
    .line 195
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;IIII)V
    .locals 6
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "scheme"    # I
    .param p3, "digest"    # I
    .param p4, "keySizeInBits"    # I
    .param p5, "ivLength"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 148
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@6
    .line 94
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [Ljava/lang/Class;

    #@9
    .line 99
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@b
    aput-object v1, v0, v4

    #@d
    .line 100
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@f
    aput-object v1, v0, v5

    #@11
    .line 101
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 93
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 114
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@1b
    .line 117
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1d
    .line 120
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@1f
    .line 121
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@21
    .line 122
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@23
    .line 124
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@25
    .line 155
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@27
    .line 157
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@29
    .line 158
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    #@2b
    .line 159
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    #@2d
    .line 160
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@2f
    .line 162
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@31
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@34
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@36
    .line 153
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;I)V
    .locals 6
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
    .param p2, "ivLength"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 203
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@6
    .line 94
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [Ljava/lang/Class;

    #@9
    .line 99
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@b
    aput-object v1, v0, v4

    #@d
    .line 100
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@f
    aput-object v1, v0, v5

    #@11
    .line 101
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 93
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 114
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@1b
    .line 117
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1d
    .line 120
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@1f
    .line 121
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@21
    .line 122
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@23
    .line 124
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@25
    .line 207
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2b
    .line 209
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@2d
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    #@30
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@32
    .line 210
    div-int/lit8 v0, p2, 0x8

    #@34
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@36
    .line 205
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 6
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 174
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@6
    .line 94
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [Ljava/lang/Class;

    #@9
    .line 99
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@b
    aput-object v1, v0, v4

    #@d
    .line 100
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@f
    aput-object v1, v0, v5

    #@11
    .line 101
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 93
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 114
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@1b
    .line 117
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1d
    .line 120
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@1f
    .line 121
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@21
    .line 122
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@23
    .line 124
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@25
    .line 177
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2b
    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2d
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@33
    .line 179
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@35
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    #@38
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@3a
    .line 175
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;ZI)V
    .locals 6
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;
    .param p2, "fixedIv"    # Z
    .param p3, "ivLength"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 182
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@6
    .line 94
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [Ljava/lang/Class;

    #@9
    .line 99
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@b
    aput-object v1, v0, v4

    #@d
    .line 100
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@f
    aput-object v1, v0, v5

    #@11
    .line 101
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 93
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 114
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@1b
    .line 117
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1d
    .line 120
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@1f
    .line 121
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@21
    .line 122
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@23
    .line 124
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@25
    .line 187
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2b
    .line 188
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@2d
    .line 189
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@2f
    .line 190
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@31
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    #@34
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@36
    .line 185
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V
    .locals 6
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 165
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@6
    .line 94
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [Ljava/lang/Class;

    #@9
    .line 99
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@b
    aput-object v1, v0, v4

    #@d
    .line 100
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@f
    aput-object v1, v0, v5

    #@11
    .line 101
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 93
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 114
    const/4 v0, -0x1

    #@19
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@1b
    .line 117
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1d
    .line 120
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@1f
    .line 121
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@21
    .line 122
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@23
    .line 124
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@25
    .line 168
    invoke-interface {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2b
    .line 169
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineProvider:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    #@2d
    .line 171
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@2f
    invoke-interface {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@36
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@38
    .line 166
    return-void
.end method

.method private adjustParameters(Ljava/security/spec/AlgorithmParameterSpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 905
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@2
    if-eqz v2, :cond_1

    #@4
    move-object v2, p2

    #@5
    .line 907
    nop

    #@6
    nop

    #@7
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@a
    move-result-object v1

    #@b
    .line 908
    .local v1, "key":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    instance-of v2, p1, Ljavax/crypto/spec/IvParameterSpec;

    #@d
    if-eqz v2, :cond_0

    #@f
    move-object v0, p1

    #@10
    .line 910
    nop

    #@11
    nop

    #@12
    .line 912
    .local v0, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@14
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v1, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@1b
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@1d
    .line 913
    iget-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@1f
    .line 955
    .end local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v1    # "key":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    :goto_0
    return-object p2

    #@20
    .line 933
    :cond_1
    instance-of v2, p1, Ljavax/crypto/spec/IvParameterSpec;

    #@22
    if-eqz v2, :cond_0

    #@24
    move-object v0, p1

    #@25
    .line 935
    nop

    #@26
    nop

    #@27
    .line 937
    .restart local v0    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@29
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v2, p2, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@30
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@32
    .line 938
    iget-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@34
    goto :goto_0
.end method

.method private isAEADModeName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1157
    const-string/jumbo v0, "CCM"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "GCM"

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private isBCPBEKeyWithoutIV(Ljava/security/Key;)Z
    .locals 2
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 492
    instance-of v1, p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@3
    if-eqz v1, :cond_0

    #@5
    nop

    #@6
    nop

    #@7
    .end local p1    # "key":Ljava/security/Key;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@a
    move-result-object v1

    #@b
    instance-of v1, v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@d
    if-eqz v1, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    :try_start_0
    const-class v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    #@2
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v0

    #@a
    .line 132
    .local v0, "def":Ljava/lang/Class;
    return-object v0

    #@b
    .line 135
    .end local v0    # "def":Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@c
    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    #@d
    return-object v2
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 9
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

    #@0
    .prologue
    .line 1127
    const/4 v8, 0x0

    #@1
    .line 1129
    .local v8, "len":I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    #@4
    move-result v0

    #@5
    add-int/2addr v0, p5

    #@6
    array-length v1, p4

    #@7
    if-le v0, v1, :cond_0

    #@9
    .line 1131
    new-instance v0, Ljavax/crypto/ShortBufferException;

    #@b
    const-string/jumbo v1, "output buffer too short for input."

    #@e
    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1136
    :cond_0
    if-eqz p3, :cond_1

    #@14
    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@16
    move-object v1, p1

    #@17
    move v2, p2

    #@18
    move v3, p3

    #@19
    move-object v4, p4

    #@1a
    move v5, p5

    #@1b
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    #@1e
    move-result v8

    #@1f
    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@21
    add-int v1, p5, v8

    #@23
    invoke-interface {v0, p4, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/OutputLengthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result v0

    #@27
    add-int/2addr v0, v8

    #@28
    return v0

    #@29
    .line 1148
    :catch_0
    move-exception v6

    #@2a
    .line 1149
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@2c
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1144
    .end local v6    # "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    :catch_1
    move-exception v7

    #@35
    .line 1145
    .local v7, "e":Lcom/android/org/bouncycastle/crypto/OutputLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@37
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1090
    const/4 v7, 0x0

    #@2
    .line 1091
    .local v7, "len":I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    #@5
    move-result v0

    #@6
    new-array v4, v0, [B

    #@8
    .line 1093
    .local v4, "tmp":[B
    if-eqz p3, :cond_0

    #@a
    .line 1095
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@c
    move-object v1, p1

    #@d
    move v2, p2

    #@e
    move v3, p3

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    #@12
    move-result v7

    #@13
    .line 1100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@15
    invoke-interface {v0, v4, v7}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v0

    #@19
    add-int/2addr v7, v0

    #@1a
    .line 1107
    array-length v0, v4

    #@1b
    if-ne v7, v0, :cond_1

    #@1d
    .line 1109
    return-object v4

    #@1e
    .line 1103
    :catch_0
    move-exception v6

    #@1f
    .line 1104
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@21
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 1112
    .end local v6    # "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    :cond_1
    new-array v8, v7, [B

    #@2b
    .line 1114
    .local v8, "out":[B
    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2e
    .line 1116
    return-object v8
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected engineGetIV()[B
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 220
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 222
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@12
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@15
    move-result-object v0

    #@16
    :cond_1
    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    .line 231
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    mul-int/lit8 v0, v0, 0x8

    #@7
    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x2f

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 242
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 244
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@e
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@14
    .line 249
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@16
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@18
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 289
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@1d
    return-object v2

    #@1e
    .line 252
    :catch_0
    move-exception v0

    #@1f
    .line 253
    .local v0, "e":Ljava/lang/Exception;
    return-object v4

    #@20
    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 258
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@26
    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@29
    move-result-object v2

    #@2a
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 260
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    #@31
    move-result v2

    #@32
    if-ltz v2, :cond_2

    #@34
    .line 262
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    #@37
    move-result v2

    #@38
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 267
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@3f
    move-result-object v2

    #@40
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@42
    .line 268
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@44
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@46
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@4d
    goto :goto_0

    #@4e
    .line 271
    :catch_1
    move-exception v0

    #@4f
    .line 272
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@51
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2

    #@59
    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@5b
    if-eqz v2, :cond_0

    #@5d
    .line 279
    :try_start_2
    const-string/jumbo v2, "GCM"

    #@60
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@63
    move-result-object v2

    #@64
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@66
    .line 280
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@68
    new-instance v3, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@6a
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@6c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    #@6f
    move-result-object v4

    #@70
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@72
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    #@75
    move-result v5

    #@76
    div-int/lit8 v5, v5, 0x8

    #@78
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V

    #@7b
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@82
    goto :goto_0

    #@83
    .line 283
    :catch_2
    move-exception v0

    #@84
    .line 284
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@86
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
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

    #@0
    .prologue
    .line 965
    const/4 v2, 0x0

    #@1
    .line 967
    .local v2, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_2

    #@3
    .line 969
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@6
    array-length v3, v3

    #@7
    if-eq v1, v3, :cond_1

    #@9
    .line 971
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@b
    aget-object v3, v3, v1

    #@d
    if-nez v3, :cond_0

    #@f
    .line 969
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 978
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@14
    aget-object v3, v3, v1

    #@16
    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v2

    #@1a
    .line 987
    .end local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    if-nez v2, :cond_2

    #@1c
    .line 989
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "can\'t handle parameter "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 993
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@3d
    .line 995
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@3f
    .line 963
    return-void

    #@40
    .line 982
    .restart local v1    # "i":I
    .restart local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v0

    #@41
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 1006
    const/4 v1, 0x0

    #@1
    :try_start_0
    nop

    #@2
    nop

    #@3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1002
    return-void

    #@7
    .line 1009
    :catch_0
    move-exception v0

    #@8
    .line 1010
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 22
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

    #@0
    .prologue
    .line 505
    const/4 v3, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@5
    .line 506
    const/4 v3, 0x0

    #@6
    move-object/from16 v0, p0

    #@8
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@a
    .line 507
    const/4 v3, 0x0

    #@b
    move-object/from16 v0, p0

    #@d
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@f
    .line 508
    const/4 v3, 0x0

    #@10
    move-object/from16 v0, p0

    #@12
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@14
    .line 513
    move-object/from16 v0, p2

    #@16
    instance-of v3, v0, Ljavax/crypto/SecretKey;

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 515
    new-instance v3, Ljava/security/InvalidKeyException;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Key for algorithm "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, " not suitable for symmetric enryption."

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v3

    #@3f
    .line 521
    :cond_0
    if-nez p3, :cond_1

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@45
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    const-string/jumbo v4, "RC5-64"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_1

    #@52
    .line 523
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@54
    const-string/jumbo v4, "RC5 requires an RC5ParametersSpec to be passed in."

    #@57
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3

    #@5b
    .line 533
    :cond_1
    move-object/from16 v0, p0

    #@5d
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@5f
    const/4 v4, 0x2

    #@60
    if-eq v3, v4, :cond_2

    #@62
    move-object/from16 v0, p2

    #@64
    instance-of v3, v0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    #@66
    if-eqz v3, :cond_3

    #@68
    :cond_2
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, p2

    #@6c
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_8

    #@72
    .line 621
    :cond_3
    move-object/from16 v0, p2

    #@74
    instance-of v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@76
    if-eqz v3, :cond_13

    #@78
    move-object/from16 v14, p2

    #@7a
    .line 623
    nop

    #@7b
    nop

    #@7c
    .line 625
    .local v14, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7f
    move-result-object v3

    #@80
    if-eqz v3, :cond_10

    #@82
    .line 627
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    move-object/from16 v0, p0

    #@8c
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@8e
    .line 634
    :goto_0
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@91
    move-result-object v3

    #@92
    if-eqz v3, :cond_11

    #@94
    .line 636
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@97
    move-result-object v3

    #@98
    move-object/from16 v0, p0

    #@9a
    move-object/from16 v1, p3

    #@9c
    invoke-direct {v0, v1, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->adjustParameters(Ljava/security/spec/AlgorithmParameterSpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@9f
    move-result-object v19

    #@a0
    .line 648
    .local v19, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_1
    move-object/from16 v0, v19

    #@a2
    instance-of v3, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@a4
    if-eqz v3, :cond_4

    #@a6
    move-object/from16 v3, v19

    #@a8
    .line 650
    nop

    #@a9
    nop

    #@aa
    move-object/from16 v0, p0

    #@ac
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@ae
    .line 686
    .end local v14    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_4
    :goto_2
    move-object/from16 v0, p3

    #@b0
    instance-of v3, v0, Ljavax/crypto/spec/IvParameterSpec;

    #@b2
    if-eqz v3, :cond_1b

    #@b4
    .line 688
    move-object/from16 v0, p0

    #@b6
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@b8
    if-eqz v3, :cond_1a

    #@ba
    move-object/from16 v18, p3

    #@bc
    .line 690
    nop

    #@bd
    nop

    #@be
    .line 692
    .local v18, "p":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual/range {v18 .. v18}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@c1
    move-result-object v3

    #@c2
    array-length v3, v3

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@c7
    if-eq v3, v4, :cond_5

    #@c9
    move-object/from16 v0, p0

    #@cb
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@cd
    instance-of v3, v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@cf
    if-eqz v3, :cond_18

    #@d1
    .line 697
    :cond_5
    move-object/from16 v0, v19

    #@d3
    instance-of v3, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@d5
    if-eqz v3, :cond_19

    #@d7
    .line 699
    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@d9
    nop

    #@da
    nop

    #@db
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@de
    move-result-object v3

    #@df
    invoke-virtual/range {v18 .. v18}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@e2
    move-result-object v4

    #@e3
    move-object/from16 v0, v20

    #@e5
    invoke-direct {v0, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@e8
    .local v20, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object/from16 v19, v20

    #@ea
    .end local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_3
    move-object/from16 v3, v19

    #@ec
    .line 705
    nop

    #@ed
    nop

    #@ee
    move-object/from16 v0, p0

    #@f0
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@f2
    .line 828
    .end local v18    # "p":Ljavax/crypto/spec/IvParameterSpec;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    #@f4
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@f6
    if-eqz v3, :cond_7

    #@f8
    move-object/from16 v0, v19

    #@fa
    instance-of v3, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@fc
    if-eqz v3, :cond_20

    #@fe
    :cond_7
    move-object/from16 v20, v19

    #@100
    .line 868
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_5
    if-eqz p4, :cond_26

    #@102
    move-object/from16 v0, p0

    #@104
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    #@106
    if-eqz v3, :cond_27

    #@108
    .line 870
    new-instance v19, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@10a
    move-object/from16 v0, v19

    #@10c
    move-object/from16 v1, v20

    #@10e
    move-object/from16 v2, p4

    #@110
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@113
    .line 875
    .end local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_6
    packed-switch p1, :pswitch_data_0

    #@116
    .line 886
    :try_start_0
    new-instance v3, Ljava/security/InvalidParameterException;

    #@118
    new-instance v4, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v5, "unknown opmode "

    #@120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v4

    #@124
    move/from16 v0, p1

    #@126
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@129
    move-result-object v4

    #@12a
    const-string/jumbo v5, " passed"

    #@12d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v4

    #@131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v4

    #@135
    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@138
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@139
    .line 890
    :catch_0
    move-exception v10

    #@13a
    .line 891
    .local v10, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$1;

    #@13c
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@13f
    move-result-object v4

    #@140
    move-object/from16 v0, p0

    #@142
    invoke-direct {v3, v0, v4, v10}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$1;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;Ljava/lang/String;Ljava/lang/Exception;)V

    #@145
    throw v3

    #@146
    .line 539
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_8
    :try_start_1
    move-object/from16 v0, p2

    #@148
    check-cast v0, Ljavax/crypto/SecretKey;

    #@14a
    move-object v15, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@14b
    .line 546
    .local v15, "k":Ljavax/crypto/SecretKey;
    move-object/from16 v0, p3

    #@14d
    instance-of v3, v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@14f
    if-eqz v3, :cond_9

    #@151
    move-object/from16 v3, p3

    #@153
    .line 548
    nop

    #@154
    nop

    #@155
    move-object/from16 v0, p0

    #@157
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@159
    .line 551
    :cond_9
    instance-of v3, v15, Ljavax/crypto/interfaces/PBEKey;

    #@15b
    if-eqz v3, :cond_b

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@161
    if-nez v3, :cond_b

    #@163
    move-object v3, v15

    #@164
    .line 554
    check-cast v3, Ljavax/crypto/interfaces/PBEKey;

    #@166
    invoke-interface {v3}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    #@169
    move-result-object v3

    #@16a
    if-nez v3, :cond_a

    #@16c
    .line 555
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@16e
    const-string/jumbo v4, "Parameters for the algorithm are null and the PBEKey has null salt"

    #@171
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@174
    throw v3

    #@175
    .line 542
    .end local v15    # "k":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v10

    #@176
    .line 543
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@178
    const-string/jumbo v4, "PKCS12 requires a SecretKey/PBEKey"

    #@17b
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@17e
    throw v3

    #@17f
    .line 559
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v15    # "k":Ljavax/crypto/SecretKey;
    :cond_a
    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    #@181
    move-object v3, v15

    #@182
    check-cast v3, Ljavax/crypto/interfaces/PBEKey;

    #@184
    invoke-interface {v3}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    #@187
    move-result-object v5

    #@188
    move-object v3, v15

    #@189
    check-cast v3, Ljavax/crypto/interfaces/PBEKey;

    #@18b
    invoke-interface {v3}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    #@18e
    move-result v3

    #@18f
    invoke-direct {v4, v5, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@192
    move-object/from16 v0, p0

    #@194
    iput-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@196
    .line 562
    :cond_b
    move-object/from16 v0, p0

    #@198
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@19a
    if-nez v3, :cond_c

    #@19c
    instance-of v3, v15, Ljavax/crypto/interfaces/PBEKey;

    #@19e
    if-eqz v3, :cond_d

    #@1a0
    .line 566
    :cond_c
    move-object/from16 v0, p2

    #@1a2
    instance-of v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@1a4
    if-eqz v3, :cond_f

    #@1a6
    move-object/from16 v3, p2

    #@1a8
    .line 575
    nop

    #@1a9
    nop

    #@1aa
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@1ad
    move-result-object v3

    #@1ae
    if-eqz v3, :cond_e

    #@1b0
    move-object/from16 v3, p2

    #@1b2
    nop

    #@1b3
    nop

    #@1b4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@1b7
    move-result-object v3

    #@1b8
    instance-of v3, v3, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@1ba
    if-eqz v3, :cond_e

    #@1bc
    move-object/from16 v3, p2

    #@1be
    .line 578
    nop

    #@1bf
    nop

    #@1c0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@1c3
    move-result-object v19

    #@1c4
    .line 595
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_7
    move-object/from16 v0, v19

    #@1c6
    instance-of v3, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@1c8
    if-eqz v3, :cond_4

    #@1ca
    move-object/from16 v3, v19

    #@1cc
    .line 597
    nop

    #@1cd
    nop

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@1d2
    goto/16 :goto_2

    #@1d4
    .line 564
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_d
    new-instance v3, Ljava/security/InvalidKeyException;

    #@1d6
    const-string/jumbo v4, "Algorithm requires a PBE key"

    #@1d9
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1dc
    throw v3

    #@1dd
    .line 588
    :cond_e
    new-instance v3, Ljava/lang/IllegalStateException;

    #@1df
    const-string/jumbo v4, "Unreachable code"

    #@1e2
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e5
    throw v3

    #@1e6
    .line 593
    :cond_f
    invoke-interface {v15}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@1e9
    move-result-object v3

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iget v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iget v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    #@1f2
    move-object/from16 v0, p0

    #@1f4
    iget v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1f6
    mul-int/lit8 v7, v4, 0x8

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget-object v8, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@200
    invoke-interface {v4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@203
    move-result-object v9

    #@204
    const/4 v4, 0x2

    #@205
    invoke-static/range {v3 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@208
    move-result-object v19

    #@209
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_7

    #@20a
    .line 631
    .end local v15    # "k":Ljavax/crypto/SecretKey;
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v14    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_10
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    #@20d
    move-result-object v3

    #@20e
    move-object/from16 v0, p0

    #@210
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@212
    goto/16 :goto_0

    #@214
    .line 638
    :cond_11
    move-object/from16 v0, p3

    #@216
    instance-of v3, v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@218
    if-eqz v3, :cond_12

    #@21a
    move-object/from16 v3, p3

    #@21c
    .line 640
    nop

    #@21d
    nop

    #@21e
    move-object/from16 v0, p0

    #@220
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@222
    .line 641
    move-object/from16 v0, p0

    #@224
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@226
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@229
    move-result-object v3

    #@22a
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@22d
    move-result-object v3

    #@22e
    move-object/from16 v0, p3

    #@230
    invoke-static {v14, v0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@233
    move-result-object v19

    #@234
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_1

    #@236
    .line 645
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_12
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@238
    const-string/jumbo v4, "PBE requires PBE parameters to be set."

    #@23b
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@23e
    throw v3

    #@23f
    .line 653
    .end local v14    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_13
    move-object/from16 v0, p2

    #@241
    instance-of v3, v0, Ljavax/crypto/interfaces/PBEKey;

    #@243
    if-eqz v3, :cond_15

    #@245
    move-object/from16 v16, p2

    #@247
    .line 655
    check-cast v16, Ljavax/crypto/interfaces/PBEKey;

    #@249
    .local v16, "k":Ljavax/crypto/interfaces/PBEKey;
    move-object/from16 v3, p3

    #@24b
    .line 656
    check-cast v3, Ljavax/crypto/spec/PBEParameterSpec;

    #@24d
    move-object/from16 v0, p0

    #@24f
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@251
    .line 657
    move-object/from16 v0, v16

    #@253
    instance-of v3, v0, Lcom/android/org/bouncycastle/jcajce/PKCS12KeyWithParameters;

    #@255
    if-eqz v3, :cond_14

    #@257
    move-object/from16 v0, p0

    #@259
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@25b
    if-nez v3, :cond_14

    #@25d
    .line 659
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    #@25f
    invoke-interface/range {v16 .. v16}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    #@262
    move-result-object v4

    #@263
    invoke-interface/range {v16 .. v16}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    #@266
    move-result v5

    #@267
    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@26a
    move-object/from16 v0, p0

    #@26c
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@26e
    .line 662
    :cond_14
    invoke-interface/range {v16 .. v16}, Ljavax/crypto/interfaces/PBEKey;->getEncoded()[B

    #@271
    move-result-object v3

    #@272
    move-object/from16 v0, p0

    #@274
    iget v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@276
    move-object/from16 v0, p0

    #@278
    iget v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->digest:I

    #@27a
    move-object/from16 v0, p0

    #@27c
    iget v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->keySizeInBits:I

    #@27e
    move-object/from16 v0, p0

    #@280
    iget v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@282
    mul-int/lit8 v7, v7, 0x8

    #@284
    move-object/from16 v0, p0

    #@286
    iget-object v8, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@288
    move-object/from16 v0, p0

    #@28a
    iget-object v9, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@28c
    invoke-interface {v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@28f
    move-result-object v9

    #@290
    invoke-static/range {v3 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@293
    move-result-object v19

    #@294
    .line 663
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object/from16 v0, v19

    #@296
    instance-of v3, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@298
    if-eqz v3, :cond_4

    #@29a
    move-object/from16 v3, v19

    #@29c
    .line 665
    nop

    #@29d
    nop

    #@29e
    move-object/from16 v0, p0

    #@2a0
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@2a2
    goto/16 :goto_2

    #@2a4
    .line 673
    .end local v16    # "k":Ljavax/crypto/interfaces/PBEKey;
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_15
    move-object/from16 v0, p0

    #@2a6
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@2a8
    if-eqz v3, :cond_16

    #@2aa
    move-object/from16 v0, p0

    #@2ac
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@2ae
    const/4 v4, 0x4

    #@2af
    if-ne v3, v4, :cond_17

    #@2b1
    .line 675
    :cond_16
    new-instance v3, Ljava/security/InvalidKeyException;

    #@2b3
    const-string/jumbo v4, "Algorithm requires a PBE key"

    #@2b6
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@2b9
    throw v3

    #@2ba
    .line 673
    :cond_17
    move-object/from16 v0, p0

    #@2bc
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@2be
    const/4 v4, 0x1

    #@2bf
    if-eq v3, v4, :cond_16

    #@2c1
    move-object/from16 v0, p0

    #@2c3
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->scheme:I

    #@2c5
    const/4 v4, 0x5

    #@2c6
    if-eq v3, v4, :cond_16

    #@2c8
    .line 677
    new-instance v19, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2ca
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    #@2cd
    move-result-object v3

    #@2ce
    move-object/from16 v0, v19

    #@2d0
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@2d3
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2

    #@2d5
    .line 692
    .restart local v18    # "p":Ljavax/crypto/spec/IvParameterSpec;
    :cond_18
    move-object/from16 v0, p0

    #@2d7
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@2d9
    if-eqz v3, :cond_5

    #@2db
    .line 694
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@2dd
    new-instance v4, Ljava/lang/StringBuilder;

    #@2df
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e2
    const-string/jumbo v5, "IV must be "

    #@2e5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v4

    #@2e9
    move-object/from16 v0, p0

    #@2eb
    iget v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@2ed
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f0
    move-result-object v4

    #@2f1
    const-string/jumbo v5, " bytes long."

    #@2f4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v4

    #@2f8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fb
    move-result-object v4

    #@2fc
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@2ff
    throw v3

    #@300
    .line 703
    :cond_19
    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@302
    invoke-virtual/range {v18 .. v18}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@305
    move-result-object v3

    #@306
    move-object/from16 v0, v20

    #@308
    move-object/from16 v1, v19

    #@30a
    invoke-direct {v0, v1, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@30d
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object/from16 v19, v20

    #@30f
    .end local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_3

    #@311
    .line 709
    .end local v18    # "p":Ljavax/crypto/spec/IvParameterSpec;
    :cond_1a
    move-object/from16 v0, p0

    #@313
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@315
    if-eqz v3, :cond_6

    #@317
    move-object/from16 v0, p0

    #@319
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@31b
    const-string/jumbo v4, "ECB"

    #@31e
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@321
    move-result v3

    #@322
    if-eqz v3, :cond_6

    #@324
    .line 711
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@326
    const-string/jumbo v4, "ECB mode does not use an IV"

    #@329
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@32c
    throw v3

    #@32d
    .line 795
    :cond_1b
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@32f
    if-eqz v3, :cond_1f

    #@331
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@333
    move-object/from16 v0, p3

    #@335
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@338
    move-result v3

    #@339
    if-eqz v3, :cond_1f

    #@33b
    .line 797
    move-object/from16 v0, p0

    #@33d
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@33f
    move-object/from16 v0, p0

    #@341
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    #@344
    move-result v3

    #@345
    if-nez v3, :cond_1c

    #@347
    move-object/from16 v0, p0

    #@349
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@34b
    instance-of v3, v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@34d
    if-eqz v3, :cond_1d

    #@34f
    .line 804
    :cond_1c
    :try_start_2
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@351
    const-string/jumbo v4, "getTLen"

    #@354
    const/4 v5, 0x0

    #@355
    new-array v5, v5, [Ljava/lang/Class;

    #@357
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@35a
    move-result-object v21

    #@35b
    .line 805
    .local v21, "tLen":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@35d
    const-string/jumbo v4, "getIV"

    #@360
    const/4 v5, 0x0

    #@361
    new-array v5, v5, [Ljava/lang/Class;

    #@363
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@366
    move-result-object v11

    #@367
    .line 808
    .local v11, "iv":Ljava/lang/reflect/Method;
    move-object/from16 v0, v19

    #@369
    instance-of v3, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@36b
    if-eqz v3, :cond_1e

    #@36d
    .line 810
    nop

    #@36e
    nop

    #@36f
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@372
    move-result-object v17

    #@373
    check-cast v17, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@375
    .line 816
    .local v17, "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_8
    new-instance v19, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@377
    const/4 v3, 0x0

    #@378
    new-array v3, v3, [Ljava/lang/Object;

    #@37a
    move-object/from16 v0, v21

    #@37c
    move-object/from16 v1, p3

    #@37e
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@381
    move-result-object v3

    #@382
    check-cast v3, Ljava/lang/Integer;

    #@384
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@387
    move-result v4

    #@388
    const/4 v3, 0x0

    #@389
    new-array v3, v3, [Ljava/lang/Object;

    #@38b
    move-object/from16 v0, p3

    #@38d
    invoke-virtual {v11, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@390
    move-result-object v3

    #@391
    check-cast v3, [B

    #@393
    move-object/from16 v0, v19

    #@395
    move-object/from16 v1, v17

    #@397
    invoke-direct {v0, v1, v4, v3}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B)V

    #@39a
    move-object/from16 v0, v19

    #@39c
    move-object/from16 v1, p0

    #@39e
    iput-object v0, v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@3a0
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_4

    #@3a2
    .line 799
    .end local v11    # "iv":Ljava/lang/reflect/Method;
    .end local v17    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .end local v21    # "tLen":Ljava/lang/reflect/Method;
    :cond_1d
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@3a4
    const-string/jumbo v4, "GCMParameterSpec can only be used with AEAD modes."

    #@3a7
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@3aa
    throw v3

    #@3ab
    .line 814
    .restart local v11    # "iv":Ljava/lang/reflect/Method;
    .restart local v21    # "tLen":Ljava/lang/reflect/Method;
    :cond_1e
    :try_start_3
    move-object/from16 v0, v19

    #@3ad
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@3af
    move-object/from16 v17, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@3b1
    .restart local v17    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_8

    #@3b2
    .line 819
    .end local v11    # "iv":Ljava/lang/reflect/Method;
    .end local v17    # "keyParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v21    # "tLen":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v10

    #@3b3
    .line 820
    .restart local v10    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@3b5
    const-string/jumbo v4, "Cannot process GCMParameterSpec."

    #@3b8
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@3bb
    throw v3

    #@3bc
    .line 823
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1f
    if-eqz p3, :cond_6

    #@3be
    move-object/from16 v0, p3

    #@3c0
    instance-of v3, v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@3c2
    if-nez v3, :cond_6

    #@3c4
    .line 825
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@3c6
    const-string/jumbo v4, "unknown parameter type."

    #@3c9
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@3cc
    throw v3

    #@3cd
    .line 828
    :cond_20
    move-object/from16 v0, v19

    #@3cf
    instance-of v3, v0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@3d1
    if-nez v3, :cond_7

    #@3d3
    .line 830
    move-object/from16 v13, p4

    #@3d5
    .line 832
    .local v13, "ivRandom":Ljava/security/SecureRandom;
    if-nez p4, :cond_21

    #@3d7
    .line 834
    new-instance v13, Ljava/security/SecureRandom;

    #@3d9
    .end local v13    # "ivRandom":Ljava/security/SecureRandom;
    invoke-direct {v13}, Ljava/security/SecureRandom;-><init>()V

    #@3dc
    .line 836
    .restart local v13    # "ivRandom":Ljava/security/SecureRandom;
    :cond_21
    const/4 v3, 0x1

    #@3dd
    move/from16 v0, p1

    #@3df
    if-eq v0, v3, :cond_22

    #@3e1
    const/4 v3, 0x3

    #@3e2
    move/from16 v0, p1

    #@3e4
    if-ne v0, v3, :cond_24

    #@3e6
    .line 838
    :cond_22
    move-object/from16 v0, p0

    #@3e8
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@3ea
    new-array v12, v3, [B

    #@3ec
    .line 844
    .local v12, "iv":[B
    move-object/from16 v0, p0

    #@3ee
    move-object/from16 v1, p2

    #@3f0
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    #@3f3
    move-result v3

    #@3f4
    if-nez v3, :cond_23

    #@3f6
    .line 845
    invoke-virtual {v13, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@3f9
    .line 848
    :cond_23
    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@3fb
    move-object/from16 v0, v20

    #@3fd
    move-object/from16 v1, v19

    #@3ff
    invoke-direct {v0, v1, v12}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@402
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object/from16 v3, v20

    #@404
    .line 849
    nop

    #@405
    nop

    #@406
    move-object/from16 v0, p0

    #@408
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@40a
    goto/16 :goto_5

    #@40c
    .line 851
    .end local v12    # "iv":[B
    .end local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_24
    move-object/from16 v0, p0

    #@40e
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@410
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@413
    move-result-object v3

    #@414
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@417
    move-result-object v3

    #@418
    const-string/jumbo v4, "PGPCFB"

    #@41b
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@41e
    move-result v3

    #@41f
    if-gez v3, :cond_28

    #@421
    .line 857
    move-object/from16 v0, p0

    #@423
    move-object/from16 v1, p2

    #@425
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isBCPBEKeyWithoutIV(Ljava/security/Key;)Z

    #@428
    move-result v3

    #@429
    if-nez v3, :cond_25

    #@42b
    .line 858
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@42d
    const-string/jumbo v4, "no IV set when one expected"

    #@430
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@433
    throw v3

    #@434
    .line 861
    :cond_25
    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@436
    move-object/from16 v0, p0

    #@438
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@43a
    new-array v3, v3, [B

    #@43c
    move-object/from16 v0, v20

    #@43e
    move-object/from16 v1, v19

    #@440
    invoke-direct {v0, v1, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@443
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object/from16 v3, v20

    #@445
    .line 862
    nop

    #@446
    nop

    #@447
    move-object/from16 v0, p0

    #@449
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@44b
    goto/16 :goto_5

    #@44d
    .end local v13    # "ivRandom":Ljava/security/SecureRandom;
    :cond_26
    move-object/from16 v19, v20

    #@44f
    .line 869
    .end local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_6

    #@451
    .line 879
    :pswitch_0
    :try_start_4
    move-object/from16 v0, p0

    #@453
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@455
    const/4 v4, 0x1

    #@456
    move-object/from16 v0, v19

    #@458
    invoke-interface {v3, v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@45b
    .line 501
    :goto_9
    return-void

    #@45c
    .line 883
    :pswitch_1
    move-object/from16 v0, p0

    #@45e
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@460
    const/4 v4, 0x0

    #@461
    move-object/from16 v0, v19

    #@463
    invoke-interface {v3, v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@466
    goto :goto_9

    #@467
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_27
    move-object/from16 v19, v20

    #@469
    .end local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_6

    #@46b
    .restart local v13    # "ivRandom":Ljava/security/SecureRandom;
    :cond_28
    move-object/from16 v20, v19

    #@46d
    .end local v19    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v20    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_5

    #@46f
    .line 875
    nop

    #@470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x3

    #@2
    .line 296
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@8
    .line 298
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@a
    const-string/jumbo v2, "ECB"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 300
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@15
    .line 301
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@17
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@19
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@1c
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@1e
    .line 294
    :goto_0
    return-void

    #@1f
    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@21
    const-string/jumbo v2, "CBC"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 305
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2c
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@2f
    move-result v1

    #@30
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@32
    .line 306
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@34
    .line 307
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@36
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@38
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3b
    .line 306
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3e
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@40
    goto :goto_0

    #@41
    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@43
    const-string/jumbo v2, "OFB"

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_3

    #@4c
    .line 311
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@4e
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@51
    move-result v1

    #@52
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@54
    .line 312
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@59
    move-result v1

    #@5a
    if-eq v1, v3, :cond_2

    #@5c
    .line 314
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@5e
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@65
    move-result v0

    #@66
    .line 316
    .local v0, "wordSize":I
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@68
    .line 317
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    #@6a
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@6c
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@6f
    .line 316
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@72
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@74
    goto :goto_0

    #@75
    .line 321
    .end local v0    # "wordSize":I
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@77
    .line 322
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    #@79
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7b
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7d
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@80
    move-result v4

    #@81
    mul-int/lit8 v4, v4, 0x8

    #@83
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@86
    .line 321
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@89
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@8b
    goto :goto_0

    #@8c
    .line 325
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@8e
    const-string/jumbo v2, "CFB"

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@94
    move-result v1

    #@95
    if-eqz v1, :cond_5

    #@97
    .line 327
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@99
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@9c
    move-result v1

    #@9d
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@9f
    .line 328
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@a1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a4
    move-result v1

    #@a5
    if-eq v1, v3, :cond_4

    #@a7
    .line 330
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@a9
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b0
    move-result v0

    #@b1
    .line 332
    .restart local v0    # "wordSize":I
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@b3
    .line 333
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    #@b5
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@b7
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@ba
    .line 332
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@bd
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@bf
    goto/16 :goto_0

    #@c1
    .line 337
    .end local v0    # "wordSize":I
    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@c3
    .line 338
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    #@c5
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@c7
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@c9
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@cc
    move-result v4

    #@cd
    mul-int/lit8 v4, v4, 0x8

    #@cf
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@d2
    .line 337
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@d5
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@d7
    goto/16 :goto_0

    #@d9
    .line 368
    :cond_5
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@db
    const-string/jumbo v2, "CTR"

    #@de
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e1
    move-result v1

    #@e2
    if-eqz v1, :cond_6

    #@e4
    .line 370
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@e6
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@e9
    move-result v1

    #@ea
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@ec
    .line 371
    iput-boolean v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->fixedIv:Z

    #@ee
    .line 372
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@f0
    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    #@f2
    .line 373
    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    #@f4
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@f6
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@f9
    .line 372
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@fc
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    #@ff
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@101
    goto/16 :goto_0

    #@103
    .line 389
    :cond_6
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@105
    const-string/jumbo v2, "CTS"

    #@108
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10b
    move-result v1

    #@10c
    if-eqz v1, :cond_7

    #@10e
    .line 391
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@110
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@113
    move-result v1

    #@114
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@116
    .line 392
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@118
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    #@11a
    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@11c
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@11e
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@121
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@124
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    #@127
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@129
    goto/16 :goto_0

    #@12b
    .line 394
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@12d
    const-string/jumbo v2, "CCM"

    #@130
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@133
    move-result v1

    #@134
    if-eqz v1, :cond_8

    #@136
    .line 396
    const/16 v1, 0xd

    #@138
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@13a
    .line 397
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@13c
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;

    #@13e
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@140
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@143
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    #@146
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@148
    goto/16 :goto_0

    #@14a
    .line 421
    :cond_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@14c
    const-string/jumbo v2, "GCM"

    #@14f
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@152
    move-result v1

    #@153
    if-eqz v1, :cond_9

    #@155
    .line 423
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@157
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@15a
    move-result v1

    #@15b
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@15d
    .line 424
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@15f
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    #@161
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@163
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@166
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    #@169
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@16b
    goto/16 :goto_0

    #@16d
    .line 428
    :cond_9
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@16f
    new-instance v2, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v3, "can\'t support mode "

    #@177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v2

    #@17b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v2

    #@17f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v2

    #@183
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@186
    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 438
    .local v0, "paddingName":Ljava/lang/String;
    const-string/jumbo v1, "NOPADDING"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 440
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@f
    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 442
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@17
    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    #@19
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@1b
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@22
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    #@25
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@27
    .line 434
    :cond_0
    :goto_0
    return-void

    #@28
    .line 445
    :cond_1
    const-string/jumbo v1, "WITHCTS"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 447
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@33
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    #@35
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@37
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@3a
    move-result-object v3

    #@3b
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3e
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    #@41
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@43
    goto :goto_0

    #@44
    .line 451
    :cond_2
    const/4 v1, 0x1

    #@45
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    #@47
    .line 453
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@49
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_3

    #@4f
    .line 455
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    #@51
    const-string/jumbo v2, "Only NoPadding can be used with AEAD modes."

    #@54
    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    .line 457
    :cond_3
    const-string/jumbo v1, "PKCS5PADDING"

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v1

    #@5f
    if-nez v1, :cond_4

    #@61
    const-string/jumbo v1, "PKCS7PADDING"

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v1

    #@68
    if-eqz v1, :cond_5

    #@6a
    .line 459
    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@6c
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@6e
    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@71
    move-result-object v2

    #@72
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@75
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@77
    goto :goto_0

    #@78
    .line 461
    :cond_5
    const-string/jumbo v1, "ZEROBYTEPADDING"

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_6

    #@81
    .line 463
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@83
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@85
    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@88
    move-result-object v2

    #@89
    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;

    #@8b
    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    #@8e
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@91
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@93
    goto :goto_0

    #@94
    .line 465
    :cond_6
    const-string/jumbo v1, "ISO10126PADDING"

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v1

    #@9b
    if-nez v1, :cond_7

    #@9d
    const-string/jumbo v1, "ISO10126-2PADDING"

    #@a0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v1

    #@a4
    if-eqz v1, :cond_8

    #@a6
    .line 467
    :cond_7
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@a8
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@aa
    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@ad
    move-result-object v2

    #@ae
    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;

    #@b0
    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    #@b3
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@b6
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@b8
    goto/16 :goto_0

    #@ba
    .line 469
    :cond_8
    const-string/jumbo v1, "X9.23PADDING"

    #@bd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v1

    #@c1
    if-nez v1, :cond_9

    #@c3
    const-string/jumbo v1, "X923PADDING"

    #@c6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v1

    #@ca
    if-eqz v1, :cond_a

    #@cc
    .line 471
    :cond_9
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@ce
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@d0
    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@d3
    move-result-object v2

    #@d4
    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;

    #@d6
    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/X923Padding;-><init>()V

    #@d9
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@dc
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@de
    goto/16 :goto_0

    #@e0
    .line 473
    :cond_a
    const-string/jumbo v1, "ISO7816-4PADDING"

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e6
    move-result v1

    #@e7
    if-nez v1, :cond_b

    #@e9
    const-string/jumbo v1, "ISO9797-1PADDING"

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v1

    #@f0
    if-eqz v1, :cond_c

    #@f2
    .line 475
    :cond_b
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@f4
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@f6
    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@f9
    move-result-object v2

    #@fa
    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    #@fc
    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    #@ff
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@102
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@104
    goto/16 :goto_0

    #@106
    .line 477
    :cond_c
    const-string/jumbo v1, "TBCPADDING"

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v1

    #@10d
    if-eqz v1, :cond_d

    #@10f
    .line 479
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@111
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@113
    invoke-interface {v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@116
    move-result-object v2

    #@117
    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;

    #@119
    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;-><init>()V

    #@11c
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@11f
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@121
    goto/16 :goto_0

    #@123
    .line 483
    :cond_d
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    #@125
    new-instance v2, Ljava/lang/StringBuilder;

    #@127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    const-string/jumbo v3, "Padding "

    #@12d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v2

    #@131
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v2

    #@135
    const-string/jumbo v3, " unknown."

    #@138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v2

    #@140
    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@143
    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
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

    #@0
    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2
    invoke-interface {v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    #@5
    move-result v0

    #@6
    add-int/2addr v0, p5

    #@7
    array-length v1, p4

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 1070
    new-instance v0, Ljavax/crypto/ShortBufferException;

    #@c
    const-string/jumbo v1, "output buffer too short for input."

    #@f
    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1075
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@15
    move-object v1, p1

    #@16
    move v2, p2

    #@17
    move v3, p3

    #@18
    move-object v4, p4

    #@19
    move v5, p5

    #@1a
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result v0

    #@1e
    return v0

    #@1f
    .line 1078
    :catch_0
    move-exception v6

    #@20
    .line 1080
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljava/lang/IllegalStateException;

    #@22
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 1031
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2
    move/from16 v0, p3

    #@4
    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    #@7
    move-result v13

    #@8
    .line 1033
    .local v13, "length":I
    if-lez v13, :cond_2

    #@a
    .line 1035
    new-array v5, v13, [B

    #@c
    .line 1037
    .local v5, "out":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@e
    const/4 v6, 0x0

    #@f
    move-object/from16 v2, p1

    #@11
    move/from16 v3, p2

    #@13
    move/from16 v4, p3

    #@15
    invoke-interface/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    #@18
    move-result v12

    #@19
    .line 1039
    .local v12, "len":I
    if-nez v12, :cond_0

    #@1b
    .line 1041
    const/4 v1, 0x0

    #@1c
    return-object v1

    #@1d
    .line 1043
    :cond_0
    array-length v1, v5

    #@1e
    if-eq v12, v1, :cond_1

    #@20
    .line 1045
    new-array v14, v12, [B

    #@22
    .line 1047
    .local v14, "tmp":[B
    const/4 v1, 0x0

    #@23
    const/4 v2, 0x0

    #@24
    invoke-static {v5, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@27
    .line 1049
    return-object v14

    #@28
    .line 1052
    .end local v14    # "tmp":[B
    :cond_1
    return-object v5

    #@29
    .line 1055
    .end local v5    # "out":[B
    .end local v12    # "len":I
    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2b
    const/4 v10, 0x0

    #@2c
    const/4 v11, 0x0

    #@2d
    move-object/from16 v7, p1

    #@2f
    move/from16 v8, p2

    #@31
    move/from16 v9, p3

    #@33
    invoke-interface/range {v6 .. v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    #@36
    .line 1057
    const/4 v1, 0x0

    #@37
    return-object v1
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "bytebuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 1021
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@3
    move-result v2

    #@4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@7
    move-result v3

    #@8
    add-int v1, v2, v3

    #@a
    .line 1022
    .local v1, "offset":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    #@d
    move-result v2

    #@e
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@11
    move-result v3

    #@12
    sub-int v0, v2, v3

    #@14
    .line 1023
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    #@1b
    .line 1019
    return-void
.end method

.method protected engineUpdateAAD([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->updateAAD([BII)V

    #@5
    .line 1014
    return-void
.end method
