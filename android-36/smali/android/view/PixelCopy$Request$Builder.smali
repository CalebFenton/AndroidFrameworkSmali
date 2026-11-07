.class public final Landroid/view/PixelCopy$Request$Builder;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PixelCopy$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRequest:Landroid/view/PixelCopy$Request;


# direct methods
.method private constructor blacklist <init>(Landroid/view/PixelCopy$Request;)V
    .registers 2
    .param p1, "request"    # Landroid/view/PixelCopy$Request;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    .line 382
    return-void
.end method

.method public static whitelist ofSurface(Landroid/view/Surface;)Landroid/view/PixelCopy$Request$Builder;
    .registers 4
    .param p0, "source"    # Landroid/view/Surface;

    .line 437
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 440
    new-instance v0, Landroid/view/PixelCopy$Request$Builder;

    new-instance v1, Landroid/view/PixelCopy$Request;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy-IA;)V

    invoke-direct {v0, v1}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object v0

    .line 438
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source must not be null & must be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist ofSurface(Landroid/view/SurfaceView;)Landroid/view/PixelCopy$Request$Builder;
    .registers 2
    .param p0, "source"    # Landroid/view/SurfaceView;

    .line 453
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Landroid/view/PixelCopy$Request$Builder;->ofSurface(Landroid/view/Surface;)Landroid/view/PixelCopy$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist ofWindow(Landroid/view/View;)Landroid/view/PixelCopy$Request$Builder;
    .registers 7
    .param p0, "source"    # Landroid/view/View;

    .line 411
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 415
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 416
    .local v0, "insets":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 417
    .local v1, "surface":Landroid/view/Surface;
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 418
    .local v2, "root":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_1d

    .line 419
    iget-object v1, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 420
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 422
    :cond_1d
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 426
    new-instance v3, Landroid/view/PixelCopy$Request$Builder;

    new-instance v4, Landroid/view/PixelCopy$Request;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v5}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy-IA;)V

    invoke-direct {v3, v4}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object v3

    .line 423
    :cond_31
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Window doesn\'t have a backing surface!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View must not be null & must be attached to window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist ofWindow(Landroid/view/Window;)Landroid/view/PixelCopy$Request$Builder;
    .registers 6
    .param p0, "source"    # Landroid/view/Window;

    .line 391
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 392
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-static {p0, v0}, Landroid/view/PixelCopy;->-$$Nest$smsourceForWindow(Landroid/view/Window;Landroid/graphics/Rect;)Landroid/view/Surface;

    move-result-object v1

    .line 393
    .local v1, "surface":Landroid/view/Surface;
    new-instance v2, Landroid/view/PixelCopy$Request$Builder;

    new-instance v3, Landroid/view/PixelCopy$Request;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy-IA;)V

    invoke-direct {v2, v3}, Landroid/view/PixelCopy$Request$Builder;-><init>(Landroid/view/PixelCopy$Request;)V

    return-object v2
.end method

.method private blacklist requireNotBuilt()V
    .registers 3

    .line 457
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    if-eqz v0, :cond_5

    .line 460
    return-void

    .line 458
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() already called on this builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/PixelCopy$Request;
    .registers 3

    .line 503
    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    .line 504
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    .line 505
    .local v0, "ret":Landroid/view/PixelCopy$Request;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    .line 506
    return-object v0
.end method

.method public whitelist setDestinationBitmap(Landroid/graphics/Bitmap;)Landroid/view/PixelCopy$Request$Builder;
    .registers 3
    .param p1, "destination"    # Landroid/graphics/Bitmap;

    .line 491
    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    .line 492
    if-eqz p1, :cond_8

    .line 493
    invoke-static {p1}, Landroid/view/PixelCopy;->-$$Nest$smvalidateBitmapDest(Landroid/graphics/Bitmap;)V

    .line 495
    :cond_8
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    invoke-static {v0, p1}, Landroid/view/PixelCopy$Request;->-$$Nest$fputmDest(Landroid/view/PixelCopy$Request;Landroid/graphics/Bitmap;)V

    .line 496
    return-object p0
.end method

.method public whitelist setSourceRect(Landroid/graphics/Rect;)Landroid/view/PixelCopy$Request$Builder;
    .registers 3
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .line 473
    invoke-direct {p0}, Landroid/view/PixelCopy$Request$Builder;->requireNotBuilt()V

    .line 474
    iget-object v0, p0, Landroid/view/PixelCopy$Request$Builder;->mRequest:Landroid/view/PixelCopy$Request;

    invoke-static {v0, p1}, Landroid/view/PixelCopy$Request;->-$$Nest$fputmSrcRect(Landroid/view/PixelCopy$Request;Landroid/graphics/Rect;)V

    .line 475
    return-object p0
.end method
