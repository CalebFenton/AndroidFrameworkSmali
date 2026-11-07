.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;
.super Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;
.source "ECPrivateKeySpec.java"


# instance fields
.field private blacklist d:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 3
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 25
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 27
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getD()Ljava/math/BigInteger;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-object v0
.end method
