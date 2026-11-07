.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/SpecUtil;
.super Ljava/lang/Object;
.source "SpecUtil.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist extractSpec(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .param p1, "availableSpecs"    # [Ljava/lang/Class;

    .line 13
    :try_start_0
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 15
    :catch_7
    move-exception v0

    .line 17
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-eq v1, v2, :cond_1c

    .line 19
    aget-object v2, p1, v1

    if-nez v2, :cond_11

    .line 21
    goto :goto_19

    .line 26
    :cond_11
    :try_start_11
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    return-object v2

    .line 28
    :catch_18
    move-exception v2

    .line 17
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method
