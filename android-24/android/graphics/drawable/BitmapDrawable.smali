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
    .line 112
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 86
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@a
    .line 91
    const/16 v0, 0xa0

    #@c
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@e
    .line 93
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@11
    .line 101
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 113
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
    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 86
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@a
    .line 91
    const/16 v0, 0xa0

    #@c
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@e
    .line 93
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@11
    .line 101
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 126
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
    .line 127
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@21
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@23
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@25
    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@5
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@8
    .line 146
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@a
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@c
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@e
    .line 144
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
    .line 192
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
    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@f
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@11
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@13
    .line 194
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@15
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@17
    if-nez v0, :cond_0

    #@19
    .line 195
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
    .line 191
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
    .line 167
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
    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@f
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@11
    iput v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@13
    .line 169
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@15
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@17
    if-nez v0, :cond_0

    #@19
    .line 170
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
    .line 166
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
    .line 137
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    #@9
    .line 136
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 972
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    .line 86
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@a
    .line 91
    const/16 v0, 0xa0

    #@c
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@e
    .line 93
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@11
    .line 101
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@13
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@15
    .line 973
    iput-object p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@17
    .line 975
    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@1a
    .line 972
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
    .line 181
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
    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@f
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 183
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
    .line 180
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
    .line 156
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
    .line 157
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@f
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 158
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
    .line 155
    :cond_0
    return-void
.end method

.method private computeBitmapSize()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 214
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    iget-object v0, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    .line 215
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@7
    .line 216
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@9
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    #@f
    .line 217
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    #@17
    .line 213
    :goto_0
    return-void

    #@18
    .line 219
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
    .line 463
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
    .line 855
    packed-switch p0, :pswitch_data_0

    #@3
    .line 863
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 857
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@7
    return-object v0

    #@8
    .line 859
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    #@a
    return-object v0

    #@b
    .line 861
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    #@d
    return-object v0

    #@e
    .line 855
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
    .line 577
    iget-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 578
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
    .line 579
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    #@13
    move-result-object v3

    #@14
    .line 580
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getLayoutDirection()I

    #@17
    move-result v5

    #@18
    .line 581
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@1a
    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@1c
    iget v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapWidth:I

    #@1e
    iget v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    #@20
    .line 582
    iget-object v4, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@22
    .line 581
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@25
    .line 584
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@27
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@29
    iget v1, v3, Landroid/graphics/Rect;->left:I

    #@2b
    sub-int v7, v0, v1

    #@2d
    .line 585
    .local v7, "left":I
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@2f
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@31
    iget v1, v3, Landroid/graphics/Rect;->top:I

    #@33
    sub-int v9, v0, v1

    #@35
    .line 586
    .local v9, "top":I
    iget v0, v3, Landroid/graphics/Rect;->right:I

    #@37
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@39
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@3b
    sub-int v8, v0, v1

    #@3d
    .line 587
    .local v8, "right":I
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    #@3f
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@41
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@43
    sub-int v6, v0, v1

    #@45
    .line 588
    .local v6, "bottom":I
    invoke-static {v7, v9, v8, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@4b
    .line 594
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
    .line 576
    return-void

    #@4f
    .line 590
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@51
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@54
    .line 591
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@56
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@58
    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 984
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@4
    invoke-static {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@a
    .line 985
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@e
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@10
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@12
    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@14
    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@1a
    .line 986
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    #@1d
    .line 983
    return-void
.end method

.method private updateMirrorMatrix(F)V
    .locals 3
    .param p1, "dx"    # F

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 468
    new-instance v0, Landroid/graphics/Matrix;

    #@6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@b
    .line 470
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@11
    .line 471
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@13
    const/high16 v1, -0x40800000    # -1.0f

    #@15
    const/high16 v2, 0x3f800000    # 1.0f

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    #@1a
    .line 466
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 16
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v5

    #@4
    .line 759
    .local v5, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@6
    iget-object v7, v0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    .line 762
    .local v7, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@a
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@d
    move-result v14

    #@e
    or-int/2addr v13, v14

    #@f
    iput v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mChangingConfigurations:I

    #@11
    .line 765
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@14
    move-result-object v13

    #@15
    iput-object v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@17
    .line 767
    const/4 v13, 0x1

    #@18
    const/4 v14, 0x0

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1e
    move-result v6

    #@1f
    .line 768
    .local v6, "srcResId":I
    if-eqz v6, :cond_1

    #@21
    .line 769
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    #@24
    move-result-object v1

    #@25
    .line 770
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    #@27
    .line 771
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    #@29
    new-instance v14, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@31
    move-result-object v15

    #@32
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v14

    #@36
    .line 772
    const-string/jumbo v15, ": <bitmap> requires a valid \'src\' attribute"

    #@39
    .line 771
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v14

    #@3d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v14

    #@41
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@44
    throw v13

    #@45
    .line 775
    :cond_0
    iput-object v1, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@47
    .line 778
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@4a
    move-result-object v13

    #@4b
    iget v13, v13, Landroid/util/DisplayMetrics;->densityDpi:I

    #@4d
    iput v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@4f
    .line 780
    iget-object v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@51
    if-eqz v13, :cond_7

    #@53
    iget-object v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@55
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->hasMipMap()Z

    #@58
    move-result v2

    #@59
    .line 781
    .local v2, "defMipMap":Z
    :goto_0
    const/16 v13, 0x8

    #@5b
    move-object/from16 v0, p1

    #@5d
    invoke-virtual {v0, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@60
    move-result v13

    #@61
    move-object/from16 v0, p0

    #@63
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;->setMipMap(Z)V

    #@66
    .line 784
    iget-boolean v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@68
    const/16 v14, 0x9

    #@6a
    .line 783
    move-object/from16 v0, p1

    #@6c
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6f
    move-result v13

    #@70
    iput-boolean v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@72
    .line 785
    iget v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@74
    const/4 v14, 0x7

    #@75
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@7a
    move-result v13

    #@7b
    iput v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@7d
    .line 787
    const/16 v13, 0xa

    #@7f
    const/4 v14, -0x1

    #@80
    move-object/from16 v0, p1

    #@82
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@85
    move-result v12

    #@86
    .line 788
    .local v12, "tintMode":I
    const/4 v13, -0x1

    #@87
    if-eq v12, v13, :cond_2

    #@89
    .line 789
    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@8b
    invoke-static {v12, v13}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@8e
    move-result-object v13

    #@8f
    iput-object v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@91
    .line 792
    :cond_2
    const/4 v13, 0x5

    #@92
    move-object/from16 v0, p1

    #@94
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@97
    move-result-object v11

    #@98
    .line 793
    .local v11, "tint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_3

    #@9a
    .line 794
    iput-object v11, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@9c
    .line 797
    :cond_3
    move-object/from16 v0, p0

    #@9e
    iget-object v13, v0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@a0
    iget-object v4, v13, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@a2
    .line 799
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4}, Landroid/graphics/Paint;->isAntiAlias()Z

    #@a5
    move-result v13

    #@a6
    const/4 v14, 0x2

    #@a7
    .line 798
    move-object/from16 v0, p1

    #@a9
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ac
    move-result v13

    #@ad
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@b0
    .line 801
    invoke-virtual {v4}, Landroid/graphics/Paint;->isFilterBitmap()Z

    #@b3
    move-result v13

    #@b4
    const/4 v14, 0x3

    #@b5
    .line 800
    move-object/from16 v0, p1

    #@b7
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ba
    move-result v13

    #@bb
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@be
    .line 802
    invoke-virtual {v4}, Landroid/graphics/Paint;->isDither()Z

    #@c1
    move-result v13

    #@c2
    const/4 v14, 0x4

    #@c3
    move-object/from16 v0, p1

    #@c5
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c8
    move-result v13

    #@c9
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setDither(Z)V

    #@cc
    .line 804
    iget v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@ce
    const/4 v14, 0x0

    #@cf
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    #@d4
    move-result v13

    #@d5
    move-object/from16 v0, p0

    #@d7
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    #@da
    .line 806
    const/4 v13, 0x6

    #@db
    const/4 v14, -0x2

    #@dc
    move-object/from16 v0, p1

    #@de
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e1
    move-result v8

    #@e2
    .line 807
    .local v8, "tileMode":I
    const/4 v13, -0x2

    #@e3
    if-eq v8, v13, :cond_4

    #@e5
    .line 808
    invoke-static {v8}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@e8
    move-result-object v3

    #@e9
    .line 809
    .local v3, "mode":Landroid/graphics/Shader$TileMode;
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@ee
    .line 812
    .end local v3    # "mode":Landroid/graphics/Shader$TileMode;
    :cond_4
    const/16 v13, 0xb

    #@f0
    const/4 v14, -0x2

    #@f1
    move-object/from16 v0, p1

    #@f3
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f6
    move-result v9

    #@f7
    .line 813
    .local v9, "tileModeX":I
    const/4 v13, -0x2

    #@f8
    if-eq v9, v13, :cond_5

    #@fa
    .line 814
    invoke-static {v9}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@fd
    move-result-object v13

    #@fe
    move-object/from16 v0, p0

    #@100
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    #@103
    .line 817
    :cond_5
    const/16 v13, 0xc

    #@105
    const/4 v14, -0x2

    #@106
    move-object/from16 v0, p1

    #@108
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@10b
    move-result v10

    #@10c
    .line 818
    .local v10, "tileModeY":I
    const/4 v13, -0x2

    #@10d
    if-eq v10, v13, :cond_6

    #@10f
    .line 819
    invoke-static {v10}, Landroid/graphics/drawable/BitmapDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    #@112
    move-result-object v13

    #@113
    move-object/from16 v0, p0

    #@115
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    #@118
    .line 822
    :cond_6
    const/4 v13, 0x0

    #@119
    invoke-static {v5, v13}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@11c
    move-result v13

    #@11d
    iput v13, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTargetDensity:I

    #@11f
    .line 757
    return-void

    #@120
    .line 780
    .end local v2    # "defMipMap":Z
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v8    # "tileMode":I
    .end local v9    # "tileModeX":I
    .end local v10    # "tileModeY":I
    .end local v11    # "tint":Landroid/content/res/ColorStateList;
    .end local v12    # "tintMode":I
    :cond_7
    const/4 v2, 0x0

    #@121
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
    .line 746
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    .line 747
    .local v0, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    if-nez v1, :cond_1

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 748
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@c
    const/4 v2, 0x1

    #@d
    aget v1, v1, v2

    #@f
    if-nez v1, :cond_1

    #@11
    .line 749
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
    .line 750
    const-string/jumbo v3, ": <bitmap> requires a valid \'src\' attribute"

    #@23
    .line 749
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
    .line 744
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 827
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 829
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@5
    .line 830
    .local v2, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    if-nez v2, :cond_0

    #@7
    .line 831
    return-void

    #@8
    .line 834
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 835
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mThemeAttrs:[I

    #@e
    sget-object v4, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    #@10
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 837
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 841
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 846
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
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
    .line 847
    iget-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@28
    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@2e
    .line 851
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v3

    #@32
    invoke-direct {p0, v3}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@35
    .line 826
    return-void

    #@36
    .line 838
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@37
    .line 839
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/BitmapDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 841
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3d
    goto :goto_0

    #@3e
    .line 840
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@3f
    .line 841
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@42
    .line 840
    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 869
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
    .line 705
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 706
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    #@6
    .line 704
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
    .line 496
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@6
    iget-object v0, v10, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@8
    .line 497
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    #@a
    .line 498
    return-void

    #@b
    .line 501
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@d
    .line 502
    .local v7, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v4, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@f
    .line 503
    .local v4, "paint":Landroid/graphics/Paint;
    iget-boolean v10, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    #@11
    if-eqz v10, :cond_1

    #@13
    .line 504
    iget-object v8, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@15
    .line 505
    .local v8, "tmx":Landroid/graphics/Shader$TileMode;
    iget-object v9, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@17
    .line 506
    .local v9, "tmy":Landroid/graphics/Shader$TileMode;
    if-nez v8, :cond_6

    #@19
    if-nez v9, :cond_6

    #@1b
    .line 507
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@1e
    .line 514
    .end local v8    # "tmx":Landroid/graphics/Shader$TileMode;
    .end local v9    # "tmy":Landroid/graphics/Shader$TileMode;
    :goto_0
    iput-boolean v11, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    #@20
    .line 518
    :cond_1
    iget v10, v7, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBaseAlpha:F

    #@22
    cmpl-float v10, v10, v13

    #@24
    if-eqz v10, :cond_9

    #@26
    .line 519
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    #@29
    move-result-object v3

    #@2a
    .line 520
    .local v3, "p":Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    #@2d
    move-result v5

    #@2e
    .line 521
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
    .line 527
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
    .line 528
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@45
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@48
    .line 529
    const/4 v1, 0x1

    #@49
    .line 534
    .local v1, "clearColorFilter":Z
    :goto_2
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    #@4c
    .line 535
    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    #@4f
    move-result-object v6

    #@50
    .line 536
    .local v6, "shader":Landroid/graphics/Shader;
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->needMirroring()Z

    #@53
    move-result v2

    #@54
    .line 537
    .local v2, "needMirroring":Z
    if-nez v6, :cond_b

    #@56
    .line 538
    if-eqz v2, :cond_2

    #@58
    .line 539
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@5b
    .line 541
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
    .line 542
    const/high16 v10, -0x40800000    # -1.0f

    #@6b
    invoke-virtual {p1, v10, v13}, Landroid/graphics/Canvas;->scale(FF)V

    #@6e
    .line 545
    :cond_2
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@70
    invoke-virtual {p1, v0, v12, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@73
    .line 547
    if-eqz v2, :cond_3

    #@75
    .line 548
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@78
    .line 567
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    #@7a
    .line 568
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@7d
    .line 571
    :cond_4
    if-ltz v5, :cond_5

    #@7f
    .line 572
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    #@82
    .line 495
    :cond_5
    return-void

    #@83
    .line 509
    .end local v1    # "clearColorFilter":Z
    .end local v2    # "needMirroring":Z
    .end local v5    # "restoreAlpha":I
    .end local v6    # "shader":Landroid/graphics/Shader;
    .restart local v8    # "tmx":Landroid/graphics/Shader$TileMode;
    .restart local v9    # "tmy":Landroid/graphics/Shader$TileMode;
    :cond_6
    new-instance v10, Landroid/graphics/BitmapShader;

    #@85
    .line 510
    if-nez v8, :cond_7

    #@87
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@89
    .line 511
    .end local v8    # "tmx":Landroid/graphics/Shader$TileMode;
    :cond_7
    if-nez v9, :cond_8

    #@8b
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@8d
    .line 509
    .end local v9    # "tmy":Landroid/graphics/Shader$TileMode;
    :cond_8
    invoke-direct {v10, v0, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@90
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@93
    goto :goto_0

    #@94
    .line 523
    :cond_9
    const/4 v5, -0x1

    #@95
    .restart local v5    # "restoreAlpha":I
    goto :goto_1

    #@96
    .line 531
    :cond_a
    const/4 v1, 0x0

    #@97
    .restart local v1    # "clearColorFilter":Z
    goto :goto_2

    #@98
    .line 551
    .restart local v2    # "needMirroring":Z
    .restart local v6    # "shader":Landroid/graphics/Shader;
    :cond_b
    if-eqz v2, :cond_d

    #@9a
    .line 553
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
    .line 554
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@a9
    invoke-virtual {v6, v10}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@ac
    .line 555
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@af
    .line 564
    :cond_c
    :goto_4
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@b1
    invoke-virtual {p1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@b4
    goto :goto_3

    #@b5
    .line 557
    :cond_d
    iget-object v10, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@b7
    if-eqz v10, :cond_c

    #@b9
    .line 558
    iput-object v12, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@bb
    .line 559
    sget-object v10, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@bd
    invoke-virtual {v6, v10}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@c0
    .line 560
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@c3
    goto :goto_4
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 629
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
    .line 210
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
    .line 459
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
    .line 640
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
    .line 895
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
    .line 896
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@d
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 281
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
    .line 879
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapHeight:I

    #@2
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 874
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
    .line 884
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    iget v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@5
    const/16 v3, 0x77

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 885
    return v1

    #@a
    .line 888
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v0, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@e
    .line 889
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
    .line 890
    :cond_2
    const/4 v1, -0x1

    #@24
    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    #@3
    .line 603
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    #@5
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 608
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    #@4
    .line 609
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    #@6
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    #@9
    .line 613
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@b
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 614
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@11
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@13
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 615
    .local v0, "opaqueOverShape":Z
    :cond_0
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
    .line 607
    return-void

    #@27
    .line 614
    .end local v0    # "opaqueOverShape":Z
    :cond_1
    const/4 v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 615
    .restart local v0    # "opaqueOverShape":Z
    :cond_2
    const/4 v1, 0x0

    #@2a
    goto :goto_1
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    #@0
    .prologue
    .line 203
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
    .line 375
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
    .line 386
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
    .line 667
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
    .line 674
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
    .line 347
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
    .line 323
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
    .line 728
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 730
    sget-object v1, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/BitmapDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 731
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 732
    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@f
    .line 733
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    .line 736
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@15
    .line 727
    return-void
.end method

.method public final isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 454
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
    .line 358
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
    .line 721
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
    .line 722
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@13
    move-result v0

    #@14
    .line 721
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
    .line 694
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
    .line 695
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable$BitmapState;-><init>(Landroid/graphics/drawable/BitmapDrawable$BitmapState;)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@13
    .line 696
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mMutated:Z

    #@16
    .line 698
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
    .line 476
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@4
    .line 478
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@6
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@8
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    #@b
    move-result-object v0

    #@c
    .line 479
    .local v0, "shader":Landroid/graphics/Shader;
    if-eqz v0, :cond_0

    #@e
    .line 480
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->needMirroring()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 481
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
    .line 482
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@22
    .line 483
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@24
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@26
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@29
    .line 475
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 485
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 486
    iput-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    #@30
    .line 487
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@32
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    #@35
    .line 488
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
    .line 711
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    .line 712
    .local v0, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 713
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
    .line 714
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 716
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
    .line 620
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    #@7
    move-result v0

    #@8
    .line 621
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    #@a
    .line 622
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v1, v1, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@e
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@11
    .line 623
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@14
    .line 619
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@7
    .line 336
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 334
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 447
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mAutoMirrored:Z

    #@a
    .line 448
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@d
    .line 445
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 226
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    .line 227
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    #@d
    .line 228
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@10
    .line 224
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@7
    .line 635
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 633
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    #@7
    .line 364
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 362
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@7
    .line 353
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 351
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iput p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mGravity:I

    #@a
    .line 291
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@d
    .line 292
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@10
    .line 288
    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 308
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    #@d
    .line 309
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@10
    .line 306
    :cond_0
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    #@0
    .prologue
    .line 267
    iget v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 268
    if-nez p1, :cond_0

    #@6
    const/16 p1, 0xa0

    #@8
    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTargetDensity:I

    #@a
    .line 269
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 270
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;->computeBitmapSize()V

    #@13
    .line 272
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@16
    .line 266
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    #@7
    .line 242
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    #@0
    .prologue
    .line 255
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    #@5
    .line 254
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Shader$TileMode;

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@7
    .line 401
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
    .line 434
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@3
    .line 435
    .local v0, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@5
    if-ne v1, p1, :cond_0

    #@7
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@9
    if-eq v1, p2, :cond_1

    #@b
    .line 436
    :cond_0
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@d
    .line 437
    iput-object p2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    #@f
    .line 438
    iput-boolean v2, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mRebuildShader:Z

    #@11
    .line 439
    iput-boolean v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mDstRectAndInsetsDirty:Z

    #@13
    .line 440
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@16
    .line 433
    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Shader$TileMode;

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@7
    .line 417
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 645
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    .line 646
    .local v0, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eq v1, p1, :cond_0

    #@6
    .line 647
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    .line 648
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@a
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e
    invoke-virtual {p0, v1, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@14
    .line 649
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@17
    .line 644
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    .line 656
    .local v0, "state":Landroid/graphics/drawable/BitmapDrawable$BitmapState;
    iget-object v1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    if-eq v1, p1, :cond_0

    #@6
    .line 657
    iput-object p1, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    .line 658
    iget-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@a
    iget-object v2, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@c
    iget-object v2, v2, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mTint:Landroid/content/res/ColorStateList;

    #@e
    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/graphics/drawable/BitmapDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@14
    .line 659
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@17
    .line 654
    :cond_0
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Landroid/graphics/drawable/BitmapDrawable;->mBitmapState:Landroid/graphics/drawable/BitmapDrawable$BitmapState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/BitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@7
    .line 683
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    #@a
    .line 681
    return-void
.end method
