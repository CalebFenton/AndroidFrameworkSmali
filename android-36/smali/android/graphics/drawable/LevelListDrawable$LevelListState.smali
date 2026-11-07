.class final Landroid/graphics/drawable/LevelListDrawable$LevelListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "LevelListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LevelListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LevelListState"
.end annotation


# instance fields
.field private greylist-max-o mHighs:[I

.field private greylist-max-o mLows:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmutate(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mutate()V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p2, "owner"    # Landroid/graphics/drawable/LevelListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 180
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 182
    if-eqz p1, :cond_e

    .line 184
    iget-object v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 185
    iget-object v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    goto :goto_1e

    .line 187
    :cond_e
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 188
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 190
    :goto_1e
    return-void
.end method

.method private greylist-max-o mutate()V
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 194
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 195
    return-void
.end method


# virtual methods
.method public greylist-max-o addLevel(IILandroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 199
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    aput p1, v1, v0

    .line 200
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    aput p2, v1, v0

    .line 201
    return-void
.end method

.method public whitelist growArray(II)V
    .registers 6
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .line 227
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 228
    new-array v0, p2, [I

    .line 229
    .local v0, "newInts":[I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 231
    new-array v0, p2, [I

    .line 232
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 234
    return-void
.end method

.method public greylist-max-o indexOfLevel(I)I
    .registers 7
    .param p1, "level"    # I

    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 205
    .local v0, "lows":[I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 206
    .local v1, "highs":[I
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getChildCount()I

    move-result v2

    .line 207
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_17

    .line 208
    aget v4, v0, v3

    if-lt p1, v4, :cond_14

    aget v4, v1, v3

    if-gt p1, v4, :cond_14

    .line 209
    return v3

    .line 207
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 212
    .end local v3    # "i":I
    :cond_17
    const/4 v3, -0x1

    return v3
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 217
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 222
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable-IA;)V

    return-object v0
.end method
