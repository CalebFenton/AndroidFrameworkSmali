.class public final Landroid/graphics/pdf/PdfEditor;
.super Ljava/lang/Object;
.source "PdfEditor.java"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInput:Landroid/os/ParcelFileDescriptor;

.field private final mNativeDocument:J

.field private mPageCount:I


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "input"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 69
    if-nez p1, :cond_0

    #@b
    .line 70
    new-instance v1, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v4, "input cannot be null"

    #@10
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 75
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@16
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@19
    move-result-object v4

    #@1a
    const-wide/16 v6, 0x0

    #@1c
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    #@1e
    invoke-interface {v1, v4, v6, v7, v5}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@21
    .line 76
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@23
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@26
    move-result-object v4

    #@27
    invoke-interface {v1, v4}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@2a
    move-result-object v1

    #@2b
    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 81
    .local v2, "size":J
    iput-object p1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@2f
    .line 83
    sget-object v4, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@31
    monitor-enter v4

    #@32
    .line 84
    :try_start_1
    iget-object v1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@34
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@37
    move-result v1

    #@38
    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeOpen(IJ)J

    #@3b
    move-result-wide v6

    #@3c
    iput-wide v6, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@3e
    .line 85
    iget-wide v6, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@40
    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCount(J)I

    #@43
    move-result v1

    #@44
    iput v1, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit v4

    #@47
    .line 88
    iget-object v1, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@49
    const-string/jumbo v4, "close"

    #@4c
    invoke-virtual {v1, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@4f
    .line 68
    return-void

    #@50
    .line 77
    .end local v2    # "size":J
    :catch_0
    move-exception v0

    #@51
    .line 78
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v4, "file descriptor not seekable"

    #@56
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v1

    #@5a
    .line 83
    .end local v0    # "ee":Landroid/system/ErrnoException;
    .restart local v2    # "size":J
    :catchall_0
    move-exception v1

    #@5b
    monitor-exit v4

    #@5c
    throw v1
.end method

.method private doClose()V
    .locals 4

    #@0
    .prologue
    .line 283
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 284
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@5
    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 286
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@b
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e
    .line 287
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@11
    .line 288
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@13
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@16
    .line 282
    return-void

    #@17
    .line 283
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetPageCount(J)I
.end method

.method private static native nativeGetPageCropBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native nativeGetPageSize(JILandroid/graphics/Point;)V
.end method

.method private static native nativeOpen(IJ)J
.end method

.method private static native nativeRemovePage(JI)I
.end method

.method private static native nativeScaleForPrinting(J)Z
.end method

.method private static native nativeSetPageCropBox(JILandroid/graphics/Rect;)V
.end method

.method private static native nativeSetPageMediaBox(JILandroid/graphics/Rect;)V
.end method

.method private static native nativeSetTransformAndClip(JIJIIII)V
.end method

.method private static native nativeWrite(JI)V
.end method

.method private throwIfClosed()V
    .locals 2

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 291
    :cond_0
    return-void
.end method

.method private throwIfCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cropBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 334
    if-nez p1, :cond_0

    #@2
    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "cropBox cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 333
    :cond_0
    return-void
.end method

.method private throwIfMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "mediaBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 322
    if-nez p1, :cond_0

    #@2
    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "mediaBox cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 321
    :cond_0
    return-void
.end method

.method private throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 304
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isAffine()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 303
    :cond_0
    return-void

    #@9
    .line 305
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v1, "Matrix must be afine"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method private throwIfOutCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outCropBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 328
    if-nez p1, :cond_0

    #@2
    .line 329
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "outCropBox cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 327
    :cond_0
    return-void
.end method

.method private throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outMediaBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 316
    if-nez p1, :cond_0

    #@2
    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "outMediaBox cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 315
    :cond_0
    return-void
.end method

.method private throwIfOutSizeNull(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 310
    if-nez p1, :cond_0

    #@2
    .line 311
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "outSize cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 309
    :cond_0
    return-void
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    #@0
    .prologue
    .line 298
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid page index"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 297
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 266
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 267
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V

    #@6
    .line 265
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 274
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 275
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 278
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 271
    return-void

    #@10
    .line 277
    :catchall_0
    move-exception v0

    #@11
    .line 278
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 277
    throw v0
.end method

.method public getPageCount()I
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 98
    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    #@5
    return v0
.end method

.method public getPageCropBox(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "pageIndex"    # I
    .param p2, "outCropBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 203
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 204
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutCropBoxNull(Landroid/graphics/Rect;)V

    #@6
    .line 205
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 207
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 208
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@e
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCropBox(JILandroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 207
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getPageMediaBox(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "pageIndex"    # I
    .param p2, "outMediaBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 171
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 172
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V

    #@6
    .line 173
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 175
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 176
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@e
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 175
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public getPageSize(ILandroid/graphics/Point;)V
    .locals 4
    .param p1, "pageIndex"    # I
    .param p2, "outSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 156
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutSizeNull(Landroid/graphics/Point;)V

    #@6
    .line 157
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 159
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 160
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@e
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageSize(JILandroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 154
    return-void

    #@13
    .line 159
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public removePage(I)V
    .locals 4
    .param p1, "pageIndex"    # I

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 108
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@6
    .line 110
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 111
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@b
    invoke-static {v2, v3, p1}, Landroid/graphics/pdf/PdfEditor;->nativeRemovePage(JI)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 106
    return-void

    #@13
    .line 110
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public setPageCropBox(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "pageIndex"    # I
    .param p2, "cropBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 220
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfCropBoxNull(Landroid/graphics/Rect;)V

    #@6
    .line 221
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 223
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 224
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@e
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageCropBox(JILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 218
    return-void

    #@13
    .line 223
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public setPageMediaBox(ILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "pageIndex"    # I
    .param p2, "mediaBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 188
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfMediaBoxNull(Landroid/graphics/Rect;)V

    #@6
    .line 189
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 191
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@b
    monitor-enter v1

    #@c
    .line 192
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@e
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageMediaBox(JILandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 186
    return-void

    #@13
    .line 191
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public setTransformAndClip(ILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "pageIndex"    # I
    .param p2, "transform"    # Landroid/graphics/Matrix;
    .param p3, "clip"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 127
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@6
    .line 128
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V

    #@9
    .line 129
    if-nez p2, :cond_0

    #@b
    .line 130
    sget-object p2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@d
    .line 132
    :cond_0
    if-nez p3, :cond_1

    #@f
    .line 133
    new-instance v9, Landroid/graphics/Point;

    #@11
    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    #@14
    .line 134
    .local v9, "size":Landroid/graphics/Point;
    invoke-virtual {p0, p1, v9}, Landroid/graphics/pdf/PdfEditor;->getPageSize(ILandroid/graphics/Point;)V

    #@17
    .line 136
    sget-object v10, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@19
    monitor-enter v10

    #@1a
    .line 137
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@1c
    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    #@1e
    .line 138
    iget v7, v9, Landroid/graphics/Point;->x:I

    #@20
    iget v8, v9, Landroid/graphics/Point;->y:I

    #@22
    const/4 v5, 0x0

    #@23
    const/4 v6, 0x0

    #@24
    move v2, p1

    #@25
    .line 137
    invoke-static/range {v0 .. v8}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v9    # "size":Landroid/graphics/Point;
    :goto_0
    monitor-exit v10

    #@29
    .line 125
    return-void

    #@2a
    .line 136
    .restart local v9    # "size":Landroid/graphics/Point;
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v10

    #@2c
    throw v0

    #@2d
    .line 141
    .end local v9    # "size":Landroid/graphics/Point;
    :cond_1
    sget-object v10, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@2f
    monitor-enter v10

    #@30
    .line 142
    :try_start_1
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@32
    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    #@34
    .line 143
    iget v5, p3, Landroid/graphics/Rect;->left:I

    #@36
    iget v6, p3, Landroid/graphics/Rect;->top:I

    #@38
    iget v7, p3, Landroid/graphics/Rect;->right:I

    #@3a
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    #@3c
    move v2, p1

    #@3d
    .line 142
    invoke-static/range {v0 .. v8}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@40
    goto :goto_0

    #@41
    .line 141
    :catchall_1
    move-exception v0

    #@42
    monitor-exit v10

    #@43
    throw v0
.end method

.method public shouldScaleForPrinting()Z
    .locals 4

    #@0
    .prologue
    .line 234
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 236
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 237
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@8
    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeScaleForPrinting(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 236
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public write(Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 253
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@5
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 254
    :try_start_1
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@b
    move-result v0

    #@c
    invoke-static {v2, v3, v0}, Landroid/graphics/pdf/PdfEditor;->nativeWrite(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@10
    .line 257
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@13
    .line 249
    return-void

    #@14
    .line 253
    :catchall_0
    move-exception v0

    #@15
    :try_start_3
    monitor-exit v1

    #@16
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@17
    .line 256
    :catchall_1
    move-exception v0

    #@18
    .line 257
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b
    .line 256
    throw v0
.end method
