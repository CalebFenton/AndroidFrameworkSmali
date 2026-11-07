.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "BaseAlgorithmParameters.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    if-eqz p1, :cond_7

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0

    .line 25
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "argument to getParameterSpec must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist isASN1FormatString(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 16
    const-string p0, "ASN.1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method protected abstract blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
.end method
