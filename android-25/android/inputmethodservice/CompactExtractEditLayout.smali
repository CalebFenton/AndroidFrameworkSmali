.class public Landroid/inputmethodservice/CompactExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "CompactExtractEditLayout.java"


# instance fields
.field private mInputExtractAccessories:Landroid/view/View;

.field private mInputExtractAction:Landroid/view/View;

.field private mInputExtractEditText:Landroid/view/View;

.field private mPerformLayoutChanges:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 50
    return-void
.end method

.method private applyFractionInt(II)I
    .locals 1
    .param p1, "fraction"    # I
    .param p2, "whole"    # I

    #@0
    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p2}, Landroid/content/res/Resources;->getFraction(III)F

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private applyProportionalLayout(II)V
    .locals 3
    .param p1, "screenWidthPx"    # I
    .param p2, "screenHeightPx"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 85
    const/16 v0, 0x50

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@14
    .line 88
    :cond_0
    const v0, 0x1130006

    #@17
    .line 87
    invoke-direct {p0, v0, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    #@1a
    move-result v0

    #@1b
    invoke-static {p0, v0}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutHeight(Landroid/view/View;I)V

    #@1e
    .line 91
    const v0, 0x1130007

    #@21
    invoke-direct {p0, v0, p1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    #@24
    move-result v0

    #@25
    .line 94
    const v1, 0x1130009

    #@28
    invoke-direct {p0, v1, p1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    #@2b
    move-result v1

    #@2c
    .line 90
    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    #@2f
    .line 98
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    #@31
    .line 99
    const v1, 0x113000a

    #@34
    invoke-direct {p0, v1, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    #@37
    move-result v1

    #@38
    .line 98
    invoke-static {v0, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutMarginBottom(Landroid/view/View;I)V

    #@3b
    .line 102
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    #@3d
    .line 103
    const v1, 0x113000b

    #@40
    invoke-direct {p0, v1, p2}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyFractionInt(II)I

    #@43
    move-result v1

    #@44
    .line 102
    invoke-static {v0, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->setLayoutMarginBottom(Landroid/view/View;I)V

    #@47
    .line 83
    return-void
.end method

.method private static setLayoutHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "px"    # I

    #@0
    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 73
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@6
    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@9
    .line 71
    return-void
.end method

.method private static setLayoutMarginBottom(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "px"    # I

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 79
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@8
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@b
    .line 77
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    #@0
    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    #@3
    .line 110
    iget-boolean v4, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mPerformLayoutChanges:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v2

    #@b
    .line 112
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v0

    #@f
    .line 113
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@11
    .line 114
    .local v1, "heightPixels":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@13
    .line 115
    .local v3, "widthPixels":I
    invoke-direct {p0, v3, v1}, Landroid/inputmethodservice/CompactExtractEditLayout;->applyProportionalLayout(II)V

    #@16
    .line 108
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "heightPixels":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "widthPixels":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    #@3
    .line 57
    const v0, 0x1020025

    #@6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    #@c
    .line 58
    const v0, 0x1020388

    #@f
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    #@15
    .line 59
    const v0, 0x1020389

    #@18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAction:Landroid/view/View;

    #@1e
    .line 61
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractEditText:Landroid/view/View;

    #@20
    if-eqz v0, :cond_0

    #@22
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAccessories:Landroid/view/View;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 62
    iget-object v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mInputExtractAction:Landroid/view/View;

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 63
    const/4 v0, 0x1

    #@2b
    iput-boolean v0, p0, Landroid/inputmethodservice/CompactExtractEditLayout;->mPerformLayoutChanges:Z

    #@2d
    .line 55
    :cond_0
    return-void
.end method
