.class public Landroid/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DropDownListView$ResolveHoverRunnable;
    }
.end annotation


# instance fields
.field private greylist-max-o mDrawsInPressedState:Z

.field private greylist-max-o mHijackFocus:Z

.field private greylist-max-o mListSelectionHidden:Z

.field private greylist-max-o mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

.field private greylist-max-o mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 89
    const v0, 0x101006d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;ZI)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .param p3, "defStyleAttr"    # I

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setCacheColorHint(I)V

    .line 102
    return-void
.end method

.method private greylist-max-o clearPressedItem()V
    .registers 4

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 243
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 244
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 246
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_17

    .line 248
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 250
    :cond_17
    return-void
.end method

.method private greylist-max-o setPressedItem(Landroid/view/View;IFF)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 256
    invoke-virtual {p0, p3, p4}, Landroid/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 257
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_f

    .line 258
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    .line 262
    :cond_f
    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mDataChanged:Z

    if-eqz v1, :cond_16

    .line 263
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->layoutChildren()V

    .line 268
    :cond_16
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_2d

    if-eq v1, p1, :cond_2d

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 272
    :cond_2d
    iput p2, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    .line 276
    .local v2, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    .line 277
    .local v3, "childY":F
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_49

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 283
    :cond_49
    invoke-virtual {p0, p2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 284
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->refreshDrawableState()V

    .line 289
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v0, :cond_7

    .line 163
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 165
    :cond_7
    return-void
.end method

.method public whitelist hasFocus()Z
    .registers 2

    .line 347
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist hasWindowFocus()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist isFocused()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist isInTouchMode()Z
    .registers 2

    .line 317
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .line 305
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 308
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 311
    :cond_f
    return-object v0
.end method

.method public greylist-max-o onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .line 174
    const/4 v0, 0x1

    .line 175
    .local v0, "handledEvent":Z
    const/4 v1, 0x0

    .line 177
    .local v1, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 178
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_6c

    goto :goto_42

    .line 180
    :pswitch_b
    const/4 v0, 0x0

    .line 181
    goto :goto_42

    .line 183
    :pswitch_d
    const/4 v0, 0x0

    .line 186
    :pswitch_e
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 187
    .local v4, "activeIndex":I
    if-gez v4, :cond_16

    .line 188
    const/4 v0, 0x0

    .line 189
    goto :goto_42

    .line 192
    :cond_16
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 193
    .local v5, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 194
    .local v6, "y":I
    invoke-virtual {p0, v5, v6}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v7

    .line 195
    .local v7, "position":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_29

    .line 196
    const/4 v1, 0x1

    .line 197
    goto :goto_42

    .line 200
    :cond_29
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 201
    .local v8, "child":Landroid/view/View;
    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {p0, v8, v7, v9, v10}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 202
    const/4 v0, 0x1

    .line 204
    if-ne v2, v3, :cond_42

    .line 205
    invoke-virtual {p0, v7}, Landroid/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v9

    .line 206
    .local v9, "id":J
    invoke-virtual {p0, v8, v7, v9, v10}, Landroid/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 212
    .end local v4    # "activeIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "position":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "id":J
    :cond_42
    :goto_42
    if-eqz v0, :cond_46

    if-eqz v1, :cond_49

    .line 213
    :cond_46
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    .line 217
    :cond_49
    if-eqz v0, :cond_61

    .line 218
    iget-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v4, :cond_56

    .line 219
    new-instance v4, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 221
    :cond_56
    iget-object v4, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 222
    iget-object v3, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v3, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_6b

    .line 223
    :cond_61
    iget-object v3, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v3, :cond_6b

    .line 224
    iget-object v3, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 227
    :cond_6b
    :goto_6b
    return v0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 122
    .local v0, "action":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_19

    iget-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v1, :cond_19

    .line 125
    new-instance v1, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView-IA;)V

    iput-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 126
    iget-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 130
    :cond_19
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 132
    .local v1, "handled":Z
    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_33

    const/4 v2, 0x7

    if-ne v0, v2, :cond_26

    goto :goto_33

    .line 151
    :cond_26
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v2

    if-nez v2, :cond_67

    .line 152
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 153
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    goto :goto_67

    .line 134
    :cond_33
    :goto_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v2

    .line 135
    .local v2, "position":I
    if-eq v2, v3, :cond_66

    iget v3, p0, Landroid/widget/DropDownListView;->mSelectedPosition:I

    if-eq v2, v3, :cond_66

    .line 136
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, "hoveredItem":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 140
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->requestFocus()Z

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/widget/DropDownListView;->positionSelector(ILandroid/view/View;)V

    .line 143
    invoke-virtual {p0, v2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    .line 144
    invoke-virtual {p0, v2}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    .line 146
    :cond_63
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    .line 148
    .end local v2    # "position":I
    .end local v3    # "hoveredItem":Landroid/view/View;
    :cond_66
    nop

    .line 157
    :cond_67
    :goto_67
    return v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 111
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 116
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setListSelectionHidden(Z)V
    .registers 2
    .param p1, "hideListSelection"    # Z

    .line 238
    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    .line 239
    return-void
.end method

.method greylist-max-o shouldShowSelector()Z
    .registers 2

    .line 106
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .registers 2

    .line 293
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
