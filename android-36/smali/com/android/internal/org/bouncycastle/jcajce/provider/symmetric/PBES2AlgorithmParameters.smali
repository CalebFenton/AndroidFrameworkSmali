.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;
.super Ljava/lang/Object;
.source "PBES2AlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA512AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA384AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA256AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA224AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA1AES256AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA512AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA384AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA256AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA224AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA1AES128AlgorithmParameters;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreatePBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;->createPBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static blacklist createPBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .registers 7
    .param p0, "salt"    # [B
    .param p1, "iterationCount"    # I
    .param p2, "iv"    # [B

    .line 354
    :try_start_0
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "javax.crypto.spec.PBEParameterSpec"

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 357
    .local v0, "pbeParameterSpecClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljavax/crypto/spec/PBEParameterSpec;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, [B

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 360
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/crypto/spec/PBEParameterSpec;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    return-object v2

    .line 361
    .end local v0    # "pbeParameterSpecClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljavax/crypto/spec/PBEParameterSpec;>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/crypto/spec/PBEParameterSpec;>;"
    :catch_36
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Requested creation PBES2 parameters in an SDK that doesn\'t support them"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
