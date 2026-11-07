.class public final Landroid/view/PixelCopy$Request;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PixelCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PixelCopy$Request$Builder;
    }
.end annotation


# instance fields
.field private blacklist mDest:Landroid/graphics/Bitmap;

.field private final blacklist mSource:Landroid/view/Surface;

.field private final blacklist mSourceInsets:Landroid/graphics/Rect;

.field private blacklist mSrcRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDest(Landroid/view/PixelCopy$Request;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Landroid/view/PixelCopy$Request;->mDest:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSrcRect(Landroid/view/PixelCopy$Request;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/view/PixelCopy$Request;->mSrcRect:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "source"    # Landroid/view/Surface;
    .param p2, "sourceInsets"    # Landroid/graphics/Rect;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Landroid/view/PixelCopy$Request;->mSource:Landroid/view/Surface;

    .line 369
    iput-object p2, p0, Landroid/view/PixelCopy$Request;->mSourceInsets:Landroid/graphics/Rect;

    .line 370
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/view/PixelCopy-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/PixelCopy$Request;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic blacklist lambda$request$0(Ljava/util/function/Consumer;)V
    .registers 4
    .param p0, "listener"    # Ljava/util/function/Consumer;

    .line 530
    new-instance v0, Landroid/view/PixelCopy$Result;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/view/PixelCopy$Result;-><init>(ILandroid/graphics/Bitmap;Landroid/view/PixelCopy-IA;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist getDestinationBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/view/PixelCopy$Request;->mDest:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getSourceRect()Landroid/graphics/Rect;
    .registers 2

    .line 521
    iget-object v0, p0, Landroid/view/PixelCopy$Request;->mSrcRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist request(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/PixelCopy$Result;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/PixelCopy$Result;>;"
    iget-object v0, p0, Landroid/view/PixelCopy$Request;->mSource:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_11

    .line 530
    new-instance v0, Landroid/view/PixelCopy$Request$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroid/view/PixelCopy$Request$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 532
    return-void

    .line 534
    :cond_11
    iget-object v0, p0, Landroid/view/PixelCopy$Request;->mSource:Landroid/view/Surface;

    new-instance v1, Landroid/view/PixelCopy$Request$1;

    iget-object v2, p0, Landroid/view/PixelCopy$Request;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/PixelCopy$Request;->mSrcRect:Landroid/graphics/Rect;

    .line 535
    invoke-static {v2, v3}, Landroid/view/PixelCopy;->-$$Nest$smadjustSourceRectForInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Landroid/view/PixelCopy$Request;->mDest:Landroid/graphics/Bitmap;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/PixelCopy$Result;>;"
    .local v5, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v6, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/PixelCopy$Result;>;"
    invoke-direct/range {v1 .. v6}, Landroid/view/PixelCopy$Request$1;-><init>(Landroid/view/PixelCopy$Request;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 534
    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->copySurfaceInto(Landroid/view/Surface;Landroid/graphics/HardwareRenderer$CopyRequest;)V

    .line 542
    return-void
.end method
