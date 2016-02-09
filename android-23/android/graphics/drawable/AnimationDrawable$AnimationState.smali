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
.field private mDurations:[I

.field private mOneShot:Z


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mutate()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/AnimationDrawable$AnimationState;
    .param p2, "owner"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    #@4
    .line 380
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    #@6
    .line 385
    if-eqz p1, :cond_0

    #@8
    .line 386
    iget-object v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@c
    .line 387
    iget-boolean v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    #@e
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    #@10
    .line 382
    :goto_0
    return-void

    #@11
    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getCapacity()I

    #@14
    move-result v0

    #@15
    new-array v0, v0, [I

    #@17
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@19
    .line 390
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    #@1b
    goto :goto_0
.end method

.method private mutate()V
    .locals 1

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [I

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@a
    .line 394
    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dur"    # I

    #@0
    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    #@3
    move-result v0

    #@4
    .line 412
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@6
    aput p2, v1, v0

    #@8
    .line 408
    return-void
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 417
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    #@4
    .line 418
    new-array v0, p2, [I

    #@6
    .line 419
    .local v0, "newDurations":[I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@8
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@b
    .line 420
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    #@d
    .line 416
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 400
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 405
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable;)V

    #@6
    return-object v0
.end method
