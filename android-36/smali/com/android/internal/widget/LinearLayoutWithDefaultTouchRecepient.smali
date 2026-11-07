.class public Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutWithDefaultTouchRecepient.java"


# instance fields
.field private blacklist mDefaultTouchRecepient:Landroid/view/View;

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    if-nez v0, :cond_9

    .line 58
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 61
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 62
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r setDefaultTouchRecepient(Landroid/view/View;)V
    .registers 2
    .param p1, "defaultTouchRecepient"    # Landroid/view/View;

    .line 52
    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    .line 53
    return-void
.end method
