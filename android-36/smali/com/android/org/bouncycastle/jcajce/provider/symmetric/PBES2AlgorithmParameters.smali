.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;
.super Ljava/lang/Object;
.source "PBES2AlgorithmParameters.java"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreatePBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;->createPBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createPBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .registers 7

    .line 354
    :try_start_0
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "javax.crypto.spec.PBEParameterSpec"

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    .line 357
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

    move-result-object v0

    .line 360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    filled-new-array {p0, p1, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    .line 362
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Requested creation PBES2 parameters in an SDK that doesn\'t support them"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
