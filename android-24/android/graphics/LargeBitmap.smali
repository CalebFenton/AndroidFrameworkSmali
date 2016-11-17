.class public final Landroid/graphics/LargeBitmap;
.super Ljava/lang/Object;
.source "LargeBitmap.java"


# instance fields
.field private mNativeLargeBitmap:J

.field private mRecycled:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeLbm"    # J

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-wide p1, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    #@5
    .line 40
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    #@8
    .line 38
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    .line 102
    :cond_0
    return-void
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "decodeRegion called on recycled large bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 54
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@8
    if-ltz v0, :cond_0

    #@a
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@c
    if-gez v0, :cond_1

    #@e
    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "rectangle is not inside the image"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 54
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@19
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getWidth()I

    #@1c
    move-result v1

    #@1d
    if-gt v0, v1, :cond_0

    #@1f
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@21
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->getHeight()I

    #@24
    move-result v1

    #@25
    if-gt v0, v1, :cond_0

    #@27
    .line 56
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    #@29
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@2b
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@2d
    .line 57
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@2f
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@31
    sub-int/2addr v4, v5

    #@32
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@34
    iget v6, p1, Landroid/graphics/Rect;->top:I

    #@36
    sub-int/2addr v5, v6

    #@37
    move-object v6, p2

    #@38
    .line 56
    invoke-static/range {v0 .. v6}, Landroid/graphics/LargeBitmap;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/graphics/LargeBitmap;->recycle()V

    #@3
    .line 108
    return-void
.end method

.method public getHeight()I
    .locals 2

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "getHeight called on recycled large bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 69
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeGetHeight(J)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getWidth()I
    .locals 2

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "getWidth called on recycled large bitmap"

    #@3
    invoke-direct {p0, v0}, Landroid/graphics/LargeBitmap;->checkRecycled(Ljava/lang/String;)V

    #@6
    .line 63
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeGetWidth(J)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    #@2
    return v0
.end method

.method public recycle()V
    .locals 2

    #@0
    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 83
    iget-wide v0, p0, Landroid/graphics/LargeBitmap;->mNativeLargeBitmap:J

    #@6
    invoke-static {v0, v1}, Landroid/graphics/LargeBitmap;->nativeClean(J)V

    #@9
    .line 84
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/graphics/LargeBitmap;->mRecycled:Z

    #@c
    .line 81
    :cond_0
    return-void
.end method
