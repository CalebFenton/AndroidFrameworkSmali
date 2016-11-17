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

.field public mNativeChunk:J

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[B)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    #@4
    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    .line 113
    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    #@7
    .line 114
    invoke-static {p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk([B)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@d
    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "patch"    # Landroid/graphics/NinePatch;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    iget-object v0, p1, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@5
    iput-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@7
    .line 122
    iget-object v0, p1, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    #@b
    .line 123
    iget-object v0, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 124
    new-instance v0, Landroid/graphics/Paint;

    #@11
    iget-object v1, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@13
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    #@16
    iput-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@18
    .line 128
    :cond_0
    iget-wide v0, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@1a
    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@1c
    .line 120
    return-void
.end method

.method public static native isNinePatchChunk([B)Z
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
    .line 200
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@5
    .line 199
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 212
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@3
    .line 211
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@5
    .line 189
    return-void
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
    const-wide/16 v2, 0x0

    #@2
    .line 134
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 136
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@a
    invoke-static {v0, v1}, Landroid/graphics/NinePatch;->nativeFinalize(J)V

    #@d
    .line 137
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 140
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 132
    return-void

    #@15
    .line 139
    :catchall_0
    move-exception v0

    #@16
    .line 140
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@19
    .line 139
    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getDensity()I
    .locals 1

    #@0
    .prologue
    .line 220
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
    .line 236
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
    .line 149
    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method public final getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 259
    iget-object v2, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    #@2
    iget-wide v4, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    #@4
    invoke-static {v2, v4, v5, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(Landroid/graphics/Bitmap;JLandroid/graphics/Rect;)J

    #@7
    move-result-wide v0

    #@8
    .line 260
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
    .line 228
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
    .line 245
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
    .line 173
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    #@2
    .line 172
    return-void
.end method
