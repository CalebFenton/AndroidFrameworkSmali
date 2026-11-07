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


# instance fields
.field private final blacklist mDeltaHeight:I

.field private final blacklist mDrawableOpacity:I

.field private greylist-max-o mHider:Ljava/lang/Runnable;

.field private blacklist mIsInActionMode:Z

.field private blacklist mIsTouchDown:Z

.field private blacklist mLastDownRawX:F

.field private blacklist mLastDownRawY:F

.field private blacklist mLastUpTime:J

.field private blacklist mOffsetChanged:Z

.field private blacklist mOffsetDown:I

.field private blacklist mPendingDismissOnUp:Z

.field private blacklist mTouchDownX:F

.field private blacklist mTouchDownY:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhideAfterDelay(Landroid/widget/Editor$InsertionHandleView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveHiderCallback(Landroid/widget/Editor$InsertionHandleView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5852
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 5853
    const v4, 0x1020390

    const/4 v5, 0x0

    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor-IA;)V

    .line 5827
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 5829
    iput-boolean p1, v0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 5855
    const/4 p1, 0x0

    .line 5856
    .local p1, "deltaHeight":I
    const/16 p2, 0xff

    .line 5857
    .local p2, "opacity":I
    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 5858
    const-string/jumbo v1, "widget__insertion_handle_delta_height"

    const/16 v3, 0x19

    invoke-static {v1, v3}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    .line 5861
    const-string/jumbo v1, "widget__insertion_handle_opacity"

    const/16 v3, 0x32

    invoke-static {v1, v3}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p2

    .line 5865
    const/16 v1, -0x19

    if-lt p1, v1, :cond_33

    if-le p1, v3, :cond_35

    .line 5866
    :cond_33
    const/16 p1, 0x19

    .line 5868
    :cond_35
    const/16 v1, 0xa

    const/16 v3, 0x64

    if-lt p2, v1, :cond_3d

    if-le p2, v3, :cond_3f

    .line 5869
    :cond_3d
    const/16 p2, 0x32

    .line 5872
    :cond_3f
    mul-int/lit16 v1, p2, 0xff

    div-int/lit8 p2, v1, 0x64

    .line 5874
    :cond_43
    iput p1, v0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    .line 5875
    iput p2, v0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    .line 5876
    return-void
.end method

.method private greylist-max-o hideAfterDelay()V
    .registers 5

    .line 5879
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 5880
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    goto :goto_f

    .line 5886
    :cond_c
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5888
    :goto_f
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5889
    return-void
.end method

.method private greylist-max-o removeHiderCallback()V
    .registers 3

    .line 5892
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 5893
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5895
    :cond_f
    return-void
.end method

.method private blacklist touchThrough(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5992
    .local v0, "actionType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_b4

    goto :goto_59

    .line 6006
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    goto :goto_59

    .line 5994
    :pswitch_11
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 5995
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    .line 5996
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    .line 5997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    .line 5998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

    .line 5999
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v1

    :goto_38
    iput-boolean v3, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    .line 6000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4f

    .line 6001
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 6003
    :cond_4f
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    .line 6004
    nop

    .line 6010
    :goto_59
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 6012
    .local v3, "ret":Z
    if-eq v0, v2, :cond_6c

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7e

    .line 6013
    :cond_6c
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 6014
    iget-boolean v4, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v4, :cond_75

    .line 6015
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismiss()V

    .line 6017
    :cond_75
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    .line 6021
    :cond_7e
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_9e

    .line 6022
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6023
    .local v1, "start":I
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 6024
    .local v4, "end":I
    if-ne v1, v4, :cond_9c

    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    if-eq v5, v1, :cond_9e

    .line 6025
    :cond_9c
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    .line 6030
    .end local v1    # "start":I
    .end local v4    # "end":I
    :cond_9e
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_b3

    if-ne v0, v2, :cond_b3

    .line 6031
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    if-eqz v1, :cond_ae

    .line 6032
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_b3

    .line 6034
    :cond_ae
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 6037
    :cond_b3
    :goto_b3
    return v3

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 6041
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6042
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$InsertionHandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v1

    .line 6043
    .local v1, "line":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    .line 6044
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 6050
    .local v2, "textHeight":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 6051
    .local v3, "m":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getMeasuredWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    sub-float/2addr v4, v5

    .line 6052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    shr-int/lit8 v6, v2, 0x1

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

    sub-float/2addr v5, v6

    .line 6051
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6053
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 6055
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 6061
    return-object p1
.end method


# virtual methods
.method public blacklist dismiss()V
    .registers 3

    .line 6081
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 6086
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 6087
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_13

    .line 6089
    :cond_e
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 6090
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 6092
    :goto_13
    return-void
.end method

.method public greylist-max-o getCurrentCursorOffset()I
    .registers 2

    .line 6102
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .registers 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 5920
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 5921
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$InsertionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    .line 5922
    .local v0, "horizontal":F
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0}, Landroid/widget/Editor;->-$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    return v1

    .line 5924
    .end local v0    # "horizontal":F
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o getCursorOffset()I
    .registers 4

    .line 5909
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v0

    .line 5910
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_34

    .line 5911
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5912
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 5915
    :cond_34
    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .line 5904
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 5899
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .registers 2

    .line 6149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isShowing()Z
    .registers 2

    .line 6066
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v0, :cond_6

    .line 6067
    const/4 v0, 0x0

    return v0

    .line 6069
    :cond_6
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onDetached()V
    .registers 1

    .line 6142
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 6143
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 6144
    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .registers 1

    .line 6136
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 6137
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 6138
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 5929
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5930
    nop

    .line 5931
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 5930
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5932
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$InsertionHandleView;->setMeasuredDimension(II)V

    .line 5933
    return-void

    .line 5935
    .end local v0    # "height":I
    :cond_22
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->onMeasure(II)V

    .line 5936
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5940
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5941
    return v1

    .line 5943
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5946
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->touchThrough(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 5948
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5950
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    goto :goto_8b

    .line 5958
    :pswitch_2f
    invoke-virtual {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 5959
    goto :goto_8b

    .line 5962
    :pswitch_33
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v1

    if-nez v1, :cond_63

    .line 5963
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 5964
    .local v1, "config":Landroid/view/ViewConfiguration;
    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    .line 5965
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 5966
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 5964
    invoke-static {v2, v3, v4, v5, v6}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v2

    .line 5967
    .local v2, "isWithinTouchSlop":Z
    if-eqz v2, :cond_62

    .line 5969
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V

    .line 5971
    .end local v1    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "isWithinTouchSlop":Z
    :cond_62
    goto :goto_74

    .line 5972
    :cond_63
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 5973
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 5978
    :cond_74
    :goto_74
    :pswitch_74
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 5979
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismissMagnifier()V

    .line 5980
    goto :goto_8b

    .line 5952
    :pswitch_7b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    .line 5953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    .line 5954
    invoke-virtual {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 5955
    nop

    .line 5986
    :goto_8b
    return v0

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_33
        :pswitch_2f
        :pswitch_74
    .end packed-switch
.end method

.method public greylist-max-o show()V
    .registers 3

    .line 6074
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 6075
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 6076
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6077
    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .registers 4
    .param p1, "updateDrawableWhenDragging"    # Z

    .line 6096
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 6097
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6098
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .line 6112
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6114
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_2c

    .line 6115
    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 6116
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 6118
    :cond_1d
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v1, v0, v2, p2}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v1

    .line 6119
    .local v1, "currLine":I
    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/Editor$InsertionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v2

    .line 6120
    .local v2, "offset":I
    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 6121
    .end local v1    # "currLine":I
    goto :goto_2d

    .line 6122
    .end local v2    # "offset":I
    :cond_2c
    const/4 v2, -0x1

    .line 6128
    .restart local v2    # "offset":I
    :goto_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, p3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6129
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 6130
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 6132
    :cond_3e
    return-void
.end method

.method public greylist-max-o updateSelection(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 6107
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6108
    return-void
.end method
