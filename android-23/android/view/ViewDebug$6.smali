.class final Landroid/view/ViewDebug$6;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:[Landroid/graphics/Bitmap;

.field final synthetic val$captureView:Landroid/view/View;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$skipChildren:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;Landroid/view/View;Z)V
    .locals 0
    .param p1, "val$latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "val$cache"    # [Landroid/graphics/Bitmap;
    .param p3, "val$captureView"    # Landroid/view/View;
    .param p4, "val$skipChildren"    # Z

    #@0
    .prologue
    .line 777
    iput-object p1, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@2
    iput-object p2, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    #@4
    iput-object p3, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    #@6
    iput-boolean p4, p0, Landroid/view/ViewDebug$6;->val$skipChildren:Z

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 780
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    #@2
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    #@4
    .line 781
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@6
    iget-boolean v4, p0, Landroid/view/ViewDebug$6;->val$skipChildren:Z

    #@8
    const/4 v5, 0x0

    #@9
    .line 780
    invoke-virtual {v2, v3, v5, v4}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 785
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@12
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@15
    .line 778
    :goto_0
    return-void

    #@16
    .line 782
    :catch_0
    move-exception v0

    #@17
    .line 783
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string/jumbo v1, "View"

    #@1a
    const-string/jumbo v2, "Out of memory for bitmap"

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 785
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@22
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@25
    goto :goto_0

    #@26
    .line 784
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    #@27
    .line 785
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@29
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@2c
    .line 784
    throw v1
.end method
