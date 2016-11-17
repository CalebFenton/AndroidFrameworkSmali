.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 262
    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@5
    invoke-direct {v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@a
    .line 261
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p3, "endValue"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@2
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@4
    iget v2, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@6
    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@8
    sub-int/2addr v2, v3

    #@9
    int-to-float v2, v2

    #@a
    mul-float/2addr v2, p1

    #@b
    float-to-int v2, v2

    #@c
    add-int/2addr v1, v2

    #@d
    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@f
    .line 267
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@11
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@13
    iget v2, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@15
    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@17
    sub-int/2addr v2, v3

    #@18
    int-to-float v2, v2

    #@19
    mul-float/2addr v2, p1

    #@1a
    float-to-int v2, v2

    #@1b
    add-int/2addr v1, v2

    #@1c
    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@1e
    .line 268
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@20
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@22
    iget v2, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@24
    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@26
    sub-float/2addr v2, v3

    #@27
    mul-float/2addr v2, p1

    #@28
    float-to-int v2, v2

    #@29
    int-to-float v2, v2

    #@2a
    add-float/2addr v1, v2

    #@2b
    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@2d
    .line 269
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@2f
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 265
    check-cast p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@4
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->evaluate(FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
