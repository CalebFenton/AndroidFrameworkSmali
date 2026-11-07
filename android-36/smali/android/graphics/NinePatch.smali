.class public Landroid/graphics/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/NinePatch$InsetStruct;
    }
.end annotation


# instance fields
.field private final greylist mBitmap:Landroid/graphics/Bitmap;

.field public greylist mNativeChunk:J

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mSrcName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Bitmap;[B)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "srcName"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    .line 119
    invoke-static {p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk([B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    .line 120
    return-void
.end method

.method public static native whitelist isNinePatchChunk([B)Z
.end method

.method private static native greylist-max-o nativeFinalize(J)V
.end method

.method private static native blacklist nativeGetTransparentRegion(JJLandroid/graphics/Rect;)J
.end method

.method private static native greylist-max-o validateNinePatchChunk([B)J
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;

    .line 191
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 203
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 204
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;

    .line 181
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 127
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    invoke-static {v0, v1}, Landroid/graphics/NinePatch;->nativeFinalize(J)V

    .line 128
    iput-wide v2, p0, Landroid/graphics/NinePatch;->mNativeChunk:J
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    .line 131
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    throw v0
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getDensity()I
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPaint()Landroid/graphics/Paint;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final whitelist getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 250
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(JJLandroid/graphics/Rect;)J

    move-result-wide v0

    .line 252
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_18

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return-object v2
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final whitelist hasAlpha()Z
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public whitelist setPaint(Landroid/graphics/Paint;)V
    .registers 2
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 164
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    .line 165
    return-void
.end method
