.class public Landroid/graphics/drawable/BitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x6

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_DISABLED:I = -0x1

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static final TILE_MODE_UNDEFINED:I = -0x2


# instance fields
.field private mBitmapHeight:I

.field private mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mDstRectAndInsetsDirty:Z

.field private mMirrorMatrix:Landroid/graphics/Matrix;

.field private mMutated:Z

.field private mOpticalInsets:Landroid/graphics/Insets;

.field private mTargetDensity:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 85
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@a
    .line 90
    const/16 v0, 0xa0

    #@c
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@e
    .line 92
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@11
    .line 100
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 112
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@17
    const/4 v0, 0x0

    #@18
    check-cast v0, Landroid/graphics/Bitmap;

    #@1a
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@1d
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@1f
    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 85
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@a
    .line 90
    const/16 v0, 0xa0

    #@c
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@e
    .line 92
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@11
    .line 100
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 125
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@17
    const/4 v0, 0x0

    #@18
    check-cast v0, Landroid/graphics/Bitmap;

    #@1a
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@1d
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@1f
    .line 126
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@21
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@23
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@25
    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 144
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@5
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@8
    .line 145
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@a
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@c
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@e
    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "is"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 191
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@a
    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@d
    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@f
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@11
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@13
    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@15
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@17
    if-nez v0, :cond_0

    #@19
    .line 194
    const-string/jumbo v0, "BitmapDrawable"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "BitmapDrawable cannot decode "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 190
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "filepath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@a
    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@d
    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@f
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@11
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@13
    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@15
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@17
    if-nez v0, :cond_0

    #@19
    .line 169
    const-string/jumbo v0, "BitmapDrawable"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "BitmapDrawable cannot decode "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 165
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 136
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@9
    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 966
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 85
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@a
    .line 90
    const/16 v0, 0xa0

    #@c
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@e
    .line 92
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@11
    .line 100
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 967
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@17
    .line 969
    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@1a
    .line 966
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 180
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@a
    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@d
    .line 181
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@f
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 182
    const-string/jumbo v0, "BitmapDrawable"

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "BitmapDrawable cannot decode "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 179
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 155
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@a
    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@d
    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@f
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 157
    const-string/jumbo v0, "BitmapDrawable"

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "BitmapDrawable cannot decode "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 154
    :cond_0
    return-void
.end method

.method private computeBitmapSize()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 213
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    iget-object v0, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    .line 214
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@7
    .line 215
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@9
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    #@f
    .line 216
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    #@17
    .line 212
    :goto_0
    return-void

    #@18
    .line 218
    :cond_0
    iput v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    #@1a
    iput v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    #@1c
    goto :goto_0
.end method

.method private needMirroring()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 462
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->isAutoMirrored()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getLayoutDirection()I

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

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    #@0
    .prologue
    .line 849
    packed-switch p0, :pswitch_data_0

    #@3
    .line 857
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 851
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@7
    return-object v0

    #@8
    .line 853
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@a
    return-object v0

    #@b
    .line 855
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    #@d
    return-object v0

    #@e
    .line 849
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDstRectAndInsetsIfDirty()V
    .locals 10

    #@0
    .prologue
    .line 576
    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 577
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@6
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@8
    if-nez v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 578
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    #@13
    move-result-object v3

    #@14
    .line 579
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getLayoutDirection()I

    #@17
    move-result v5

    #@18
    .line 580
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@1a
    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@1c
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    #@1e
    iget v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    #@20
    .line 581
    iget-object v4, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@22
    .line 580
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@25
    .line 583
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@27
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@29
    iget v1, v3, Landroid/graphics/Rect;->left:I

    #@2b
    sub-int v7, v0, v1

    #@2d
    .line 584
    .local v7, "left":I
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@2f
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@31
    iget v1, v3, Landroid/graphics/Rect;->top:I

    #@33
    sub-int v9, v0, v1

    #@35
    .line 585
    .local v9, "top":I
    iget v0, v3, Landroid/graphics/Rect;->right:I

    #@37
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@39
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@3b
    sub-int v8, v0, v1

    #@3d
    .line 586
    .local v8, "right":I
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    #@3f
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@41
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@43
    sub-int v6, v0, v1

    #@45
    .line 587
    .local v6, "bottom":I
    invoke-static {v7, v9, v8, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@4b
    .line 593
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "layoutDirection":I
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v8    # "right":I
    .end local v9    # "top":I
    :cond_0
    :goto_0
    const/4 v0, 0x0

    #@4c
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@4e
    .line 575
    return-void

    #@4f
    .line 589
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@51
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@54
    .line 590
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@56
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@58
    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 978
    if-eqz p1, :cond_1

    #@2
    .line 979
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@5
    move-result-object v1

    #@6
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@8
    .line 980
    .local v0, "densityDpi":I
    if-nez v0, :cond_0

    #@a
    const/16 v0, 0xa0

    #@c
    .end local v0    # "densityDpi":I
    :cond_0
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@e
    .line 985
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@12
    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@14
    iget-object v3, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@16
    iget-object v3, v3, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@18
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@1e
    .line 986
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    #@21
    .line 977
    return-void

    #@22
    .line 982
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@24
    iget v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@26
    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@28
    goto :goto_0
.end method

.method private updateMirrorMatrix(F)V
    .locals 3
    .param p1, "dx"    # F

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 467
    new-instance v0, Landroid/graphics/Matrix;

    #@6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@b
    .line 469
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@11
    .line 470
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@13
    const/high16 v1, -0x40800000    # -1.0f

    #@15
    const/high16 v2, 0x3f800000    # 1.0f

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    #@1a
    .line 465
    return-void
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
    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v6

    #@4
    .line 752
    .local v6, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@6
    iget-object v8, v0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    .line 755
    .local v8, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@a
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@d
    move-result v15

    #@e
    or-int/2addr v14, v15

    #@f
    iput v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@11
    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@14
    move-result-object v14

    #@15
    iput-object v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@17
    .line 760
    const/4 v14, 0x1

    #@18
    const/4 v15, 0x0

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1e
    move-result v7

    #@1f
    .line 761
    .local v7, "srcResId":I
    if-eqz v7, :cond_1

    #@21
    .line 762
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    #@24
    move-result-object v1

    #@25
    .line 763
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    #@27
    .line 764
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@29
    new-instance v15, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@31
    move-result-object v16

    #@32
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v15

    #@36
    .line 765
    const-string/jumbo v16, ": <bitmap> requires a valid \'src\' attribute"

    #@39
    .line 764
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v15

    #@3d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v15

    #@41
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@44
    throw v14

    #@45
    .line 768
    :cond_0
    iput-object v1, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@47
    .line 771
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@4a
    move-result-object v14

    #@4b
    iget v14, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    #@4d
    iput v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@4f
    .line 773
    iget-object v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@51
    if-eqz v14, :cond_8

    #@53
    iget-object v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@55
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->hasMipMap()Z

    #@58
    move-result v2

    #@59
    .line 774
    :goto_0
    const/16 v14, 0x8

    #@5b
    move-object/from16 v0, p1

    #@5d
    invoke-virtual {v0, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@60
    move-result v14

    #@61
    move-object/from16 v0, p0

    #@63
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/BitmapDrawable;->setMipMap(Z)V

    #@66
    .line 777
    iget-boolean v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@68
    const/16 v15, 0x9

    #@6a
    .line 776
    move-object/from16 v0, p1

    #@6c
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6f
    move-result v14

    #@70
    iput-boolean v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@72
    .line 778
    iget v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@74
    const/4 v15, 0x7

    #@75
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@7a
    move-result v14

    #@7b
    iput v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@7d
    .line 780
    const/16 v14, 0xa

    #@7f
    const/4 v15, -0x1

    #@80
    move-object/from16 v0, p1

    #@82
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@85
    move-result v13

    #@86
    .line 781
    .local v13, "tintMode":I
    const/4 v14, -0x1

    #@87
    if-eq v13, v14, :cond_2

    #@89
    .line 782
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@8b
    invoke-static {v13, v14}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@8e
    move-result-object v14

    #@8f
    iput-object v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@91
    .line 785
    :cond_2
    const/4 v14, 0x5

    #@92
    move-object/from16 v0, p1

    #@94
    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@97
    move-result-object v12

    #@98
    .line 786
    .local v12, "tint":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_3

    #@9a
    .line 787
    iput-object v12, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@9c
    .line 790
    :cond_3
    move-object/from16 v0, p0

    #@9e
    iget-object v14, v0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@a0
    iget-object v5, v14, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@a2
    .line 792
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5}, Landroid/graphics/Paint;->isAntiAlias()Z

    #@a5
    move-result v14

    #@a6
    const/4 v15, 0x2

    #@a7
    .line 791
    move-object/from16 v0, p1

    #@a9
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ac
    move-result v14

    #@ad
    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@b0
    .line 794
    invoke-virtual {v5}, Landroid/graphics/Paint;->isFilterBitmap()Z

    #@b3
    move-result v14

    #@b4
    const/4 v15, 0x3

    #@b5
    .line 793
    move-object/from16 v0, p1

    #@b7
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ba
    move-result v14

    #@bb
    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@be
    .line 795
    invoke-virtual {v5}, Landroid/graphics/Paint;->isDither()Z

    #@c1
    move-result v14

    #@c2
    const/4 v15, 0x4

    #@c3
    move-object/from16 v0, p1

    #@c5
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c8
    move-result v14

    #@c9
    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setDither(Z)V

    #@cc
    .line 797
    iget v14, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@ce
    const/4 v15, 0x0

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@d4
    move-result v14

    #@d5
    move-object/from16 v0, p0

    #@d7
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    #@da
    .line 799
    const/4 v14, 0x6

    #@db
    const/4 v15, -0x2

    #@dc
    move-object/from16 v0, p1

    #@de
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e1
    move-result v9

    #@e2
    .line 800
    .local v9, "tileMode":I
    const/4 v14, -0x2

    #@e3
    if-eq v9, v14, :cond_4

    #@e5
    .line 801
    invoke-static {v9}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@e8
    move-result-object v4

    #@e9
    .line 802
    .local v4, "mode":Landroid/graphics/Shader$TileMode;
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@ee
    .line 805
    .end local v4    # "mode":Landroid/graphics/Shader$TileMode;
    :cond_4
    const/16 v14, 0xb

    #@f0
    const/4 v15, -0x2

    #@f1
    move-object/from16 v0, p1

    #@f3
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f6
    move-result v10

    #@f7
    .line 806
    .local v10, "tileModeX":I
    const/4 v14, -0x2

    #@f8
    if-eq v10, v14, :cond_5

    #@fa
    .line 807
    invoke-static {v10}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@fd
    move-result-object v14

    #@fe
    move-object/from16 v0, p0

    #@100
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    #@103
    .line 810
    :cond_5
    const/16 v14, 0xc

    #@105
    const/4 v15, -0x2

    #@106
    move-object/from16 v0, p1

    #@108
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@10b
    move-result v11

    #@10c
    .line 811
    .local v11, "tileModeY":I
    const/4 v14, -0x2

    #@10d
    if-eq v11, v14, :cond_6

    #@10f
    .line 812
    invoke-static {v11}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@112
    move-result-object v14

    #@113
    move-object/from16 v0, p0

    #@115
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    #@118
    .line 815
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11b
    move-result-object v14

    #@11c
    iget v3, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    #@11e
    .line 816
    .local v3, "densityDpi":I
    if-nez v3, :cond_7

    #@120
    const/16 v3, 0xa0

    #@122
    .end local v3    # "densityDpi":I
    :cond_7
    iput v3, v8, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@124
    .line 750
    return-void

    #@125
    .line 773
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v9    # "tileMode":I
    .end local v10    # "tileModeX":I
    .end local v11    # "tileModeY":I
    .end local v12    # "tint":Landroid/content/res/ColorStateList;
    .end local v13    # "tintMode":I
    :cond_8
    const/4 v2, 0x0

    #@126
    .local v2, "defMipMap":Z
    goto/16 :goto_0
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 739
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    .line 740
    .local v0, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    if-nez v1, :cond_1

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 741
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@c
    const/4 v2, 0x1

    #@d
    aget v1, v1, v2

    #@f
    if-nez v1, :cond_1

    #@11
    .line 742
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 743
    const-string/jumbo v3, ": <bitmap> requires a valid \'src\' attribute"

    #@23
    .line 742
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 737
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 821
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 823
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@5
    .line 824
    .local v2, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    if-nez v2, :cond_0

    #@7
    .line 825
    return-void

    #@8
    .line 828
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 829
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@e
    sget-object v4, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    #@10
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 831
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 835
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 840
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@1c
    if-eqz v3, :cond_2

    #@1e
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@20
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 841
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@28
    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@2e
    .line 845
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v3

    #@32
    invoke-direct {p0, v3}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@35
    .line 820
    return-void

    #@36
    .line 832
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@37
    .line 833
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
    .line 834
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@3e
    .line 835
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@41
    .line 834
    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 863
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->canApplyTheme()Z

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
    .line 698
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 699
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    #@6
    .line 697
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/high16 v13, 0x3f800000    # 1.0f

    #@3
    const/4 v12, 0x0

    #@4
    .line 495
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@6
    iget-object v0, v10, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@8
    .line 496
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    #@a
    .line 497
    return-void

    #@b
    .line 500
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@d
    .line 501
    .local v7, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v4, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@f
    .line 502
    .local v4, "paint":Landroid/graphics/Paint;
    iget-boolean v10, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    #@11
    if-eqz v10, :cond_1

    #@13
    .line 503
    iget-object v8, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@15
    .line 504
    .local v8, "tmx":Landroid/graphics/Shader$TileMode;
    iget-object v9, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@17
    .line 505
    .local v9, "tmy":Landroid/graphics/Shader$TileMode;
    if-nez v8, :cond_6

    #@19
    if-nez v9, :cond_6

    #@1b
    .line 506
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@1e
    .line 513
    .end local v8    # "tmx":Landroid/graphics/Shader$TileMode;
    .end local v9    # "tmy":Landroid/graphics/Shader$TileMode;
    :goto_0
    iput-boolean v11, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    #@20
    .line 517
    :cond_1
    iget v10, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@22
    cmpl-float v10, v10, v13

    #@24
    if-eqz v10, :cond_9

    #@26
    .line 518
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    #@29
    move-result-object v3

    #@2a
    .line 519
    .local v3, "p":Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    #@2d
    move-result v5

    #@2e
    .line 520
    .local v5, "restoreAlpha":I
    int-to-float v10, v5

    #@2f
    iget v11, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@31
    mul-float/2addr v10, v11

    #@32
    const/high16 v11, 0x3f000000    # 0.5f

    #@34
    add-float/2addr v10, v11

    #@35
    float-to-int v10, v10

    #@36
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    #@39
    .line 526
    .end local v3    # "p":Landroid/graphics/Paint;
    :goto_1
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@3b
    if-eqz v10, :cond_a

    #@3d
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@40
    move-result-object v10

    #@41
    if-nez v10, :cond_a

    #@43
    .line 527
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@45
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@48
    .line 528
    const/4 v1, 0x1

    #@49
    .line 533
    .local v1, "clearColorFilter":Z
    :goto_2
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    #@4c
    .line 534
    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    #@4f
    move-result-object v6

    #@50
    .line 535
    .local v6, "shader":Landroid/graphics/Shader;
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->needMirroring()Z

    #@53
    move-result v2

    #@54
    .line 536
    .local v2, "needMirroring":Z
    if-nez v6, :cond_b

    #@56
    .line 537
    if-eqz v2, :cond_2

    #@58
    .line 538
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@5b
    .line 540
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@5d
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@5f
    iget-object v11, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@61
    iget v11, v11, Landroid/graphics/Rect;->left:I

    #@63
    sub-int/2addr v10, v11

    #@64
    int-to-float v10, v10

    #@65
    const/4 v11, 0x0

    #@66
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    #@69
    .line 541
    const/high16 v10, -0x40800000    # -1.0f

    #@6b
    invoke-virtual {p1, v10, v13}, Landroid/graphics/Canvas;->scale(FF)V

    #@6e
    .line 544
    :cond_2
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@70
    invoke-virtual {p1, v0, v12, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@73
    .line 546
    if-eqz v2, :cond_3

    #@75
    .line 547
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@78
    .line 566
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    #@7a
    .line 567
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@7d
    .line 570
    :cond_4
    if-ltz v5, :cond_5

    #@7f
    .line 571
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    #@82
    .line 494
    :cond_5
    return-void

    #@83
    .line 508
    .end local v1    # "clearColorFilter":Z
    .end local v2    # "needMirroring":Z
    .end local v5    # "restoreAlpha":I
    .end local v6    # "shader":Landroid/graphics/Shader;
    .restart local v8    # "tmx":Landroid/graphics/Shader$TileMode;
    .restart local v9    # "tmy":Landroid/graphics/Shader$TileMode;
    :cond_6
    new-instance v10, Landroid/graphics/BitmapShader;

    #@85
    .line 509
    if-nez v8, :cond_7

    #@87
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@89
    .line 510
    .end local v8    # "tmx":Landroid/graphics/Shader$TileMode;
    :cond_7
    if-nez v9, :cond_8

    #@8b
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@8d
    .line 508
    .end local v9    # "tmy":Landroid/graphics/Shader$TileMode;
    :cond_8
    invoke-direct {v10, v0, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@90
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@93
    goto :goto_0

    #@94
    .line 522
    :cond_9
    const/4 v5, -0x1

    #@95
    .restart local v5    # "restoreAlpha":I
    goto :goto_1

    #@96
    .line 530
    :cond_a
    const/4 v1, 0x0

    #@97
    .restart local v1    # "clearColorFilter":Z
    goto :goto_2

    #@98
    .line 550
    .restart local v2    # "needMirroring":Z
    .restart local v6    # "shader":Landroid/graphics/Shader;
    :cond_b
    if-eqz v2, :cond_d

    #@9a
    .line 552
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@9c
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@9e
    iget-object v11, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@a0
    iget v11, v11, Landroid/graphics/Rect;->left:I

    #@a2
    sub-int/2addr v10, v11

    #@a3
    int-to-float v10, v10

    #@a4
    invoke-direct {p0, v10}, Landroid/graphics/drawable/BitmapDrawable;->updateMirrorMatrix(F)V

    #@a7
    .line 553
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@a9
    invoke-virtual {v6, v10}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@ac
    .line 554
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@af
    .line 563
    :cond_c
    :goto_4
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@b1
    invoke-virtual {p1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@b4
    goto :goto_3

    #@b5
    .line 556
    :cond_d
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@b7
    if-eqz v10, :cond_c

    #@b9
    .line 557
    iput-object v12, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@bb
    .line 558
    sget-object v10, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@bd
    invoke-virtual {v6, v10}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@c0
    .line 559
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@c3
    goto :goto_4
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 458
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getChangingConfigurations()I

    #@7
    move-result v2

    #@8
    or-int/2addr v1, v2

    #@9
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@b
    .line 890
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@d
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@4
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 873
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 868
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    #@2
    return v0
.end method

.method public getOpacity()I
    .locals 4

    #@0
    .prologue
    const/4 v1, -0x3

    #@1
    .line 878
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    iget v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@5
    const/16 v3, 0x77

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 879
    return v1

    #@a
    .line 882
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v0, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@e
    .line 883
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    #@10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@18
    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@1a
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    #@1d
    move-result v2

    #@1e
    const/16 v3, 0xff

    #@20
    if-ge v2, v3, :cond_2

    #@22
    :cond_1
    :goto_0
    return v1

    #@23
    .line 884
    :cond_2
    const/4 v1, -0x1

    #@24
    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 601
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    #@3
    .line 602
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@5
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 607
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    #@3
    .line 608
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@5
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    #@8
    .line 612
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@a
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 613
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@10
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@12
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v0, 0x0

    #@19
    .line 614
    .local v0, "opaqueOverShape":Z
    :goto_0
    if-eqz v0, :cond_2

    #@1b
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getAlpha()I

    #@1e
    move-result v1

    #@1f
    int-to-float v1, v1

    #@20
    const/high16 v2, 0x437f0000    # 255.0f

    #@22
    div-float/2addr v1, v2

    #@23
    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    #@26
    .line 606
    return-void

    #@27
    .line 613
    .end local v0    # "opaqueOverShape":Z
    :cond_0
    const/4 v0, 0x1

    #@28
    .restart local v0    # "opaqueOverShape":Z
    goto :goto_0

    #@29
    .line 612
    .end local v0    # "opaqueOverShape":Z
    :cond_1
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "opaqueOverShape":Z
    goto :goto_0

    #@2b
    .line 614
    :cond_2
    const/4 v1, 0x0

    #@2c
    goto :goto_1
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@4
    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@4
    return-object v0
.end method

.method public getTint()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 660
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    return-object v0
.end method

.method public getTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    return-object v0
.end method

.method public hasAntiAlias()Z
    .locals 1

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasMipMap()Z
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
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
    .line 721
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 723
    sget-object v1, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/BitmapDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 724
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 725
    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@f
    .line 726
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    .line 729
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@15
    .line 720
    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@4
    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 714
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 715
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@13
    move-result v0

    #@14
    .line 714
    :goto_0
    return v0

    #@15
    :cond_1
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 687
    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 688
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@13
    .line 689
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    #@16
    .line 691
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 475
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@4
    .line 477
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@6
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@8
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    #@b
    move-result-object v0

    #@c
    .line 478
    .local v0, "shader":Landroid/graphics/Shader;
    if-eqz v0, :cond_0

    #@e
    .line 479
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->needMirroring()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 480
    iget v1, p1, Landroid/graphics/Rect;->right:I

    #@16
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@18
    sub-int/2addr v1, v2

    #@19
    int-to-float v1, v1

    #@1a
    invoke-direct {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->updateMirrorMatrix(F)V

    #@1d
    .line 481
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@22
    .line 482
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@24
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@26
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@29
    .line 474
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 484
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 485
    iput-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@30
    .line 486
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@32
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@35
    .line 487
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@37
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@39
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@3c
    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    .line 705
    .local v0, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 706
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@c
    iget-object v2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    iget-object v3, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@16
    .line 707
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 709
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 619
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    #@7
    move-result v0

    #@8
    .line 620
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    #@a
    .line 621
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@e
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@11
    .line 622
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@14
    .line 618
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@7
    .line 335
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 333
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 445
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 446
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@a
    .line 447
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@d
    .line 444
    :cond_0
    return-void
.end method

.method protected setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 225
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    .line 226
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    #@d
    .line 227
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@10
    .line 223
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@7
    .line 634
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 632
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    #@7
    .line 363
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 361
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@7
    .line 352
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 350
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iput p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@a
    .line 290
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@d
    .line 291
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@10
    .line 287
    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    #@d
    .line 308
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@10
    .line 305
    :cond_0
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    #@0
    .prologue
    .line 266
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 267
    if-nez p1, :cond_0

    #@6
    const/16 p1, 0xa0

    #@8
    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@a
    .line 268
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 269
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    #@13
    .line 271
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@16
    .line 265
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    #@7
    .line 241
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 254
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    #@5
    .line 253
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Shader$TileMode;

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@7
    .line 400
    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 3
    .param p1, "xmode"    # Landroid/graphics/Shader$TileMode;
    .param p2, "ymode"    # Landroid/graphics/Shader$TileMode;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 433
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    .line 434
    .local v0, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@5
    if-ne v1, p1, :cond_0

    #@7
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@9
    if-eq v1, p2, :cond_1

    #@b
    .line 435
    :cond_0
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@d
    .line 436
    iput-object p2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@f
    .line 437
    iput-boolean v2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    #@11
    .line 438
    iput-boolean v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@13
    .line 439
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@16
    .line 432
    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Shader$TileMode;

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@7
    .line 416
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    .line 645
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 646
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@13
    .line 643
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    .line 652
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@6
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@a
    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@10
    .line 653
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@13
    .line 650
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@7
    .line 676
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 674
    return-void
.end method
