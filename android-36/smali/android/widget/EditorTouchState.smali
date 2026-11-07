.class public Landroid/widget/EditorTouchState;
.super Ljava/lang/Object;
.source "EditorTouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditorTouchState$MultiTapStatus;
    }
.end annotation


# instance fields
.field private blacklist mInitialDragDirectionXYRatio:F

.field private blacklist mIsOnHandle:Z

.field private blacklist mLastDownMillis:J

.field private blacklist mLastDownX:F

.field private blacklist mLastDownY:F

.field private blacklist mLastUpMillis:J

.field private blacklist mLastUpX:F

.field private blacklist mLastUpY:F

.field private blacklist mMovedEnoughForDrag:Z

.field private blacklist mMultiTapInSameArea:Z

.field private blacklist mMultiTapStatus:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    return-void
.end method

.method public static blacklist getXYRatio(I)F
    .registers 3
    .param p0, "angleFromVerticalInDegrees"    # I

    .line 233
    if-gtz p0, :cond_4

    .line 234
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_4
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_c

    .line 237
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    .line 239
    :cond_c
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static blacklist isDistanceWithin(FFFFI)Z
    .registers 9
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "maxDistance"    # I

    .line 213
    sub-float v0, p2, p0

    .line 214
    .local v0, "deltaX":F
    sub-float v1, p3, p1

    .line 215
    .local v1, "deltaY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 216
    .local v2, "distanceSquared":F
    mul-int v3, p4, p4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3
.end method


# virtual methods
.method public blacklist getInitialDragDirectionXYRatio()F
    .registers 2

    .line 117
    iget v0, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return v0
.end method

.method public blacklist getLastDownX()F
    .registers 2

    .line 65
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    return v0
.end method

.method public blacklist getLastDownY()F
    .registers 2

    .line 69
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    return v0
.end method

.method public blacklist getLastUpX()F
    .registers 2

    .line 73
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    return v0
.end method

.method public blacklist getLastUpY()F
    .registers 2

    .line 77
    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    return v0
.end method

.method public blacklist isDoubleTap()Z
    .registers 3

    .line 81
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isMovedEnoughForDrag()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    return v0
.end method

.method public blacklist isMultiTap()Z
    .registers 3

    .line 89
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

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

.method public blacklist isMultiTapInSameArea()Z
    .registers 2

    .line 94
    invoke-virtual {p0}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isOnHandle()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return v0
.end method

.method public blacklist isTripleClick()Z
    .registers 3

    .line 85
    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist setIsOnHandle(Z)V
    .registers 2
    .param p1, "onHandle"    # Z

    .line 121
    iput-boolean p1, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    .line 122
    return-void
.end method

.method public blacklist update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "config"    # Landroid/view/ViewConfiguration;

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 133
    .local v0, "action":I
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_74

    .line 134
    const/16 v6, 0x2002

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    .line 141
    .local v6, "isMouse":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    sub-long/2addr v7, v9

    .line 142
    .local v7, "millisSinceLastUp":J
    iget-wide v9, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iget-wide v11, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    sub-long/2addr v9, v11

    .line 145
    .local v9, "millisBetweenLastDownAndLastUp":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v7, v11

    if-gtz v11, :cond_59

    .line 146
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v9, v11

    if-gtz v11, :cond_59

    iget v11, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-eq v11, v4, :cond_39

    iget v11, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-ne v11, v2, :cond_59

    if-eqz v6, :cond_59

    .line 149
    :cond_39
    iget v11, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-ne v11, v4, :cond_40

    .line 150
    iput v2, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    goto :goto_42

    .line 152
    :cond_40
    iput v1, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 154
    :goto_42
    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    iget v2, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v12

    .line 154
    invoke-static {v1, v2, v4, v11, v12}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    goto :goto_5d

    .line 163
    :cond_59
    iput v4, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 164
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    .line 169
    :goto_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    .line 172
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 173
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 174
    .end local v6    # "isMouse":Z
    .end local v7    # "millisSinceLastUp":J
    .end local v9    # "millisBetweenLastDownAndLastUp":J
    goto :goto_da

    :cond_74
    if-ne v0, v4, :cond_8d

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    .line 181
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 182
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    goto :goto_da

    .line 183
    :cond_8d
    if-ne v0, v2, :cond_ca

    .line 184
    iget-boolean v1, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-nez v1, :cond_da

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    sub-float/2addr v1, v2

    .line 186
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v6, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    sub-float/2addr v2, v6

    .line 187
    .local v2, "deltaY":F
    mul-float v6, v1, v1

    .line 188
    .local v6, "deltaXSquared":F
    mul-float v7, v2, v2

    add-float/2addr v7, v6

    .line 189
    .local v7, "distanceSquared":F
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    .line 190
    .local v8, "touchSlop":I
    mul-int v9, v8, v8

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_b2

    goto :goto_b3

    :cond_b2
    move v4, v5

    :goto_b3
    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 191
    iget-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-eqz v4, :cond_c9

    .line 192
    cmpl-float v3, v2, v3

    if-nez v3, :cond_c1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_c7

    .line 193
    :cond_c1
    div-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    :goto_c7
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 195
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v6    # "deltaXSquared":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "touchSlop":I
    :cond_c9
    goto :goto_da

    .line 196
    :cond_ca
    if-ne v0, v1, :cond_da

    .line 197
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    .line 198
    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    .line 199
    iput v5, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    .line 200
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    .line 201
    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    .line 202
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    .line 204
    :cond_da
    :goto_da
    return-void
.end method
