.class public Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alwaysShow:Z

.field public ignoreOffset:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 811
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@3
    .line 810
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 797
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 800
    sget-object v1, Lcom/android/internal/R$styleable;->ResolverDrawerLayout_LayoutParams:[I

    #@6
    .line 799
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 802
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    #@b
    .line 801
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e
    move-result v1

    #@f
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    #@11
    .line 805
    const/4 v1, 0x2

    #@12
    .line 804
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@15
    move-result v1

    #@16
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    #@18
    .line 807
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1b
    .line 796
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 825
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 824
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 821
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 820
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    #@0
    .prologue
    .line 815
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@3
    .line 816
    iget-boolean v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    #@5
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    #@7
    .line 817
    iget-boolean v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    #@9
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    #@b
    .line 814
    return-void
.end method
