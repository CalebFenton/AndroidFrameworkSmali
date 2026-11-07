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
.field private final greylist-max-o mChunk:[B

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

.field private greylist-max-o mNativeDocument:J

.field private final greylist-max-o mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    .line 81
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    .line 93
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->nativeCreateDocument()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    .line 94
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private greylist-max-o dispose()V
    .registers 5

    .line 216
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 217
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/pdf/PdfDocument;->nativeClose(J)V

    .line 218
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 219
    iput-wide v2, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    .line 221
    :cond_14
    return-void
.end method

.method private native greylist-max-o nativeClose(J)V
.end method

.method private native greylist-max-o nativeCreateDocument()J
.end method

.method private native greylist-max-o nativeFinishPage(J)V
.end method

.method private static native greylist-max-o nativeStartPage(JIIIIII)J
.end method

.method private native greylist-max-o nativeWriteTo(JLjava/io/OutputStream;[B)V
.end method

.method private greylist-max-o throwIfClosed()V
    .registers 5

    .line 227
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 230
    return-void

    .line 228
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "document is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfCurrentPageNotFinished()V
    .registers 3

    .line 236
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    if-nez v0, :cond_5

    .line 239
    return-void

    .line 237
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current page not finished!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist close()V
    .registers 1

    .line 198
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    .line 199
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V

    .line 200
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 209
    :cond_9
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 212
    nop

    .line 213
    return-void

    .line 211
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 212
    throw v0
.end method

.method public whitelist finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    .registers 4
    .param p1, "page"    # Landroid/graphics/pdf/PdfDocument$Page;

    .line 140
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    .line 141
    if-eqz p1, :cond_36

    .line 144
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    if-ne p1, v0, :cond_2d

    .line 147
    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->isFinished()Z

    move-result v0

    if-nez v0, :cond_24

    .line 150
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    .line 152
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/pdf/PdfDocument;->nativeFinishPage(J)V

    .line 153
    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$Page;->-$$Nest$mfinish(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 154
    return-void

    .line 148
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "page already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;
    .registers 11
    .param p1, "pageInfo"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 116
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    .line 117
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    .line 118
    if-eqz p1, :cond_3e

    .line 121
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PdfCanvas;

    iget-wide v1, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmPageWidth(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmPageHeight(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v1 .. v8}, Landroid/graphics/pdf/PdfDocument;->nativeStartPage(JIIIIII)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Landroid/graphics/pdf/PdfDocument$PdfCanvas;-><init>(Landroid/graphics/pdf/PdfDocument;J)V

    .line 124
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/pdf/PdfDocument$Page;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument-IA;)V

    iput-object v1, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    .line 125
    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    return-object v1

    .line 119
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    .line 171
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    .line 172
    if-eqz p1, :cond_10

    .line 175
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/graphics/pdf/PdfDocument;->nativeWriteTo(JLjava/io/OutputStream;[B)V

    .line 176
    return-void

    .line 173
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
