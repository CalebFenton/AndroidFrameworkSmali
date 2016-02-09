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
.field private final mBitmap:Landroid/graphics/Bitmap;

.field public final mNativeChunk:J

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[B)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    #@4
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    .line 100
    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    #@7
    .line 101
    invoke-static {p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk([B)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@d
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "patch"    # Landroid/graphics/NinePatch;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    iget-object v0, p1, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    iput-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@7
    .line 109
    iget-object v0, p1, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    #@b
    .line 110
    iget-object v0, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 111
    new-instance v0, Landroid/graphics/Paint;

    #@11
    iget-object v1, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@13
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@16
    iput-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@18
    .line 115
    :cond_0
    iget-wide v0, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@1a
    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@1c
    .line 107
    return-void
.end method

.method public static native isNinePatchChunk([B)Z
.end method

.method private static native nativeDraw(JLandroid/graphics/Rect;Landroid/graphics/Bitmap;JJII)V
.end method

.method private static native nativeDraw(JLandroid/graphics/RectF;Landroid/graphics/Bitmap;JJII)V
.end method

.method private static native nativeFinalize(J)V
.end method

.method private static native nativeGetTransparentRegion(Landroid/graphics/Bitmap;JLandroid/graphics/Rect;)J
.end method

.method private static native validateNinePatchChunk([B)J
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@5
    .line 185
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 198
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@3
    .line 197
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@5
    .line 175
    return-void
.end method

.method drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    #@3
    move-result-wide v0

    #@4
    iget-object v3, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@6
    iget-wide v4, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@8
    .line 208
    if-eqz p3, :cond_0

    #@a
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@d
    move-result-wide v6

    #@e
    :goto_0
    iget v8, p1, Landroid/graphics/Canvas;->mDensity:I

    #@10
    iget-object v2, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@12
    iget v9, v2, Landroid/graphics/Bitmap;->mDensity:I

    #@14
    move-object v2, p2

    #@15
    .line 207
    invoke-static/range {v0 .. v9}, Landroid/graphics/NinePatch;->nativeDraw(JLandroid/graphics/Rect;Landroid/graphics/Bitmap;JJII)V

    #@18
    .line 206
    return-void

    #@19
    .line 208
    :cond_0
    const-wide/16 v6, 0x0

    #@1b
    goto :goto_0
.end method

.method drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    #@3
    move-result-wide v0

    #@4
    iget-object v3, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@6
    iget-wide v4, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@8
    .line 203
    if-eqz p3, :cond_0

    #@a
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    #@d
    move-result-wide v6

    #@e
    :goto_0
    iget v8, p1, Landroid/graphics/Canvas;->mDensity:I

    #@10
    iget-object v2, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@12
    iget v9, v2, Landroid/graphics/Bitmap;->mDensity:I

    #@14
    move-object v2, p2

    #@15
    .line 202
    invoke-static/range {v0 .. v9}, Landroid/graphics/NinePatch;->nativeDraw(JLandroid/graphics/RectF;Landroid/graphics/Bitmap;JJII)V

    #@18
    .line 201
    return-void

    #@19
    .line 203
    :cond_0
    const-wide/16 v6, 0x0

    #@1b
    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 123
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@a
    invoke-static {v0, v1}, Landroid/graphics/NinePatch;->nativeFinalize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 126
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 119
    return-void

    #@11
    .line 125
    :catchall_0
    move-exception v0

    #@12
    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@15
    .line 125
    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getDensity()I
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    #@4
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method public final getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 255
    iget-object v2, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    iget-wide v4, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@4
    invoke-static {v2, v4, v5, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(Landroid/graphics/Bitmap;JLandroid/graphics/Rect;)J

    #@7
    move-result-wide v0

    #@8
    .line 256
    .local v0, "r":J
    const-wide/16 v2, 0x0

    #@a
    cmp-long v2, v0, v2

    #@c
    if-eqz v2, :cond_0

    #@e
    new-instance v2, Landroid/graphics/Region;

    #@10
    invoke-direct {v2, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    #@13
    :goto_0
    return-object v2

    #@14
    :cond_0
    const/4 v2, 0x0

    #@15
    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final hasAlpha()Z
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 159
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@2
    .line 158
    return-void
.end method
