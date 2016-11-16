.class public Landroid/view/TouchDelegate;
.super Ljava/lang/Object;
.source "TouchDelegate.java"


# static fields
.field public static final ABOVE:I = 0x1

.field public static final BELOW:I = 0x2

.field public static final TO_LEFT:I = 0x4

.field public static final TO_RIGHT:I = 0x8


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "delegateView"    # Landroid/view/View;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-object p1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    #@5
    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    #@13
    .line 94
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@18
    iput-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@1a
    .line 95
    iget-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@1c
    iget v1, p0, Landroid/view/TouchDelegate;->mSlop:I

    #@1e
    neg-int v1, v1

    #@1f
    iget v2, p0, Landroid/view/TouchDelegate;->mSlop:I

    #@21
    neg-int v2, v2

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    #@25
    .line 96
    iput-object p2, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    #@27
    .line 90
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v9

    #@4
    float-to-int v7, v9

    #@5
    .line 108
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@8
    move-result v9

    #@9
    float-to-int v8, v9

    #@a
    .line 109
    .local v8, "y":I
    const/4 v4, 0x0

    #@b
    .line 110
    .local v4, "sendToDelegate":Z
    const/4 v3, 0x1

    #@c
    .line 111
    .local v3, "hit":Z
    const/4 v2, 0x0

    #@d
    .line 113
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@10
    move-result v9

    #@11
    packed-switch v9, :pswitch_data_0

    #@14
    .line 137
    .end local v4    # "sendToDelegate":Z
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    #@16
    .line 138
    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    #@18
    .line 140
    .local v1, "delegateView":Landroid/view/View;
    if-eqz v3, :cond_2

    #@1a
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@1d
    move-result v9

    #@1e
    div-int/lit8 v9, v9, 0x2

    #@20
    int-to-float v9, v9

    #@21
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@24
    move-result v10

    #@25
    div-int/lit8 v10, v10, 0x2

    #@27
    int-to-float v10, v10

    #@28
    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@2b
    .line 149
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@2e
    move-result v2

    #@2f
    .line 151
    .end local v1    # "delegateView":Landroid/view/View;
    .end local v2    # "handled":Z
    :cond_1
    return v2

    #@30
    .line 115
    .restart local v2    # "handled":Z
    .restart local v4    # "sendToDelegate":Z
    :pswitch_0
    iget-object v0, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    #@32
    .line 117
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    #@35
    move-result v9

    #@36
    if-eqz v9, :cond_0

    #@38
    .line 118
    const/4 v9, 0x1

    #@39
    iput-boolean v9, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    #@3b
    .line 119
    const/4 v4, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 124
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :pswitch_1
    iget-boolean v4, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    #@3f
    .line 125
    .local v4, "sendToDelegate":Z
    if-eqz v4, :cond_0

    #@41
    .line 126
    iget-object v6, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@43
    .line 127
    .local v6, "slopBounds":Landroid/graphics/Rect;
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    #@46
    move-result v9

    #@47
    if-nez v9, :cond_0

    #@49
    .line 128
    const/4 v3, 0x0

    #@4a
    goto :goto_0

    #@4b
    .line 133
    .end local v6    # "slopBounds":Landroid/graphics/Rect;
    .local v4, "sendToDelegate":Z
    :pswitch_2
    iget-boolean v4, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    #@4d
    .line 134
    .local v4, "sendToDelegate":Z
    const/4 v9, 0x0

    #@4e
    iput-boolean v9, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    #@50
    goto :goto_0

    #@51
    .line 146
    .end local v4    # "sendToDelegate":Z
    .restart local v1    # "delegateView":Landroid/view/View;
    :cond_2
    iget v5, p0, Landroid/view/TouchDelegate;->mSlop:I

    #@53
    .line 147
    .local v5, "slop":I
    mul-int/lit8 v9, v5, 0x2

    #@55
    neg-int v9, v9

    #@56
    int-to-float v9, v9

    #@57
    mul-int/lit8 v10, v5, 0x2

    #@59
    neg-int v10, v10

    #@5a
    int-to-float v10, v10

    #@5b
    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@5e
    goto :goto_1

    #@5f
    .line 113
    nop

    #@60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
