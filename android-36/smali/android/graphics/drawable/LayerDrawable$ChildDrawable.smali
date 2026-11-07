.class Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public greylist-max-o mDensity:I

.field public greylist mDrawable:Landroid/graphics/drawable/Drawable;

.field public greylist-max-o mGravity:I

.field public greylist-max-o mHeight:I

.field public greylist-max-o mId:I

.field public greylist-max-o mInsetB:I

.field public greylist-max-o mInsetE:I

.field public greylist-max-o mInsetL:I

.field public greylist-max-o mInsetR:I

.field public greylist-max-o mInsetS:I

.field public greylist-max-o mInsetT:I

.field public greylist-max-o mThemeAttrs:[I

.field public greylist-max-o mWidth:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "density"    # I

    .line 1843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1834
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1836
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1837
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1838
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1839
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1840
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1841
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1844
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1845
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 1848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1834
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1836
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1837
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1838
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1839
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1840
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1841
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1849
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1851
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_59

    .line 1852
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 1853
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_35

    .line 1854
    move-object v2, v0

    .line 1855
    .local v2, "clone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1857
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    const-string v4, "LayerDrawable"

    const-string v5, "Invalid drawable added to LayerDrawable! Drawable already belongs to another owner but does not expose a constant state."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 1861
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_35
    if-eqz p3, :cond_3c

    .line 1862
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_40

    .line 1864
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_3c
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1866
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_40
    :goto_40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1867
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1868
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1872
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1873
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_5a

    .line 1874
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_59
    const/4 v2, 0x0

    .line 1877
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :goto_5a
    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1878
    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 1879
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 1880
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1881
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 1882
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1883
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1884
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1885
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1886
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1887
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1888
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1890
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1891
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    if-eq v1, v3, :cond_9d

    .line 1892
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    iget v3, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-direct {p0, v1, v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->applyDensityScaling(II)V

    .line 1894
    :cond_9d
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .registers 6
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 1911
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 1912
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1913
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 1914
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1915
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2f

    .line 1916
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1918
    :cond_2f
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    if-eq v0, v2, :cond_3b

    .line 1919
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1921
    :cond_3b
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    const/4 v1, 0x1

    if-lez v0, :cond_48

    .line 1922
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1924
    :cond_48
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-lez v0, :cond_54

    .line 1925
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1927
    :cond_54
    return-void
.end method


# virtual methods
.method public greylist-max-o canApplyTheme()Z
    .registers 2

    .line 1897
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1898
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

    .line 1897
    :goto_14
    return v0
.end method

.method public final greylist-max-o setDensity(I)V
    .registers 3
    .param p1, "targetDensity"    # I

    .line 1902
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    if-eq v0, p1, :cond_b

    .line 1903
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1904
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1906
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->applyDensityScaling(II)V

    .line 1908
    .end local v0    # "sourceDensity":I
    :cond_b
    return-void
.end method
