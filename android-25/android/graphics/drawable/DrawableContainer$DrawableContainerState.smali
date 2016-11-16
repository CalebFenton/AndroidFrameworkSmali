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


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantSize:Z

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedPadding:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mColorFilter:Landroid/graphics/ColorFilter;

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDensity:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
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

.field mSourceRes:Landroid/content/res/Resources;

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

.method protected constructor <init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "orig"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .param p2, "owner"    # Landroid/graphics/drawable/DrawableContainer;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 718
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@6
    .line 669
    const/16 v7, 0xa0

    #@8
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@a
    .line 677
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@c
    .line 681
    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@e
    .line 697
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@10
    .line 702
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@12
    .line 703
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@14
    .line 720
    iput-object p2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    #@16
    .line 721
    if-eqz p3, :cond_6

    #@18
    move-object v5, p3

    #@19
    :cond_0
    :goto_0
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@1b
    .line 722
    if-eqz p1, :cond_7

    #@1d
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@1f
    :goto_1
    invoke-static {p3, v5}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@22
    move-result v5

    #@23
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@25
    .line 724
    if-eqz p1, :cond_a

    #@27
    .line 725
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@29
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@2b
    .line 726
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@2d
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@2f
    .line 728
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@31
    .line 729
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    #@33
    .line 731
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@35
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@37
    .line 732
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@39
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@3b
    .line 733
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@3d
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    #@3f
    .line 734
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@41
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@43
    .line 735
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@45
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@47
    .line 736
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@49
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@4b
    .line 737
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@4d
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@4f
    .line 738
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@51
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    #@53
    .line 739
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@55
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    #@57
    .line 740
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    #@59
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    #@5b
    .line 741
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@5d
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    #@5f
    .line 742
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@61
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@63
    .line 743
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    #@65
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    #@67
    .line 744
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    #@69
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    #@6b
    .line 746
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@6d
    iget v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@6f
    if-ne v5, v6, :cond_2

    #@71
    .line 747
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@73
    if-eqz v5, :cond_1

    #@75
    .line 748
    new-instance v5, Landroid/graphics/Rect;

    #@77
    iget-object v6, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@79
    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@7c
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@7e
    .line 749
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@80
    .line 752
    :cond_1
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@82
    if-eqz v5, :cond_2

    #@84
    .line 753
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@86
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@88
    .line 754
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@8a
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@8c
    .line 755
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@8e
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@90
    .line 756
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@92
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@94
    .line 757
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@96
    .line 761
    :cond_2
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@98
    if-eqz v5, :cond_3

    #@9a
    .line 762
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@9c
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@9e
    .line 763
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@a0
    .line 766
    :cond_3
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@a2
    if-eqz v5, :cond_4

    #@a4
    .line 767
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@a6
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@a8
    .line 768
    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@aa
    .line 773
    :cond_4
    iget-object v4, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@ac
    .line 774
    .local v4, "origDr":[Landroid/graphics/drawable/Drawable;
    array-length v5, v4

    #@ad
    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    #@af
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@b1
    .line 775
    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@b3
    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@b5
    .line 777
    iget-object v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@b7
    .line 778
    .local v3, "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_8

    #@b9
    .line 779
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    #@bc
    move-result-object v5

    #@bd
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@bf
    .line 787
    :goto_2
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@c1
    .line 788
    .local v0, "N":I
    const/4 v2, 0x0

    #@c2
    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_b

    #@c4
    .line 789
    aget-object v5, v4, v2

    #@c6
    if-eqz v5, :cond_5

    #@c8
    .line 790
    aget-object v5, v4, v2

    #@ca
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@cd
    move-result-object v1

    #@ce
    .line 791
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_9

    #@d0
    .line 792
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@d2
    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@d5
    .line 788
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@d7
    goto :goto_3

    #@d8
    .line 721
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v4    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_6
    if-eqz p1, :cond_0

    #@da
    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@dc
    goto/16 :goto_0

    #@de
    :cond_7
    move v5, v6

    #@df
    .line 722
    goto/16 :goto_1

    #@e1
    .line 781
    .restart local v3    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .restart local v4    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_8
    new-instance v5, Landroid/util/SparseArray;

    #@e3
    iget v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@e5
    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    #@e8
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@ea
    goto :goto_2

    #@eb
    .line 794
    .restart local v0    # "N":I
    .restart local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v2    # "i":I
    :cond_9
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@ed
    aget-object v6, v4, v2

    #@ef
    aput-object v6, v5, v2

    #@f1
    goto :goto_4

    #@f2
    .line 799
    .end local v0    # "N":I
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "i":I
    .end local v3    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v4    # "origDr":[Landroid/graphics/drawable/Drawable;
    :cond_a
    const/16 v5, 0xa

    #@f4
    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    #@f6
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@f8
    .line 800
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@fa
    .line 719
    :cond_b
    return-void
.end method

.method private createAllFutures()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 844
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@3
    if-eqz v4, :cond_1

    #@5
    .line 845
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v1

    #@b
    .line 846
    .local v1, "futureCount":I
    const/4 v3, 0x0

    #@c
    .local v3, "keyIndex":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@e
    .line 847
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@13
    move-result v2

    #@14
    .line 848
    .local v2, "index":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    #@1c
    .line 849
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@1e
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@20
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v5

    #@24
    invoke-direct {p0, v5}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object v5

    #@28
    aput-object v5, v4, v2

    #@2a
    .line 846
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 852
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "index":I
    :cond_0
    iput-object v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@2f
    .line 843
    .end local v1    # "futureCount":I
    .end local v3    # "keyIndex":I
    :cond_1
    return-void
.end method

.method private mutate()V
    .locals 4

    #@0
    .prologue
    .line 988
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 989
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    .line 990
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@7
    .line 991
    aget-object v3, v1, v2

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 992
    aget-object v3, v1, v2

    #@d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@10
    .line 990
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 996
    :cond_1
    const/4 v3, 0x1

    #@14
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@16
    .line 985
    return-void
.end method

.method private prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "child"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 857
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@5
    .line 858
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object p1

    #@9
    .line 859
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    #@b
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e
    .line 860
    return-object p1
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
    .line 1200
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 1201
    .local v0, "N":I
    const/4 v2, 0x0

    #@3
    .line 1202
    .local v2, "pixelCount":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@6
    .line 1203
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@d
    move-result-object v3

    #@e
    .line 1204
    .local v3, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_0

    #@10
    .line 1205
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    #@13
    move-result v4

    #@14
    add-int/2addr v2, v4

    #@15
    .line 1202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1208
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
    .line 816
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@3
    .line 817
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    array-length v1, v1

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 818
    add-int/lit8 v1, v0, 0xa

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    #@d
    .line 821
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@10
    .line 822
    const/4 v1, 0x1

    #@11
    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@14
    .line 823
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    #@16
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@19
    .line 825
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@1b
    aput-object p1, v1, v0

    #@1d
    .line 826
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@23
    .line 827
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@25
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@28
    move-result v2

    #@29
    or-int/2addr v1, v2

    #@2a
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@2c
    .line 828
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@2e
    .line 829
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@30
    .line 831
    const/4 v1, 0x0

    #@31
    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@33
    .line 832
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@35
    .line 833
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@37
    .line 834
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@39
    .line 836
    return v0
.end method

.method final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 946
    if-eqz p1, :cond_2

    #@2
    .line 947
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@5
    .line 949
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@7
    .line 950
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@9
    .line 951
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@c
    .line 952
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
    .line 953
    aget-object v3, v1, v2

    #@1a
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@1d
    .line 956
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
    .line 951
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 960
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    #@32
    .line 945
    .end local v0    # "N":I
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 966
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@3
    .line 967
    .local v0, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    .line 968
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    #@6
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@8
    .line 969
    aget-object v1, v2, v4

    #@a
    .line 970
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@c
    .line 971
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_1

    #@12
    .line 972
    return v6

    #@13
    .line 975
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    #@1b
    .line 976
    .local v3, "future":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_1

    #@1d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 977
    return v6

    #@24
    .line 968
    .end local v3    # "future":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 982
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
    .line 1176
    :try_start_0
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 1177
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return v3

    #@b
    .line 1180
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@e
    .line 1182
    const/4 v3, 0x1

    #@f
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    #@11
    .line 1184
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@13
    .line 1185
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@15
    .line 1186
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@18
    .line 1187
    aget-object v3, v1, v2

    #@1a
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@1d
    move-result-object v3

    #@1e
    if-nez v3, :cond_1

    #@20
    .line 1188
    const/4 v3, 0x0

    #@21
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 1189
    return v5

    #@25
    .line 1186
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1193
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
    .line 1194
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
    .line 1000
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    .line 1001
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@4
    .line 1002
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@7
    .line 1003
    aget-object v3, v1, v2

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1004
    aget-object v3, v1, v2

    #@d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@10
    .line 1002
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1008
    :cond_1
    const/4 v3, 0x0

    #@14
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@16
    .line 999
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
    .line 1090
    const/4 v5, 0x1

    #@3
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@5
    .line 1092
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@8
    .line 1094
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@a
    .line 1095
    .local v0, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@c
    .line 1096
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@e
    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@10
    .line 1097
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@12
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@14
    .line 1098
    const/4 v3, 0x0

    #@15
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    #@17
    .line 1099
    aget-object v1, v2, v3

    #@19
    .line 1100
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1c
    move-result v4

    #@1d
    .line 1101
    .local v4, "s":I
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@1f
    if-le v4, v5, :cond_0

    #@21
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@23
    .line 1102
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@26
    move-result v4

    #@27
    .line 1103
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@29
    if-le v4, v5, :cond_1

    #@2b
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@2d
    .line 1104
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@30
    move-result v4

    #@31
    .line 1105
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@33
    if-le v4, v5, :cond_2

    #@35
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    #@37
    .line 1106
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@3a
    move-result v4

    #@3b
    .line 1107
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@3d
    if-le v4, v5, :cond_3

    #@3f
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@41
    .line 1098
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0

    #@44
    .line 1089
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "s":I
    :cond_4
    return-void
.end method

.method final getCapacity()I
    .locals 1

    #@0
    .prologue
    .line 840
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
    .line 806
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    #@2
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    #@4
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 878
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@3
    aget-object v3, v4, p1

    #@5
    .line 879
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@7
    .line 880
    return-object v3

    #@8
    .line 884
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@a
    if-eqz v4, :cond_2

    #@c
    .line 885
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@11
    move-result v1

    #@12
    .line 886
    .local v1, "keyIndex":I
    if-ltz v1, :cond_2

    #@14
    .line 887
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    #@1c
    .line 888
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@1e
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v4

    #@22
    invoke-direct {p0, v4}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v2

    #@26
    .line 889
    .local v2, "prepared":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@28
    aput-object v2, v4, p1

    #@2a
    .line 890
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@2f
    .line 891
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@34
    move-result v4

    #@35
    if-nez v4, :cond_1

    #@37
    .line 892
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    #@39
    .line 894
    :cond_1
    return-object v2

    #@3a
    .line 898
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v1    # "keyIndex":I
    .end local v2    # "prepared":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v5
.end method

.method public final getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 864
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@2
    return v0
.end method

.method public final getChildren()[Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 872
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@3
    .line 874
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    return-object v0
.end method

.method public final getConstantHeight()I
    .locals 1

    #@0
    .prologue
    .line 1066
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1067
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 1070
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    #@9
    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    #@0
    .prologue
    .line 1082
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1083
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 1086
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    #@9
    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    #@0
    .prologue
    .line 1074
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1075
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 1078
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
    .line 1021
    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 1022
    return-object v6

    #@7
    .line 1025
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@9
    if-nez v5, :cond_1

    #@b
    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@d
    if-eqz v5, :cond_2

    #@f
    .line 1026
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@11
    return-object v5

    #@12
    .line 1029
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@15
    .line 1031
    const/4 v3, 0x0

    #@16
    .line 1032
    .local v3, "r":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    #@18
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@1b
    .line 1033
    .local v4, "t":Landroid/graphics/Rect;
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@1d
    .line 1034
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@1f
    .line 1035
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@20
    .end local v3    # "r":Landroid/graphics/Rect;
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    #@22
    .line 1036
    aget-object v5, v1, v2

    #@24
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_7

    #@2a
    .line 1037
    if-nez v3, :cond_3

    #@2c
    new-instance v3, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@31
    .line 1038
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
    .line 1039
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
    .line 1040
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
    .line 1041
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
    .line 1035
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 1045
    :cond_8
    const/4 v5, 0x1

    #@5d
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@5f
    .line 1046
    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    #@61
    return-object v3
.end method

.method public final getConstantWidth()I
    .locals 1

    #@0
    .prologue
    .line 1058
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1059
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    #@7
    .line 1062
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    #@9
    return v0
.end method

.method public final getEnterFadeDuration()I
    .locals 1

    #@0
    .prologue
    .line 1116
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@2
    return v0
.end method

.method public final getExitFadeDuration()I
    .locals 1

    #@0
    .prologue
    .line 1124
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
    .line 1128
    iget-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 1129
    iget v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@7
    return v4

    #@8
    .line 1132
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@b
    .line 1134
    const/4 v4, 0x1

    #@c
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    #@e
    .line 1136
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@10
    .line 1137
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@12
    .line 1138
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    if-lez v0, :cond_1

    #@14
    aget-object v4, v1, v5

    #@16
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@19
    move-result v3

    #@1a
    .line 1139
    .local v3, "op":I
    :goto_0
    const/4 v2, 0x1

    #@1b
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    #@1d
    .line 1140
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
    .line 1139
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 1138
    .end local v2    # "i":I
    .end local v3    # "op":I
    :cond_1
    const/4 v3, -0x2

    #@2b
    .restart local v3    # "op":I
    goto :goto_0

    #@2c
    .line 1143
    .restart local v2    # "i":I
    :cond_2
    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    #@2e
    .line 1144
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
    .line 1170
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    #@3
    .line 1171
    .local v0, "newDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8
    .line 1172
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@a
    .line 1169
    return-void
.end method

.method public final isConstantSize()Z
    .locals 1

    #@0
    .prologue
    .line 1054
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
    .line 1148
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1149
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@8
    return v3

    #@9
    .line 1152
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    #@c
    .line 1154
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    #@e
    .line 1156
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@10
    .line 1157
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@12
    .line 1158
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@15
    .line 1159
    aget-object v3, v1, v2

    #@17
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 1160
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@1f
    .line 1161
    return v4

    #@20
    .line 1158
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1165
    :cond_2
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    #@25
    .line 1166
    return v5
.end method

.method public final setConstantSize(Z)V
    .locals 0
    .param p1, "constant"    # Z

    #@0
    .prologue
    .line 1050
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    #@2
    .line 1049
    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 1112
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    #@2
    .line 1111
    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    #@0
    .prologue
    .line 1120
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    #@2
    .line 1119
    return-void
.end method

.method final setLayoutDirection(II)Z
    .locals 6
    .param p1, "layoutDirection"    # I
    .param p2, "currentIndex"    # I

    #@0
    .prologue
    .line 902
    const/4 v1, 0x0

    #@1
    .line 906
    .local v1, "changed":Z
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    #@3
    .line 907
    .local v0, "N":I
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    #@5
    .line 908
    .local v3, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    #@6
    .end local v1    # "changed":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@8
    .line 909
    aget-object v5, v3, v4

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 910
    aget-object v5, v3, v4

    #@e
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@11
    move-result v2

    #@12
    .line 911
    .local v2, "childChanged":Z
    if-ne v4, p2, :cond_0

    #@14
    .line 912
    move v1, v2

    #@15
    .line 908
    .end local v2    # "childChanged":Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@17
    goto :goto_0

    #@18
    .line 917
    :cond_1
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@1a
    .line 919
    return v1
.end method

.method public final setVariablePadding(Z)V
    .locals 0
    .param p1, "variable"    # Z

    #@0
    .prologue
    .line 1017
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    #@2
    .line 1016
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 929
    if-eqz p1, :cond_0

    #@3
    .line 930
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    #@5
    .line 934
    iget v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@7
    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@a
    move-result v1

    #@b
    .line 935
    .local v1, "targetDensity":I
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@d
    .line 936
    .local v0, "sourceDensity":I
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    #@f
    .line 938
    if-eq v0, v1, :cond_0

    #@11
    .line 939
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    #@13
    .line 940
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    #@15
    .line 928
    .end local v0    # "sourceDensity":I
    .end local v1    # "targetDensity":I
    :cond_0
    return-void
.end method
