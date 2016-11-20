.class public Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
.super Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
.source "ECNamedCurveParameterSpec.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p2, p3, p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    #@3
    .line 27
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    #@5
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    #@5
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p3, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    move-object v2, p3

    #@3
    move-object v3, p4

    #@4
    move-object v4, p5

    #@5
    move-object v5, p6

    #@6
    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@9
    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    #@b
    .line 48
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
