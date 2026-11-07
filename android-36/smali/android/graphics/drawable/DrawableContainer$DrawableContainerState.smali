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
.field greylist-max-o mAutoMirrored:Z

.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mCanConstantState:Z

.field greylist-max-o mChangingConfigurations:I

.field greylist-max-o mCheckedConstantSize:Z

.field greylist-max-o mCheckedConstantState:Z

.field greylist-max-o mCheckedOpacity:Z

.field greylist-max-o mCheckedPadding:Z

.field greylist-max-o mCheckedStateful:Z

.field greylist-max-o mChildrenChangingConfigurations:I

.field greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field greylist-max-o mConstantHeight:I

.field greylist-max-o mConstantMinimumHeight:I

.field greylist-max-o mConstantMinimumWidth:I

.field greylist mConstantPadding:Landroid/graphics/Rect;

.field greylist-max-o mConstantSize:Z

.field greylist-max-o mConstantWidth:I

.field greylist-max-o mDensity:I

.field greylist-max-o mDither:Z

.field greylist-max-o mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field greylist mDrawables:[Landroid/graphics/drawable/Drawable;

.field greylist-max-o mEnterFadeDuration:I

.field greylist-max-o mExitFadeDuration:I

.field greylist mHasColorFilter:Z

.field greylist-max-o mHasTintList:Z

.field greylist-max-o mHasTintMode:Z

.field greylist-max-o mLayoutDirection:I

.field greylist-max-o mMutated:Z

.field greylist-max-o mNumChildren:I

.field greylist-max-o mOpacity:I

.field final greylist-max-o mOwner:Landroid/graphics/drawable/DrawableContainer;

.field greylist-max-o mSourceRes:Landroid/content/res/Resources;

.field greylist-max-o mStateful:Z

.field greylist-max-o mTintList:Landroid/content/res/ColorStateList;

.field greylist-max-o mVariablePadding:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmutate(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    return-void
.end method

.method protected constructor greylist-max-p <init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .registers 11
    .param p1, "orig"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .param p2, "owner"    # Landroid/graphics/drawable/DrawableContainer;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 741
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 687
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 701
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 717
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 722
    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 723
    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 742
    iput-object p2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    .line 743
    if-eqz p3, :cond_19

    move-object v2, p3

    goto :goto_1f

    :cond_19
    if-eqz p1, :cond_1e

    iget-object v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    iput-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    .line 744
    if-eqz p1, :cond_26

    iget v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    goto :goto_27

    :cond_26
    move v2, v0

    :goto_27
    invoke-static {p3, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 746
    if-eqz p1, :cond_f2

    .line 747
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 748
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 750
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 751
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 753
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 754
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 755
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 756
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 757
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    .line 758
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 759
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 760
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 761
    iget-object v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 762
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 763
    iget-object v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 764
    iget-object v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 765
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 766
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 768
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    iget v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-ne v0, v2, :cond_9e

    .line 769
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v0, :cond_88

    .line 770
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 771
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 774
    :cond_88
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-eqz v0, :cond_9e

    .line 775
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 776
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 777
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 778
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 779
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 783
    :cond_9e
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_a8

    .line 784
    iget v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 785
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 788
    :cond_a8
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v0, :cond_b2

    .line 789
    iget-boolean v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 790
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 795
    :cond_b2
    iget-object v0, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 796
    .local v0, "origDr":[Landroid/graphics/drawable/Drawable;
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 797
    iget v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 799
    iget-object v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 800
    .local v1, "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_c8

    .line 801
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    goto :goto_d1

    .line 803
    :cond_c8
    new-instance v2, Landroid/util/SparseArray;

    iget v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 809
    :goto_d1
    iget v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 810
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d4
    if-ge v3, v2, :cond_f1

    .line 811
    aget-object v4, v0, v3

    if-eqz v4, :cond_ee

    .line 812
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    .line 813
    .local v4, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v4, :cond_e8

    .line 814
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_ee

    .line 816
    :cond_e8
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v0, v3

    aput-object v6, v5, v3

    .line 810
    .end local v4    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_ee
    :goto_ee
    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    .line 820
    .end local v0    # "origDr":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "origDf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_f1
    goto :goto_fa

    .line 821
    :cond_f2
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 822
    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 824
    :goto_fa
    return-void
.end method

.method private greylist-max-o createAllFutures()V
    .registers 7

    .line 874
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v0, :cond_2f

    .line 875
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 876
    .local v0, "futureCount":I
    const/4 v1, 0x0

    .local v1, "keyIndex":I
    :goto_b
    if-ge v1, v0, :cond_2c

    .line 877
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 878
    .local v2, "index":I
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 879
    .local v3, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    .line 876
    .end local v2    # "index":I
    .end local v3    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 882
    .end local v1    # "keyIndex":I
    :cond_2c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 884
    .end local v0    # "futureCount":I
    :cond_2f
    return-void
.end method

.method private greylist-max-o mutate()V
    .registers 5

    .line 1018
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1019
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1020
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_13

    .line 1021
    aget-object v3, v1, v2

    if-eqz v3, :cond_10

    .line 1022
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1020
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1026
    .end local v2    # "i":I
    :cond_13
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 1027
    return-void
.end method

.method private greylist-max-o prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "child"    # Landroid/graphics/drawable/Drawable;

    .line 887
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 888
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 889
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 890
    return-object p1
.end method


# virtual methods
.method public final whitelist addChild(Landroid/graphics/drawable/Drawable;)I
    .registers 6
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 838
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 839
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 840
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 843
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 844
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 845
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 847
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    .line 848
    iget v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 849
    iget v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 851
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    .line 853
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 854
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 855
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 856
    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 858
    return v0
.end method

.method final greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 976
    if-eqz p1, :cond_32

    .line 977
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 979
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 980
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 981
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_2b

    .line 982
    aget-object v3, v1, v2

    if-eqz v3, :cond_28

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 983
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 986
    iget v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 981
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 990
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 992
    .end local v0    # "N":I
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_32
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 8

    .line 996
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 997
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 998
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_27

    .line 999
    aget-object v3, v1, v2

    .line 1000
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    if-eqz v3, :cond_13

    .line 1001
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1002
    return v4

    .line 1005
    :cond_13
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1006
    .local v5, "future":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v5, :cond_24

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1007
    return v4

    .line 998
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "future":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1012
    .end local v2    # "i":I
    :cond_27
    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized whitelist canConstantState()Z
    .registers 6

    monitor-enter p0

    .line 1205
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-eqz v0, :cond_9

    .line 1206
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2a

    monitor-exit p0

    return v0

    .line 1209
    .end local p0    # "this":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_9
    :try_start_9
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 1213
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1214
    .local v1, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1215
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_26

    .line 1216
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_23

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2a

    .line 1218
    monitor-exit p0

    return v0

    .line 1215
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1222
    .end local v3    # "i":I
    :cond_26
    :try_start_26
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_2a

    .line 1223
    monitor-exit p0

    return v0

    .line 1204
    .end local v1    # "N":I
    .end local v2    # "drawables":[Landroid/graphics/drawable/Drawable;
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method final greylist-max-o clearMutated()V
    .registers 5

    .line 1030
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1031
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1032
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_13

    .line 1033
    aget-object v3, v1, v2

    if-eqz v3, :cond_10

    .line 1034
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1032
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1038
    .end local v2    # "i":I
    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    .line 1039
    return-void
.end method

.method protected whitelist computeConstantSize()V
    .registers 7

    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 1122
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1124
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1125
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1126
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, -0x1

    iput v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 1127
    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 1128
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_44

    .line 1129
    aget-object v3, v1, v2

    .line 1130
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1131
    .local v4, "s":I
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v4, v5, :cond_23

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 1132
    :cond_23
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1133
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v4, v5, :cond_2d

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 1134
    :cond_2d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 1135
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v4, v5, :cond_37

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 1136
    :cond_37
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 1137
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v4, v5, :cond_41

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 1128
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "s":I
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1139
    .end local v2    # "i":I
    :cond_44
    return-void
.end method

.method final greylist-max-o getCapacity()I
    .registers 2

    .line 870
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 828
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getChild(I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "index"    # I

    .line 908
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 909
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 910
    return-object v0

    .line 914
    :cond_7
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    .line 915
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 916
    .local v1, "keyIndex":I
    if-ltz v1, :cond_3a

    .line 917
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 918
    .local v3, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 919
    .local v4, "prepared":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v4, v5, p1

    .line 920
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 921
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_39

    .line 922
    iput-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    .line 924
    :cond_39
    return-object v4

    .line 928
    .end local v1    # "keyIndex":I
    .end local v3    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v4    # "prepared":Landroid/graphics/drawable/Drawable;
    :cond_3a
    return-object v2
.end method

.method public final whitelist getChildCount()I
    .registers 2

    .line 894
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    return v0
.end method

.method public final whitelist getChildren()[Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 902
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 904
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final whitelist getConstantHeight()I
    .registers 2

    .line 1096
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_7

    .line 1097
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1100
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    return v0
.end method

.method public final whitelist getConstantMinimumHeight()I
    .registers 2

    .line 1112
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_7

    .line 1113
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1116
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    return v0
.end method

.method public final whitelist getConstantMinimumWidth()I
    .registers 2

    .line 1104
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_7

    .line 1105
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1108
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    return v0
.end method

.method public final whitelist getConstantPadding()Landroid/graphics/Rect;
    .registers 8

    .line 1051
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    if-eqz v0, :cond_6

    .line 1052
    const/4 v0, 0x0

    return-object v0

    .line 1055
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_61

    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v0, :cond_f

    goto :goto_61

    .line 1059
    :cond_f
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, "r":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1063
    .local v1, "t":Landroid/graphics/Rect;
    iget v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1064
    .local v2, "N":I
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1065
    .local v3, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v2, :cond_5b

    .line 1066
    aget-object v5, v3, v4

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1067
    if-nez v0, :cond_30

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    .line 1068
    :cond_30
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_3a

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 1069
    :cond_3a
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_44

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 1070
    :cond_44
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_4e

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 1071
    :cond_4e
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_58

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1065
    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1075
    .end local v4    # "i":I
    :cond_5b
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 1076
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    return-object v0

    .line 1056
    .end local v0    # "r":Landroid/graphics/Rect;
    .end local v1    # "t":Landroid/graphics/Rect;
    .end local v2    # "N":I
    .end local v3    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_61
    :goto_61
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final whitelist getConstantWidth()I
    .registers 2

    .line 1088
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_7

    .line 1089
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 1092
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    return v0
.end method

.method public final whitelist getEnterFadeDuration()I
    .registers 2

    .line 1146
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return v0
.end method

.method public final whitelist getExitFadeDuration()I
    .registers 2

    .line 1154
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return v0
.end method

.method public final whitelist getOpacity()I
    .registers 6

    .line 1158
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v0, :cond_7

    .line 1159
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    return v0

    .line 1162
    :cond_7
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1164
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1165
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1166
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    if-lez v0, :cond_18

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, -0x2

    .line 1167
    .local v2, "op":I
    :goto_19
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1a
    if-ge v3, v0, :cond_29

    .line 1168
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    .line 1167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1171
    .end local v3    # "i":I
    :cond_29
    iput v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 1172
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 1173
    return v2
.end method

.method public whitelist growArray(II)V
    .registers 6
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .line 1199
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 1200
    .local v0, "newDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1202
    return-void
.end method

.method greylist-max-o invalidateCache()V
    .registers 2

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    .line 866
    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 867
    return-void
.end method

.method public final whitelist isConstantSize()Z
    .registers 2

    .line 1084
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    return v0
.end method

.method public final whitelist isStateful()Z
    .registers 6

    .line 1177
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v0, :cond_7

    .line 1178
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    return v0

    .line 1181
    :cond_7
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    .line 1183
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 1184
    .local v0, "N":I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1185
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1186
    .local v2, "isStateful":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v0, :cond_1f

    .line 1187
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1188
    const/4 v2, 0x1

    .line 1189
    goto :goto_1f

    .line 1186
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1193
    .end local v3    # "i":I
    :cond_1f
    :goto_1f
    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 1194
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    .line 1195
    return v2
.end method

.method public final whitelist setConstantSize(Z)V
    .registers 2
    .param p1, "constant"    # Z

    .line 1080
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 1081
    return-void
.end method

.method public final whitelist setEnterFadeDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .line 1142
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 1143
    return-void
.end method

.method public final whitelist setExitFadeDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .line 1150
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 1151
    return-void
.end method

.method final greylist-max-o setLayoutDirection(II)Z
    .registers 8
    .param p1, "layoutDirection"    # I
    .param p2, "currentIndex"    # I

    .line 932
    const/4 v0, 0x0

    .line 936
    .local v0, "changed":Z
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 937
    .local v1, "N":I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 938
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v1, :cond_18

    .line 939
    aget-object v4, v2, v3

    if-eqz v4, :cond_15

    .line 940
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v4

    .line 941
    .local v4, "childChanged":Z
    if-ne v3, p2, :cond_15

    .line 942
    move v0, v4

    .line 938
    .end local v4    # "childChanged":Z
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 947
    .end local v3    # "i":I
    :cond_18
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    .line 949
    return v0
.end method

.method public final whitelist setVariablePadding(Z)V
    .registers 2
    .param p1, "variable"    # Z

    .line 1047
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 1048
    return-void
.end method

.method final greylist-max-o updateDensity(Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 959
    if-eqz p1, :cond_15

    .line 960
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    .line 964
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    .line 965
    .local v0, "targetDensity":I
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 966
    .local v1, "sourceDensity":I
    iput v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    .line 968
    if-eq v1, v0, :cond_15

    .line 969
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    .line 970
    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    .line 973
    .end local v0    # "targetDensity":I
    .end local v1    # "sourceDensity":I
    :cond_15
    return-void
.end method
