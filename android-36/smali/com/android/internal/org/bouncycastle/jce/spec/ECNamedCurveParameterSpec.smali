.class public Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
.super Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
.source "ECNamedCurveParameterSpec.java"


# instance fields
.field private blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;

    .line 27
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 29
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    .line 39
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 41
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B

    .line 52
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .end local p2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local p3    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local p4    # "n":Ljava/math/BigInteger;
    .end local p5    # "h":Ljava/math/BigInteger;
    .end local p6    # "seed":[B
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .local v2, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v3, "n":Ljava/math/BigInteger;
    .local v4, "h":Ljava/math/BigInteger;
    .local v5, "seed":[B
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 54
    iput-object p1, v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
