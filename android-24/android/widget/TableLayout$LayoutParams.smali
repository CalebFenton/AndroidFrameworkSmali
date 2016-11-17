.class public Landroid/widget/TableLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 705
    const/4 v0, -0x1

    #@1
    const/4 v1, -0x2

    #@2
    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@5
    .line 704
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 689
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@4
    .line 688
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "initWeight"    # F

    #@0
    .prologue
    .line 696
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@4
    .line 695
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 682
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 681
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 712
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 711
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 719
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 718
    return-void
.end method


# virtual methods
.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    #@0
    .prologue
    .line 736
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/widget/TableLayout$LayoutParams;->width:I

    #@3
    .line 737
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 738
    const-string/jumbo v0, "layout_height"

    #@c
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/widget/TableLayout$LayoutParams;->height:I

    #@12
    .line 735
    :goto_0
    return-void

    #@13
    .line 740
    :cond_0
    const/4 v0, -0x2

    #@14
    iput v0, p0, Landroid/widget/TableLayout$LayoutParams;->height:I

    #@16
    goto :goto_0
.end method
