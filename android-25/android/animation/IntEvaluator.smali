.class public Landroid/animation/IntEvaluator;
.super Ljava/lang/Object;
.source "IntEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Integer;
    .param p3, "endValue"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 39
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    .line 40
    .local v0, "startInt":I
    int-to-float v1, v0

    #@5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@8
    move-result v2

    #@9
    sub-int/2addr v2, v0

    #@a
    int-to-float v2, v2

    #@b
    mul-float/2addr v2, p1

    #@c
    add-float/2addr v1, v2

    #@d
    float-to-int v1, v1

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 38
    check-cast p2, Ljava/lang/Integer;

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, Ljava/lang/Integer;

    #@4
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
