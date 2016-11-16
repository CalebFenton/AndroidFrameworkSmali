.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 6
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 293
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 275
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@b
    .line 294
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-get1(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    #@e
    move-result-object v0

    #@f
    .line 295
    .local v0, "size":Landroid/graphics/Point;
    sget-object v2, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@11
    monitor-enter v2

    #@12
    .line 296
    :try_start_0
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-get0(Landroid/graphics/pdf/PdfRenderer;)J

    #@15
    move-result-wide v4

    #@16
    invoke-static {v4, v5, p2, v0}, Landroid/graphics/pdf/PdfRenderer;->-wrap0(JILandroid/graphics/Point;)J

    #@19
    move-result-wide v4

    #@1a
    iput-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 298
    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    #@1f
    .line 299
    iget v1, v0, Landroid/graphics/Point;->x:I

    #@21
    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    #@23
    .line 300
    iget v1, v0, Landroid/graphics/Point;->y:I

    #@25
    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    #@27
    .line 301
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@29
    const-string/jumbo v2, "close"

    #@2c
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@2f
    .line 293
    return-void

    #@30
    .line 295
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$Page;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    #@3
    return-void
.end method

.method private doClose()V
    .locals 4

    #@0
    .prologue
    .line 434
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 435
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    #@5
    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfRenderer;->-wrap1(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 437
    const-wide/16 v0, 0x0

    #@b
    iput-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    #@d
    .line 438
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@f
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@12
    .line 439
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->-set0(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;

    #@18
    .line 433
    return-void

    #@19
    .line 434
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method private throwIfClosed()V
    .locals 4

    #@0
    .prologue
    .line 443
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Already closed"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 442
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 417
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    #@3
    .line 418
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    #@6
    .line 416
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 425
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 426
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 429
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@13
    .line 422
    return-void

    #@14
    .line 428
    :catchall_0
    move-exception v0

    #@15
    .line 429
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@18
    .line 428
    throw v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 328
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 310
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 319
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    #@2
    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .locals 15
    .param p1, "destination"    # Landroid/graphics/Bitmap;
    .param p2, "destClip"    # Landroid/graphics/Rect;
    .param p3, "transform"    # Landroid/graphics/Matrix;
    .param p4, "renderMode"    # I

    #@0
    .prologue
    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 372
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "Unsupported pixel format"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 375
    :cond_0
    if-eqz p2, :cond_3

    #@13
    .line 376
    move-object/from16 v0, p2

    #@15
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@17
    if-ltz v2, :cond_1

    #@19
    move-object/from16 v0, p2

    #@1b
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@1d
    if-gez v2, :cond_2

    #@1f
    .line 379
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v3, "destBounds not in destination"

    #@24
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 377
    :cond_2
    move-object/from16 v0, p2

    #@2a
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@2c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@2f
    move-result v3

    #@30
    if-gt v2, v3, :cond_1

    #@32
    .line 378
    move-object/from16 v0, p2

    #@34
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@39
    move-result v3

    #@3a
    if-gt v2, v3, :cond_1

    #@3c
    .line 383
    :cond_3
    if-eqz p3, :cond_4

    #@3e
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_5

    #@44
    .line 387
    :cond_4
    const/4 v2, 0x2

    #@45
    move/from16 v0, p4

    #@47
    if-eq v0, v2, :cond_6

    #@49
    const/4 v2, 0x1

    #@4a
    move/from16 v0, p4

    #@4c
    if-eq v0, v2, :cond_6

    #@4e
    .line 388
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@50
    const-string/jumbo v3, "Unsupported render mode"

    #@53
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v2

    #@57
    .line 384
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@59
    const-string/jumbo v3, "transform not affine"

    #@5c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v2

    #@60
    .line 391
    :cond_6
    const/4 v2, 0x2

    #@61
    move/from16 v0, p4

    #@63
    if-ne v0, v2, :cond_7

    #@65
    const/4 v2, 0x1

    #@66
    move/from16 v0, p4

    #@68
    if-ne v0, v2, :cond_7

    #@6a
    .line 392
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6c
    const-string/jumbo v3, "Only single render mode supported"

    #@6f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw v2

    #@73
    .line 395
    :cond_7
    if-eqz p2, :cond_8

    #@75
    move-object/from16 v0, p2

    #@77
    iget v7, v0, Landroid/graphics/Rect;->left:I

    #@79
    .line 396
    .local v7, "contentLeft":I
    :goto_0
    if-eqz p2, :cond_9

    #@7b
    move-object/from16 v0, p2

    #@7d
    iget v8, v0, Landroid/graphics/Rect;->top:I

    #@7f
    .line 397
    .local v8, "contentTop":I
    :goto_1
    if-eqz p2, :cond_a

    #@81
    move-object/from16 v0, p2

    #@83
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@85
    .line 399
    .local v9, "contentRight":I
    :goto_2
    if-eqz p2, :cond_b

    #@87
    move-object/from16 v0, p2

    #@89
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #@8b
    .line 402
    .local v10, "contentBottom":I
    :goto_3
    if-eqz p3, :cond_c

    #@8d
    move-object/from16 v0, p3

    #@8f
    iget-wide v11, v0, Landroid/graphics/Matrix;->native_instance:J

    #@91
    .line 404
    .local v11, "transformPtr":J
    :goto_4
    sget-object v14, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@93
    monitor-enter v14

    #@94
    .line 405
    :try_start_0
    iget-object v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    #@96
    invoke-static {v2}, Landroid/graphics/pdf/PdfRenderer;->-get0(Landroid/graphics/pdf/PdfRenderer;)J

    #@99
    move-result-wide v2

    #@9a
    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    #@9c
    move-object/from16 v6, p1

    #@9e
    move/from16 v13, p4

    #@a0
    invoke-static/range {v2 .. v13}, Landroid/graphics/pdf/PdfRenderer;->-wrap2(JJLandroid/graphics/Bitmap;IIIIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a3
    monitor-exit v14

    #@a4
    .line 370
    return-void

    #@a5
    .line 395
    .end local v7    # "contentLeft":I
    .end local v8    # "contentTop":I
    .end local v9    # "contentRight":I
    .end local v10    # "contentBottom":I
    .end local v11    # "transformPtr":J
    :cond_8
    const/4 v7, 0x0

    #@a6
    .restart local v7    # "contentLeft":I
    goto :goto_0

    #@a7
    .line 396
    :cond_9
    const/4 v8, 0x0

    #@a8
    .restart local v8    # "contentTop":I
    goto :goto_1

    #@a9
    .line 398
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@ac
    move-result v9

    #@ad
    .restart local v9    # "contentRight":I
    goto :goto_2

    #@ae
    .line 400
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@b1
    move-result v10

    #@b2
    .restart local v10    # "contentBottom":I
    goto :goto_3

    #@b3
    .line 402
    :cond_c
    const-wide/16 v11, 0x0

    #@b5
    .restart local v11    # "transformPtr":J
    goto :goto_4

    #@b6
    .line 404
    :catchall_0
    move-exception v2

    #@b7
    monitor-exit v14

    #@b8
    throw v2
.end method
