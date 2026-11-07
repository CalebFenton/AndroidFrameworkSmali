.class abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;
.super Ljava/lang/Object;
.source "SpecUtil.java"


# direct methods
.method static blacklist extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4

    .line 13
    :try_start_0
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const/4 v0, 0x0

    .line 17
    :goto_8
    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 19
    aget-object v1, p1, v0

    if-nez v1, :cond_10

    goto :goto_15

    .line 26
    :cond_10
    :try_start_10
    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method
