.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# static fields
.field private static final blacklist aeadBadTagConstructor:Ljava/lang/reflect/Constructor;


# instance fields
.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcipher(Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1543
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    const-string v1, "javax.crypto.AEADBadTagException"

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1546
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    return-void

    :cond_11
    const/4 v0, 0x0

    .line 1550
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;)V
    .registers 2

    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1570
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    return-void
.end method

.method private static blacklist findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4

    const/4 v0, 0x1

    .line 1558
    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 3

    .line 1636
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I

    move-result p0
    :try_end_6
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 1640
    sget-object p1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_1f

    .line 1646
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/BadPaddingException;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_1f

    .line 1654
    throw p1

    .line 1657
    :cond_1f
    new-instance p1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 1581
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    instance-of v0, p0, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_11

    .line 1583
    check-cast p0, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1586
    :cond_11
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOutputSize(I)I
    .registers 2

    .line 1606
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    move-result p0

    return p0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 1596
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    instance-of v0, p0, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_d

    .line 1598
    check-cast p0, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 2

    .line 1611
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;->getUpdateOutputSize(I)I

    move-result p0

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 3

    .line 1576
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 6

    .line 1628
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface/range {p0 .. p5}, Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    move-result p0

    return p0
.end method

.method public blacklist updateAAD([BII)V
    .registers 4

    .line 1616
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    return-void
.end method

.method public blacklist wrapOnNoPadding()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
