.class public Landroid/graphics/drawable/NinePatchDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mMutated:Z

.field private mNinePatch:Landroid/graphics/NinePatch;

.field private mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

.field private mOpticalInsets:Landroid/graphics/Insets;

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetDensity:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 73
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@8
    .line 77
    const/16 v0, 0xa0

    #@a
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@c
    .line 80
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@e
    .line 81
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@10
    .line 84
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@12
    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>()V

    #@15
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@17
    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "opticalInsets"    # Landroid/graphics/Rect;
    .param p6, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/NinePatch;

    #@4
    invoke-direct {v1, p2, p3, p6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    #@7
    invoke-direct {v0, v1, p4, p5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@a
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@d
    .line 117
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@f
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@11
    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@13
    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/NinePatch;

    #@4
    invoke-direct {v1, p2, p3, p5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    #@7
    invoke-direct {v0, v1, p4}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    #@a
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@d
    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@f
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@11
    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@13
    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "patch"    # Landroid/graphics/NinePatch;

    #@0
    .prologue
    .line 135
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/Rect;

    #@4
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@7
    invoke-direct {v0, p2, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    #@a
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@d
    .line 136
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@f
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@11
    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@13
    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "padding"    # Landroid/graphics/Rect;
    .param p4, "srcName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 94
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/NinePatch;

    #@4
    invoke-direct {v1, p1, p2, p4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    #@7
    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@e
    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 127
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    new-instance v1, Landroid/graphics/Rect;

    #@4
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@7
    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@e
    .line 126
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 698
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 73
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@8
    .line 77
    const/16 v0, 0xa0

    #@a
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@c
    .line 80
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@e
    .line 81
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@10
    .line 699
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@12
    .line 701
    invoke-direct {p0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@15
    .line 704
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@17
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@19
    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@1b
    .line 698
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private computeBitmapSize()V
    .locals 5

    #@0
    .prologue
    .line 192
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@2
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getDensity()I

    #@5
    move-result v1

    #@6
    .line 193
    .local v1, "sdensity":I
    iget v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@8
    .line 194
    .local v3, "tdensity":I
    if-ne v1, v3, :cond_0

    #@a
    .line 195
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@c
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    #@f
    move-result v4

    #@10
    iput v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@12
    .line 196
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@14
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    #@17
    move-result v4

    #@18
    iput v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@1a
    .line 197
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@1c
    iget-object v4, v4, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@1e
    iput-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@20
    .line 191
    :goto_0
    return-void

    #@21
    .line 199
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@23
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    #@26
    move-result v4

    #@27
    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@2a
    move-result v4

    #@2b
    iput v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@2d
    .line 200
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@2f
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    #@32
    move-result v4

    #@33
    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@36
    move-result v4

    #@37
    iput v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@39
    .line 201
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@3b
    iget-object v4, v4, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@3d
    if-eqz v4, :cond_2

    #@3f
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@41
    if-eqz v4, :cond_2

    #@43
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@45
    .line 203
    .local v0, "dest":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@47
    iget-object v2, v4, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@49
    .line 204
    .local v2, "src":Landroid/graphics/Rect;
    if-ne v0, v2, :cond_1

    #@4b
    .line 205
    new-instance v0, Landroid/graphics/Rect;

    #@4d
    .end local v0    # "dest":Landroid/graphics/Rect;
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@50
    .restart local v0    # "dest":Landroid/graphics/Rect;
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@52
    .line 207
    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->left:I

    #@54
    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@57
    move-result v4

    #@58
    iput v4, v0, Landroid/graphics/Rect;->left:I

    #@5a
    .line 208
    iget v4, v2, Landroid/graphics/Rect;->top:I

    #@5c
    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@5f
    move-result v4

    #@60
    iput v4, v0, Landroid/graphics/Rect;->top:I

    #@62
    .line 209
    iget v4, v2, Landroid/graphics/Rect;->right:I

    #@64
    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@67
    move-result v4

    #@68
    iput v4, v0, Landroid/graphics/Rect;->right:I

    #@6a
    .line 210
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    #@6c
    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@6f
    move-result v4

    #@70
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    #@72
    .line 212
    .end local v0    # "dest":Landroid/graphics/Rect;
    .end local v2    # "src":Landroid/graphics/Rect;
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@74
    iget-object v4, v4, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@76
    invoke-static {v4, v1, v3}, Landroid/graphics/drawable/NinePatchDrawable;->scaleFromDensity(Landroid/graphics/Insets;II)Landroid/graphics/Insets;

    #@79
    move-result-object v4

    #@7a
    iput-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@7c
    goto :goto_0
.end method

.method private needsMirroring()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 382
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->isAutoMirrored()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getLayoutDirection()I

    #@b
    move-result v2

    #@c
    if-ne v2, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private static scaleFromDensity(Landroid/graphics/Insets;II)Landroid/graphics/Insets;
    .locals 5
    .param p0, "insets"    # Landroid/graphics/Insets;
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    #@0
    .prologue
    .line 184
    iget v4, p0, Landroid/graphics/Insets;->left:I

    #@2
    invoke-static {v4, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@5
    move-result v1

    #@6
    .line 185
    .local v1, "left":I
    iget v4, p0, Landroid/graphics/Insets;->top:I

    #@8
    invoke-static {v4, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@b
    move-result v3

    #@c
    .line 186
    .local v3, "top":I
    iget v4, p0, Landroid/graphics/Insets;->right:I

    #@e
    invoke-static {v4, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@11
    move-result v2

    #@12
    .line 187
    .local v2, "right":I
    iget v4, p0, Landroid/graphics/Insets;->bottom:I

    #@14
    invoke-static {v4, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    #@17
    move-result v0

    #@18
    .line 188
    .local v0, "bottom":I
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@1b
    move-result-object v4

    #@1c
    return-object v4
.end method

.method private setNinePatch(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 217
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 218
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@7
    .line 219
    if-eqz p1, :cond_1

    #@9
    .line 220
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    #@c
    .line 225
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@f
    .line 216
    :cond_0
    return-void

    #@10
    .line 222
    :cond_1
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@12
    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@14
    .line 223
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@16
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@18
    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 711
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    .line 713
    .local v1, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    if-eqz p1, :cond_3

    #@4
    .line 714
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v2

    #@8
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    #@a
    .line 715
    .local v0, "densityDpi":I
    if-nez v0, :cond_0

    #@c
    const/16 v0, 0xa0

    #@e
    .end local v0    # "densityDpi":I
    :cond_0
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@10
    .line 722
    :goto_0
    iget-boolean v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 723
    iget-boolean v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@16
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setDither(Z)V

    #@19
    .line 727
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 728
    new-instance v2, Landroid/graphics/Rect;

    #@1f
    iget-object v3, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@21
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@24
    iput-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@26
    .line 731
    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@28
    iget-object v3, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@2a
    iget-object v4, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2c
    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@32
    .line 732
    iget-object v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@34
    invoke-direct {p0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setNinePatch(Landroid/graphics/NinePatch;)V

    #@37
    .line 710
    return-void

    #@38
    .line 717
    :cond_3
    iget v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@3a
    iput v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@3c
    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 17
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v8

    #@4
    .line 421
    .local v8, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@6
    iget-object v10, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@8
    .line 424
    .local v10, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    iget v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@a
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@d
    move-result v15

    #@e
    or-int/2addr v14, v15

    #@f
    iput v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@11
    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@14
    move-result-object v14

    #@15
    iput-object v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@17
    .line 429
    iget-boolean v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@19
    const/4 v15, 0x1

    #@1a
    move-object/from16 v0, p1

    #@1c
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1f
    move-result v14

    #@20
    iput-boolean v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@22
    .line 431
    const/4 v14, 0x0

    #@23
    const/4 v15, 0x0

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@29
    move-result v9

    #@2a
    .line 432
    .local v9, "srcResId":I
    if-eqz v9, :cond_3

    #@2c
    .line 433
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    #@2e
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@31
    .line 434
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    iget-boolean v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    #@33
    if-eqz v14, :cond_0

    #@35
    const/4 v14, 0x0

    #@36
    :goto_0
    iput-boolean v14, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    #@38
    .line 435
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3b
    move-result-object v14

    #@3c
    iget v14, v14, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@3e
    iput v14, v6, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    #@40
    .line 437
    new-instance v7, Landroid/graphics/Rect;

    #@42
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@45
    .line 438
    .local v7, "padding":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    #@47
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@4a
    .line 439
    .local v5, "opticalInsets":Landroid/graphics/Rect;
    const/4 v1, 0x0

    #@4b
    .line 442
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v13, Landroid/util/TypedValue;

    #@4d
    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    #@50
    .line 443
    .local v13, "value":Landroid/util/TypedValue;
    invoke-virtual {v8, v9, v13}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    #@53
    move-result-object v4

    #@54
    .line 445
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v8, v13, v4, v7, v6}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@57
    move-result-object v1

    #@58
    .line 447
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    .line 452
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v13    # "value":Landroid/util/TypedValue;
    :goto_1
    if-nez v1, :cond_1

    #@5d
    .line 453
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@5f
    new-instance v15, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@67
    move-result-object v16

    #@68
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v15

    #@6c
    .line 454
    const-string/jumbo v16, ": <nine-patch> requires a valid src attribute"

    #@6f
    .line 453
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v15

    #@73
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v15

    #@77
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v14

    #@7b
    .line 434
    .end local v5    # "opticalInsets":Landroid/graphics/Rect;
    .end local v7    # "padding":Landroid/graphics/Rect;
    :cond_0
    const/4 v14, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 455
    .restart local v5    # "opticalInsets":Landroid/graphics/Rect;
    .restart local v7    # "padding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    #@80
    move-result-object v14

    #@81
    if-nez v14, :cond_2

    #@83
    .line 456
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@85
    new-instance v15, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@8d
    move-result-object v16

    #@8e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v15

    #@92
    .line 457
    const-string/jumbo v16, ": <nine-patch> requires a valid 9-patch source image"

    #@95
    .line 456
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v15

    #@99
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v15

    #@9d
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v14

    #@a1
    .line 460
    :cond_2
    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    #@a4
    .line 462
    new-instance v14, Landroid/graphics/NinePatch;

    #@a6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    #@a9
    move-result-object v15

    #@aa
    invoke-direct {v14, v1, v15}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    #@ad
    iput-object v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@af
    .line 463
    iput-object v7, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    #@b1
    .line 464
    invoke-static {v5}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    #@b4
    move-result-object v14

    #@b5
    iput-object v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    #@b7
    .line 468
    .end local v5    # "opticalInsets":Landroid/graphics/Rect;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "padding":Landroid/graphics/Rect;
    :cond_3
    iget-boolean v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@b9
    const/4 v15, 0x4

    #@ba
    .line 467
    move-object/from16 v0, p1

    #@bc
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bf
    move-result v14

    #@c0
    iput-boolean v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@c2
    .line 469
    iget v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@c4
    const/4 v15, 0x3

    #@c5
    move-object/from16 v0, p1

    #@c7
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@ca
    move-result v14

    #@cb
    iput v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@cd
    .line 471
    const/4 v14, 0x5

    #@ce
    const/4 v15, -0x1

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@d4
    move-result v12

    #@d5
    .line 472
    .local v12, "tintMode":I
    const/4 v14, -0x1

    #@d6
    if-eq v12, v14, :cond_4

    #@d8
    .line 473
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@da
    invoke-static {v12, v14}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@dd
    move-result-object v14

    #@de
    iput-object v14, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e0
    .line 476
    :cond_4
    const/4 v14, 0x2

    #@e1
    move-object/from16 v0, p1

    #@e3
    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@e6
    move-result-object v11

    #@e7
    .line 477
    .local v11, "tint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_5

    #@e9
    .line 478
    iput-object v11, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@eb
    .line 481
    :cond_5
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@ee
    move-result-object v14

    #@ef
    iget v2, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    #@f1
    .line 482
    .local v2, "densityDpi":I
    if-nez v2, :cond_6

    #@f3
    const/16 v2, 0xa0

    #@f5
    .end local v2    # "densityDpi":I
    :cond_6
    iput v2, v10, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    #@f7
    .line 419
    return-void

    #@f8
    .line 448
    .end local v11    # "tint":Landroid/content/res/ColorStateList;
    .end local v12    # "tintMode":I
    .restart local v5    # "opticalInsets":Landroid/graphics/Rect;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "padding":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    #@f9
    .local v3, "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 489
    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@5
    .line 490
    .local v2, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    if-nez v2, :cond_0

    #@7
    .line 491
    return-void

    #@8
    .line 494
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 496
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    #@e
    sget-object v4, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    #@10
    .line 495
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 498
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 502
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 506
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 507
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@28
    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@2e
    .line 510
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v3

    #@32
    invoke-direct {p0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@35
    .line 486
    return-void

    #@36
    .line 499
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@37
    .line 500
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@39
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@3c
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    .line 501
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@3e
    .line 502
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@41
    .line 501
    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 587
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 588
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    #@6
    .line 586
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    const/4 v7, 0x0

    #@3
    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    #@6
    move-result-object v0

    #@7
    .line 234
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@9
    if-eqz v4, :cond_3

    #@b
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@12
    move-result-object v4

    #@13
    if-nez v4, :cond_3

    #@15
    .line 235
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@17
    iget-object v5, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@19
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@1c
    .line 236
    const/4 v1, 0x1

    #@1d
    .line 241
    .local v1, "clearColorFilter":Z
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    #@20
    move-result v2

    #@21
    .line 242
    .local v2, "needsMirroring":Z
    if-eqz v2, :cond_0

    #@23
    .line 244
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@25
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@27
    sub-int/2addr v4, v5

    #@28
    int-to-float v4, v4

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@2d
    .line 245
    const/high16 v4, -0x40800000    # -1.0f

    #@2f
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    #@32
    .line 249
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@34
    iget v4, v4, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@36
    cmpl-float v4, v4, v6

    #@38
    if-eqz v4, :cond_4

    #@3a
    .line 250
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@3c
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    #@3f
    move-result v3

    #@40
    .line 251
    .local v3, "restoreAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@42
    int-to-float v5, v3

    #@43
    iget-object v6, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@45
    iget v6, v6, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    #@47
    mul-float/2addr v5, v6

    #@48
    const/high16 v6, 0x3f000000    # 0.5f

    #@4a
    add-float/2addr v5, v6

    #@4b
    float-to-int v5, v5

    #@4c
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    #@4f
    .line 256
    :goto_1
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@51
    iget-object v5, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@53
    invoke-virtual {v4, p1, v0, v5}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@56
    .line 258
    if-eqz v1, :cond_1

    #@58
    .line 259
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@5a
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@5d
    .line 262
    :cond_1
    if-ltz v3, :cond_2

    #@5f
    .line 263
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@61
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    #@64
    .line 230
    :cond_2
    return-void

    #@65
    .line 238
    .end local v1    # "clearColorFilter":Z
    .end local v2    # "needsMirroring":Z
    .end local v3    # "restoreAlpha":I
    :cond_3
    const/4 v1, 0x0

    #@66
    .restart local v1    # "clearColorFilter":Z
    goto :goto_0

    #@67
    .line 253
    .restart local v2    # "needsMirroring":Z
    :cond_4
    const/4 v3, -0x1

    #@68
    .restart local v3    # "restoreAlpha":I
    goto :goto_1
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 335
    const/16 v0, 0xff

    #@6
    return v0

    #@7
    .line 337
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 269
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 569
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    #@8
    .line 570
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@a
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 539
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 531
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@2
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    #@0
    .prologue
    .line 549
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    #@2
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    #@0
    .prologue
    .line 544
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .locals 2

    #@0
    .prologue
    .line 558
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@2
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->hasAlpha()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    if-eqz v0, :cond_1

    #@c
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@e
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@11
    move-result v0

    #@12
    const/16 v1, 0xff

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 559
    :cond_0
    const/4 v0, -0x3

    #@17
    .line 558
    :goto_0
    return v0

    #@18
    .line 559
    :cond_1
    const/4 v0, -0x1

    #@19
    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 4

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 314
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@8
    iget v0, v0, Landroid/graphics/Insets;->right:I

    #@a
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@c
    iget v1, v1, Landroid/graphics/Insets;->top:I

    #@e
    .line 315
    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@10
    iget v2, v2, Landroid/graphics/Insets;->left:I

    #@12
    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@14
    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    #@16
    .line 314
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 317
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@1d
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 9
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v6

    #@4
    .line 290
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    return-void

    #@b
    .line 292
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 293
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@11
    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@13
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    #@1a
    move-result-object v7

    #@1b
    .line 294
    .local v7, "insets":Landroid/graphics/NinePatch$InsetStruct;
    if-eqz v7, :cond_1

    #@1d
    .line 295
    iget-object v8, v7, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    #@1f
    .line 296
    .local v8, "outlineInsets":Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    #@21
    iget v1, v8, Landroid/graphics/Rect;->left:I

    #@23
    add-int/2addr v1, v0

    #@24
    .line 297
    iget v0, v6, Landroid/graphics/Rect;->top:I

    #@26
    iget v2, v8, Landroid/graphics/Rect;->top:I

    #@28
    add-int/2addr v2, v0

    #@29
    .line 298
    iget v0, v6, Landroid/graphics/Rect;->right:I

    #@2b
    iget v3, v8, Landroid/graphics/Rect;->right:I

    #@2d
    sub-int v3, v0, v3

    #@2f
    .line 299
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    #@31
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    #@33
    sub-int v4, v0, v4

    #@35
    .line 300
    iget v5, v7, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    #@37
    move-object v0, p1

    #@38
    .line 296
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    #@3b
    .line 301
    iget v0, v7, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    #@3d
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getAlpha()I

    #@40
    move-result v1

    #@41
    int-to-float v1, v1

    #@42
    const/high16 v2, 0x437f0000    # 255.0f

    #@44
    div-float/2addr v1, v2

    #@45
    mul-float/2addr v0, v1

    #@46
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    #@49
    .line 302
    return-void

    #@4a
    .line 305
    .end local v7    # "insets":Landroid/graphics/NinePatch$InsetStruct;
    .end local v8    # "outlineInsets":Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@4d
    .line 288
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 274
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    #@3
    .line 275
    .local v0, "scaledPadding":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    #@5
    .line 276
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 277
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@d
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@f
    .line 278
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@11
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@13
    .line 277
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@16
    .line 282
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@18
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@1a
    or-int/2addr v2, v3

    #@1b
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@1d
    or-int/2addr v2, v3

    #@1e
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@20
    or-int/2addr v2, v3

    #@21
    if-eqz v2, :cond_0

    #@23
    const/4 v1, 0x1

    #@24
    :cond_0
    return v1

    #@25
    .line 280
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@28
    goto :goto_0

    #@29
    .line 284
    :cond_2
    return v1
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 2

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 520
    new-instance v0, Landroid/graphics/Paint;

    #@6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@b
    .line 521
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    #@11
    .line 523
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@13
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/NinePatch;->getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 407
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 409
    sget-object v1, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 410
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 411
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@f
    .line 413
    invoke-direct {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@12
    .line 406
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@4
    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 399
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 401
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public isStateful()Z
    .locals 2

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    .line 605
    .local v0, "s":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    :cond_0
    const/4 v1, 0x1

    #@14
    goto :goto_0

    #@15
    :cond_1
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 575
    iget-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 576
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@13
    .line 577
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@15
    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    #@17
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@19
    .line 578
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    #@1c
    .line 580
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 593
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    .line 594
    .local v0, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 595
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@c
    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@16
    .line 596
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 599
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    const/16 v0, 0xff

    #@6
    if-ne p1, v0, :cond_0

    #@8
    .line 325
    return-void

    #@9
    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@10
    .line 328
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@13
    .line 322
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iput-boolean p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    #@4
    .line 377
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    .line 344
    return-void

    #@7
    .line 346
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@e
    .line 347
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@11
    .line 341
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    .line 369
    return-void

    #@7
    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    #@e
    .line 373
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@11
    .line 365
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@7
    .line 393
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@a
    .line 391
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    #@0
    .prologue
    .line 174
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@2
    if-eq p1, v0, :cond_2

    #@4
    .line 175
    if-nez p1, :cond_0

    #@6
    const/16 p1, 0xa0

    #@8
    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    #@a
    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 177
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    #@11
    .line 179
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@14
    .line 173
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    #@7
    .line 149
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 162
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    #@5
    .line 161
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    .line 353
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 354
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@13
    .line 351
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 360
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 361
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    #@13
    .line 358
    return-void
.end method
