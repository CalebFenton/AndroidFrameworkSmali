.class public Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
.super Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
.source "ECNamedCurveParameterSpec.java"


# instance fields
.field private blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 54
    iput-object p1, v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    return-void
.end method
