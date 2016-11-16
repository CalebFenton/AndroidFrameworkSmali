.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "ImageFloatingTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mIndentLines:I

.field private mResolvedDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 51
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 44
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    #@6
    .line 59
    return-void
.end method


# virtual methods
.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 8
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    #@0
    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v5

    #@4
    if-nez v5, :cond_0

    #@6
    const-string/jumbo v4, ""

    #@9
    .line 68
    .local v4, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v5

    #@d
    .line 69
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaint()Landroid/text/TextPaint;

    #@10
    move-result-object v6

    #@11
    .line 68
    const/4 v7, 0x0

    #@12
    invoke-static {v4, v7, v5, v6, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v5, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    #@19
    move-result-object v5

    #@1a
    .line 71
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@1d
    move-result-object v6

    #@1e
    .line 68
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@21
    move-result-object v5

    #@22
    .line 72
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingExtra()F

    #@25
    move-result v6

    #@26
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingMultiplier()F

    #@29
    move-result v7

    #@2a
    .line 68
    invoke-virtual {v5, v6, v7}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@2d
    move-result-object v5

    #@2e
    .line 73
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getIncludeFontPadding()Z

    #@31
    move-result v6

    #@32
    .line 68
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    #@35
    move-result-object v5

    #@36
    .line 74
    if-eqz p5, :cond_1

    #@38
    .line 68
    .end local p6    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_1
    invoke-virtual {v5, p6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    #@3f
    move-result-object v5

    #@40
    .line 76
    const/4 v6, 0x1

    #@41
    .line 68
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    #@44
    move-result-object v5

    #@45
    .line 77
    const/4 v6, 0x2

    #@46
    .line 68
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@49
    move-result-object v0

    #@4a
    .line 79
    .local v0, "builder":Landroid/text/StaticLayout$Builder;
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51
    move-result-object v5

    #@52
    .line 80
    const v6, 0x1050043

    #@55
    .line 79
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@58
    move-result v1

    #@59
    .line 81
    .local v1, "endMargin":I
    const/4 v3, 0x0

    #@5a
    .line 82
    .local v3, "margins":[I
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    #@5c
    if-lez v5, :cond_2

    #@5e
    .line 83
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    #@60
    add-int/lit8 v5, v5, 0x1

    #@62
    new-array v3, v5, [I

    #@64
    .line 84
    .local v3, "margins":[I
    const/4 v2, 0x0

    #@65
    .local v2, "i":I
    :goto_2
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    #@67
    if-ge v2, v5, :cond_2

    #@69
    .line 85
    aput v1, v3, v2

    #@6b
    .line 84
    add-int/lit8 v2, v2, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 67
    .end local v0    # "builder":Landroid/text/StaticLayout$Builder;
    .end local v1    # "endMargin":I
    .end local v2    # "i":I
    .end local v3    # "margins":[I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .restart local p6    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    #@71
    move-result-object v4

    #@72
    goto :goto_0

    #@73
    .line 74
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 p6, 0x0

    #@74
    goto :goto_1

    #@75
    .line 88
    .end local p6    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v0    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v1    # "endMargin":I
    :cond_2
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    #@77
    const/4 v6, 0x1

    #@78
    if-ne v5, v6, :cond_3

    #@7a
    .line 89
    const/4 v5, 0x0

    #@7b
    invoke-virtual {v0, v3, v5}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    #@7e
    .line 94
    :goto_3
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    #@81
    move-result-object v5

    #@82
    return-object v5

    #@83
    .line 91
    :cond_3
    const/4 v5, 0x0

    #@84
    invoke-virtual {v0, v5, v3}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    #@87
    goto :goto_3
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    #@3
    .line 101
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    #@5
    if-eq p1, v0, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isLayoutDirectionResolved()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 102
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    #@f
    .line 103
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    #@11
    if-lez v0, :cond_0

    #@13
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHint()Ljava/lang/CharSequence;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHint(Ljava/lang/CharSequence;)V

    #@1a
    .line 98
    :cond_0
    return-void
.end method

.method public setHasImage(Z)V
    .locals 1
    .param p1, "hasImage"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 112
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x2

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    #@6
    .line 111
    return-void

    #@7
    .line 112
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public setNumIndentLines(I)Z
    .locals 1
    .param p1, "lines"    # I

    #@0
    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 121
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    #@6
    .line 123
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHint()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHint(Ljava/lang/CharSequence;)V

    #@d
    .line 124
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 126
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method
