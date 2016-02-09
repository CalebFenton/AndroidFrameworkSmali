.class Landroid/graphics/drawable/StateListDrawable$StateListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "owner"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 305
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    #@4
    .line 307
    if-eqz p1, :cond_0

    #@6
    .line 309
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    #@a
    .line 310
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@c
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@e
    .line 304
    :goto_0
    return-void

    #@f
    .line 312
    :cond_0
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    #@11
    .line 313
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getCapacity()I

    #@14
    move-result v0

    #@15
    new-array v0, v0, [[I

    #@17
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@19
    goto :goto_0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 328
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    #@3
    move-result v0

    #@4
    .line 329
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@6
    aput-object p1, v1, v0

    #@8
    .line 330
    return v0
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 361
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    #@4
    .line 362
    new-array v0, p2, [[I

    #@6
    .line 363
    .local v0, "newStateSets":[[I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@8
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    .line 364
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@d
    .line 360
    return-void
.end method

.method indexOfStateSet([I)I
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 334
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@2
    .line 335
    .local v2, "stateSets":[[I
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    #@5
    move-result v0

    #@6
    .line 336
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 337
    aget-object v3, v2, v1

    #@b
    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 338
    return v1

    #@12
    .line 336
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 341
    :cond_1
    const/4 v3, -0x1

    #@16
    return v3
.end method

.method mutate()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 318
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    #@7
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, [I

    #@d
    :goto_0
    iput-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    #@f
    .line 320
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@11
    array-length v2, v2

    #@12
    new-array v1, v2, [[I

    #@14
    .line 321
    .local v1, "stateSets":[[I
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@16
    array-length v2, v2

    #@17
    add-int/lit8 v0, v2, -0x1

    #@19
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    #@1b
    .line 322
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@1d
    aget-object v2, v2, v0

    #@1f
    if-eqz v2, :cond_1

    #@21
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@23
    aget-object v2, v2, v0

    #@25
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, [I

    #@2b
    :goto_2
    aput-object v2, v1, v0

    #@2d
    .line 321
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_1

    #@30
    .end local v0    # "i":I
    .end local v1    # "stateSets":[[I
    :cond_0
    move-object v2, v3

    #@31
    .line 318
    goto :goto_0

    #@32
    .restart local v0    # "i":I
    .restart local v1    # "stateSets":[[I
    :cond_1
    move-object v2, v3

    #@33
    .line 322
    goto :goto_2

    #@34
    .line 324
    :cond_2
    iput-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    #@36
    .line 317
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 346
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 351
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    #@6
    return-object v0
.end method
