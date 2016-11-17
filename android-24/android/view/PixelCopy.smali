.class public final Landroid/view/PixelCopy;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    }
.end annotation


# static fields
.field public static final ERROR_DESTINATION_INVALID:I = 0x5

.field public static final ERROR_SOURCE_INVALID:I = 0x4

.field public static final ERROR_SOURCE_NO_DATA:I = 0x3

.field public static final ERROR_TIMEOUT:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 3
    .param p0, "source"    # Landroid/view/Surface;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 125
    invoke-static {p1}, Landroid/view/PixelCopy;->validateBitmapDest(Landroid/graphics/Bitmap;)V

    #@3
    .line 126
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "Surface isn\'t valid, source.isValid() == false"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 130
    :cond_0
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Bitmap;)I

    #@15
    move-result v0

    #@16
    .line 131
    .local v0, "result":I
    new-instance v1, Landroid/view/PixelCopy$1;

    #@18
    invoke-direct {v1, p2, v0}, Landroid/view/PixelCopy$1;-><init>(Landroid/view/PixelCopy$OnPixelCopyFinishedListener;I)V

    #@1b
    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1e
    .line 124
    return-void
.end method

.method public static request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/SurfaceView;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    #@b
    .line 103
    return-void
.end method

.method private static validateBitmapDest(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 141
    if-nez p0, :cond_0

    #@2
    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Bitmap cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Bitmap is recycled"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 147
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v1, "Bitmap is immutable"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 139
    :cond_2
    return-void
.end method
