.class public Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutWithDefaultTouchRecepient.java"


# instance fields
.field private mDefaultTouchRecepient:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 36
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    #@a
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 36
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    #@a
    .line 43
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 54
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 58
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    #@14
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@17
    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    #@19
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@1e
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@21
    move-result v0

    #@22
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    #@24
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@26
    int-to-float v1, v1

    #@27
    add-float/2addr v0, v1

    #@28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2b
    move-result v1

    #@2c
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    #@2e
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@30
    int-to-float v2, v2

    #@31
    add-float/2addr v1, v2

    #@32
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@35
    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    #@37
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@3a
    move-result v0

    #@3b
    return v0
.end method

.method public setDefaultTouchRecepient(Landroid/view/View;)V
    .locals 0
    .param p1, "defaultTouchRecepient"    # Landroid/view/View;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    #@2
    .line 47
    return-void
.end method
