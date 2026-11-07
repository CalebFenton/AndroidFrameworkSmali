.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapShader$FilterMode;
    }
.end annotation


# static fields
.field public static final whitelist FILTER_MODE_DEFAULT:I = 0x0

.field public static final whitelist FILTER_MODE_LINEAR:I = 0x2

.field public static final whitelist FILTER_MODE_NEAREST:I = 0x1


# instance fields
.field blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mFilterFromPaint:Z

.field private blacklist mFilterMode:I

.field private blacklist mIsDirectSampled:Z

.field private blacklist mMaxAniso:I

.field private blacklist mOverrideGainmap:Landroid/graphics/Gainmap;

.field private blacklist mRequestDirectSampling:Z

.field private blacklist mTileX:I

.field private blacklist mTileY:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Bitmap;II)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # I
    .param p3, "tileY"    # I

    .line 125
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 126
    if-eqz p1, :cond_1c

    .line 129
    const-string v1, "Cannot create BitmapShader for recycled bitmap"

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    .line 132
    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    .line 133
    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 134
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 135
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 136
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 137
    return-void

    .line 127
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .line 122
    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    .line 123
    return-void
.end method

.method private static native blacklist nativeCreate(JJIIIZZJ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .registers 18
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 216
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    const-string v1, "BitmapShader\'s bitmap has been recycled"

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 219
    .local v0, "enableLinearFilter":Z
    :goto_10
    iget v1, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-nez v1, :cond_1c

    .line 220
    move/from16 v1, p3

    iput-boolean v1, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 221
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    move v10, v0

    goto :goto_1f

    .line 219
    :cond_1c
    move/from16 v1, p3

    move v10, v0

    .line 224
    .end local v0    # "enableLinearFilter":Z
    .local v10, "enableLinearFilter":Z
    :goto_1f
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 225
    iput-boolean v2, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 226
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v8, p0, Landroid/graphics/BitmapShader;->mTileY:I

    iget v9, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    iget-boolean v11, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 228
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mOverrideGainmap:Landroid/graphics/Gainmap;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/graphics/BitmapShader;->mOverrideGainmap:Landroid/graphics/Gainmap;

    iget-wide v2, v0, Landroid/graphics/Gainmap;->mNativePtr:J

    goto :goto_3e

    :cond_3c
    const-wide/16 v2, 0x0

    :goto_3e
    move-wide v12, v2

    .line 226
    move-wide v3, p1

    invoke-static/range {v3 .. v13}, Landroid/graphics/BitmapShader;->nativeCreate(JJIIIZZJ)J

    move-result-wide v5

    return-wide v5
.end method

.method public whitelist getFilterMode()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    return v0
.end method

.method public whitelist getMaxAnisotropy()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    return v0
.end method

.method declared-synchronized blacklist getNativeInstanceWithDirectSampling()J
    .registers 3

    monitor-enter p0

    .line 209
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 210
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->getNativeInstance()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-wide v0

    .line 208
    .end local p0    # "this":Landroid/graphics/BitmapShader;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public whitelist setFilterMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 153
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-eq p1, v0, :cond_c

    .line 154
    iput p1, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 156
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 158
    :cond_c
    return-void
.end method

.method public whitelist setMaxAnisotropy(I)V
    .registers 3
    .param p1, "maxAnisotropy"    # I

    .line 174
    iget v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    if-eq v0, p1, :cond_e

    if-lez p1, :cond_e

    .line 175
    iput p1, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 177
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 179
    :cond_e
    return-void
.end method

.method public whitelist setOverrideGainmap(Landroid/graphics/Gainmap;)V
    .registers 4
    .param p1, "overrideGainmap"    # Landroid/graphics/Gainmap;

    .line 189
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->gainmapAnimations()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 191
    if-nez p1, :cond_c

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapShader;->mOverrideGainmap:Landroid/graphics/Gainmap;

    goto :goto_17

    .line 194
    :cond_c
    new-instance v0, Landroid/graphics/Gainmap;

    invoke-virtual {p1}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Gainmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/graphics/BitmapShader;->mOverrideGainmap:Landroid/graphics/Gainmap;

    .line 196
    :goto_17
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 197
    return-void

    .line 189
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist shouldDiscardNativeInstance(Z)Z
    .registers 4
    .param p1, "filterFromPaint"    # Z

    .line 234
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    iget-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    if-eq v0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
