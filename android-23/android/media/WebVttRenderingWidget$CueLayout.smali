.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueLayout"
.end annotation


# instance fields
.field private mActive:Z

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final mCue:Landroid/media/TextTrackCue;

.field private mFontSize:F

.field private mOrder:I


# direct methods
.method static synthetic -get0(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cue"    # Landroid/media/TextTrackCue;
    .param p3, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p4, "fontSize"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1666
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@4
    .line 1668
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    #@6
    .line 1669
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@8
    .line 1670
    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    #@a
    .line 1673
    iget v1, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    #@c
    .line 1674
    const/16 v3, 0x64

    #@e
    .line 1673
    if-ne v1, v3, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    .line 1675
    .local v0, "horizontal":Z
    :goto_0
    if-eqz v0, :cond_1

    #@13
    move v1, v2

    #@14
    :goto_1
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrientation(I)V

    #@17
    .line 1677
    iget v1, p2, Landroid/media/TextTrackCue;->mAlignment:I

    #@19
    packed-switch v1, :pswitch_data_0

    #@1c
    .line 1700
    :goto_2
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    #@1f
    .line 1665
    return-void

    #@20
    .line 1673
    .end local v0    # "horizontal":Z
    :cond_0
    const/4 v0, 0x0

    #@21
    .restart local v0    # "horizontal":Z
    goto :goto_0

    #@22
    .line 1675
    :cond_1
    const/4 v1, 0x0

    #@23
    goto :goto_1

    #@24
    .line 1679
    :pswitch_0
    const v1, 0x800005

    #@27
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    #@2a
    goto :goto_2

    #@2b
    .line 1682
    :pswitch_1
    const/4 v1, 0x3

    #@2c
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    #@2f
    goto :goto_2

    #@30
    .line 1685
    :pswitch_2
    if-eqz v0, :cond_2

    #@32
    :goto_3
    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    #@35
    goto :goto_2

    #@36
    .line 1686
    :cond_2
    const/16 v2, 0x10

    #@38
    goto :goto_3

    #@39
    .line 1689
    :pswitch_3
    const/4 v1, 0x5

    #@3a
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    #@3d
    goto :goto_2

    #@3e
    .line 1692
    :pswitch_4
    const v1, 0x800003

    #@41
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    #@44
    goto :goto_2

    #@45
    .line 1677
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCue()Landroid/media/TextTrackCue;
    .locals 1

    #@0
    .prologue
    .line 1817
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    #@2
    return-object v0
.end method

.method public isActive()Z
    .locals 1

    #@0
    .prologue
    .line 1810
    iget-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    #@2
    return v0
.end method

.method public measureForParent(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v9, -0x80000000

    #@2
    .line 1762
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    #@4
    .line 1763
    .local v1, "cue":Landroid/media/TextTrackCue;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v6

    #@8
    .line 1764
    .local v6, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    move-result v5

    #@c
    .line 1765
    .local v5, "specHeight":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    #@f
    move-result v2

    #@10
    .line 1766
    .local v2, "direction":I
    iget v7, v1, Landroid/media/TextTrackCue;->mAlignment:I

    #@12
    invoke-static {v2, v7}, Landroid/media/WebVttRenderingWidget;->-wrap0(II)I

    #@15
    move-result v0

    #@16
    .line 1771
    .local v0, "absAlignment":I
    packed-switch v0, :pswitch_data_0

    #@19
    .line 1786
    :pswitch_0
    const/4 v3, 0x0

    #@1a
    .line 1791
    .local v3, "maximumSize":I
    :goto_0
    iget v7, v1, Landroid/media/TextTrackCue;->mSize:I

    #@1c
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v7

    #@20
    mul-int/2addr v7, v6

    #@21
    div-int/lit8 v4, v7, 0x64

    #@23
    .line 1792
    .local v4, "size":I
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@26
    move-result p1

    #@27
    .line 1793
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2a
    move-result p2

    #@2b
    .line 1794
    invoke-virtual {p0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measure(II)V

    #@2e
    .line 1761
    return-void

    #@2f
    .line 1773
    .end local v3    # "maximumSize":I
    .end local v4    # "size":I
    :pswitch_1
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    #@31
    rsub-int/lit8 v3, v7, 0x64

    #@33
    .line 1774
    .restart local v3    # "maximumSize":I
    goto :goto_0

    #@34
    .line 1776
    .end local v3    # "maximumSize":I
    :pswitch_2
    iget v3, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    #@36
    .restart local v3    # "maximumSize":I
    goto :goto_0

    #@37
    .line 1779
    .end local v3    # "maximumSize":I
    :pswitch_3
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    #@39
    const/16 v8, 0x32

    #@3b
    if-gt v7, v8, :cond_0

    #@3d
    .line 1780
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    #@3f
    mul-int/lit8 v3, v7, 0x2

    #@41
    .restart local v3    # "maximumSize":I
    goto :goto_0

    #@42
    .line 1782
    .end local v3    # "maximumSize":I
    :cond_0
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    #@44
    rsub-int/lit8 v7, v7, 0x64

    #@46
    mul-int/lit8 v3, v7, 0x2

    #@48
    .restart local v3    # "maximumSize":I
    goto :goto_0

    #@49
    .line 1771
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1754
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@3
    .line 1753
    return-void
.end method

.method public prepForPrune()V
    .locals 1

    #@0
    .prologue
    .line 1717
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    #@3
    .line 1716
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    #@0
    .prologue
    .line 1704
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@2
    .line 1705
    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    #@4
    .line 1707
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildCount()I

    #@7
    move-result v2

    #@8
    .line 1708
    .local v2, "n":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@b
    .line 1709
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 1710
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/media/WebVttRenderingWidget$SpanLayout;

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 1711
    check-cast v0, Landroid/media/WebVttRenderingWidget$SpanLayout;

    #@15
    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@18
    .line 1708
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1703
    :cond_1
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    #@0
    .prologue
    .line 1803
    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    #@2
    .line 1802
    return-void
.end method

.method public update()V
    .locals 11

    #@0
    .prologue
    const/4 v10, -0x2

    #@1
    .line 1721
    const/4 v8, 0x1

    #@2
    iput-boolean v8, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    #@4
    .line 1723
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->removeAllViews()V

    #@7
    .line 1725
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    #@a
    move-result v8

    #@b
    iget-object v9, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    #@d
    iget v9, v9, Landroid/media/TextTrackCue;->mAlignment:I

    #@f
    invoke-static {v8, v9}, Landroid/media/WebVttRenderingWidget;->-wrap0(II)I

    #@12
    move-result v2

    #@13
    .line 1727
    .local v2, "cueAlignment":I
    packed-switch v2, :pswitch_data_0

    #@16
    .line 1736
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@18
    .line 1739
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@1a
    .line 1740
    .local v1, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    #@1c
    .line 1741
    .local v3, "fontSize":F
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    #@1e
    iget-object v7, v8, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    #@20
    .line 1742
    .local v7, "lines":[[Landroid/media/TextTrackCueSpan;
    array-length v6, v7

    #@21
    .line 1743
    .local v6, "lineCount":I
    const/4 v4, 0x0

    #@22
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_0

    #@24
    .line 1744
    new-instance v5, Landroid/media/WebVttRenderingWidget$SpanLayout;

    #@26
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getContext()Landroid/content/Context;

    #@29
    move-result-object v8

    #@2a
    aget-object v9, v7, v4

    #@2c
    invoke-direct {v5, v8, v9}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    #@2f
    .line 1745
    .local v5, "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    invoke-virtual {v5, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setAlignment(Landroid/text/Layout$Alignment;)V

    #@32
    .line 1746
    invoke-virtual {v5, v1, v3}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    #@35
    .line 1748
    invoke-virtual {p0, v5, v10, v10}, Landroid/media/WebVttRenderingWidget$CueLayout;->addView(Landroid/view/View;II)V

    #@38
    .line 1743
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 1729
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .end local v1    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v3    # "fontSize":F
    .end local v4    # "i":I
    .end local v5    # "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    .end local v6    # "lineCount":I
    .end local v7    # "lines":[[Landroid/media/TextTrackCueSpan;
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@3d
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@3e
    .line 1732
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@40
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@41
    .line 1720
    .restart local v1    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .restart local v3    # "fontSize":F
    .restart local v4    # "i":I
    .restart local v6    # "lineCount":I
    .restart local v7    # "lines":[[Landroid/media/TextTrackCueSpan;
    :cond_0
    return-void

    #@42
    .line 1727
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
