.class public Landroid/animation/IntArrayEvaluator;
.super Ljava/lang/Object;
.source "IntArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[I>;"
    }
.end annotation


# instance fields
.field private mArray:[I


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

.method public constructor <init>([I)V
    .locals 0
    .param p1, "reuseArray"    # [I

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Landroid/animation/IntArrayEvaluator;->mArray:[I

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
    .line 63
    check-cast p2, [I

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, [I

    #@4
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/IntArrayEvaluator;->evaluate(F[I[I)[I

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public evaluate(F[I[I)[I
    .locals 6
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [I
    .param p3, "endValue"    # [I

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/animation/IntArrayEvaluator;->mArray:[I

    #@2
    .line 65
    .local v0, "array":[I
    if-nez v0, :cond_0

    #@4
    .line 66
    array-length v4, p2

    #@5
    new-array v0, v4, [I

    #@7
    .line 68
    :cond_0
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@9
    if-ge v2, v4, :cond_1

    #@b
    .line 69
    aget v3, p2, v2

    #@d
    .line 70
    .local v3, "start":I
    aget v1, p3, v2

    #@f
    .line 71
    .local v1, "end":I
    int-to-float v4, v3

    #@10
    sub-int v5, v1, v3

    #@12
    int-to-float v5, v5

    #@13
    mul-float/2addr v5, p1

    #@14
    add-float/2addr v4, v5

    #@15
    float-to-int v4, v4

    #@16
    aput v4, v0, v2

    #@18
    .line 68
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 73
    .end local v1    # "end":I
    .end local v3    # "start":I
    :cond_1
    return-object v0
.end method
