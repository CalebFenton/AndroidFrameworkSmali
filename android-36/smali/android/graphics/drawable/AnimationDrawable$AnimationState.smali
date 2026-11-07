.class final Landroid/graphics/drawable/AnimationDrawable$AnimationState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "AnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimationState"
.end annotation


# instance fields
.field private greylist-max-o mDurations:[I

.field private greylist-max-o mOneShot:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDurations(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmutate(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mutate()V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V
    .registers 6
    .param p1, "orig"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "owner"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 388
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    .line 390
    if-eqz p1, :cond_11

    .line 391
    iget-object v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 392
    iget-boolean v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    goto :goto_1b

    .line 394
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getCapacity()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 395
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    .line 397
    :goto_1b
    return-void
.end method

.method private greylist-max-o mutate()V
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 401
    return-void
.end method


# virtual methods
.method public greylist-max-o addFrame(Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dur"    # I

    .line 416
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 417
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    aput p2, v1, v0

    .line 418
    return-void
.end method

.method public blacklist getTotalDuration()J
    .registers 6

    .line 429
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    if-eqz v0, :cond_13

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "total":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_11

    aget v4, v1, v3

    .line 432
    .local v4, "dur":I
    add-int/2addr v0, v4

    .line 431
    .end local v4    # "dur":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 434
    :cond_11
    int-to-long v1, v0

    return-wide v1

    .line 436
    .end local v0    # "total":I
    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist growArray(II)V
    .registers 6
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .line 422
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 423
    new-array v0, p2, [I

    .line 424
    .local v0, "newDurations":[I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 426
    return-void
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 405
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 410
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable-IA;)V

    return-object v0
.end method
