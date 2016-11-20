.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
.super Landroid/util/Property;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/view/View;",
        "Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final TARGET_X:C = 'x'

.field public static final TARGET_Y:C = 'y'


# instance fields
.field private final mTargetDimension:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;


# direct methods
.method public constructor <init>(C)V
    .locals 3
    .param p1, "targetDimension"    # C

    #@0
    .prologue
    .line 283
    const-class v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "state_"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@19
    .line 277
    new-instance v0, Landroid/graphics/Rect;

    #@1b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    #@20
    .line 278
    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@22
    invoke-direct {v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@27
    .line 285
    iput p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    #@29
    .line 282
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .locals 4
    .param p1, "object"    # Landroid/view/View;

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    #@2
    .line 291
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 292
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@b
    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@d
    .line 295
    .local v1, "tempState":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget v2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    #@f
    const/16 v3, 0x78

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@16
    move-result v2

    #@17
    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@19
    .line 297
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@1b
    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@1d
    float-to-int v3, v3

    #@1e
    add-int/2addr v2, v3

    #@1f
    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@21
    .line 298
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@23
    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@25
    float-to-int v3, v3

    #@26
    add-int/2addr v2, v3

    #@27
    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@29
    .line 304
    :goto_0
    return-object v1

    #@2a
    .line 300
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@2d
    move-result v2

    #@2e
    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@30
    .line 301
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@32
    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@34
    float-to-int v3, v3

    #@35
    add-int/2addr v2, v3

    #@36
    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@38
    .line 302
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@3a
    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@3c
    float-to-int v3, v3

    #@3d
    add-int/2addr v2, v3

    #@3e
    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@40
    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 289
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->get(Landroid/view/View;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public set(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)V
    .locals 4
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@0
    .prologue
    const/16 v3, 0x78

    #@2
    .line 309
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    #@4
    .line 310
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 311
    iget v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    #@c
    if-ne v1, v3, :cond_1

    #@e
    .line 312
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@10
    iget v2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@12
    float-to-int v2, v2

    #@13
    sub-int/2addr v1, v2

    #@14
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@16
    .line 313
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@18
    iget v2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@1a
    float-to-int v2, v2

    #@1b
    sub-int/2addr v1, v2

    #@1c
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@1e
    .line 318
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@21
    .line 321
    :cond_0
    iget v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    #@23
    if-ne v1, v3, :cond_2

    #@25
    .line 322
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@27
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    #@2a
    .line 308
    :goto_1
    return-void

    #@2b
    .line 315
    :cond_1
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    #@2d
    iget v2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@2f
    float-to-int v2, v2

    #@30
    sub-int/2addr v1, v2

    #@31
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@33
    .line 316
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    #@35
    iget v2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@37
    float-to-int v2, v2

    #@38
    sub-int/2addr v1, v2

    #@39
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@3b
    goto :goto_0

    #@3c
    .line 324
    :cond_2
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    #@3e
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    #@41
    goto :goto_1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 308
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@4
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->set(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)V

    #@7
    return-void
.end method
