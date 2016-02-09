.class public abstract Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableContainerState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;
    }
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mColorFilter:Landroid/graphics/ColorFilter;

.field mComputedConstantSize:Z

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;",
            ">;"
        }
    .end annotation
.end field

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHasColorFilter:Z

.field mHasTintList:Z

.field mHasTintMode:Z

.field mLayoutDirection:I

.field mMutated:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Landroid/graphics/drawable/DrawableContainer;

.field mPaddingChecked:Z

.field final mRes:Landroid/content/res/Resources;

.field mStateful:Z

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVariablePadding:Z


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "orig"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .param p2, "owner"    # Landroid/graphics/drawable/DrawableContainer;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 680
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@6
    .line 642
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@8
    .line 646
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@a
    .line 662
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@c
    .line 667
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@e
    .line 668
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@10
    .line 682
    iput-object p2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    #@12
    .line 683
    if-eqz p3, :cond_1

    #@14
    .end local p3    # "res":Landroid/content/res/Resources;
    :goto_0
    iput-object p3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    #@16
    .line 685
    if-eqz p1, :cond_5

    #@18
    .line 686
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@1a
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@1c
    .line 687
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@1e
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@20
    .line 689
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@22
    .line 690
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    #@24
    .line 692
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@26
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@28
    .line 693
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@2a
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@2c
    .line 694
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@2e
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@30
    .line 695
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@32
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@34
    .line 696
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@36
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@38
    .line 697
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@3a
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@3c
    .line 698
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@3e
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@40
    .line 699
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@42
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@44
    .line 700
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@46
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@48
    .line 701
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    #@4a
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    #@4c
    .line 702
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@4e
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@50
    .line 703
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@52
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@54
    .line 704
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    #@56
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    #@58
    .line 705
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    #@5a
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    #@5c
    .line 708
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    #@5f
    move-result-object v5

    #@60
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@62
    .line 709
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    #@64
    .line 711
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    #@67
    move-result v5

    #@68
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@6a
    .line 712
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    #@6d
    move-result v5

    #@6e
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@70
    .line 713
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    #@73
    move-result v5

    #@74
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@76
    .line 714
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    #@79
    move-result v5

    #@7a
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@7c
    .line 715
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    #@7e
    .line 717
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    #@81
    move-result v5

    #@82
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@84
    .line 718
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@86
    .line 720
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    #@89
    move-result v5

    #@8a
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@8c
    .line 721
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@8e
    .line 725
    iget-object v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@90
    .line 726
    .local v3, "origDr":[Landroid/graphics/drawable/Drawable;
    array-length v5, v3

    #@91
    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    #@93
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@95
    .line 727
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@97
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@99
    .line 729
    iget-object v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@9b
    .line 730
    .local v2, "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;>;"
    if-eqz v2, :cond_3

    #@9d
    .line 731
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    #@a0
    move-result-object v5

    #@a1
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@a3
    .line 739
    :goto_1
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@a5
    .line 740
    .local v0, "N":I
    const/4 v1, 0x0

    #@a6
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    #@a8
    .line 741
    aget-object v5, v3, v1

    #@aa
    if-eqz v5, :cond_0

    #@ac
    .line 742
    aget-object v5, v3, v1

    #@ae
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@b1
    move-result-object v5

    #@b2
    if-eqz v5, :cond_4

    #@b4
    .line 743
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@b6
    new-instance v6, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;

    #@b8
    aget-object v7, v3, v1

    #@ba
    invoke-direct {v6, v7, v4}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;)V

    #@bd
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@c0
    .line 740
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@c2
    goto :goto_2

    #@c3
    .line 683
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;>;"
    .end local v3    # "origDr":[Landroid/graphics/drawable/Drawable;
    .restart local p3    # "res":Landroid/content/res/Resources;
    :cond_1
    if-eqz p1, :cond_2

    #@c5
    iget-object p3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    #@c7
    goto/16 :goto_0

    #@c9
    :cond_2
    move-object p3, v4

    #@ca
    goto/16 :goto_0

    #@cc
    .line 733
    .end local p3    # "res":Landroid/content/res/Resources;
    .restart local v2    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;>;"
    .restart local v3    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_3
    new-instance v5, Landroid/util/SparseArray;

    #@ce
    iget v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@d0
    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    #@d3
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@d5
    goto :goto_1

    #@d6
    .line 745
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_4
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@d8
    aget-object v6, v3, v1

    #@da
    aput-object v6, v5, v1

    #@dc
    goto :goto_3

    #@dd
    .line 750
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;>;"
    .end local v3    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_5
    const/16 v4, 0xa

    #@df
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    #@e1
    iput-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@e3
    .line 751
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@e5
    .line 681
    :cond_6
    return-void
.end method

.method private final createAllFutures()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 788
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 789
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v0

    #@b
    .line 790
    .local v0, "futureCount":I
    const/4 v2, 0x0

    #@c
    .local v2, "keyIndex":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@e
    .line 791
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@13
    move-result v1

    #@14
    .line 792
    .local v1, "index":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@16
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;

    #@1e
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->get(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v3

    #@22
    aput-object v3, v4, v1

    #@24
    .line 790
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 795
    .end local v1    # "index":I
    :cond_0
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@29
    .line 787
    .end local v0    # "futureCount":I
    .end local v2    # "keyIndex":I
    :cond_1
    return-void
.end method

.method private mutate()V
    .locals 4

    #@0
    .prologue
    .line 898
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 899
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    .line 900
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@7
    .line 901
    aget-object v3, v1, v2

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 902
    aget-object v3, v1, v2

    #@d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@10
    .line 900
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 906
    :cond_1
    const/4 v3, 0x1

    #@14
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@16
    .line 895
    return-void
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1110
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 1111
    .local v0, "N":I
    const/4 v2, 0x0

    #@3
    .line 1112
    .local v2, "pixelCount":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@6
    .line 1113
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@d
    move-result-object v3

    #@e
    .line 1114
    .local v3, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_0

    #@10
    .line 1115
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    #@13
    move-result v4

    #@14
    add-int/2addr v2, v4

    #@15
    .line 1112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1118
    .end local v3    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    return v2
.end method

.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 4
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 761
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@3
    .line 763
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    array-length v1, v1

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 764
    add-int/lit8 v1, v0, 0xa

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    #@d
    .line 767
    :cond_0
    const/4 v1, 0x1

    #@e
    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@11
    .line 768
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    #@13
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@16
    .line 770
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@18
    aput-object p1, v1, v0

    #@1a
    .line 771
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@20
    .line 772
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@25
    move-result v2

    #@26
    or-int/2addr v1, v2

    #@27
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@29
    .line 773
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@2b
    .line 774
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@2d
    .line 776
    const/4 v1, 0x0

    #@2e
    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@30
    .line 777
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    #@32
    .line 778
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    #@34
    .line 780
    return v0
.end method

.method final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 858
    if-eqz p1, :cond_1

    #@2
    .line 859
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@5
    .line 861
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@7
    .line 862
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@9
    .line 863
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@c
    .line 864
    aget-object v3, v1, v2

    #@e
    if-eqz v3, :cond_0

    #@10
    aget-object v3, v1, v2

    #@12
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 865
    aget-object v3, v1, v2

    #@1a
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@1d
    .line 868
    iget v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@1f
    aget-object v4, v1, v2

    #@21
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@24
    move-result v4

    #@25
    or-int/2addr v3, v4

    #@26
    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@28
    .line 863
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 857
    .end local v0    # "N":I
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public canApplyTheme()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 876
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@3
    .line 877
    .local v0, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    .line 878
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    #@6
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@8
    .line 879
    aget-object v1, v2, v4

    #@a
    .line 880
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@c
    .line 881
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_1

    #@12
    .line 882
    return v6

    #@13
    .line 885
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;

    #@1b
    .line 886
    .local v3, "future":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;
    if-eqz v3, :cond_1

    #@1d
    invoke-virtual {v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->canApplyTheme()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 887
    return v6

    #@24
    .line 878
    .end local v3    # "future":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 892
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v5, 0x0

    #@28
    return v5
.end method

.method public declared-synchronized canConstantState()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    monitor-enter p0

    #@3
    .line 1086
    :try_start_0
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 1087
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return v3

    #@b
    .line 1090
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@e
    .line 1092
    const/4 v3, 0x1

    #@f
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@11
    .line 1094
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@13
    .line 1095
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@15
    .line 1096
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@18
    .line 1097
    aget-object v3, v1, v2

    #@1a
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@1d
    move-result-object v3

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 1098
    const/4 v3, 0x0

    #@21
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 1099
    return v5

    #@25
    .line 1096
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1103
    :cond_2
    const/4 v3, 0x1

    #@29
    :try_start_2
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 1104
    return v4

    #@2d
    .end local v0    # "N":I
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit p0

    #@2f
    throw v3
.end method

.method final clearMutated()V
    .locals 4

    #@0
    .prologue
    .line 910
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 911
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    .line 912
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@7
    .line 913
    aget-object v3, v1, v2

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 914
    aget-object v3, v1, v2

    #@d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@10
    .line 912
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 918
    :cond_1
    const/4 v3, 0x0

    #@14
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@16
    .line 909
    return-void
.end method

.method protected computeConstantSize()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 1000
    const/4 v5, 0x1

    #@3
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    #@5
    .line 1002
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@8
    .line 1004
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@a
    .line 1005
    .local v0, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@c
    .line 1006
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@e
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@10
    .line 1007
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@12
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@14
    .line 1008
    const/4 v3, 0x0

    #@15
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    #@17
    .line 1009
    aget-object v1, v2, v3

    #@19
    .line 1010
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1c
    move-result v4

    #@1d
    .line 1011
    .local v4, "s":I
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@1f
    if-le v4, v5, :cond_0

    #@21
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@23
    .line 1012
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@26
    move-result v4

    #@27
    .line 1013
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@29
    if-le v4, v5, :cond_1

    #@2b
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@2d
    .line 1014
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@30
    move-result v4

    #@31
    .line 1015
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@33
    if-le v4, v5, :cond_2

    #@35
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@37
    .line 1016
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@3a
    move-result v4

    #@3b
    .line 1017
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@3d
    if-le v4, v5, :cond_3

    #@3f
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@41
    .line 1008
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0

    #@44
    .line 999
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "s":I
    :cond_4
    return-void
.end method

.method final getCapacity()I
    .locals 1

    #@0
    .prologue
    .line 784
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 757
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@2
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@4
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 814
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@3
    aget-object v2, v3, p1

    #@5
    .line 815
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@7
    .line 816
    return-object v2

    #@8
    .line 820
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 821
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@11
    move-result v0

    #@12
    .line 822
    .local v0, "keyIndex":I
    if-ltz v0, :cond_2

    #@14
    .line 823
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;

    #@1c
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->get(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v1

    #@20
    .line 824
    .local v1, "prepared":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@22
    aput-object v1, v3, p1

    #@24
    .line 825
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@29
    .line 826
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_1

    #@31
    .line 827
    iput-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@33
    .line 829
    :cond_1
    return-object v1

    #@34
    .line 833
    .end local v0    # "keyIndex":I
    .end local v1    # "prepared":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v4
.end method

.method public final getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 800
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    return v0
.end method

.method public final getChildren()[Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 808
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@3
    .line 810
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    return-object v0
.end method

.method public final getConstantHeight()I
    .locals 1

    #@0
    .prologue
    .line 976
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 977
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 980
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@9
    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    #@0
    .prologue
    .line 992
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 993
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 996
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@9
    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    #@0
    .prologue
    .line 984
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 985
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 988
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@9
    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 931
    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 932
    return-object v6

    #@7
    .line 935
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@9
    if-nez v5, :cond_1

    #@b
    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    #@d
    if-eqz v5, :cond_2

    #@f
    .line 936
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@11
    return-object v5

    #@12
    .line 939
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@15
    .line 941
    const/4 v3, 0x0

    #@16
    .line 942
    .local v3, "r":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    #@18
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@1b
    .line 943
    .local v4, "t":Landroid/graphics/Rect;
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@1d
    .line 944
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@1f
    .line 945
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@20
    .end local v3    # "r":Landroid/graphics/Rect;
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    #@22
    .line 946
    aget-object v5, v1, v2

    #@24
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_7

    #@2a
    .line 947
    if-nez v3, :cond_3

    #@2c
    new-instance v3, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@31
    .line 948
    :cond_3
    iget v5, v4, Landroid/graphics/Rect;->left:I

    #@33
    iget v6, v3, Landroid/graphics/Rect;->left:I

    #@35
    if-le v5, v6, :cond_4

    #@37
    iget v5, v4, Landroid/graphics/Rect;->left:I

    #@39
    iput v5, v3, Landroid/graphics/Rect;->left:I

    #@3b
    .line 949
    :cond_4
    iget v5, v4, Landroid/graphics/Rect;->top:I

    #@3d
    iget v6, v3, Landroid/graphics/Rect;->top:I

    #@3f
    if-le v5, v6, :cond_5

    #@41
    iget v5, v4, Landroid/graphics/Rect;->top:I

    #@43
    iput v5, v3, Landroid/graphics/Rect;->top:I

    #@45
    .line 950
    :cond_5
    iget v5, v4, Landroid/graphics/Rect;->right:I

    #@47
    iget v6, v3, Landroid/graphics/Rect;->right:I

    #@49
    if-le v5, v6, :cond_6

    #@4b
    iget v5, v4, Landroid/graphics/Rect;->right:I

    #@4d
    iput v5, v3, Landroid/graphics/Rect;->right:I

    #@4f
    .line 951
    :cond_6
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    #@51
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    #@53
    if-le v5, v6, :cond_7

    #@55
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    #@57
    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    #@59
    .line 945
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 955
    :cond_8
    const/4 v5, 0x1

    #@5d
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    #@5f
    .line 956
    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@61
    return-object v3
.end method

.method public final getConstantWidth()I
    .locals 1

    #@0
    .prologue
    .line 968
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 969
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 972
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@9
    return v0
.end method

.method public final getEnterFadeDuration()I
    .locals 1

    #@0
    .prologue
    .line 1026
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@2
    return v0
.end method

.method public final getExitFadeDuration()I
    .locals 1

    #@0
    .prologue
    .line 1034
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@2
    return v0
.end method

.method public final getOpacity()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1038
    iget-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 1039
    iget v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@7
    return v4

    #@8
    .line 1042
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@b
    .line 1044
    const/4 v4, 0x1

    #@c
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@e
    .line 1046
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@10
    .line 1047
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@12
    .line 1048
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    if-lez v0, :cond_1

    #@14
    aget-object v4, v1, v5

    #@16
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@19
    move-result v3

    #@1a
    .line 1049
    .local v3, "op":I
    :goto_0
    const/4 v2, 0x1

    #@1b
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    #@1d
    .line 1050
    aget-object v4, v1, v2

    #@1f
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@22
    move-result v4

    #@23
    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    #@26
    move-result v3

    #@27
    .line 1049
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 1048
    .end local v2    # "i":I
    .end local v3    # "op":I
    :cond_1
    const/4 v3, -0x2

    #@2b
    .restart local v3    # "op":I
    goto :goto_0

    #@2c
    .line 1053
    .restart local v2    # "i":I
    :cond_2
    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@2e
    .line 1054
    return v3
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1080
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    #@3
    .line 1081
    .local v0, "newDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8
    .line 1082
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@a
    .line 1079
    return-void
.end method

.method public final isConstantSize()Z
    .locals 1

    #@0
    .prologue
    .line 964
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@2
    return v0
.end method

.method public final isStateful()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1058
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1059
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@8
    return v3

    #@9
    .line 1062
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@c
    .line 1064
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@e
    .line 1066
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@10
    .line 1067
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@12
    .line 1068
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@15
    .line 1069
    aget-object v3, v1, v2

    #@17
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 1070
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@1f
    .line 1071
    return v4

    #@20
    .line 1068
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1075
    :cond_2
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@25
    .line 1076
    return v5
.end method

.method public final setConstantSize(Z)V
    .locals 0
    .param p1, "constant"    # Z

    #@0
    .prologue
    .line 960
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@2
    .line 959
    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 1022
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@2
    .line 1021
    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 1030
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@2
    .line 1029
    return-void
.end method

.method final setLayoutDirection(II)Z
    .locals 6
    .param p1, "layoutDirection"    # I
    .param p2, "currentIndex"    # I

    #@0
    .prologue
    .line 837
    const/4 v1, 0x0

    #@1
    .line 841
    .local v1, "changed":Z
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@3
    .line 842
    .local v0, "N":I
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    .line 843
    .local v3, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    #@6
    .end local v1    # "changed":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@8
    .line 844
    aget-object v5, v3, v4

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 845
    aget-object v5, v3, v4

    #@e
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@11
    move-result v2

    #@12
    .line 846
    .local v2, "childChanged":Z
    if-ne v4, p2, :cond_0

    #@14
    .line 847
    move v1, v2

    #@15
    .line 843
    .end local v2    # "childChanged":Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@17
    goto :goto_0

    #@18
    .line 852
    :cond_1
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@1a
    .line 854
    return v1
.end method

.method public final setVariablePadding(Z)V
    .locals 0
    .param p1, "variable"    # Z

    #@0
    .prologue
    .line 927
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@2
    .line 926
    return-void
.end method
