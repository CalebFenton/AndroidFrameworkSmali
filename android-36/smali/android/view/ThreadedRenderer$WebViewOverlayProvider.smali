.class final Landroid/view/ThreadedRenderer$WebViewOverlayProvider;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;
.implements Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewOverlayProvider"
.end annotation


# static fields
.field private static final blacklist sOverlaysAreEnabled:Z


# instance fields
.field private blacklist mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mHasWebViewOverlays:Z

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Landroid/view/ThreadedRenderer$WebViewOverlayProvider;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 270
    # invokes: Landroid/view/ThreadedRenderer;->isWebViewOverlaysEnabled()Z
    invoke-static {}, Landroid/view/ThreadedRenderer;->access$000()Z

    move-result v0

    sput-boolean v0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->sOverlaysAreEnabled:Z

    .line 269
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ThreadedRenderer-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onMergeTransaction(JJJ)Z
    .registers 8
    .param p1, "nativeTransactionObj"    # J
    .param p3, "aSurfaceControlNativeObj"    # J
    .param p5, "frameNr"    # J

    .line 316
    monitor-enter p0

    .line 317
    :try_start_1
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v0, :cond_8

    .line 318
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 320
    :cond_8
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1, p2, p5, p6}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(JJ)V

    .line 321
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 323
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public blacklist prepare()V
    .registers 4

    .line 305
    monitor-enter p0

    .line 306
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    .line 307
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_14

    .line 308
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 310
    :cond_14
    monitor-exit p0

    .line 311
    return-void

    .line 310
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public blacklist setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .registers 3
    .param p1, "bufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 298
    monitor-enter p0

    .line 299
    :try_start_1
    iput-object p1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 300
    monitor-exit p0

    .line 301
    return-void

    .line 300
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public blacklist setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 289
    monitor-enter p0

    .line 290
    :try_start_1
    iput-object p1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 291
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    if-eqz v0, :cond_15

    .line 292
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 294
    :cond_15
    monitor-exit p0

    .line 295
    return-void

    .line 294
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public blacklist setSurfaceControlOpaque(Z)Z
    .registers 4
    .param p1, "opaque"    # Z

    .line 277
    monitor-enter p0

    .line 278
    :try_start_1
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    if-eqz v0, :cond_8

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 279
    :cond_8
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 280
    monitor-exit p0

    .line 281
    return p1

    .line 280
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public blacklist shouldEnableOverlaySupport()Z
    .registers 2

    .line 285
    sget-boolean v0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->sOverlaysAreEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
