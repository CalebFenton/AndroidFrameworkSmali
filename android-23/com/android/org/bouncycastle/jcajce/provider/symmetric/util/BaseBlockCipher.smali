.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
    }
.end annotation


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# instance fields
.field private aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

.field private availableSpecs:[Ljava/lang/Class;

.field private baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

.field private engineProvider:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

.field private ivLength:I

.field private ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field private modeName:Ljava/lang/String;

.field private padded:Z

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


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
    .line 82
    const-string/jumbo v0, "javax.crypto.spec.GCMParameterSpec"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@9
    .line 78
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 5
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 130
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@5
    .line 88
    const/4 v0, 0x3

    #@6
    new-array v0, v0, [Ljava/lang/Class;

    #@8
    .line 93
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    aput-object v1, v0, v4

    #@c
    .line 94
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 98
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 87
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 107
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1a
    .line 111
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@1c
    .line 112
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@1e
    .line 114
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@20
    .line 133
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@22
    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@24
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@27
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@29
    .line 131
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 5
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "ivLength"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 155
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@5
    .line 88
    const/4 v0, 0x3

    #@6
    new-array v0, v0, [Ljava/lang/Class;

    #@8
    .line 93
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    aput-object v1, v0, v4

    #@c
    .line 94
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 98
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 87
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 107
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1a
    .line 111
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@1c
    .line 112
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@1e
    .line 114
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@20
    .line 159
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@22
    .line 161
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@24
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@27
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@29
    .line 162
    div-int/lit8 v0, p2, 0x8

    #@2b
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@2d
    .line 157
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;I)V
    .locals 5
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;
    .param p2, "ivLength"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 165
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@5
    .line 88
    const/4 v0, 0x3

    #@6
    new-array v0, v0, [Ljava/lang/Class;

    #@8
    .line 93
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    aput-object v1, v0, v4

    #@c
    .line 94
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 98
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 87
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 107
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1a
    .line 111
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@1c
    .line 112
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@1e
    .line 114
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@20
    .line 169
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@26
    .line 171
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@28
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2d
    .line 172
    div-int/lit8 v0, p2, 0x8

    #@2f
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@31
    .line 167
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 5
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 147
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@5
    .line 88
    const/4 v0, 0x3

    #@6
    new-array v0, v0, [Ljava/lang/Class;

    #@8
    .line 93
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    aput-object v1, v0, v4

    #@c
    .line 94
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 98
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 87
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 107
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1a
    .line 111
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@1c
    .line 112
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@1e
    .line 114
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@20
    .line 150
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@26
    .line 151
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@28
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@2e
    .line 152
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@30
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    #@33
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@35
    .line 148
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V
    .locals 5
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 138
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    #@5
    .line 88
    const/4 v0, 0x3

    #@6
    new-array v0, v0, [Ljava/lang/Class;

    #@8
    .line 93
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    #@a
    aput-object v1, v0, v4

    #@c
    .line 94
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    .line 98
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 87
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@18
    .line 107
    iput v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@1a
    .line 111
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@1c
    .line 112
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@1e
    .line 114
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@20
    .line 141
    invoke-interface {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@26
    .line 142
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineProvider:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;

    #@28
    .line 144
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@2a
    invoke-interface {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;->get()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@33
    .line 139
    return-void
.end method

.method private isAEADModeName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 901
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

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
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
    .line 122
    .local v0, "def":Ljava/lang/Class;
    return-object v0

    #@b
    .line 125
    .end local v0    # "def":Ljava/lang/Class;
    :catch_0
    move-exception v1

    #@c
    .line 126
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
    .line 878
    const/4 v8, 0x0

    #@1
    .line 880
    .local v8, "len":I
    if-eqz p3, :cond_0

    #@3
    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move v5, p5

    #@a
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    #@d
    move-result v8

    #@e
    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@10
    add-int v1, p5, v8

    #@12
    invoke-interface {v0, p4, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/OutputLengthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v0

    #@16
    add-int/2addr v0, v8

    #@17
    return v0

    #@18
    .line 892
    :catch_0
    move-exception v6

    #@19
    .line 893
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@1b
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 888
    .end local v6    # "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    :catch_1
    move-exception v7

    #@24
    .line 889
    .local v7, "e":Lcom/android/org/bouncycastle/crypto/OutputLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    #@26
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@2d
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
    .line 839
    const/4 v7, 0x0

    #@2
    .line 840
    .local v7, "len":I
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineGetOutputSize(I)I

    #@5
    move-result v0

    #@6
    new-array v4, v0, [B

    #@8
    .line 842
    .local v4, "tmp":[B
    if-eqz p3, :cond_0

    #@a
    .line 844
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
    .line 849
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
    .line 856
    array-length v0, v4

    #@1b
    if-ne v7, v0, :cond_1

    #@1d
    .line 858
    return-object v4

    #@1e
    .line 852
    :catch_0
    move-exception v6

    #@1f
    .line 853
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@21
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 861
    .end local v6    # "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    :cond_1
    new-array v8, v7, [B

    #@2b
    .line 863
    .local v8, "out":[B
    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2e
    .line 865
    return-object v8
.end method

.method protected engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 177
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
    .line 182
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 184
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 187
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
    .line 193
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
    .line 199
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
    .line 204
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 206
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@e
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@14
    .line 211
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@16
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@18
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 251
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@1d
    return-object v2

    #@1e
    .line 214
    :catch_0
    move-exception v0

    #@1f
    .line 215
    .local v0, "e":Ljava/lang/Exception;
    return-object v4

    #@20
    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 220
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
    .line 222
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    #@31
    move-result v2

    #@32
    if-ltz v2, :cond_2

    #@34
    .line 224
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    #@37
    move-result v2

    #@38
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 229
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@3f
    move-result-object v2

    #@40
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@42
    .line 230
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

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
    .line 233
    :catch_1
    move-exception v0

    #@4f
    .line 234
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@51
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2

    #@59
    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@5b
    if-eqz v2, :cond_0

    #@5d
    .line 241
    :try_start_2
    const-string/jumbo v2, "GCM"

    #@60
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@63
    move-result-object v2

    #@64
    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@66
    .line 242
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

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
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V

    #@79
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getEncoded()[B

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@80
    goto :goto_0

    #@81
    .line 245
    :catch_2
    move-exception v0

    #@82
    .line 246
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@84
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8b
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
    .line 720
    const/4 v2, 0x0

    #@1
    .line 722
    .local v2, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_2

    #@3
    .line 724
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
    .line 726
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->availableSpecs:[Ljava/lang/Class;

    #@b
    aget-object v3, v3, v1

    #@d
    if-nez v3, :cond_0

    #@f
    .line 724
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 733
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
    .line 742
    .end local v2    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    if-nez v2, :cond_2

    #@1c
    .line 744
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
    .line 748
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    #@3d
    .line 750
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@3f
    .line 718
    return-void

    #@40
    .line 737
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
    .line 761
    const/4 v1, 0x0

    #@1
    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    #@3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 757
    return-void

    #@7
    .line 764
    :catch_0
    move-exception v0

    #@8
    .line 765
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@a
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 14
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
    .line 457
    const/4 v11, 0x0

    #@1
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@3
    .line 458
    const/4 v11, 0x0

    #@4
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@6
    .line 459
    const/4 v11, 0x0

    #@7
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    #@9
    .line 460
    const/4 v11, 0x0

    #@a
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@c
    .line 465
    move-object/from16 v0, p2

    #@e
    instance-of v11, v0, Ljavax/crypto/SecretKey;

    #@10
    if-nez v11, :cond_0

    #@12
    .line 467
    new-instance v11, Ljava/security/InvalidKeyException;

    #@14
    new-instance v12, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v13, "Key for algorithm "

    #@1c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v12

    #@20
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@23
    move-result-object v13

    #@24
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v12

    #@28
    const-string/jumbo v13, " not suitable for symmetric enryption."

    #@2b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v12

    #@2f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v12

    #@33
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@36
    throw v11

    #@37
    .line 473
    :cond_0
    if-nez p3, :cond_1

    #@39
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@3b
    invoke-interface {v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@3e
    move-result-object v11

    #@3f
    const-string/jumbo v12, "RC5-64"

    #@42
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@45
    move-result v11

    #@46
    if-eqz v11, :cond_1

    #@48
    .line 475
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    #@4a
    const-string/jumbo v12, "RC5 requires an RC5ParametersSpec to be passed in."

    #@4d
    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@50
    throw v11

    #@51
    .line 481
    :cond_1
    move-object/from16 v0, p2

    #@53
    instance-of v11, v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@55
    if-eqz v11, :cond_8

    #@57
    move-object/from16 v6, p2

    #@59
    .line 483
    check-cast v6, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@5b
    .line 485
    .local v6, "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5e
    move-result-object v11

    #@5f
    if-eqz v11, :cond_5

    #@61
    .line 487
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    move-result-object v11

    #@65
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@68
    move-result-object v11

    #@69
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@6b
    .line 494
    :goto_0
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@6e
    move-result-object v11

    #@6f
    if-eqz v11, :cond_6

    #@71
    .line 496
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@74
    move-result-object v8

    #@75
    .line 497
    .local v8, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object/from16 v0, p3

    #@77
    instance-of v11, v0, Ljavax/crypto/spec/IvParameterSpec;

    #@79
    if-eqz v11, :cond_2

    #@7b
    move-object/from16 v3, p3

    #@7d
    .line 499
    check-cast v3, Ljavax/crypto/spec/IvParameterSpec;

    #@7f
    .line 501
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@81
    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@84
    move-result-object v11

    #@85
    invoke-direct {v9, v8, v11}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@88
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v9, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v8, v9

    #@89
    .line 528
    .end local v3    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    :goto_1
    instance-of v11, v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@8b
    if-eqz v11, :cond_3

    #@8d
    move-object v11, v8

    #@8e
    .line 530
    check-cast v11, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@90
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@92
    .line 663
    .end local v6    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_3
    :goto_2
    iget v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@94
    if-eqz v11, :cond_4

    #@96
    instance-of v11, v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@98
    if-eqz v11, :cond_12

    #@9a
    :cond_4
    move-object v9, v8

    #@9b
    .line 686
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_3
    if-eqz p4, :cond_16

    #@9d
    iget-boolean v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    #@9f
    if-eqz v11, :cond_17

    #@a1
    .line 688
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@a3
    move-object/from16 v0, p4

    #@a5
    invoke-direct {v8, v9, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@a8
    .line 693
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_4
    packed-switch p1, :pswitch_data_0

    #@ab
    .line 704
    :try_start_0
    new-instance v11, Ljava/security/InvalidParameterException;

    #@ad
    new-instance v12, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v13, "unknown opmode "

    #@b5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v12

    #@b9
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v12

    #@bd
    const-string/jumbo v13, " passed"

    #@c0
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v12

    #@c4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v12

    #@c8
    invoke-direct {v11, v12}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@cc
    .line 708
    :catch_0
    move-exception v1

    #@cd
    .line 709
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidKeyException;

    #@cf
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@d2
    move-result-object v12

    #@d3
    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v11

    #@d7
    .line 491
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v6    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_5
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    #@da
    move-result-object v11

    #@db
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    #@dd
    goto :goto_0

    #@de
    .line 518
    :cond_6
    move-object/from16 v0, p3

    #@e0
    instance-of v11, v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@e2
    if-eqz v11, :cond_7

    #@e4
    move-object/from16 v11, p3

    #@e6
    .line 520
    check-cast v11, Ljavax/crypto/spec/PBEParameterSpec;

    #@e8
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    #@ea
    .line 521
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@ec
    invoke-interface {v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@ef
    move-result-object v11

    #@f0
    invoke-interface {v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@f3
    move-result-object v11

    #@f4
    move-object/from16 v0, p3

    #@f6
    invoke-static {v6, v0, v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@f9
    move-result-object v8

    #@fa
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    #@fb
    .line 525
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_7
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    #@fd
    const-string/jumbo v12, "PBE requires PBE parameters to be set."

    #@100
    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@103
    throw v11

    #@104
    .line 533
    .end local v6    # "k":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_8
    if-nez p3, :cond_9

    #@106
    .line 535
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@108
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    #@10b
    move-result-object v11

    #@10c
    invoke-direct {v8, v11}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@10f
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_2

    #@110
    .line 537
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_9
    move-object/from16 v0, p3

    #@112
    instance-of v11, v0, Ljavax/crypto/spec/IvParameterSpec;

    #@114
    if-eqz v11, :cond_e

    #@116
    .line 539
    iget v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@118
    if-eqz v11, :cond_c

    #@11a
    move-object/from16 v7, p3

    #@11c
    .line 541
    check-cast v7, Ljavax/crypto/spec/IvParameterSpec;

    #@11e
    .line 543
    .local v7, "p":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@121
    move-result-object v11

    #@122
    array-length v11, v11

    #@123
    iget v12, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@125
    if-eq v11, v12, :cond_a

    #@127
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@129
    invoke-direct {p0, v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    #@12c
    move-result v11

    #@12d
    if-eqz v11, :cond_b

    #@12f
    .line 557
    :cond_a
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@131
    new-instance v11, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@133
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    #@136
    move-result-object v12

    #@137
    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@13a
    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@13d
    move-result-object v12

    #@13e
    invoke-direct {v8, v11, v12}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@141
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v11, v8

    #@142
    .line 558
    check-cast v11, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@144
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@146
    goto/16 :goto_2

    #@148
    .line 545
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_b
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    #@14a
    new-instance v12, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v13, "IV must be "

    #@152
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v12

    #@156
    iget v13, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@158
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v12

    #@15c
    const-string/jumbo v13, " bytes long."

    #@15f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v12

    #@163
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@166
    move-result-object v12

    #@167
    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@16a
    throw v11

    #@16b
    .line 563
    .end local v7    # "p":Ljavax/crypto/spec/IvParameterSpec;
    :cond_c
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@16d
    if-eqz v11, :cond_d

    #@16f
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@171
    const-string/jumbo v12, "ECB"

    #@174
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@177
    move-result v11

    #@178
    if-eqz v11, :cond_d

    #@17a
    .line 565
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    #@17c
    const-string/jumbo v12, "ECB mode does not use an IV"

    #@17f
    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@182
    throw v11

    #@183
    .line 568
    :cond_d
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@185
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    #@188
    move-result-object v11

    #@189
    invoke-direct {v8, v11}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@18c
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2

    #@18e
    .line 630
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_e
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@190
    if-eqz v11, :cond_11

    #@192
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@194
    move-object/from16 v0, p3

    #@196
    invoke-virtual {v11, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@199
    move-result v11

    #@19a
    if-eqz v11, :cond_11

    #@19c
    .line 632
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@19e
    invoke-direct {p0, v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    #@1a1
    move-result v11

    #@1a2
    if-nez v11, :cond_f

    #@1a4
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@1a6
    instance-of v11, v11, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@1a8
    if-eqz v11, :cond_10

    #@1aa
    .line 639
    :cond_f
    :try_start_1
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@1ac
    const-string/jumbo v12, "getTLen"

    #@1af
    const/4 v13, 0x0

    #@1b0
    new-array v13, v13, [Ljava/lang/Class;

    #@1b2
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1b5
    move-result-object v10

    #@1b6
    .line 640
    .local v10, "tLen":Ljava/lang/reflect/Method;
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->gcmSpecClass:Ljava/lang/Class;

    #@1b8
    const-string/jumbo v12, "getIV"

    #@1bb
    const/4 v13, 0x0

    #@1bc
    new-array v13, v13, [Ljava/lang/Class;

    #@1be
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1c1
    move-result-object v2

    #@1c2
    .line 650
    .local v2, "iv":Ljava/lang/reflect/Method;
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@1c4
    new-instance v12, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@1c6
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    #@1c9
    move-result-object v11

    #@1ca
    invoke-direct {v12, v11}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@1cd
    const/4 v11, 0x0

    #@1ce
    new-array v11, v11, [Ljava/lang/Object;

    #@1d0
    move-object/from16 v0, p3

    #@1d2
    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1d5
    move-result-object v11

    #@1d6
    check-cast v11, Ljava/lang/Integer;

    #@1d8
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@1db
    move-result v13

    #@1dc
    const/4 v11, 0x0

    #@1dd
    new-array v11, v11, [Ljava/lang/Object;

    #@1df
    move-object/from16 v0, p3

    #@1e1
    invoke-virtual {v2, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1e4
    move-result-object v11

    #@1e5
    check-cast v11, [B

    #@1e7
    invoke-direct {v8, v12, v13, v11}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B)V

    #@1ea
    iput-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->aeadParams:Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@1ec
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_2

    #@1ee
    .line 634
    .end local v2    # "iv":Ljava/lang/reflect/Method;
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v10    # "tLen":Ljava/lang/reflect/Method;
    :cond_10
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    #@1f0
    const-string/jumbo v12, "GCMParameterSpec can only be used with AEAD modes."

    #@1f3
    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@1f6
    throw v11

    #@1f7
    .line 654
    :catch_1
    move-exception v1

    #@1f8
    .line 655
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    #@1fa
    const-string/jumbo v12, "Cannot process GCMParameterSpec."

    #@1fd
    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@200
    throw v11

    #@201
    .line 660
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_11
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    #@203
    const-string/jumbo v12, "unknown parameter type."

    #@206
    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@209
    throw v11

    #@20a
    .line 663
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_12
    instance-of v11, v8, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@20c
    if-nez v11, :cond_4

    #@20e
    .line 665
    move-object/from16 v5, p4

    #@210
    .line 667
    .local v5, "ivRandom":Ljava/security/SecureRandom;
    if-nez v5, :cond_13

    #@212
    .line 669
    new-instance v5, Ljava/security/SecureRandom;

    #@214
    .end local v5    # "ivRandom":Ljava/security/SecureRandom;
    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    #@217
    .line 672
    .restart local v5    # "ivRandom":Ljava/security/SecureRandom;
    :cond_13
    const/4 v11, 0x1

    #@218
    if-eq p1, v11, :cond_14

    #@21a
    const/4 v11, 0x3

    #@21b
    if-ne p1, v11, :cond_15

    #@21d
    .line 674
    :cond_14
    iget v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@21f
    new-array v4, v11, [B

    #@221
    .line 676
    .local v4, "iv":[B
    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@224
    .line 677
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@226
    invoke-direct {v9, v8, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@229
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v11, v9

    #@22a
    .line 678
    check-cast v11, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@22c
    iput-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivParam:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@22e
    goto/16 :goto_3

    #@230
    .line 680
    .end local v4    # "iv":[B
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_15
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@232
    invoke-interface {v11}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@235
    move-result-object v11

    #@236
    invoke-interface {v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@239
    move-result-object v11

    #@23a
    const-string/jumbo v12, "PGPCFB"

    #@23d
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@240
    move-result v11

    #@241
    if-gez v11, :cond_18

    #@243
    .line 682
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    #@245
    const-string/jumbo v12, "no IV set when one expected"

    #@248
    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@24b
    throw v11

    #@24c
    .end local v5    # "ivRandom":Ljava/security/SecureRandom;
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_16
    move-object v8, v9

    #@24d
    .line 687
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_4

    #@24f
    .line 697
    :pswitch_0
    :try_start_2
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@251
    const/4 v12, 0x1

    #@252
    invoke-interface {v11, v12, v8}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@255
    .line 453
    :goto_5
    return-void

    #@256
    .line 701
    :pswitch_1
    iget-object v11, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@258
    const/4 v12, 0x0

    #@259
    invoke-interface {v11, v12, v8}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@25c
    goto :goto_5

    #@25d
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_17
    move-object v8, v9

    #@25e
    .end local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_4

    #@260
    .restart local v5    # "ivRandom":Ljava/security/SecureRandom;
    :cond_18
    move-object v9, v8

    #@261
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v9    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto/16 :goto_3

    #@263
    .line 693
    nop

    #@264
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
    const/4 v3, 0x3

    #@1
    .line 258
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@7
    .line 260
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "ECB"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 262
    const/4 v1, 0x0

    #@13
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@15
    .line 263
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@17
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@19
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@1c
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@1e
    .line 256
    :goto_0
    return-void

    #@1f
    .line 265
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
    .line 267
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2c
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@2f
    move-result v1

    #@30
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@32
    .line 268
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@34
    .line 269
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@36
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@38
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3b
    .line 268
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@3e
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@40
    goto :goto_0

    #@41
    .line 271
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
    .line 273
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@4e
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@51
    move-result v1

    #@52
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@54
    .line 274
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@59
    move-result v1

    #@5a
    if-eq v1, v3, :cond_2

    #@5c
    .line 276
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
    .line 278
    .local v0, "wordSize":I
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@68
    .line 279
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;

    #@6a
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@6c
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@6f
    .line 278
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@72
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@74
    goto :goto_0

    #@75
    .line 283
    .end local v0    # "wordSize":I
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@77
    .line 284
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
    .line 283
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@89
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@8b
    goto :goto_0

    #@8c
    .line 287
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
    .line 289
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@99
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@9c
    move-result v1

    #@9d
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@9f
    .line 290
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@a1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a4
    move-result v1

    #@a5
    if-eq v1, v3, :cond_4

    #@a7
    .line 292
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
    .line 294
    .restart local v0    # "wordSize":I
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@b3
    .line 295
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    #@b5
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@b7
    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@ba
    .line 294
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@bd
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@bf
    goto/16 :goto_0

    #@c1
    .line 299
    .end local v0    # "wordSize":I
    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@c3
    .line 300
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
    .line 299
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@d5
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@d7
    goto/16 :goto_0

    #@d9
    .line 329
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
    .line 331
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@e6
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@e9
    move-result v1

    #@ea
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@ec
    .line 332
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@ee
    new-instance v2, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;

    #@f0
    .line 333
    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    #@f2
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@f4
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@f7
    .line 332
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@fa
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    #@fd
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@ff
    goto/16 :goto_0

    #@101
    .line 349
    :cond_6
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@103
    const-string/jumbo v2, "CTS"

    #@106
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@109
    move-result v1

    #@10a
    if-eqz v1, :cond_7

    #@10c
    .line 351
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@10e
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@111
    move-result v1

    #@112
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@114
    .line 352
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;

    #@116
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;

    #@118
    new-instance v3, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@11a
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@11c
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@11f
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@122
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BufferedBlockCipher;)V

    #@125
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@127
    goto/16 :goto_0

    #@129
    .line 354
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@12b
    const-string/jumbo v2, "CCM"

    #@12e
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@131
    move-result v1

    #@132
    if-eqz v1, :cond_8

    #@134
    .line 356
    const/16 v1, 0xd

    #@136
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@138
    .line 357
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@13a
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;

    #@13c
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@13e
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@141
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    #@144
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@146
    goto/16 :goto_0

    #@148
    .line 381
    :cond_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@14a
    const-string/jumbo v2, "GCM"

    #@14d
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@150
    move-result v1

    #@151
    if-eqz v1, :cond_9

    #@153
    .line 383
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@155
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@158
    move-result v1

    #@159
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->ivLength:I

    #@15b
    .line 384
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;

    #@15d
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;

    #@15f
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->baseEngine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@161
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@164
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    #@167
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@169
    goto/16 :goto_0

    #@16b
    .line 388
    :cond_9
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@16d
    new-instance v2, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v3, "can\'t support mode "

    #@175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v2

    #@179
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v2

    #@17d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v2

    #@181
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@184
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
    .line 396
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 398
    .local v0, "paddingName":Ljava/lang/String;
    const-string/jumbo v1, "NOPADDING"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 400
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@f
    invoke-interface {v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 402
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
    .line 394
    :cond_0
    :goto_0
    return-void

    #@28
    .line 405
    :cond_1
    const-string/jumbo v1, "WITHCTS"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 407
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
    .line 411
    :cond_2
    const/4 v1, 0x1

    #@45
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->padded:Z

    #@47
    .line 413
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->modeName:Ljava/lang/String;

    #@49
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_3

    #@4f
    .line 415
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    #@51
    const-string/jumbo v2, "Only NoPadding can be used with AEAD modes."

    #@54
    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    .line 417
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
    .line 419
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
    .line 421
    :cond_5
    const-string/jumbo v1, "ZEROBYTEPADDING"

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_6

    #@81
    .line 423
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
    .line 425
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
    .line 427
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
    .line 429
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
    .line 431
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
    .line 433
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
    .line 435
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
    .line 437
    :cond_c
    const-string/jumbo v1, "TBCPADDING"

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v1

    #@10d
    if-eqz v1, :cond_d

    #@10f
    .line 439
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
    .line 443
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
    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 828
    :catch_0
    move-exception v6

    #@d
    .line 829
    .local v6, "e":Lcom/android/org/bouncycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    #@f
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2
    move/from16 v0, p3

    #@4
    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    #@7
    move-result v13

    #@8
    .line 788
    .local v13, "length":I
    if-lez v13, :cond_2

    #@a
    .line 790
    new-array v5, v13, [B

    #@c
    .line 792
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
    .line 794
    .local v12, "len":I
    if-nez v12, :cond_0

    #@1b
    .line 796
    const/4 v1, 0x0

    #@1c
    return-object v1

    #@1d
    .line 798
    :cond_0
    array-length v1, v5

    #@1e
    if-eq v12, v1, :cond_1

    #@20
    .line 800
    new-array v14, v12, [B

    #@22
    .line 802
    .local v14, "tmp":[B
    const/4 v1, 0x0

    #@23
    const/4 v2, 0x0

    #@24
    invoke-static {v5, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@27
    .line 804
    return-object v14

    #@28
    .line 807
    .end local v14    # "tmp":[B
    :cond_1
    return-object v5

    #@29
    .line 810
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
    .line 812
    const/4 v1, 0x0

    #@37
    return-object v1
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "bytebuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 776
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@3
    move-result v2

    #@4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@7
    move-result v3

    #@8
    add-int v1, v2, v3

    #@a
    .line 777
    .local v1, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@d
    move-result v2

    #@e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@11
    move-result v3

    #@12
    sub-int v0, v2, v3

    #@14
    .line 778
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->engineUpdateAAD([BII)V

    #@1b
    .line 774
    return-void
.end method

.method protected engineUpdateAAD([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->cipher:Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;->updateAAD([BII)V

    #@5
    .line 769
    return-void
.end method
