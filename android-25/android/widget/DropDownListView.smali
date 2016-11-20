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
.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static synthetic -set0(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)Landroid/widget/DropDownListView$ResolveHoverRunnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    #@0
    .prologue
    .line 89
    const v0, 0x101006d

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    #@6
    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 99
    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    #@6
    .line 101
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setCacheColorHint(I)V

    #@a
    .line 97
    return-void
.end method

.method private clearPressedItem()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 242
    iput-boolean v3, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    #@3
    .line 243
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setPressed(Z)V

    #@6
    .line 244
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    #@9
    .line 246
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    #@b
    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    #@d
    sub-int/2addr v1, v2

    #@e
    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    .line 247
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@14
    .line 248
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    #@17
    .line 241
    :cond_0
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 253
    iput-boolean v5, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    #@3
    .line 256
    invoke-virtual {p0, p3, p4}, Landroid/widget/DropDownListView;->drawableHotspotChanged(FF)V

    #@6
    .line 257
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isPressed()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 258
    invoke-virtual {p0, v5}, Landroid/widget/DropDownListView;->setPressed(Z)V

    #@f
    .line 262
    :cond_0
    iget-boolean v3, p0, Landroid/widget/DropDownListView;->mDataChanged:Z

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 263
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->layoutChildren()V

    #@16
    .line 268
    :cond_1
    iget v3, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    #@18
    iget v4, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    #@1a
    sub-int/2addr v3, v4

    #@1b
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v2

    #@1f
    .line 269
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2

    #@21
    if-eq v2, p1, :cond_2

    #@23
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 270
    const/4 v3, 0x0

    #@2a
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    #@2d
    .line 272
    :cond_2
    iput p2, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    #@2f
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@32
    move-result v3

    #@33
    int-to-float v3, v3

    #@34
    sub-float v0, p3, v3

    #@36
    .line 276
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@39
    move-result v3

    #@3a
    int-to-float v3, v3

    #@3b
    sub-float v1, p4, v3

    #@3d
    .line 277
    .local v1, "childY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@40
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    #@43
    move-result v3

    #@44
    if-nez v3, :cond_3

    #@46
    .line 279
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    #@49
    .line 283
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    #@4c
    .line 284
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    #@4f
    .line 288
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->refreshDrawableState()V

    #@52
    .line 252
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 163
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    #@7
    .line 161
    :cond_0
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    #@0
    .prologue
    .line 347
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    #@0
    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    #@0
    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    #@0
    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    #@6
    if-nez v0, :cond_1

    #@8
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_1
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    #@0
    .prologue
    .line 305
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 307
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    #@6
    if-eqz v1, :cond_0

    #@8
    move-object v1, v0

    #@9
    .line 308
    check-cast v1, Landroid/widget/TextView;

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    #@f
    .line 311
    :cond_0
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    #@0
    .prologue
    .line 174
    const/4 v4, 0x1

    #@1
    .line 175
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    #@2
    .line 177
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 178
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    #@9
    .line 212
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 213
    :cond_1
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    #@10
    .line 217
    :cond_2
    if-eqz v4, :cond_7

    #@12
    .line 218
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@14
    if-nez v10, :cond_3

    #@16
    .line 219
    new-instance v10, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@18
    invoke-direct {v10, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    #@1b
    iput-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@1d
    .line 221
    :cond_3
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@1f
    const/4 v11, 0x1

    #@20
    invoke-virtual {v10, v11}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    #@23
    .line 222
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@25
    invoke-virtual {v10, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@28
    .line 227
    :cond_4
    :goto_1
    return v4

    #@29
    .line 180
    :pswitch_0
    const/4 v4, 0x0

    #@2a
    .line 181
    goto :goto_0

    #@2b
    .line 183
    :pswitch_1
    const/4 v4, 0x0

    #@2c
    .line 186
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@2f
    move-result v1

    #@30
    .line 187
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    #@32
    .line 188
    const/4 v4, 0x0

    #@33
    .line 189
    goto :goto_0

    #@34
    .line 192
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@37
    move-result v10

    #@38
    float-to-int v8, v10

    #@39
    .line 193
    .local v8, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@3c
    move-result v10

    #@3d
    float-to-int v9, v10

    #@3e
    .line 194
    .local v9, "y":I
    invoke-virtual {p0, v8, v9}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    #@41
    move-result v5

    #@42
    .line 195
    .local v5, "position":I
    const/4 v10, -0x1

    #@43
    if-ne v5, v10, :cond_6

    #@45
    .line 196
    const/4 v3, 0x1

    #@46
    .line 197
    goto :goto_0

    #@47
    .line 200
    :cond_6
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    #@4a
    move-result v10

    #@4b
    sub-int v10, v5, v10

    #@4d
    invoke-virtual {p0, v10}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@50
    move-result-object v2

    #@51
    .line 201
    .local v2, "child":Landroid/view/View;
    int-to-float v10, v8

    #@52
    int-to-float v11, v9

    #@53
    invoke-direct {p0, v2, v5, v10, v11}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    #@56
    .line 202
    const/4 v4, 0x1

    #@57
    .line 204
    const/4 v10, 0x1

    #@58
    if-ne v0, v10, :cond_0

    #@5a
    .line 205
    invoke-virtual {p0, v5}, Landroid/widget/DropDownListView;->getItemIdAtPosition(I)J

    #@5d
    move-result-wide v6

    #@5e
    .line 206
    .local v6, "id":J
    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    #@61
    goto :goto_0

    #@62
    .line 223
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "id":J
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_7
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@64
    if-eqz v10, :cond_4

    #@66
    .line 224
    iget-object v10, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    #@68
    const/4 v11, 0x0

    #@69
    invoke-virtual {v10, v11}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    #@6c
    goto :goto_1

    #@6d
    .line 178
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 122
    .local v0, "action":I
    const/16 v4, 0xa

    #@8
    if-ne v0, v4, :cond_0

    #@a
    iget-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@c
    if-nez v4, :cond_0

    #@e
    .line 125
    new-instance v4, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@10
    invoke-direct {v4, p0, v5}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V

    #@13
    iput-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@15
    .line 126
    iget-object v4, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@17
    invoke-virtual {v4}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    #@1a
    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@1d
    move-result v1

    #@1e
    .line 132
    .local v1, "handled":Z
    const/16 v4, 0x9

    #@20
    if-eq v0, v4, :cond_1

    #@22
    .line 133
    const/4 v4, 0x7

    #@23
    if-ne v0, v4, :cond_4

    #@25
    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@28
    move-result v4

    #@29
    float-to-int v4, v4

    #@2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2d
    move-result v5

    #@2e
    float-to-int v5, v5

    #@2f
    invoke-virtual {p0, v4, v5}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    #@32
    move-result v3

    #@33
    .line 135
    .local v3, "position":I
    if-eq v3, v6, :cond_3

    #@35
    iget v4, p0, Landroid/widget/DropDownListView;->mSelectedPosition:I

    #@37
    if-eq v3, v4, :cond_3

    #@39
    .line 136
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    #@3c
    move-result v4

    #@3d
    sub-int v4, v3, v4

    #@3f
    invoke-virtual {p0, v4}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    #@42
    move-result-object v2

    #@43
    .line 137
    .local v2, "hoveredItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_2

    #@49
    .line 140
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->requestFocus()Z

    #@4c
    .line 142
    invoke-virtual {p0, v3, v2}, Landroid/widget/DropDownListView;->positionSelector(ILandroid/view/View;)V

    #@4f
    .line 143
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    #@52
    .line 144
    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    #@55
    .line 146
    :cond_2
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    #@58
    .line 157
    .end local v2    # "hoveredItem":Landroid/view/View;
    .end local v3    # "position":I
    :cond_3
    :goto_0
    return v1

    #@59
    .line 151
    :cond_4
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    #@5c
    move-result v4

    #@5d
    if-nez v4, :cond_3

    #@5f
    .line 152
    invoke-virtual {p0, v6}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    #@62
    .line 153
    invoke-virtual {p0, v6}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    #@65
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 113
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    #@6
    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    #@9
    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public setListSelectionHidden(Z)V
    .locals 0
    .param p1, "hideListSelection"    # Z

    #@0
    .prologue
    .line 238
    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    #@2
    .line 237
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    #@0
    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 293
    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method
