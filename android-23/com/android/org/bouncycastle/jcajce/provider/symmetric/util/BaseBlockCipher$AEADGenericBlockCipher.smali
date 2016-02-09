.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AEADGenericBlockCipher"
.end annotation


# static fields
.field private static final aeadBadTagConstructor:Ljava/lang/reflect/Constructor;


# instance fields
.field private cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1022
    const-string/jumbo v1, "javax.crypto.AEADBadTagException"

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;->-wrap0(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 1023
    .local v0, "aeadBadTagClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    #@a
    .line 1025
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@d
    move-result-object v1

    #@e
    sput-object v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    #@10
    .line 1016
    :goto_0
    return-void

    #@11
    .line 1029
    :cond_0
    sput-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    #@13
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 0
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@0
    .prologue
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1049
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@5
    .line 1047
    return-void
.end method

.method private static findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1037
    const/4 v1, 0x1

    #@1
    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    #@3
    const-class v2, Ljava/lang/String;

    #@5
    const/4 v3, 0x0

    #@6
    aput-object v2, v1, v3

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1040
    :catch_0
    move-exception v0

    #@e
    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@f
    return-object v1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1102
    :try_start_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@2
    invoke-interface {v4, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v4

    #@6
    return v4

    #@7
    .line 1105
    :catch_0
    move-exception v2

    #@8
    .line 1106
    .local v2, "e":Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 1108
    const/4 v1, 0x0

    #@d
    .line 1111
    .local v1, "aeadBadTag":Ljavax/crypto/BadPaddingException;
    :try_start_1
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    #@f
    .line 1112
    const/4 v5, 0x1

    #@10
    new-array v5, v5, [Ljava/lang/Object;

    #@12
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    const/4 v7, 0x0

    #@17
    aput-object v6, v5, v7

    #@19
    .line 1111
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    move-object v0, v4

    #@1e
    check-cast v0, Ljavax/crypto/BadPaddingException;

    #@20
    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    .line 1118
    .end local v1    # "aeadBadTag":Ljavax/crypto/BadPaddingException;
    :goto_0
    if-eqz v1, :cond_0

    #@23
    .line 1120
    throw v1

    #@24
    .line 1123
    :cond_0
    new-instance v4, Ljavax/crypto/BadPaddingException;

    #@26
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {v4, v5}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4

    #@2e
    .line 1115
    .restart local v1    # "aeadBadTag":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v3

    #@2f
    .local v3, "i":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    #@0
    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@5
    .line 1053
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    #@0
    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->processByte(B[BI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

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
    invoke-interface/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public updateAAD([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;->processAADBytes([BII)V

    #@5
    .line 1083
    return-void
.end method

.method public wrapOnNoPadding()Z
    .locals 1

    #@0
    .prologue
    .line 1065
    const/4 v0, 0x0

    #@1
    return v0
.end method
