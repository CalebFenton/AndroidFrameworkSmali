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
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 788
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@d
    .line 789
    iget v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@f
    if-nez v0, :cond_0

    #@11
    .line 790
    iput-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@13
    iput-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@15
    .line 791
    iput v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@17
    iput v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@19
    .line 787
    :goto_0
    return-void

    #@1a
    .line 793
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@20
    .line 794
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
    .line 795
    iget-object v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@2c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@32
    .line 796
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
    .line 802
    if-ne p0, p1, :cond_0

    #@4
    .line 803
    return v1

    #@5
    .line 805
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
    .line 806
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 809
    check-cast v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    #@15
    .line 810
    .local v0, "that":Landroid/test/TouchUtils$ViewStateSnapshot;
    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@17
    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@19
    if-ne v3, v4, :cond_4

    #@1b
    .line 811
    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@1d
    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@1f
    if-ne v3, v4, :cond_4

    #@21
    .line 812
    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@23
    iget-object v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@25
    if-ne v3, v4, :cond_4

    #@27
    .line 813
    iget-object v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@29
    iget-object v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@2b
    if-ne v3, v4, :cond_4

    #@2d
    .line 814
    iget v3, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@2f
    iget v4, v0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@31
    if-ne v3, v4, :cond_3

    #@33
    .line 810
    :goto_0
    return v1

    #@34
    :cond_3
    move v1, v2

    #@35
    .line 814
    goto :goto_0

    #@36
    :cond_4
    move v1, v2

    #@37
    .line 810
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 819
    iget-object v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirst:Landroid/view/View;

    #@6
    invoke-virtual {v1}, Landroid/view/View;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 820
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    #@c
    iget-object v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLast:Landroid/view/View;

    #@12
    invoke-virtual {v1}, Landroid/view/View;->hashCode()I

    #@15
    move-result v1

    #@16
    :goto_1
    add-int v0, v2, v1

    #@18
    .line 821
    mul-int/lit8 v1, v0, 0x1f

    #@1a
    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mFirstTop:I

    #@1c
    add-int v0, v1, v2

    #@1e
    .line 822
    mul-int/lit8 v1, v0, 0x1f

    #@20
    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mLastBottom:I

    #@22
    add-int v0, v1, v2

    #@24
    .line 823
    mul-int/lit8 v1, v0, 0x1f

    #@26
    iget v2, p0, Landroid/test/TouchUtils$ViewStateSnapshot;->mChildCount:I

    #@28
    add-int v0, v1, v2

    #@2a
    .line 824
    return v0

    #@2b
    .line 819
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "result":I
    goto :goto_0

    #@2d
    .line 820
    :cond_1
    const/4 v1, 0x0

    #@2e
    goto :goto_1
.end method
