.class Landroid/support/v4/view/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Landroid/support/v4/view/PagerTitleStrip;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/PagerTitleStrip;

    #@0
    .prologue
    .line 474
    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$PageListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/PagerTitleStrip;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    #@3
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p2, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    #@5
    .line 504
    return-void
.end method

.method public onChanged()V
    .locals 4

    #@0
    .prologue
    .line 510
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@2
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@4
    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@6
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    #@9
    move-result v2

    #@a
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@c
    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@e
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    #@15
    .line 512
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@17
    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->-get0(Landroid/support/v4/view/PagerTitleStrip;)F

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x0

    #@1c
    cmpl-float v1, v1, v2

    #@1e
    if-ltz v1, :cond_0

    #@20
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@22
    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->-get0(Landroid/support/v4/view/PagerTitleStrip;)F

    #@25
    move-result v0

    #@26
    .line 513
    .local v0, "offset":F
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@28
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@2a
    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@2c
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    #@2f
    move-result v2

    #@30
    const/4 v3, 0x1

    #@31
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@34
    .line 509
    return-void

    #@35
    .line 512
    .end local v0    # "offset":F
    :cond_0
    const/4 v0, 0x0

    #@36
    .restart local v0    # "offset":F
    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 500
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    #@2
    .line 499
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    #@0
    .prologue
    .line 480
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    cmpl-float v0, p2, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 482
    add-int/lit8 p1, p1, 0x1

    #@8
    .line 484
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@e
    .line 479
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 489
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 491
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@6
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@8
    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@a
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    #@d
    move-result v2

    #@e
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@10
    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@12
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    #@19
    .line 493
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@1b
    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->-get0(Landroid/support/v4/view/PagerTitleStrip;)F

    #@1e
    move-result v1

    #@1f
    const/4 v2, 0x0

    #@20
    cmpl-float v1, v1, v2

    #@22
    if-ltz v1, :cond_1

    #@24
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@26
    invoke-static {v1}, Landroid/support/v4/view/PagerTitleStrip;->-get0(Landroid/support/v4/view/PagerTitleStrip;)F

    #@29
    move-result v0

    #@2a
    .line 494
    .local v0, "offset":F
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@2c
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    #@2e
    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@30
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    #@33
    move-result v2

    #@34
    const/4 v3, 0x1

    #@35
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@38
    .line 488
    .end local v0    # "offset":F
    :cond_0
    return-void

    #@39
    .line 493
    :cond_1
    const/4 v0, 0x0

    #@3a
    .restart local v0    # "offset":F
    goto :goto_0
.end method
