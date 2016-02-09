.class public Landroid/graphics/pdf/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfDocument$PdfCanvas;,
        Landroid/graphics/pdf/PdfDocument$PageInfo;,
        Landroid/graphics/pdf/PdfDocument$Page;
    }
.end annotation


# instance fields
.field private final mChunk:[B

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

.field private mNativeDocument:J

.field private final mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const/16 v0, 0x1000

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    #@9
    .line 81
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@f
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    #@16
    .line 93
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->nativeCreateDocument()J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    #@1c
    .line 94
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@1e
    const-string/jumbo v1, "close"

    #@21
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@24
    .line 92
    return-void
.end method

.method private dispose()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 213
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 214
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    #@a
    invoke-direct {p0, v0, v1}, Landroid/graphics/pdf/PdfDocument;->nativeClose(J)V

    #@d
    .line 215
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@f
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@12
    .line 216
    iput-wide v2, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    #@14
    .line 212
    :cond_0
    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeCreateDocument()J
.end method

.method private native nativeFinishPage(J)V
.end method

.method private static native nativeStartPage(JIIIIII)J
.end method

.method private native nativeWriteTo(JLjava/io/OutputStream;[B)V
.end method

.method private throwIfClosed()V
    .locals 4

    #@0
    .prologue
    .line 224
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "document is closed!"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 223
    :cond_0
    return-void
.end method

.method private throwIfCurrentPageNotFinished()V
    .locals 2

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Current page not finished!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    #@3
    .line 199
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V

    #@6
    .line 197
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
    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 206
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 208
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 203
    return-void

    #@c
    .line 207
    :catchall_0
    move-exception v0

    #@d
    .line 208
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 207
    throw v0
.end method

.method public finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    .locals 3
    .param p1, "page"    # Landroid/graphics/pdf/PdfDocument$Page;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 140
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    #@4
    .line 141
    if-nez p1, :cond_0

    #@6
    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "page cannot be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 144
    :cond_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    #@11
    if-eq p1, v0, :cond_1

    #@13
    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "invalid page"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->isFinished()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    #@24
    const-string/jumbo v1, "page already finished"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 150
    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    #@2d
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@30
    move-result-object v1

    #@31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    .line 151
    iput-object v2, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    #@36
    .line 152
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    #@38
    invoke-direct {p0, v0, v1}, Landroid/graphics/pdf/PdfDocument;->nativeFinishPage(J)V

    #@3b
    .line 153
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$Page;->-wrap0(Landroid/graphics/pdf/PdfDocument$Page;)V

    #@3e
    .line 139
    return-void
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 10
    .param p1, "pageInfo"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 116
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    #@4
    .line 117
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    #@7
    .line 118
    if-nez p1, :cond_0

    #@9
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "page cannot be null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 121
    :cond_0
    new-instance v8, Landroid/graphics/pdf/PdfDocument$PdfCanvas;

    #@14
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    #@16
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get2(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    #@19
    move-result v2

    #@1a
    .line 122
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get1(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    #@1d
    move-result v3

    #@1e
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    #@21
    move-result-object v4

    #@22
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@24
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    #@27
    move-result-object v5

    #@28
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@2a
    .line 123
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    #@2d
    move-result-object v6

    #@2e
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@30
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    #@33
    move-result-object v7

    #@34
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@36
    .line 121
    invoke-static/range {v0 .. v7}, Landroid/graphics/pdf/PdfDocument;->nativeStartPage(JIIIIII)J

    #@39
    move-result-wide v0

    #@3a
    invoke-direct {v8, p0, v0, v1}, Landroid/graphics/pdf/PdfDocument$PdfCanvas;-><init>(Landroid/graphics/pdf/PdfDocument;J)V

    #@3d
    .line 124
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/pdf/PdfDocument$Page;

    #@3f
    invoke-direct {v0, v8, p1, v9}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument$Page;)V

    #@42
    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    #@44
    .line 125
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    #@46
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    #@3
    .line 171
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    #@6
    .line 172
    if-nez p1, :cond_0

    #@8
    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "out cannot be null!"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 175
    :cond_0
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    #@13
    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    #@15
    invoke-direct {p0, v0, v1, p1, v2}, Landroid/graphics/pdf/PdfDocument;->nativeWriteTo(JLjava/io/OutputStream;[B)V

    #@18
    .line 169
    return-void
.end method
