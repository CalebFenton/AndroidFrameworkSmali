.class Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;
.super Ljava/lang/Object;
.source "NightDisplayService.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorMatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[F>;"
    }
.end annotation


# instance fields
.field private final mResultMatrix:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 549
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    #@9
    .line 544
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;-><init>()V

    #@3
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
    .line 552
    check-cast p2, [F

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, [F

    #@4
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->evaluate(F[F[F)[F

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public evaluate(F[F[F)[F
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "startValue"    # [F
    .param p3, "endValue"    # [F

    #@0
    .prologue
    .line 553
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 554
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    #@8
    aget v2, p2, v0

    #@a
    aget v3, p3, v0

    #@c
    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    #@f
    move-result v2

    #@10
    aput v2, v1, v0

    #@12
    .line 553
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 556
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;->mResultMatrix:[F

    #@17
    return-object v1
.end method
