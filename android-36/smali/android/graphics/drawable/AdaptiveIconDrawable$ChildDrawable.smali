.class Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public greylist-max-o mDensity:I

.field public greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field public greylist-max-o mThemeAttrs:[I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "density"    # I

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 930
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 931
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "orig"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/AdaptiveIconDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 936
    iget-object v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 938
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_30

    .line 939
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 940
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_13

    .line 941
    move-object v2, v0

    .local v2, "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_1e

    .line 942
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_13
    if-eqz p3, :cond_1a

    .line 943
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_1e

    .line 945
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_1a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 947
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :goto_1e
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 948
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 949
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 950
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_31

    .line 951
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_30
    const/4 v2, 0x0

    .line 954
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :goto_31
    iput-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 955
    iget-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 957
    iget v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 958
    return-void
.end method


# virtual methods
.method public greylist-max-o canApplyTheme()Z
    .registers 2

    .line 961
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 962
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 961
    :goto_14
    return v0
.end method

.method public final greylist-max-o setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 966
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    if-eq v0, p1, :cond_6

    .line 967
    iput p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDensity:I

    .line 969
    :cond_6
    return-void
.end method
