.class Landroid/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelperKitkat;
    .param p2, "val$jobName"    # Ljava/lang/String;
    .param p3, "val$bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "val$fittingMode"    # I
    .param p5, "val$callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@2
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    #@4
    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@6
    iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    #@8
    iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    #@a
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 267
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    #@6
    invoke-interface {v0}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V

    #@9
    .line 265
    :cond_0
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 200
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    #@3
    .line 202
    new-instance v2, Landroid/print/PrintDocumentInfo$Builder;

    #@5
    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    #@7
    invoke-direct {v2, v3}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v2, v4}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, v4}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    #@15
    move-result-object v1

    #@16
    .line 206
    .local v1, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    const/4 v0, 0x0

    #@1d
    .line 207
    .local v0, "changed":Z
    :goto_0
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    #@20
    .line 198
    return-void

    #@21
    .line 206
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x1

    #@22
    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 10
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@0
    .prologue
    .line 214
    new-instance v5, Landroid/print/pdf/PrintedPdfDocument;

    #@2
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@4
    iget-object v6, v6, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@6
    .line 215
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    #@8
    .line 214
    invoke-direct {v5, v6, v7}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    #@b
    .line 217
    .local v5, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@d
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@f
    .line 218
    iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    #@11
    invoke-virtual {v8}, Landroid/print/PrintAttributes;->getColorMode()I

    #@14
    move-result v8

    #@15
    .line 217
    invoke-static {v6, v7, v8}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap0(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    #@18
    move-result-object v3

    #@19
    .line 220
    .local v3, "maybeGrayscale":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    #@1a
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    #@1d
    move-result-object v4

    #@1e
    .line 222
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
    .line 224
    .local v0, "content":Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@2d
    .line 225
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    #@30
    move-result v7

    #@31
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    #@34
    move-result v8

    #@35
    .line 226
    iget v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    #@37
    .line 224
    invoke-static {v6, v7, v8, v0, v9}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap2(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    #@3a
    move-result-object v2

    #@3b
    .line 229
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    #@3e
    move-result-object v6

    #@3f
    const/4 v7, 0x0

    #@40
    invoke-virtual {v6, v3, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@43
    .line 232
    invoke-virtual {v5, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 236
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    #@48
    .line 237
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@4b
    move-result-object v7

    #@4c
    .line 236
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@4f
    invoke-virtual {v5, v6}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    #@52
    .line 240
    const/4 v6, 0x1

    #@53
    new-array v6, v6, [Landroid/print/PageRange;

    #@55
    sget-object v7, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    #@57
    const/4 v8, 0x0

    #@58
    aput-object v7, v6, v8

    #@5a
    .line 239
    invoke-virtual {p4, v6}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    .line 247
    :goto_0
    if-eqz v5, :cond_0

    #@5f
    .line 248
    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@62
    .line 250
    :cond_0
    if-eqz p2, :cond_1

    #@64
    .line 252
    :try_start_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@67
    .line 258
    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@69
    if-eq v3, v6, :cond_2

    #@6b
    .line 259
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    #@6e
    .line 213
    :cond_2
    return-void

    #@6f
    .line 241
    :catch_0
    move-exception v1

    #@70
    .line 243
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v6, "PrintHelperKitkat"

    #@73
    const-string/jumbo v7, "Error writing printed content"

    #@76
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@79
    .line 244
    const/4 v6, 0x0

    #@7a
    invoke-virtual {p4, v6}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7d
    goto :goto_0

    #@7e
    .line 246
    .end local v0    # "content":Landroid/graphics/RectF;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catchall_0
    move-exception v6

    #@7f
    .line 247
    if-eqz v5, :cond_3

    #@81
    .line 248
    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@84
    .line 250
    :cond_3
    if-eqz p2, :cond_4

    #@86
    .line 252
    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@89
    .line 258
    :cond_4
    :goto_2
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@8b
    if-eq v3, v7, :cond_5

    #@8d
    .line 259
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    #@90
    .line 246
    :cond_5
    throw v6

    #@91
    .line 253
    .restart local v0    # "content":Landroid/graphics/RectF;
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    .restart local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catch_1
    move-exception v1

    #@92
    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_1

    #@93
    .end local v0    # "content":Landroid/graphics/RectF;
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catch_2
    move-exception v1

    #@94
    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_2
.end method
