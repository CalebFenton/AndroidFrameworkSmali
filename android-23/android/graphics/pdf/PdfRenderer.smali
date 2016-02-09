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
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 104
    new-instance v1, Landroid/graphics/Point;

    #@b
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@e
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    #@10
    .line 140
    if-nez p1, :cond_0

    #@12
    .line 141
    new-instance v1, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v4, "input cannot be null"

    #@17
    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 146
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
    .line 147
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
    .line 152
    .local v2, "size":J
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@36
    .line 153
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@38
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@3b
    move-result v1

    #@3c
    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfRenderer;->nativeCreate(IJ)J

    #@3f
    move-result-wide v4

    #@40
    iput-wide v4, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@42
    .line 154
    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@44
    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfRenderer;->nativeGetPageCount(J)I

    #@47
    move-result v1

    #@48
    iput v1, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    #@4a
    .line 155
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@4c
    const-string/jumbo v4, "close"

    #@4f
    invoke-virtual {v1, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@52
    .line 139
    return-void

    #@53
    .line 148
    .end local v2    # "size":J
    :catch_0
    move-exception v0

    #@54
    .line 149
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@56
    const-string/jumbo v4, "file descriptor not seekable"

    #@59
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v1
.end method

.method private doClose()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 220
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 221
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@7
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    #@a
    .line 223
    :cond_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@c
    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V

    #@f
    .line 225
    :try_start_0
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@11
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 229
    :goto_0
    iput-object v4, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@16
    .line 230
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@18
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@1b
    .line 219
    return-void

    #@1c
    .line 226
    :catch_0
    move-exception v0

    #@1d
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
    .line 234
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 233
    :cond_0
    return-void
.end method

.method private throwIfPageNotInDocument(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    #@0
    .prologue
    .line 246
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid page index"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 245
    :cond_1
    return-void
.end method

.method private throwIfPageOpened()V
    .locals 2

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Current page not closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    #@3
    .line 164
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    #@6
    .line 165
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

    #@9
    .line 162
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
    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 211
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 212
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 215
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 208
    return-void

    #@10
    .line 214
    :catchall_0
    move-exception v0

    #@11
    .line 215
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 214
    throw v0
.end method

.method public getPageCount()I
    .locals 1

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    #@3
    .line 175
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    #@5
    return v0
.end method

.method public openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    #@3
    .line 201
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    #@6
    .line 202
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageNotInDocument(I)V

    #@9
    .line 203
    new-instance v0, Landroid/graphics/pdf/PdfRenderer$Page;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$Page;)V

    #@f
    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@11
    .line 204
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    #@13
    return-object v0
.end method

.method public shouldScaleForPrinting()Z
    .locals 2

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    #@3
    .line 188
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    #@5
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->nativeScaleForPrinting(J)Z

    #@8
    move-result v0

    #@9
    return v0
.end method
