.class Landroid/media/TtmlRenderingWidget;
.super Landroid/widget/LinearLayout;
.source "TtmlRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# instance fields
.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 675
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 674
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 679
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 678
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 683
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/TtmlRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 682
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 688
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 690
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v1, v2}, Landroid/media/TtmlRenderingWidget;->setLayerType(ILandroid/graphics/Paint;)V

    #@9
    .line 693
    const-string/jumbo v1, "captioning"

    #@c
    .line 692
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    #@12
    .line 694
    .local v0, "captionManager":Landroid/view/accessibility/CaptioningManager;
    new-instance v1, Landroid/widget/TextView;

    #@14
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@17
    iput-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    #@19
    .line 695
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    #@1b
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@1e
    move-result-object v2

    #@1f
    iget v2, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@21
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@24
    .line 696
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    #@26
    invoke-virtual {p0, v1, v3, v3}, Landroid/media/TtmlRenderingWidget;->addView(Landroid/view/View;II)V

    #@29
    .line 697
    iget-object v1, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    #@2b
    const/16 v2, 0x51

    #@2d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    #@30
    .line 687
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 725
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    #@3
    .line 724
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 730
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #@3
    .line 729
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 734
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@3
    move-result v0

    #@4
    .line 735
    .local v0, "count":I
    const-string/jumbo v3, ""

    #@7
    .line 736
    .local v3, "subtitleText":Ljava/lang/String;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@a
    .line 737
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/media/TtmlCue;

    #@10
    .line 738
    .local v1, "cue":Landroid/media/TtmlCue;
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    iget-object v5, v1, Landroid/media/TtmlCue;->mText:Ljava/lang/String;

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, "\n"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 736
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 740
    .end local v1    # "cue":Landroid/media/TtmlCue;
    :cond_0
    iget-object v4, p0, Landroid/media/TtmlRenderingWidget;->mTextView:Landroid/widget/TextView;

    #@2f
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@32
    .line 742
    iget-object v4, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 743
    iget-object v4, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@38
    invoke-interface {v4, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    #@3b
    .line 733
    :cond_1
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@0
    .prologue
    .line 702
    iput-object p1, p0, Landroid/media/TtmlRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    #@2
    .line 701
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    #@2
    const/4 v2, 0x0

    #@3
    .line 707
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6
    move-result v1

    #@7
    .line 708
    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@a
    move-result v0

    #@b
    .line 710
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/TtmlRenderingWidget;->measure(II)V

    #@e
    .line 711
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/TtmlRenderingWidget;->layout(IIII)V

    #@11
    .line 706
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 716
    if-eqz p1, :cond_0

    #@2
    .line 717
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    #@6
    .line 715
    :goto_0
    return-void

    #@7
    .line 719
    :cond_0
    const/16 v0, 0x8

    #@9
    invoke-virtual {p0, v0}, Landroid/media/TtmlRenderingWidget;->setVisibility(I)V

    #@c
    goto :goto_0
.end method
