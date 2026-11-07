.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/Blowfish$AlgParams;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source "Blowfish.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 1

    .line 84
    const-string p0, "Blowfish IV"

    return-object p0
.end method
