.class public final Landroid/view/PixelCopy;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PixelCopy$OnPixelCopyFinishedListener;,
        Landroid/view/PixelCopy$Request;,
        Landroid/view/PixelCopy$Result;,
        Landroid/view/PixelCopy$CopyResultStatus;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_DESTINATION_INVALID:I = 0x5

.field public static final whitelist ERROR_SOURCE_INVALID:I = 0x4

.field public static final whitelist ERROR_SOURCE_NO_DATA:I = 0x3

.field public static final whitelist ERROR_TIMEOUT:I = 0x2

.field public static final whitelist ERROR_UNKNOWN:I = 0x1

.field public static final whitelist SUCCESS:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smadjustSourceRectForInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    invoke-static {p0, p1}, Landroid/view/PixelCopy;->adjustSourceRectForInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsourceForWindow(Landroid/view/Window;Landroid/graphics/Rect;)Landroid/view/Surface;
    .registers 2

    invoke-static {p0, p1}, Landroid/view/PixelCopy;->sourceForWindow(Landroid/view/Window;Landroid/graphics/Rect;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateBitmapDest(Landroid/graphics/Bitmap;)V
    .registers 1

    invoke-static {p0}, Landroid/view/PixelCopy;->validateBitmapDest(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist adjustSourceRectForInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "insets"    # Landroid/graphics/Rect;
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .line 303
    if-nez p1, :cond_3

    .line 304
    return-object p0

    .line 306
    :cond_3
    if-eqz p0, :cond_c

    .line 307
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 309
    :cond_c
    return-object p1
.end method

.method public static whitelist request(Landroid/view/PixelCopy$Request;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0, "request"    # Landroid/view/PixelCopy$Request;
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/PixelCopy$Request;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/PixelCopy$Result;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/PixelCopy$Result;>;"
    invoke-virtual {p0, p1, p2}, Landroid/view/PixelCopy$Request;->request(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 554
    return-void
.end method

.method public static whitelist request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .registers 5
    .param p0, "source"    # Landroid/view/Surface;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 159
    return-void
.end method

.method public static whitelist request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .registers 7
    .param p0, "source"    # Landroid/view/Surface;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .line 183
    invoke-static {p2}, Landroid/view/PixelCopy;->validateBitmapDest(Landroid/graphics/Bitmap;)V

    .line 184
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 187
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1b

    .line 188
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sourceRect is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1b
    :goto_1b
    new-instance v0, Landroid/view/PixelCopy$1;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/view/PixelCopy$1;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;)V

    invoke-static {p0, v0}, Landroid/graphics/HardwareRenderer;->copySurfaceInto(Landroid/view/Surface;Landroid/graphics/HardwareRenderer$CopyRequest;)V

    .line 196
    return-void

    .line 185
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface isn\'t valid, source.isValid() == false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .registers 5
    .param p0, "source"    # Landroid/view/SurfaceView;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .line 111
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 112
    return-void
.end method

.method public static whitelist request(Landroid/view/SurfaceView;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .registers 6
    .param p0, "source"    # Landroid/view/SurfaceView;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .line 136
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 138
    return-void
.end method

.method public static whitelist request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .registers 5
    .param p0, "source"    # Landroid/view/Window;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .line 225
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 226
    return-void
.end method

.method public static whitelist request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .registers 8
    .param p0, "source"    # Landroid/view/Window;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .line 259
    invoke-static {p2}, Landroid/view/PixelCopy;->validateBitmapDest(Landroid/graphics/Bitmap;)V

    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-static {p0, v0}, Landroid/view/PixelCopy;->sourceForWindow(Landroid/view/Window;Landroid/graphics/Rect;)Landroid/view/Surface;

    move-result-object v1

    .line 262
    .local v1, "surface":Landroid/view/Surface;
    invoke-static {v0, p1}, Landroid/view/PixelCopy;->adjustSourceRectForInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2, p2, p3, p4}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 264
    return-void
.end method

.method private static blacklist sourceForWindow(Landroid/view/Window;Landroid/graphics/Rect;)Landroid/view/Surface;
    .registers 10
    .param p0, "source"    # Landroid/view/Window;
    .param p1, "outInsets"    # Landroid/graphics/Rect;

    .line 280
    if-eqz p0, :cond_43

    .line 283
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "surface":Landroid/view/Surface;
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 289
    .local v1, "root":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2a

    .line 290
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 291
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 292
    .local v2, "surfaceInsets":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/view/ViewRootImpl;->mWidth:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewRootImpl;->mHeight:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 295
    .end local v2    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_2a
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 299
    return-object v0

    .line 296
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Window doesn\'t have a backing surface!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    .end local v0    # "surface":Landroid/view/Surface;
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only able to copy windows with decor views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o validateBitmapDest(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 268
    if-eqz p0, :cond_1f

    .line 271
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 274
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 277
    return-void

    .line 275
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
