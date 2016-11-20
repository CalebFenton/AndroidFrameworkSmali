.class Landroid/test/TouchUtils$ViewStateSnapshot;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewStateSnapshot"
.end annotation


# instance fields
.field final mChildCount:I

.field final mFirst:Landroid/view/View;

.field final mFirstTop:I

.field final mLast:Landroid/view/View;

.field final mLastBottom:I


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/high16 v1, -0x80000000

    #@4
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 794
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@d
    .line 795
    iget v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@f
    if-nez v0, :cond_0

    #@11
    .line 796
    iput-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@13
    iput-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@15
    .line 797
    iput v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@17
    iput v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@19
    .line 793
    :goto_0
    return-void

    #@1a
    .line 799
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@20
    .line 800
    iget v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@22
    add-int/lit8 v0, v0, -0x1

    #@24
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@2a
    .line 801
    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@2c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@32
    .line 802
    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@34
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@37
    move-result v0

    #@38
    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@3a
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils$ViewStateSnapshot;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;)V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 808
    if-ne p0, p1, :cond_0

    #@4
    .line 809
    return v1

    #@5
    .line 811
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/test/TouchUtils$ViewStateSnapshot;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    .line 812
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 815
    check-cast v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    #@15
    .line 816
    .local v0, "that":Landroid/test/TouchUtils$ViewStateSnapshot;
    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@17
    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@19
    if-ne v3, v4, :cond_4

    #@1b
    .line 817
    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@1d
    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@1f
    if-ne v3, v4, :cond_4

    #@21
    .line 818
    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@23
    iget-object v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@25
    if-ne v3, v4, :cond_4

    #@27
    .line 819
    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@29
    iget-object v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@2b
    if-ne v3, v4, :cond_4

    #@2d
    .line 820
    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@2f
    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@31
    if-ne v3, v4, :cond_3

    #@33
    .line 816
    :goto_0
    return v1

    #@34
    :cond_3
    move v1, v2

    #@35
    .line 820
    goto :goto_0

    #@36
    :cond_4
    move v1, v2

    #@37
    .line 816
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 825
    iget-object v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@3
    if-eqz v2, :cond_1

    #@5
    iget-object v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@7
    invoke-virtual {v2}, Landroid/view/View;->hashCode()I

    #@a
    move-result v0

    #@b
    .line 826
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    #@d
    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@f
    if-eqz v3, :cond_0

    #@11
    iget-object v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@13
    invoke-virtual {v1}, Landroid/view/View;->hashCode()I

    #@16
    move-result v1

    #@17
    :cond_0
    add-int v0, v2, v1

    #@19
    .line 827
    mul-int/lit8 v1, v0, 0x1f

    #@1b
    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@1d
    add-int v0, v1, v2

    #@1f
    .line 828
    mul-int/lit8 v1, v0, 0x1f

    #@21
    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@23
    add-int v0, v1, v2

    #@25
    .line 829
    mul-int/lit8 v1, v0, 0x1f

    #@27
    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@29
    add-int v0, v1, v2

    #@2b
    .line 830
    return v0

    #@2c
    .end local v0    # "result":I
    :cond_1
    move v0, v1

    #@2d
    .line 825
    goto :goto_0
.end method
