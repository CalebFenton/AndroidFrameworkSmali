.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;
.super Ljava/lang/Object;
.source "PrimeCertaintyCalculator.java"


# direct methods
.method public static blacklist getDefaultCertainty(I)I
    .registers 2

    const/16 v0, 0x400

    if-gt p0, v0, :cond_7

    const/16 p0, 0x50

    return p0

    :cond_7
    add-int/lit8 p0, p0, -0x1

    .line 23
    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, 0x60

    return p0
.end method
