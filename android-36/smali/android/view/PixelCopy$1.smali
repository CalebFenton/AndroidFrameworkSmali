.class Landroid/view/PixelCopy$1;
.super Landroid/graphics/HardwareRenderer$CopyRequest;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

.field final synthetic blacklist val$listenerThread:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;)V
    .registers 5
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destinationBitmap"    # Landroid/graphics/Bitmap;

    .line 190
    iput-object p3, p0, Landroid/view/PixelCopy$1;->val$listenerThread:Landroid/os/Handler;

    iput-object p4, p0, Landroid/view/PixelCopy$1;->val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    invoke-direct {p0, p1, p2}, Landroid/graphics/HardwareRenderer$CopyRequest;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCopyFinished$0(Landroid/view/PixelCopy$OnPixelCopyFinishedListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p1, "result"    # I

    .line 193
    invoke-interface {p0, p1}, Landroid/view/PixelCopy$OnPixelCopyFinishedListener;->onPixelCopyFinished(I)V

    return-void
.end method


# virtual methods
.method public blacklist onCopyFinished(I)V
    .registers 5
    .param p1, "result"    # I

    .line 193
    iget-object v0, p0, Landroid/view/PixelCopy$1;->val$listenerThread:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/PixelCopy$1;->val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    new-instance v2, Landroid/view/PixelCopy$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/view/PixelCopy$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/PixelCopy$OnPixelCopyFinishedListener;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method
