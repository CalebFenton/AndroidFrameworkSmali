.class Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"


# static fields
.field static final gcmSpecClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 14
    const-string/jumbo v0, "javax.crypto.spec.GCMParameterSpec"

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    #@9
    .line 12
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;
    .locals 6
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    :try_start_0
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    #@2
    const-string/jumbo v4, "getTLen"

    #@5
    const/4 v5, 0x0

    #@6
    new-array v5, v5, [Ljava/lang/Class;

    #@8
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b
    move-result-object v2

    #@c
    .line 57
    .local v2, "tLen":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    #@e
    const-string/jumbo v4, "getIV"

    #@11
    const/4 v5, 0x0

    #@12
    new-array v5, v5, [Ljava/lang/Class;

    #@14
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@17
    move-result-object v1

    #@18
    .line 59
    .local v1, "iv":Ljava/lang/reflect/Method;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@1a
    const/4 v3, 0x0

    #@1b
    new-array v3, v3, [Ljava/lang/Object;

    #@1d
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, [B

    #@23
    const/4 v4, 0x0

    #@24
    new-array v4, v4, [Ljava/lang/Object;

    #@26
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Ljava/lang/Integer;

    #@2c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result v4

    #@30
    div-int/lit8 v4, v4, 0x8

    #@32
    invoke-direct {v5, v3, v4}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    return-object v5

    #@36
    .line 62
    .end local v1    # "iv":Ljava/lang/reflect/Method;
    .end local v2    # "tLen":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@37
    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidParameterSpecException;

    #@39
    const-string/jumbo v4, "Cannot process GCMParameterSpec"

    #@3c
    invoke-direct {v3, v4}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v3
.end method

.method static extractGcmSpec(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 8
    .param p0, "spec"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;

    #@3
    move-result-object v3

    #@4
    .line 37
    .local v3, "gcmParams":Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    #@6
    const/4 v5, 0x2

    #@7
    new-array v5, v5, [Ljava/lang/Class;

    #@9
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@b
    const/4 v7, 0x0

    #@c
    aput-object v6, v5, v7

    #@e
    const-class v6, [B

    #@10
    const/4 v7, 0x1

    #@11
    aput-object v6, v5, v7

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@16
    move-result-object v0

    #@17
    .line 39
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x2

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getIcvLen()I

    #@1d
    move-result v5

    #@1e
    mul-int/lit8 v5, v5, 0x8

    #@20
    invoke-static {v5}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v5

    #@24
    const/4 v6, 0x0

    #@25
    aput-object v5, v4, v6

    #@27
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;->getNonce()[B

    #@2a
    move-result-object v5

    #@2b
    const/4 v6, 0x1

    #@2c
    aput-object v5, v4, v6

    #@2e
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    return-object v4

    #@35
    .line 46
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "gcmParams":Lcom/android/org/bouncycastle/asn1/cms/GCMParameters;
    :catch_0
    move-exception v1

    #@36
    .line 47
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/spec/InvalidParameterSpecException;

    #@38
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v6, "Construction failed: "

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {v4, v5}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@55
    .line 43
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/security/spec/InvalidParameterSpecException;

    #@57
    const-string/jumbo v5, "No constructor found!"

    #@5a
    invoke-direct {v4, v5}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v4
.end method

.method static gcmSpecExists()Z
    .locals 1

    #@0
    .prologue
    .line 18
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method static isGcmSpec(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "paramSpecClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method static isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z
    .locals 1
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    #@0
    .prologue
    .line 23
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    #@6
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    :try_start_0
    const-class v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/GcmSpecUtil;

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 74
    :catch_0
    move-exception v0

    #@c
    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method
