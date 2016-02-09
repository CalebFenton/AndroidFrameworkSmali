.class public Landroid/widget/Toolbar$LayoutParams;
.super Landroid/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 1872
    const/4 v0, -0x2

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(III)V

    #@5
    .line 1871
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1862
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    #@3
    .line 1855
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@6
    .line 1863
    const v0, 0x800013

    #@9
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@b
    .line 1861
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    #@0
    .prologue
    .line 1867
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    #@3
    .line 1855
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@6
    .line 1868
    iput p3, p0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    #@8
    .line 1866
    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/app/ActionBar$LayoutParams;

    #@0
    .prologue
    .line 1882
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    #@3
    .line 1855
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@6
    .line 1881
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1858
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1855
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@6
    .line 1857
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1893
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 1855
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@6
    .line 1892
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    #@0
    .prologue
    .line 1886
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 1855
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@6
    .line 1889
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@9
    .line 1885
    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/Toolbar$LayoutParams;

    #@0
    .prologue
    .line 1876
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    #@3
    .line 1855
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@6
    .line 1878
    iget v0, p1, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@8
    iput v0, p0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    #@a
    .line 1875
    return-void
.end method
