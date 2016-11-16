.class public abstract Landroid/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ForwardingListener$DisallowIntercept;,
        Landroid/widget/ForwardingListener$TriggerLongPress;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/widget/ForwardingListener;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/ForwardingListener;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->onLongPress()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@5
    .line 61
    const/4 v0, 0x1

    #@6
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    #@9
    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@c
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@17
    move-result v0

    #@18
    int-to-float v0, v0

    #@19
    iput v0, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    #@1b
    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    #@21
    .line 68
    iget v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    #@23
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@26
    move-result v1

    #@27
    add-int/2addr v0, v1

    #@28
    div-int/lit8 v0, v0, 0x2

    #@2a
    iput v0, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    #@2c
    .line 59
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 208
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@6
    iget-object v1, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 211
    :cond_0
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 212
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@11
    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@16
    .line 206
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 217
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    #@5
    .line 219
    iget-object v9, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@7
    .line 220
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 223
    :cond_0
    return-void

    #@14
    .line 226
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_2

    #@1a
    .line 227
    return-void

    #@1b
    .line 231
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@22
    .line 234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@25
    move-result-wide v0

    #@26
    .line 235
    .local v0, "now":J
    const/4 v4, 0x3

    #@27
    const/4 v7, 0x0

    #@28
    move-wide v2, v0

    #@29
    move v6, v5

    #@2a
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@2d
    move-result-object v8

    #@2e
    .line 236
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@31
    .line 237
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@34
    .line 239
    iput-boolean v10, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    #@36
    .line 216
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 250
    iget-object v6, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@3
    .line 251
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    #@6
    move-result-object v5

    #@7
    .line 252
    .local v5, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v5, :cond_0

    #@9
    invoke-interface {v5}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_0

    #@f
    .line 256
    invoke-interface {v5}, Lcom/android/internal/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/widget/DropDownListView;

    #@15
    .line 257
    .local v1, "dst":Landroid/widget/DropDownListView;
    if-eqz v1, :cond_1

    #@17
    invoke-virtual {v1}, Landroid/widget/DropDownListView;->isShown()Z

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_1

    #@1d
    .line 262
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@20
    move-result-object v2

    #@21
    .line 263
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6, v2}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    #@24
    .line 264
    invoke-virtual {v1, v2}, Landroid/widget/DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    #@27
    .line 267
    iget v8, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    #@29
    invoke-virtual {v1, v2, v8}, Landroid/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    #@2c
    move-result v3

    #@2d
    .line 268
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@30
    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@33
    move-result v0

    #@34
    .line 272
    .local v0, "action":I
    const/4 v8, 0x1

    #@35
    if-eq v0, v8, :cond_3

    #@37
    .line 273
    const/4 v8, 0x3

    #@38
    if-eq v0, v8, :cond_2

    #@3a
    const/4 v4, 0x1

    #@3b
    .line 275
    .local v4, "keepForwarding":Z
    :goto_0
    if-eqz v3, :cond_4

    #@3d
    .end local v4    # "keepForwarding":Z
    :goto_1
    return v4

    #@3e
    .line 253
    .end local v0    # "action":I
    .end local v1    # "dst":Landroid/widget/DropDownListView;
    .end local v2    # "dstEvent":Landroid/view/MotionEvent;
    .end local v3    # "handled":Z
    :cond_0
    return v7

    #@3f
    .line 258
    .restart local v1    # "dst":Landroid/widget/DropDownListView;
    :cond_1
    return v7

    #@40
    .line 273
    .restart local v0    # "action":I
    .restart local v2    # "dstEvent":Landroid/view/MotionEvent;
    .restart local v3    # "handled":Z
    :cond_2
    const/4 v4, 0x0

    #@41
    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    #@42
    .line 272
    .end local v4    # "keepForwarding":Z
    :cond_3
    const/4 v4, 0x0

    #@43
    .restart local v4    # "keepForwarding":Z
    goto :goto_0

    #@44
    :cond_4
    move v4, v7

    #@45
    .line 275
    goto :goto_1
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 161
    iget-object v2, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@5
    .line 162
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    .line 163
    return v8

    #@c
    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@f
    move-result v0

    #@10
    .line 167
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    #@13
    .line 203
    :cond_1
    :goto_0
    return v8

    #@14
    .line 169
    :pswitch_0
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@17
    move-result v5

    #@18
    iput v5, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    #@1a
    .line 171
    iget-object v5, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@1c
    if-nez v5, :cond_2

    #@1e
    .line 172
    new-instance v5, Landroid/widget/ForwardingListener$DisallowIntercept;

    #@20
    invoke-direct {v5, p0, v9}, Landroid/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$DisallowIntercept;)V

    #@23
    iput-object v5, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@25
    .line 174
    :cond_2
    iget-object v5, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@27
    iget v6, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    #@29
    int-to-long v6, v6

    #@2a
    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@2d
    .line 176
    iget-object v5, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@2f
    if-nez v5, :cond_3

    #@31
    .line 177
    new-instance v5, Landroid/widget/ForwardingListener$TriggerLongPress;

    #@33
    invoke-direct {v5, p0, v9}, Landroid/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$TriggerLongPress;)V

    #@36
    iput-object v5, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@38
    .line 179
    :cond_3
    iget-object v5, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@3a
    iget v6, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    #@3c
    int-to-long v6, v6

    #@3d
    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@40
    goto :goto_0

    #@41
    .line 182
    :pswitch_1
    iget v5, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    #@43
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@46
    move-result v1

    #@47
    .line 183
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_1

    #@49
    .line 184
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@4c
    move-result v3

    #@4d
    .line 185
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@50
    move-result v4

    #@51
    .line 188
    .local v4, "y":F
    iget v5, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    #@53
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->pointInView(FFF)Z

    #@56
    move-result v5

    #@57
    if-nez v5, :cond_1

    #@59
    .line 189
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    #@5c
    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5f
    move-result-object v5

    #@60
    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@63
    .line 193
    return v6

    #@64
    .line 199
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    #@67
    goto :goto_0

    #@68
    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    #@0
    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    #@6
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 134
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 132
    :cond_1
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->show()V

    #@11
    goto :goto_0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    #@3
    move-result-object v0

    #@4
    .line 148
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    #@6
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 149
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->dismiss()V

    #@f
    .line 151
    :cond_0
    const/4 v1, 0x1

    #@10
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 85
    iget-boolean v10, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    #@4
    .line 87
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_2

    #@6
    .line 88
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStopped()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    const/4 v9, 0x0

    #@13
    .line 102
    :cond_0
    :goto_0
    iput-boolean v9, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    #@15
    .line 103
    if-nez v9, :cond_4

    #@17
    .end local v10    # "wasForwarding":Z
    :goto_1
    return v10

    #@18
    .line 88
    .restart local v10    # "wasForwarding":Z
    :cond_1
    const/4 v9, 0x1

    #@19
    .local v9, "forwarding":Z
    goto :goto_0

    #@1a
    .line 90
    .end local v9    # "forwarding":Z
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_3

    #@20
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    #@23
    move-result v9

    #@24
    .line 92
    .local v9, "forwarding":Z
    :goto_2
    if-eqz v9, :cond_0

    #@26
    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@29
    move-result-wide v0

    #@2a
    .line 95
    .local v0, "now":J
    const/4 v4, 0x3

    #@2b
    move-wide v2, v0

    #@2c
    move v6, v5

    #@2d
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@30
    move-result-object v8

    #@31
    .line 97
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@33
    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@36
    .line 98
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@39
    goto :goto_0

    #@3a
    .end local v0    # "now":J
    .end local v8    # "e":Landroid/view/MotionEvent;
    .end local v9    # "forwarding":Z
    :cond_3
    move v9, v7

    #@3b
    .line 90
    goto :goto_2

    #@3c
    .line 103
    :cond_4
    const/4 v10, 0x1

    #@3d
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 107
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    #@3
    .line 113
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    #@6
    .line 115
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 116
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@c
    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@11
    .line 111
    :cond_0
    return-void
.end method
