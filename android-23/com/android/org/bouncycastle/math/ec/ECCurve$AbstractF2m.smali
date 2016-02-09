.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I

    #@0
    .prologue
    .line 680
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->buildField(IIII)Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V

    #@7
    .line 678
    return-void
.end method

.method private static buildField(IIII)Lcom/android/org/bouncycastle/math/field/FiniteField;
    .locals 5
    .param p0, "m"    # I
    .param p1, "k1"    # I
    .param p2, "k2"    # I
    .param p3, "k3"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 650
    if-nez p1, :cond_0

    #@6
    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "k1 must be > 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 655
    :cond_0
    if-nez p2, :cond_2

    #@11
    .line 657
    if-eqz p3, :cond_1

    #@13
    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "k3 must be 0 if k2 == 0"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 662
    :cond_1
    new-array v0, v4, [I

    #@1e
    aput v1, v0, v1

    #@20
    aput p1, v0, v2

    #@22
    aput p0, v0, v3

    #@24
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    #@27
    move-result-object v0

    #@28
    return-object v0

    #@29
    .line 665
    :cond_2
    if-gt p2, p1, :cond_3

    #@2b
    .line 667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "k2 must be > k1"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 670
    :cond_3
    if-gt p3, p2, :cond_4

    #@36
    .line 672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v1, "k3 must be > k2"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 675
    :cond_4
    const/4 v0, 0x5

    #@40
    new-array v0, v0, [I

    #@42
    aput v1, v0, v1

    #@44
    aput p1, v0, v2

    #@46
    aput p2, v0, v3

    #@48
    aput p3, v0, v4

    #@4a
    const/4 v1, 0x4

    #@4b
    aput p0, v0, v1

    #@4d
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method
