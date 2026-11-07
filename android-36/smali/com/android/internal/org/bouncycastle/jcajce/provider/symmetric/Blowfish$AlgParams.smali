.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/Blowfish$AlgParams;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "Blowfish IV"

    return-object v0
.end method
