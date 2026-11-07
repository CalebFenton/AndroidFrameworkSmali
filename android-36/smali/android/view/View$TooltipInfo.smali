.class Landroid/view/View$TooltipInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipInfo"
.end annotation


# instance fields
.field greylist-max-o mAnchorX:I

.field greylist-max-o mAnchorY:I

.field greylist-max-o mHideTooltipRunnable:Ljava/lang/Runnable;

.field greylist-max-o mHoverSlop:I

.field greylist-max-o mShowTooltipRunnable:Ljava/lang/Runnable;

.field greylist-max-o mTooltipFromLongClick:Z

.field greylist-max-o mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field greylist-max-o mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearAnchorPos(Landroid/view/View$TooltipInfo;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/View$TooltipInfo;->clearAnchorPos()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAnchorPos(Landroid/view/View$TooltipInfo;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$TooltipInfo;->updateAnchorPos(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/View$TooltipInfo;-><init>()V

    return-void
.end method

.method private greylist-max-o clearAnchorPos()V
    .registers 2

    .line 5265
    const v0, 0x7fffffff

    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 5266
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 5267
    return-void
.end method

.method private greylist-max-o updateAnchorPos(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 5251
    .local v0, "newAnchorX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 5252
    .local v1, "newAnchorY":I
    iget v2, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v2, v3, :cond_24

    iget v2, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    sub-int v2, v1, v2

    .line 5253
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/view/View$TooltipInfo;->mHoverSlop:I

    if-gt v2, v3, :cond_24

    .line 5254
    const/4 v2, 0x0

    return v2

    .line 5256
    :cond_24
    iput v0, p0, Landroid/view/View$TooltipInfo;->mAnchorX:I

    .line 5257
    iput v1, p0, Landroid/view/View$TooltipInfo;->mAnchorY:I

    .line 5258
    const/4 v2, 0x1

    return v2
.end method
