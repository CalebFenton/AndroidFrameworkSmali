.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# static fields
.field private static final greylist-max-o INVALID_COORD:I = -0x1


# instance fields
.field private greylist-max-o mX:F

.field private greylist-max-o mY:F

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetCoords(Landroid/widget/AbsListView$CheckForLongPress;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$CheckForLongPress;->setCoords(FF)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3293
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    .line 3295
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3296
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private greylist-max-o setCoords(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3299
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3300
    iput p2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    .line 3301
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 11

    .line 3305
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3306
    .local v0, "motionPosition":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3307
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_6a

    .line 3308
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3309
    .local v5, "longPressPosition":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 3311
    .local v6, "longPressId":J
    const/4 v1, 0x0

    .line 3312
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v2, :cond_4e

    .line 3313
    iget v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_48

    iget v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_48

    .line 3314
    iget-object v3, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v8, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iget v9, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    invoke-virtual/range {v3 .. v9}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v1

    goto :goto_4e

    .line 3316
    :cond_48
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3320
    :cond_4e
    :goto_4e
    if-eqz v1, :cond_65

    .line 3321
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/widget/AbsListView;->-$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V

    .line 3322
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3323
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3324
    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_6a

    .line 3326
    :cond_65
    iget-object v2, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x2

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3329
    .end local v1    # "handled":Z
    .end local v5    # "longPressPosition":I
    .end local v6    # "longPressId":J
    :cond_6a
    :goto_6a
    return-void
.end method
