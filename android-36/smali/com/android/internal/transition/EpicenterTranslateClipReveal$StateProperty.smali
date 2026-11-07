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
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist TARGET_X:C = 'x'

.field public static final blacklist TARGET_Y:C = 'y'


# instance fields
.field private final blacklist mTargetDimension:I

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;


# direct methods
.method public constructor blacklist <init>(C)V
    .registers 5
    .param p1, "targetDimension"    # C

    .line 283
    const-class v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 285
    iput p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    .line 286
    return-void
.end method


# virtual methods
.method public blacklist get(Landroid/view/View;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .registers 6
    .param p1, "object"    # Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 291
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 292
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 294
    :cond_b
    iget-object v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempState:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 295
    .local v1, "tempState":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget v2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    const/16 v3, 0x78

    if-ne v2, v3, :cond_2a

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    .line 297
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    .line 298
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    goto :goto_40

    .line 300
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    .line 301
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    .line 302
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    .line 304
    :goto_40
    return-object v1
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 273
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->get(Landroid/view/View;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)V
    .registers 7
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    .line 309
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTempRect:Landroid/graphics/Rect;

    .line 310
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/16 v2, 0x78

    if-eqz v1, :cond_32

    .line 311
    iget v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v1, v2, :cond_1f

    .line 312
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 313
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2f

    .line 315
    :cond_1f
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 316
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    float-to-int v3, v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 318
    :goto_2f
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 321
    :cond_32
    iget v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->mTargetDimension:I

    if-ne v1, v2, :cond_3c

    .line 322
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_41

    .line 324
    :cond_3c
    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 326
    :goto_41
    return-void
.end method

.method public bridge synthetic whitelist set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 273
    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;->set(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)V

    return-void
.end method
