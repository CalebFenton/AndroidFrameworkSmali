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
.field private mHighs:[I

.field private mLows:[I


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mutate()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p2, "owner"    # Landroid/graphics/drawable/LevelListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    #@3
    .line 176
    if-eqz p1, :cond_0

    #@5
    .line 178
    iget-object v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@9
    .line 179
    iget-object v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@d
    .line 173
    :goto_0
    return-void

    #@e
    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getCapacity()I

    #@11
    move-result v0

    #@12
    new-array v0, v0, [I

    #@14
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@16
    .line 182
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getCapacity()I

    #@19
    move-result v0

    #@1a
    new-array v0, v0, [I

    #@1c
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@1e
    goto :goto_0
.end method

.method private mutate()V
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [I

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@a
    .line 188
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [I

    #@12
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@14
    .line 186
    return-void
.end method


# virtual methods
.method public addLevel(IILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 192
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    #@3
    move-result v0

    #@4
    .line 193
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@6
    aput p1, v1, v0

    #@8
    .line 194
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@a
    aput p2, v1, v0

    #@c
    .line 191
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
    .line 221
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    #@4
    .line 222
    new-array v0, p2, [I

    #@6
    .line 223
    .local v0, "newInts":[I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@8
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@b
    .line 224
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@d
    .line 225
    new-array v0, p2, [I

    #@f
    .line 226
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@11
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@14
    .line 227
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@16
    .line 220
    return-void
.end method

.method public indexOfLevel(I)I
    .locals 5
    .param p1, "level"    # I

    #@0
    .prologue
    .line 198
    iget-object v3, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    #@2
    .line 199
    .local v3, "lows":[I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    #@4
    .line 200
    .local v1, "highs":[I
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getChildCount()I

    #@7
    move-result v0

    #@8
    .line 201
    .local v0, "N":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b
    .line 202
    aget v4, v3, v2

    #@d
    if-lt p1, v4, :cond_0

    #@f
    aget v4, v1, v2

    #@11
    if-gt p1, v4, :cond_0

    #@13
    .line 203
    return v2

    #@14
    .line 201
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 206
    :cond_1
    const/4 v4, -0x1

    #@18
    return v4
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 211
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 216
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable;)V

    #@6
    return-object v0
.end method
