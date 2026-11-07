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
.field private greylist-max-o mActivePointerId:I

.field private greylist-max-o mDisallowIntercept:Ljava/lang/Runnable;

.field private greylist-max-o mForwarding:Z

.field private final greylist-max-o mLongPressTimeout:I

.field private final greylist-max-o mScaledTouchSlop:F

.field private final greylist-max-o mSrc:Landroid/view/View;

.field private final greylist-max-o mTapTimeout:I

.field private greylist-max-o mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSrc(Landroid/widget/ForwardingListener;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monLongPress(Landroid/widget/ForwardingListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ForwardingListener;->onLongPress()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "src"    # Landroid/view/View;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    .line 68
    iget v0, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    .line 69
    return-void
.end method

.method private greylist-max-o clearCallbacks()V
    .registers 3

    .line 207
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    :cond_b
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 212
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    :cond_16
    return-void
.end method

.method private greylist-max-o onLongPress()V
    .registers 12

    .line 217
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    .line 219
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 220
    .local v0, "src":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_37

    .line 226
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 227
    return-void

    .line 231
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 235
    .local v3, "now":J
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 236
    .local v1, "e":Landroid/view/MotionEvent;
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 237
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 239
    iput-boolean v2, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 240
    return-void

    .line 223
    .end local v1    # "e":Landroid/view/MotionEvent;
    .end local v3    # "now":J
    :cond_37
    :goto_37
    return-void
.end method

.method private greylist-max-o onTouchForwarded(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .line 250
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 251
    .local v0, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v1

    .line 252
    .local v1, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    const/4 v2, 0x0

    if-eqz v1, :cond_46

    invoke-interface {v1}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_46

    .line 256
    :cond_10
    invoke-interface {v1}, Lcom/android/internal/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast v3, Landroid/widget/DropDownListView;

    .line 257
    .local v3, "dst":Landroid/widget/DropDownListView;
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Landroid/widget/DropDownListView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_45

    .line 262
    :cond_1f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 263
    .local v4, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0, v4}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 264
    invoke-virtual {v3, v4}, Landroid/widget/DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 267
    iget v5, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v5

    .line 268
    .local v5, "handled":Z
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 272
    .local v6, "action":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3e

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3e

    move v8, v7

    goto :goto_3f

    :cond_3e
    move v8, v2

    .line 275
    .local v8, "keepForwarding":Z
    :goto_3f
    if-eqz v5, :cond_44

    if-eqz v8, :cond_44

    move v2, v7

    :cond_44
    return v2

    .line 258
    .end local v4    # "dstEvent":Landroid/view/MotionEvent;
    .end local v5    # "handled":Z
    .end local v6    # "action":I
    .end local v8    # "keepForwarding":Z
    :cond_45
    :goto_45
    return v2

    .line 253
    .end local v3    # "dst":Landroid/widget/DropDownListView;
    :cond_46
    :goto_46
    return v2
.end method

.method private greylist-max-o onTouchObserved(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .line 161
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 162
    .local v0, "src":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 163
    return v2

    .line 166
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 167
    .local v1, "actionMasked":I
    packed-switch v1, :pswitch_data_6a

    goto :goto_69

    .line 182
    :pswitch_12
    iget v3, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 183
    .local v3, "activePointerIndex":I
    if-ltz v3, :cond_69

    .line 184
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 185
    .local v4, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 188
    .local v5, "y":F
    iget v6, p0, Landroid/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/View;->pointInView(FFF)Z

    move-result v6

    if-nez v6, :cond_36

    .line 189
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 193
    return v6

    .line 195
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_36
    goto :goto_69

    .line 199
    .end local v3    # "activePointerIndex":I
    :pswitch_37
    invoke-direct {p0}, Landroid/widget/ForwardingListener;->clearCallbacks()V

    goto :goto_69

    .line 169
    :pswitch_3b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    .line 171
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-nez v3, :cond_4d

    .line 172
    new-instance v3, Landroid/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {v3, p0, v4}, Landroid/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener-IA;)V

    iput-object v3, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 174
    :cond_4d
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v5, p0, Landroid/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v5, v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v3, :cond_60

    .line 177
    new-instance v3, Landroid/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {v3, p0, v4}, Landroid/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener-IA;)V

    iput-object v3, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 179
    :cond_60
    iget-object v3, p0, Landroid/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v4, p0, Landroid/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    nop

    .line 203
    :cond_69
    :goto_69
    return v2

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_37
        :pswitch_12
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method public abstract greylist-max-o getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
.end method

.method protected greylist-max-o onForwardingStarted()Z
    .registers 3

    .line 130
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 131
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_f

    .line 132
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->show()V

    .line 134
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method protected greylist-max-o onForwardingStopped()Z
    .registers 3

    .line 147
    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    .line 148
    .local v0, "popup":Lcom/android/internal/view/menu/ShowableListMenu;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 149
    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->dismiss()V

    .line 151
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 85
    iget-boolean v0, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 87
    .local v0, "wasForwarding":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 88
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStopped()Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_15

    :cond_13
    move v3, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v3, v1

    .local v3, "forwarding":Z
    :goto_16
    goto :goto_3d

    .line 90
    .end local v3    # "forwarding":Z
    :cond_17
    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Landroid/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v1

    goto :goto_26

    :cond_25
    move v3, v2

    .line 92
    .restart local v3    # "forwarding":Z
    :goto_26
    if-eqz v3, :cond_3d

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 95
    .local v4, "now":J
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 97
    .local v6, "e":Landroid/view/MotionEvent;
    iget-object v7, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 102
    .end local v4    # "now":J
    .end local v6    # "e":Landroid/view/MotionEvent;
    :cond_3d
    :goto_3d
    iput-boolean v3, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 103
    if-nez v3, :cond_45

    if-eqz v0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :cond_45
    :goto_45
    return v1
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 108
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ForwardingListener;->mForwarding:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ForwardingListener;->mActivePointerId:I

    .line 115
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 116
    iget-object v0, p0, Landroid/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 118
    :cond_11
    return-void
.end method
