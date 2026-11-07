.class Landroid/view/PixelCopy$Request$1;
.super Landroid/graphics/HardwareRenderer$CopyRequest;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PixelCopy$Request;->request(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbackExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Ljava/util/function/Consumer;


# direct methods
.method public static synthetic blacklist $r8$lambda$5DmwqFXzt2CBo7efPY-K2Q7rKyc(Landroid/view/PixelCopy$Request$1;Ljava/util/function/Consumer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/PixelCopy$Request$1;->lambda$onCopyFinished$0(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/PixelCopy$Request;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "this$0"    # Landroid/view/PixelCopy$Request;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "destinationBitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 535
    iput-object p4, p0, Landroid/view/PixelCopy$Request$1;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroid/view/PixelCopy$Request$1;->val$listener:Ljava/util/function/Consumer;

    invoke-direct {p0, p2, p3}, Landroid/graphics/HardwareRenderer$CopyRequest;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCopyFinished$0(Ljava/util/function/Consumer;I)V
    .registers 6
    .param p1, "listener"    # Ljava/util/function/Consumer;
    .param p2, "result"    # I

    .line 538
    new-instance v0, Landroid/view/PixelCopy$Result;

    iget-object v1, p0, Landroid/view/PixelCopy$Request$1;->mDestinationBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/view/PixelCopy$Result;-><init>(ILandroid/graphics/Bitmap;Landroid/view/PixelCopy-IA;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onCopyFinished(I)V
    .registers 5
    .param p1, "result"    # I

    .line 538
    iget-object v0, p0, Landroid/view/PixelCopy$Request$1;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/PixelCopy$Request$1;->val$listener:Ljava/util/function/Consumer;

    new-instance v2, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Landroid/view/PixelCopy$Request$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/PixelCopy$Request$1;Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method
