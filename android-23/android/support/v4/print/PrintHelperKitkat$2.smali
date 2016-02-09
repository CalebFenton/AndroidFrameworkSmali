.class Landroid/support/v4/print/PrintHelperKitkat$2;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field mLoadBitmap:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/print/PrintHelperKitkat$2;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;ILandroid/net/Uri;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelperKitkat;
    .param p2, "val$jobName"    # Ljava/lang/String;
    .param p3, "val$callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    .param p4, "val$fittingMode"    # I
    .param p5, "val$imageFile"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 316
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@2
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;

    #@4
    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    #@6
    iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    #@8
    iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$imageFile:Landroid/net/Uri;

    #@a
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    #@d
    .line 319
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@10
    .line 316
    return-void
.end method

.method private cancelLoad()V
    .locals 3

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@2
    invoke-static {v0}, Landroid/support/v4/print/PrintHelperKitkat;->-get0(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 400
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@9
    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 401
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@f
    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    #@11
    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    #@14
    .line 402
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@16
    const/4 v2, 0x0

    #@17
    iput-object v2, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 398
    return-void

    #@1b
    .line 399
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 409
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    #@4
    .line 410
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V

    #@7
    .line 411
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 412
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    #@11
    .line 414
    :cond_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 415
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    #@17
    invoke-interface {v0}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V

    #@1a
    .line 417
    :cond_1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 418
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    #@23
    .line 419
    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@25
    .line 408
    :cond_2
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 328
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;

    #@3
    .line 330
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 331
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    #@c
    .line 332
    return-void

    #@d
    .line 335
    :cond_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 336
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    #@13
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;

    #@15
    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v0, v2}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0, v2}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    #@23
    move-result-object v9

    #@24
    .line 340
    .local v9, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    const/4 v8, 0x0

    #@2b
    .line 341
    .local v8, "changed":Z
    :goto_0
    invoke-virtual {p4, v9, v8}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    #@2e
    .line 342
    return-void

    #@2f
    .line 340
    .end local v8    # "changed":Z
    :cond_1
    const/4 v8, 0x1

    #@30
    .restart local v8    # "changed":Z
    goto :goto_0

    #@31
    .line 345
    .end local v8    # "changed":Z
    .end local v9    # "info":Landroid/print/PrintDocumentInfo;
    :cond_2
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2$1;

    #@33
    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$imageFile:Landroid/net/Uri;

    #@35
    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;

    #@37
    move-object v1, p0

    #@38
    move-object v2, p3

    #@39
    move-object v5, p2

    #@3a
    move-object v6, p1

    #@3b
    move-object v7, p4

    #@3c
    invoke-direct/range {v0 .. v7}, Landroid/support/v4/print/PrintHelperKitkat$2$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat$2;Landroid/os/CancellationSignal;Landroid/net/Uri;Ljava/lang/String;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    #@3f
    const/4 v1, 0x0

    #@40
    new-array v1, v1, [Landroid/net/Uri;

    #@42
    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelperKitkat$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;

    #@48
    .line 326
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 10
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@0
    .prologue
    .line 427
    new-instance v5, Landroid/print/pdf/PrintedPdfDocument;

    #@2
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@4
    iget-object v6, v6, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@6
    .line 428
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;

    #@8
    .line 427
    invoke-direct {v5, v6, v7}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    #@b
    .line 429
    .local v5, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@d
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@f
    .line 430
    iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;

    #@11
    invoke-virtual {v8}, Landroid/print/PrintAttributes;->getColorMode()I

    #@14
    move-result v8

    #@15
    .line 429
    invoke-static {v6, v7, v8}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap0(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    #@18
    move-result-object v3

    #@19
    .line 433
    .local v3, "maybeGrayscale":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    #@1a
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    #@1d
    move-result-object v4

    #@1e
    .line 434
    .local v4, "page":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v0, Landroid/graphics/RectF;

    #@20
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    #@27
    move-result-object v6

    #@28
    invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@2b
    .line 437
    .local v0, "content":Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@2d
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@2f
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    #@32
    move-result v7

    #@33
    iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@35
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    #@38
    move-result v8

    #@39
    .line 438
    iget v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    #@3b
    .line 437
    invoke-static {v6, v7, v8, v0, v9}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap2(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    #@3e
    move-result-object v2

    #@3f
    .line 441
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    #@42
    move-result-object v6

    #@43
    const/4 v7, 0x0

    #@44
    invoke-virtual {v6, v3, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@47
    .line 444
    invoke-virtual {v5, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 448
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    #@4c
    .line 449
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4f
    move-result-object v7

    #@50
    .line 448
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@53
    invoke-virtual {v5, v6}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    #@56
    .line 452
    const/4 v6, 0x1

    #@57
    new-array v6, v6, [Landroid/print/PageRange;

    #@59
    sget-object v7, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    #@5b
    const/4 v8, 0x0

    #@5c
    aput-object v7, v6, v8

    #@5e
    .line 451
    invoke-virtual {p4, v6}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    .line 459
    :goto_0
    if-eqz v5, :cond_0

    #@63
    .line 460
    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@66
    .line 462
    :cond_0
    if-eqz p2, :cond_1

    #@68
    .line 464
    :try_start_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@6b
    .line 470
    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@6d
    if-eq v3, v6, :cond_2

    #@6f
    .line 471
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    #@72
    .line 426
    :cond_2
    return-void

    #@73
    .line 453
    :catch_0
    move-exception v1

    #@74
    .line 455
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v6, "PrintHelperKitkat"

    #@77
    const-string/jumbo v7, "Error writing printed content"

    #@7a
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7d
    .line 456
    const/4 v6, 0x0

    #@7e
    invoke-virtual {p4, v6}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@81
    goto :goto_0

    #@82
    .line 458
    .end local v0    # "content":Landroid/graphics/RectF;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catchall_0
    move-exception v6

    #@83
    .line 459
    if-eqz v5, :cond_3

    #@85
    .line 460
    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@88
    .line 462
    :cond_3
    if-eqz p2, :cond_4

    #@8a
    .line 464
    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@8d
    .line 470
    :cond_4
    :goto_2
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    #@8f
    if-eq v3, v7, :cond_5

    #@91
    .line 471
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    #@94
    .line 458
    :cond_5
    throw v6

    #@95
    .line 465
    .restart local v0    # "content":Landroid/graphics/RectF;
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    .restart local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catch_1
    move-exception v1

    #@96
    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_1

    #@97
    .end local v0    # "content":Landroid/graphics/RectF;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catch_2
    move-exception v1

    #@98
    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_2
.end method
