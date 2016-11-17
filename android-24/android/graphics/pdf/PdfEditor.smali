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
    .line 82
    iget-object v1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@31
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@34
    move-result v1

    #@35
    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeOpen(IJ)J

    #@38
    move-result-wide v4

    #@39
    iput-wide v4, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@3b
    .line 83
    iget-wide v4, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@3d
    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCount(J)I

    #@40
    move-result v1

    #@41
    iput v1, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    #@43
    .line 84
    iget-object v1, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@45
    const-string/jumbo v4, "close"

    #@48
    invoke-virtual {v1, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@4b
    .line 68
    return-void

    #@4c
    .line 77
    .end local v2    # "size":J
    :catch_0
    move-exception v0

    #@4d
    .line 78
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4f
    const-string/jumbo v4, "file descriptor not seekable"

    #@52
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v1
.end method

.method private doClose()V
    .locals 2

    #@0
    .prologue
    .line 250
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    #@5
    .line 251
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@7
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a
    .line 252
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@d
    .line 253
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@f
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@12
    .line 249
    return-void
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
    .line 257
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 256
    :cond_0
    return-void
.end method

.method private throwIfCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cropBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 299
    if-nez p1, :cond_0

    #@2
    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "cropBox cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 298
    :cond_0
    return-void
.end method

.method private throwIfMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "mediaBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 287
    if-nez p1, :cond_0

    #@2
    .line 288
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "mediaBox cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 286
    :cond_0
    return-void
.end method

.method private throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 269
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isAffine()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 268
    :cond_0
    return-void

    #@9
    .line 270
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
    .line 293
    if-nez p1, :cond_0

    #@2
    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "outCropBox cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 292
    :cond_0
    return-void
.end method

.method private throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outMediaBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 281
    if-nez p1, :cond_0

    #@2
    .line 282
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "outMediaBox cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 280
    :cond_0
    return-void
.end method

.method private throwIfOutSizeNull(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 275
    if-nez p1, :cond_0

    #@2
    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "outSize cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 274
    :cond_0
    return-void
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    #@0
    .prologue
    .line 263
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid page index"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 262
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 234
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V

    #@6
    .line 232
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
    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 241
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 242
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 245
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 238
    return-void

    #@10
    .line 244
    :catchall_0
    move-exception v0

    #@11
    .line 245
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 244
    throw v0
.end method

.method public getPageCount()I
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 94
    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    #@5
    return v0
.end method

.method public getPageCropBox(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "outCropBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 183
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutCropBoxNull(Landroid/graphics/Rect;)V

    #@6
    .line 184
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 185
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCropBox(JILandroid/graphics/Rect;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getPageMediaBox(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "outMediaBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 157
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V

    #@6
    .line 158
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 159
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getPageSize(ILandroid/graphics/Point;)V
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "outSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 144
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutSizeNull(Landroid/graphics/Point;)V

    #@6
    .line 145
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 146
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageSize(JILandroid/graphics/Point;)V

    #@e
    .line 142
    return-void
.end method

.method public removePage(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 104
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@6
    .line 105
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/pdf/PdfEditor;->nativeRemovePage(JI)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    #@e
    .line 102
    return-void
.end method

.method public setPageCropBox(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "cropBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 196
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfCropBoxNull(Landroid/graphics/Rect;)V

    #@6
    .line 197
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 198
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageCropBox(JILandroid/graphics/Rect;)V

    #@e
    .line 194
    return-void
.end method

.method public setPageMediaBox(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "pageIndex"    # I
    .param p2, "mediaBox"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 170
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfMediaBoxNull(Landroid/graphics/Rect;)V

    #@6
    .line 171
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@9
    .line 172
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@b
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageMediaBox(JILandroid/graphics/Rect;)V

    #@e
    .line 168
    return-void
.end method

.method public setTransformAndClip(ILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "pageIndex"    # I
    .param p2, "transform"    # Landroid/graphics/Matrix;
    .param p3, "clip"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 119
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@4
    .line 120
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    #@7
    .line 121
    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V

    #@a
    .line 122
    if-nez p2, :cond_0

    #@c
    .line 123
    sget-object p2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@e
    .line 125
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 126
    new-instance v9, Landroid/graphics/Point;

    #@12
    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    #@15
    .line 127
    .local v9, "size":Landroid/graphics/Point;
    invoke-virtual {p0, p1, v9}, Landroid/graphics/pdf/PdfEditor;->getPageSize(ILandroid/graphics/Point;)V

    #@18
    .line 128
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@1a
    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    #@1c
    .line 129
    iget v7, v9, Landroid/graphics/Point;->x:I

    #@1e
    iget v8, v9, Landroid/graphics/Point;->y:I

    #@20
    move v2, p1

    #@21
    move v6, v5

    #@22
    .line 128
    invoke-static/range {v0 .. v8}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    #@25
    .line 118
    .end local v9    # "size":Landroid/graphics/Point;
    :goto_0
    return-void

    #@26
    .line 131
    :cond_1
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@28
    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    #@2a
    .line 132
    iget v5, p3, Landroid/graphics/Rect;->left:I

    #@2c
    iget v6, p3, Landroid/graphics/Rect;->top:I

    #@2e
    iget v7, p3, Landroid/graphics/Rect;->right:I

    #@30
    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    #@32
    move v2, p1

    #@33
    .line 131
    invoke-static/range {v0 .. v8}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    #@36
    goto :goto_0
.end method

.method public shouldScaleForPrinting()Z
    .locals 2

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 208
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@5
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfEditor;->nativeScaleForPrinting(J)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public write(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    #@3
    .line 222
    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    #@5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@8
    move-result v2

    #@9
    invoke-static {v0, v1, v2}, Landroid/graphics/pdf/PdfEditor;->nativeWrite(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 224
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@f
    .line 219
    return-void

    #@10
    .line 223
    :catchall_0
    move-exception v0

    #@11
    .line 224
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14
    .line 223
    throw v0
.end method
