.class public Landroid/animation/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source "FloatArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[F>;"
    }
.end annotation


# instance fields
.field private mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .param p1, "reuseArray"    # [F

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Landroid/animation/FloatArrayEvaluator;->mArray:[F

    #@5
    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 64
    check-cast p2, [F

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, [F

    #@4
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/FloatArrayEvaluator;->evaluate(F[F[F)[F

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public evaluate(F[F[F)[F
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [F
    .param p3, "endValue"    # [F

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/animation/FloatArrayEvaluator;->mArray:[F

    #@2
    .line 66
    .local v0, "array":[F
    if-nez v0, :cond_0

    #@4
    .line 67
    array-length v4, p2

    #@5
    new-array v0, v4, [F

    #@7
    .line 70
    :cond_0
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@9
    if-ge v2, v4, :cond_1

    #@b
    .line 71
    aget v3, p2, v2

    #@d
    .line 72
    .local v3, "start":F
    aget v1, p3, v2

    #@f
    .line 73
    .local v1, "end":F
    sub-float v4, v1, v3

    #@11
    mul-float/2addr v4, p1

    #@12
    add-float/2addr v4, v3

    #@13
    aput v4, v0, v2

    #@15
    .line 70
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 75
    .end local v1    # "end":F
    .end local v3    # "start":F
    :cond_1
    return-object v0
.end method
