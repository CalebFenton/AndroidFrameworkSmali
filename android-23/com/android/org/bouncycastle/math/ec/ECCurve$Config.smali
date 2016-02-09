.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field protected coord:I

.field protected endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field final synthetic this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;ILcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "coord"    # I
    .param p3, "endomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .param p4, "multiplier"    # Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@0
    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 42
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    #@7
    .line 43
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@9
    .line 44
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@b
    .line 40
    return-void
.end method


# virtual methods
.method public create()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 3

    #@0
    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    #@4
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 69
    new-instance v1, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v2, "unsupported coordinate system"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@15
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@18
    move-result-object v0

    #@19
    .line 73
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1f
    const-string/jumbo v2, "implementation returned current curve"

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 78
    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    #@28
    iput v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    #@2a
    .line 79
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@2c
    iput-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@2e
    .line 80
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@30
    iput-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@32
    .line 82
    return-object v0
.end method

.method public setCoordinateSystem(I)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 0
    .param p1, "coord"    # I

    #@0
    .prologue
    .line 49
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    #@2
    .line 50
    return-object p0
.end method

.method public setEndomorphism(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 0
    .param p1, "endomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@2
    .line 56
    return-object p0
.end method

.method public setMultiplier(Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .locals 0
    .param p1, "multiplier"    # Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@2
    .line 62
    return-object p0
.end method
