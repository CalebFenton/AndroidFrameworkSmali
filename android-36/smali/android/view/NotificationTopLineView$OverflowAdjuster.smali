.class final Landroid/view/NotificationTopLineView$OverflowAdjuster;
.super Ljava/lang/Object;
.source "NotificationTopLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationTopLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverflowAdjuster"
.end annotation


# instance fields
.field private blacklist mHeightSpec:I

.field private blacklist mOverflow:I

.field private blacklist mRegrowView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/NotificationTopLineView;


# direct methods
.method private constructor blacklist <init>(Landroid/view/NotificationTopLineView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;)V

    return-void
.end method

.method private blacklist getHorizontalMargins(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 489
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method blacklist adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;
    .registers 12
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "targetDivider"    # Landroid/view/View;
    .param p3, "minimumWidth"    # I

    .line 434
    iget v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-lez v0, :cond_a7

    if-eqz p1, :cond_a7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    goto/16 :goto_a7

    .line 437
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 438
    .local v0, "oldWidth":I
    if-gt v0, p3, :cond_17

    .line 439
    return-object p0

    .line 442
    :cond_17
    iget v2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v2, v0, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 443
    .local v2, "newSize":I
    if-nez p3, :cond_32

    iget-object v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v3}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I

    move-result v3

    if-ge v2, v3, :cond_32

    iget-object v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eq v3, p1, :cond_32

    .line 447
    const/4 v2, 0x0

    .line 450
    :cond_32
    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 451
    .local v4, "childWidthSpec":I
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 452
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v6, v0, v2

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 454
    if-nez v2, :cond_81

    .line 455
    iget-object v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v5}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    invoke-direct {p0, p1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->getHorizontalMargins(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 457
    if-eqz p2, :cond_81

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_81

    .line 458
    iget-object v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v1}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 460
    .local v1, "oldDividerWidth":I
    const/4 v5, 0x0

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 461
    .local v5, "dividerWidthSpec":I
    iget v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {p2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 462
    iget v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    invoke-direct {p0, p2}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->getHorizontalMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v1

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 465
    .end local v1    # "oldDividerWidth":I
    .end local v5    # "dividerWidthSpec":I
    :cond_81
    iget v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    if-gez v1, :cond_a2

    iget-object v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    if-eqz v1, :cond_a2

    .line 467
    iget-object v1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 468
    .local v1, "regrowCurrentSize":I
    iget v5, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    sub-int v5, v1, v5

    .line 469
    .local v5, "maxSize":I
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 470
    .local v3, "regrowWidthSpec":I
    iget-object v6, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    iget v7, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    .line 471
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    .line 472
    return-object p0

    .line 475
    .end local v1    # "regrowCurrentSize":I
    .end local v3    # "regrowWidthSpec":I
    .end local v5    # "maxSize":I
    :cond_a2
    if-eqz v2, :cond_a6

    .line 478
    iput-object p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    .line 480
    :cond_a6
    return-object p0

    .line 435
    .end local v0    # "oldWidth":I
    .end local v2    # "newSize":I
    .end local v4    # "childWidthSpec":I
    :cond_a7
    :goto_a7
    return-object p0
.end method

.method blacklist finish()V
    .registers 2

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    .line 485
    return-void
.end method

.method blacklist resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;
    .registers 4
    .param p1, "overflow"    # I
    .param p2, "heightSpec"    # I

    .line 420
    iput p1, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mOverflow:I

    .line 421
    iput p2, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mHeightSpec:I

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/NotificationTopLineView$OverflowAdjuster;->mRegrowView:Landroid/view/View;

    .line 423
    return-object p0
.end method
