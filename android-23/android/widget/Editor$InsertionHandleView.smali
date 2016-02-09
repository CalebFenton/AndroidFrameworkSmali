.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 3884
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2
    .line 3885
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 3884
    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    #@0
    .prologue
    .line 3925
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3926
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$2;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    #@9
    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@b
    .line 3934
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@d
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@13
    const-wide/16 v2, 0xfa0

    #@15
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@18
    .line 3924
    return-void

    #@19
    .line 3932
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    #@1c
    goto :goto_0
.end method

.method private removeHiderCallback()V
    .locals 2

    #@0
    .prologue
    .line 3938
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3939
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@6
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@f
    .line 3937
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    #@0
    .prologue
    .line 4013
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected getCursorOffset()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3955
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    #@4
    move-result v1

    #@5
    .line 3956
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@7
    iget v2, v2, Landroid/widget/Editor;->mCursorCount:I

    #@9
    if-lez v2, :cond_1

    #@b
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@d
    iget-object v2, v2, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@f
    aget-object v0, v2, v3

    #@11
    .line 3957
    :goto_0
    if-eqz v0, :cond_0

    #@13
    .line 3958
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@15
    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@1c
    .line 3959
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1f
    move-result v2

    #@20
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@22
    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@25
    move-result-object v3

    #@26
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@28
    sub-int/2addr v2, v3

    #@29
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2b
    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@2e
    move-result-object v3

    #@2f
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@31
    sub-int/2addr v2, v3

    #@32
    div-int/lit8 v2, v2, 0x2

    #@34
    add-int/2addr v1, v2

    #@35
    .line 3961
    :cond_0
    return v1

    #@36
    .line 3956
    :cond_1
    const/4 v0, 0x0

    #@37
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    #@0
    .prologue
    .line 3950
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    #@0
    .prologue
    .line 3945
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    return v0
.end method

.method public onDetached()V
    .locals 0

    #@0
    .prologue
    .line 4049
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    #@3
    .line 4050
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    #@6
    .line 4048
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    #@0
    .prologue
    .line 4043
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    #@3
    .line 4044
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    #@6
    .line 4042
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 3966
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v3

    #@4
    .line 3968
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v6

    #@8
    packed-switch v6, :pswitch_data_0

    #@b
    .line 4008
    :goto_0
    :pswitch_0
    return v3

    #@c
    .line 3970
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@f
    move-result v6

    #@10
    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    #@12
    .line 3971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@15
    move-result v6

    #@16
    iput v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    #@18
    goto :goto_0

    #@19
    .line 3975
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    #@1c
    move-result v6

    #@1d
    if-nez v6, :cond_2

    #@1f
    .line 3976
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    #@21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@24
    move-result v7

    #@25
    sub-float v0, v6, v7

    #@27
    .line 3977
    .local v0, "deltaX":F
    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    #@29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@2c
    move-result v7

    #@2d
    sub-float v1, v6, v7

    #@2f
    .line 3978
    .local v1, "deltaY":F
    mul-float v6, v0, v0

    #@31
    mul-float v7, v1, v1

    #@33
    add-float v2, v6, v7

    #@35
    .line 3981
    .local v2, "distanceSquared":F
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@37
    invoke-static {v6}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3e
    move-result-object v6

    #@3f
    .line 3980
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@42
    move-result-object v5

    #@43
    .line 3982
    .local v5, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@46
    move-result v4

    #@47
    .line 3984
    .local v4, "touchSlop":I
    mul-int v6, v4, v4

    #@49
    int-to-float v6, v6

    #@4a
    cmpg-float v6, v2, v6

    #@4c
    if-gez v6, :cond_0

    #@4e
    .line 3986
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@50
    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@52
    if-eqz v6, :cond_1

    #@54
    .line 3987
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@56
    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@58
    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    #@5b
    .line 3997
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_0
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    #@5e
    goto :goto_0

    #@5f
    .line 3989
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v2    # "distanceSquared":F
    .restart local v4    # "touchSlop":I
    .restart local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@61
    invoke-virtual {v6}, Landroid/widget/Editor;->startInsertionActionMode()V

    #@64
    goto :goto_1

    #@65
    .line 3993
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v4    # "touchSlop":I
    .end local v5    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@67
    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@69
    if-eqz v6, :cond_0

    #@6b
    .line 3994
    iget-object v6, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@6d
    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@6f
    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidateContentRect()V

    #@72
    goto :goto_1

    #@73
    .line 4001
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    #@76
    goto :goto_0

    #@77
    .line 3968
    nop

    #@78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show()V
    .locals 6

    #@0
    .prologue
    .line 3890
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    #@3
    .line 3893
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v2

    #@7
    sget-wide v4, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    #@9
    sub-long v0, v2, v4

    #@b
    .line 3896
    .local v0, "durationSinceCutOrCopy":J
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@d
    invoke-static {v2}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 3897
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@15
    iget-boolean v2, v2, Landroid/widget/Editor;->mDoubleTap:Z

    #@17
    if-nez v2, :cond_0

    #@19
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@1b
    invoke-static {v2}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Z

    #@1e
    move-result v2

    #@1f
    .line 3896
    if-eqz v2, :cond_1

    #@21
    .line 3898
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@23
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@26
    move-result-object v2

    #@27
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@29
    invoke-static {v3}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@30
    .line 3903
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@32
    iget-boolean v2, v2, Landroid/widget/Editor;->mDoubleTap:Z

    #@34
    if-nez v2, :cond_2

    #@36
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@38
    invoke-static {v2}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_3

    #@3e
    .line 3921
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    #@41
    .line 3889
    return-void

    #@42
    .line 3904
    :cond_3
    const-wide/16 v2, 0x3a98

    #@44
    cmp-long v2, v0, v2

    #@46
    if-gez v2, :cond_2

    #@48
    .line 3905
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@4a
    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@4c
    if-nez v2, :cond_2

    #@4e
    .line 3906
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@50
    invoke-static {v2}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@53
    move-result-object v2

    #@54
    if-nez v2, :cond_4

    #@56
    .line 3907
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@58
    new-instance v3, Landroid/widget/Editor$InsertionHandleView$1;

    #@5a
    invoke-direct {v3, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    #@5d
    invoke-static {v2, v3}, Landroid/widget/Editor;->-set0(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@60
    .line 3914
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@62
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@65
    move-result-object v2

    #@66
    .line 3915
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@68
    invoke-static {v3}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Ljava/lang/Runnable;

    #@6b
    move-result-object v3

    #@6c
    .line 3916
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@6f
    move-result v4

    #@70
    add-int/lit8 v4, v4, 0x1

    #@72
    int-to-long v4, v4

    #@73
    .line 3914
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@76
    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 4023
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v1

    #@a
    .line 4025
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_2

    #@c
    .line 4026
    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    #@e
    const/4 v4, -0x1

    #@f
    if-ne v3, v4, :cond_0

    #@11
    .line 4027
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@13
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@1a
    move-result v3

    #@1b
    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    #@1d
    .line 4029
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@1f
    iget v4, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    #@21
    invoke-static {v3, v1, v4, p2}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    #@24
    move-result v0

    #@25
    .line 4030
    .local v0, "currLine":I
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@27
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@2e
    move-result v2

    #@2f
    .line 4031
    .local v2, "offset":I
    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    #@31
    .line 4035
    .end local v0    # "currLine":I
    :goto_0
    const/4 v3, 0x0

    #@32
    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZ)V

    #@35
    .line 4036
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@37
    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@39
    if-eqz v3, :cond_1

    #@3b
    .line 4037
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@3d
    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@3f
    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    #@42
    .line 4022
    :cond_1
    return-void

    #@43
    .line 4033
    .end local v2    # "offset":I
    :cond_2
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@45
    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@4c
    move-result v2

    #@4d
    .restart local v2    # "offset":I
    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 4018
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/text/Spannable;

    #@c
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@f
    .line 4017
    return-void
.end method
