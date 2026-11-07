.class public Landroid/view/TouchDelegate;
.super Ljava/lang/Object;
.source "TouchDelegate.java"


# static fields
.field public static final whitelist ABOVE:I = 0x1

.field public static final whitelist BELOW:I = 0x2

.field public static final whitelist TO_LEFT:I = 0x4

.field public static final whitelist TO_RIGHT:I = 0x8


# instance fields
.field private greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist mDelegateTargeted:Z

.field private greylist-max-o mDelegateView:Landroid/view/View;

.field private greylist-max-o mSlop:I

.field private greylist-max-o mSlopBounds:Landroid/graphics/Rect;

.field private blacklist mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "delegateView"    # Landroid/view/View;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 101
    iget-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 102
    iput-object p2, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist getTouchDelegateInfo()Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .registers 5

    .line 218
    iget-object v0, p0, Landroid/view/TouchDelegate;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    if-nez v0, :cond_25

    .line 219
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 220
    .local v0, "targetMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/graphics/Region;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 221
    .local v1, "bounds":Landroid/graphics/Rect;
    if-nez v1, :cond_14

    .line 222
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v2

    .line 224
    :cond_14
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-direct {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Landroid/view/TouchDelegate;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 227
    .end local v0    # "targetMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/graphics/Region;Landroid/view/View;>;"
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_25
    iget-object v0, p0, Landroid/view/TouchDelegate;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-object v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 114
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 115
    .local v1, "y":I
    const/4 v2, 0x0

    .line 116
    .local v2, "sendToDelegate":Z
    const/4 v3, 0x1

    .line 117
    .local v3, "hit":Z
    const/4 v4, 0x0

    .line 119
    .local v4, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_62

    :pswitch_14
    goto :goto_34

    .line 137
    :pswitch_15
    iget-boolean v2, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 138
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_34

    .line 128
    :pswitch_1b
    iget-boolean v2, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 129
    if-eqz v2, :cond_34

    .line 130
    iget-object v5, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 131
    .local v5, "slopBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_28

    .line 132
    const/4 v3, 0x0

    .line 134
    .end local v5    # "slopBounds":Landroid/graphics/Rect;
    :cond_28
    goto :goto_34

    .line 121
    :pswitch_29
    iget-object v5, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 122
    iget-boolean v2, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 123
    nop

    .line 141
    :cond_34
    :goto_34
    if-eqz v2, :cond_61

    .line 142
    if-eqz v3, :cond_4e

    .line 144
    iget-object v5, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_5b

    .line 148
    :cond_4e
    iget v5, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 149
    .local v5, "slop":I
    mul-int/lit8 v6, v5, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    mul-int/lit8 v7, v5, 0x2

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 151
    .end local v5    # "slop":I
    :goto_5b
    iget-object v5, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 153
    :cond_61
    return v4

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1b
        :pswitch_1b
        :pswitch_15
        :pswitch_14
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public whitelist onTouchExplorationHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 171
    iget-object v0, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 172
    return v1

    .line 175
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 176
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 177
    .local v2, "y":I
    const/4 v3, 0x1

    .line 178
    .local v3, "hit":Z
    const/4 v4, 0x0

    .line 180
    .local v4, "handled":Z
    iget-object v5, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    .line 181
    .local v5, "isInbound":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x1

    packed-switch v6, :pswitch_data_5e

    :pswitch_20
    goto :goto_39

    .line 196
    :pswitch_21
    iput-boolean v7, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_39

    .line 183
    :pswitch_24
    iput-boolean v5, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 184
    goto :goto_39

    .line 186
    :pswitch_27
    if-eqz v5, :cond_2c

    .line 187
    iput-boolean v7, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_39

    .line 190
    :cond_2c
    iget-boolean v6, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    if-eqz v6, :cond_39

    iget-object v6, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_39

    .line 191
    const/4 v3, 0x0

    .line 199
    :cond_39
    :goto_39
    iget-boolean v6, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    if-eqz v6, :cond_5d

    .line 200
    if-eqz v3, :cond_55

    .line 201
    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v6, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v1, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_57

    .line 203
    :cond_55
    iput-boolean v1, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 205
    :goto_57
    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 207
    :cond_5d
    return v4

    :pswitch_data_5e
    .packed-switch 0x7
        :pswitch_27
        :pswitch_20
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method
