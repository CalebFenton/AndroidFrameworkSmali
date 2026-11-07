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
.field greylist-max-o mStateSets:[[I

.field greylist-max-o mThemeAttrs:[I


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "owner"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 316
    if-eqz p1, :cond_e

    .line 318
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 319
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_19

    .line 321
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 322
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 324
    :goto_19
    return-void
.end method


# virtual methods
.method greylist addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .registers 5
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 338
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 339
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    .line 340
    return v0
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 370
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist growArray(II)V
    .registers 6
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .line 375
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 376
    new-array v0, p2, [[I

    .line 377
    .local v0, "newStateSets":[[I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 379
    return-void
.end method

.method greylist-max-o hasFocusStateSpecified()Z
    .registers 3

    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method greylist-max-o indexOfStateSet([I)I
    .registers 6
    .param p1, "stateSet"    # [I

    .line 344
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 345
    .local v0, "stateSets":[[I
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v1

    .line 346
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_15

    .line 347
    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 348
    return v2

    .line 346
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 351
    .end local v2    # "i":I
    :cond_15
    const/4 v2, -0x1

    return v2
.end method

.method greylist-max-o mutate()V
    .registers 5

    .line 327
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 329
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    .line 330
    .local v0, "stateSets":[[I
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1b
    if-ltz v2, :cond_34

    .line 331
    iget-object v3, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v3, v3, v2

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v3, v3, v2

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    goto :goto_2f

    :cond_2e
    move-object v3, v1

    :goto_2f
    aput-object v3, v0, v2

    .line 330
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 333
    .end local v2    # "i":I
    :cond_34
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 334
    return-void
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 360
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 365
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable-IA;)V

    return-object v0
.end method
