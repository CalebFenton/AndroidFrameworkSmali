.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MagnificationSpecEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/view/MagnificationSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTempSpec:Landroid/view/MagnificationSpec;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 871
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;->mTempSpec:Landroid/view/MagnificationSpec;

    #@9
    .line 869
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "fromSpec"    # Landroid/view/MagnificationSpec;
    .param p3, "toSpec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;->mTempSpec:Landroid/view/MagnificationSpec;

    #@2
    .line 877
    .local v0, "result":Landroid/view/MagnificationSpec;
    iget v1, p2, Landroid/view/MagnificationSpec;->scale:F

    #@4
    iget v2, p3, Landroid/view/MagnificationSpec;->scale:F

    #@6
    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    #@8
    sub-float/2addr v2, v3

    #@9
    mul-float/2addr v2, p1

    #@a
    add-float/2addr v1, v2

    #@b
    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    #@d
    .line 878
    iget v1, p2, Landroid/view/MagnificationSpec;->offsetX:F

    #@f
    iget v2, p3, Landroid/view/MagnificationSpec;->offsetX:F

    #@11
    iget v3, p2, Landroid/view/MagnificationSpec;->offsetX:F

    #@13
    sub-float/2addr v2, v3

    #@14
    mul-float/2addr v2, p1

    #@15
    add-float/2addr v1, v2

    #@16
    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    #@18
    .line 879
    iget v1, p2, Landroid/view/MagnificationSpec;->offsetY:F

    #@1a
    iget v2, p3, Landroid/view/MagnificationSpec;->offsetY:F

    #@1c
    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    #@1e
    sub-float/2addr v2, v3

    #@1f
    mul-float/2addr v2, p1

    #@20
    add-float/2addr v1, v2

    #@21
    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    #@23
    .line 880
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "fromSpec"    # Ljava/lang/Object;
    .param p3, "toSpec"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 874
    check-cast p2, Landroid/view/MagnificationSpec;

    #@2
    .end local p2    # "fromSpec":Ljava/lang/Object;
    check-cast p3, Landroid/view/MagnificationSpec;

    #@4
    .end local p3    # "toSpec":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$MagnificationSpecEvaluator;->evaluate(FLandroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
