.class public final Landroid/graphics/pdf/PdfRenderer;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfRenderer$Page;
    }
.end annotation


# static fields
.field static final sPdfiumLock:Ljava/lang/Object;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

.field private mInput:Landroid/os/ParcelFileDescriptor;

.field private final mNativeDocument:J

.field private final mPageCount:I

.field private final mTempPoint:Landroid/graphics/Point;


# direct methods
.method static synthetic -get0(Landroid/graphics/pdf/PdfRenderer;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(JILandroid/graphics/Point;)J
    .locals 2
    .param p0, "documentPtr"    # J
    .param p2, "pageIndex"    # I
    .param p3, "outSize"    # Landroid/graphics/Point;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/pdf/PdfRenderer;->nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(J)V
    .locals 0
    .param p0, "pagePtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->nativeClosePage(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(JJLandroid/graphics/Bitmap;IIIIJI)V
    .locals 0
    .param p0, "documentPtr"    # J
    .param p2, "pagePtr"    # J
    .param p4, "dest"    # Landroid/graphics/Bitmap;
    .param p5, "destLeft"    # I
    .param p6, "destTop"    # I
    .param p7, "destRight"    # I
    .param p8, "destBottom"    # I
    .param p9, "matrixPtr"    # J
    .param p11, "renderMode"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p11}, Landroid/graphics/pdf/PdfRenderer;->nativeRenderPage(JJLandroid/graphics/Bitmap;IIIIJI)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@7
    .line 101
    return-void
.end method

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
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 110
    new-instance v1, Landroid/graphics/Point;

    #@b
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@e
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    #@10
    .line 150
    if-nez p1, :cond_0

    #@12
    .line 151
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v4, "input cannot be null"

    #@17
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 156
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@1d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@20
    move-result-object v4

    #@21
    const-wide/16 v6, 0x0

    #@23
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    #@25
    invoke-interface {v1, v4, v6, v7, v5}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    #@28
    .line 157
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {v1, v4}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@31
    move-result-object v1

    #@32
    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 162
    .local v2, "size":J
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@36
    .line 164
    sget-object v4, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@38
    monitor-enter v4

    #@39
    .line 165
    :try_start_1
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@3b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@3e
    move-result v1

    #@3f
    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfRenderer;->nativeCreate(IJ)J

    #@42
    move-result-wide v6

    #@43
    iput-wide v6, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@45
    .line 166
    iget-wide v6, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@47
    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfRenderer;->nativeGetPageCount(J)I

    #@4a
    move-result v1

    #@4b
    iput v1, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    monitor-exit v4

    #@4e
    .line 169
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@50
    const-string/jumbo v4, "close"

    #@53
    invoke-virtual {v1, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@56
    .line 149
    return-void

    #@57
    .line 158
    .end local v2    # "size":J
    :catch_0
    move-exception v0

    #@58
    .line 159
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5a
    const-string/jumbo v4, "file descriptor not seekable"

    #@5d
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v1

    #@61
    .line 164
    .end local v0    # "ee":Landroid/system/ErrnoException;
    .restart local v2    # "size":J
    :catchall_0
    move-exception v1

    #@62
    monitor-exit v4

    #@63
    throw v1
.end method

.method private doClose()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 237
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 238
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@7
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    #@a
    .line 240
    :cond_0
    sget-object v2, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@c
    monitor-enter v2

    #@d
    .line 241
    :try_start_0
    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@f
    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 244
    :try_start_1
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@15
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@18
    .line 248
    :goto_0
    iput-object v3, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@1a
    .line 249
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@1c
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@1f
    .line 236
    return-void

    #@20
    .line 240
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1

    #@23
    .line 245
    :catch_0
    move-exception v0

    #@24
    .local v0, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeClosePage(J)V
.end method

.method private static native nativeCreate(IJ)J
.end method

.method private static native nativeGetPageCount(J)I
.end method

.method private static native nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J
.end method

.method private static native nativeRenderPage(JJLandroid/graphics/Bitmap;IIIIJI)V
.end method

.method private static native nativeScaleForPrinting(J)Z
.end method

.method private throwIfClosed()V
    .locals 2

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 252
    :cond_0
    return-void
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    #@0
    .prologue
    .line 265
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid page index"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 264
    :cond_1
    return-void
.end method

.method private throwIfPageOpened()V
    .locals 2

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Current page not closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    #@3
    .line 178
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    #@6
    .line 179
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

    #@9
    .line 176
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
    .line 227
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 228
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 229
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 232
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 225
    return-void

    #@10
    .line 231
    :catchall_0
    move-exception v0

    #@11
    .line 232
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 231
    throw v0
.end method

.method public getPageCount()I
    .locals 1

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    #@3
    .line 189
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    #@5
    return v0
.end method

.method public openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 217
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    #@3
    .line 218
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    #@6
    .line 219
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageNotInDocument(I)V

    #@9
    .line 220
    new-instance v0, Landroid/graphics/pdf/PdfRenderer$Page;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$Page;)V

    #@f
    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@11
    .line 221
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@13
    return-object v0
.end method

.method public shouldScaleForPrinting()Z
    .locals 4

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    #@3
    .line 203
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    .line 204
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@8
    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfRenderer;->nativeScaleForPrinting(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 203
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
