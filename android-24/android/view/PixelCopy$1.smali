.class final Landroid/view/PixelCopy$1;
.super Ljava/lang/Object;
.source "PixelCopy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Landroid/view/PixelCopy$OnPixelCopyFinishedListener;I)V
    .locals 0
    .param p1, "val$listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p2, "val$result"    # I

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Landroid/view/PixelCopy$1;->val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    #@2
    iput p2, p0, Landroid/view/PixelCopy$1;->val$result:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/view/PixelCopy$1;->val$listener:Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    #@2
    iget v1, p0, Landroid/view/PixelCopy$1;->val$result:I

    #@4
    invoke-interface {v0, v1}, Landroid/view/PixelCopy$OnPixelCopyFinishedListener;->onPixelCopyFinished(I)V

    #@7
    .line 133
    return-void
.end method
