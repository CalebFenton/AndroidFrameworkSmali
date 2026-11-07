.class public final Landroid/graphics/pdf/PdfRenderer;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfRenderer$Page;,
        Landroid/graphics/pdf/PdfRenderer$PdfDocumentLinearizationType;,
        Landroid/graphics/pdf/PdfRenderer$RenderMode;,
        Landroid/graphics/pdf/PdfRenderer$PdfFormType;
    }
.end annotation


# static fields
.field public static final whitelist DOCUMENT_LINEARIZED_TYPE_LINEARIZED:I = 0x1

.field public static final whitelist DOCUMENT_LINEARIZED_TYPE_NON_LINEARIZED:I = 0x0

.field public static final whitelist PDF_FORM_TYPE_ACRO_FORM:I = 0x1

.field public static final whitelist PDF_FORM_TYPE_NONE:I = 0x0

.field public static final whitelist PDF_FORM_TYPE_XFA_FOREGROUND:I = 0x3

.field public static final whitelist PDF_FORM_TYPE_XFA_FULL:I = 0x2

.field public static final blacklist RENDER_PDF_FORM_FIELDS:J = 0x1498e613L

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private greylist-max-o mInput:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mPageCount:I

.field private blacklist mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;
    .registers 1

    iget-object p0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mthrowIfDocumentClosed(Landroid/graphics/pdf/PdfRenderer;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfDocumentClosed()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 161
    const-class v0, Landroid/graphics/pdf/PdfRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/pdf/PdfRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Landroid/util/CloseGuard;

    .line 192
    const-string v0, "File descriptor cannot be null!"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 196
    :try_start_11
    new-instance v0, Landroid/graphics/pdf/PdfProcessor;

    invoke-direct {v0}, Landroid/graphics/pdf/PdfProcessor;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    .line 197
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/pdf/PdfProcessor;->create(Landroid/os/ParcelFileDescriptor;Landroid/graphics/pdf/LoadParams;)V

    .line 198
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->getNumPages()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_31

    .line 202
    nop

    .line 204
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 205
    return-void

    .line 199
    :catchall_31
    move-exception v0

    .line 200
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

    .line 201
    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;Landroid/graphics/pdf/LoadParams;)V
    .registers 5
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "params"    # Landroid/graphics/pdf/LoadParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Landroid/util/CloseGuard;

    .line 235
    const-string v0, "input cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    const-string v0, "Load params cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 240
    :try_start_16
    new-instance v0, Landroid/graphics/pdf/PdfProcessor;

    invoke-direct {v0}, Landroid/graphics/pdf/PdfProcessor;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    .line 241
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1, p2}, Landroid/graphics/pdf/PdfProcessor;->create(Landroid/os/ParcelFileDescriptor;Landroid/graphics/pdf/LoadParams;)V

    .line 242
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->getNumPages()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_35

    .line 246
    nop

    .line 248
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 249
    return-void

    .line 243
    :catchall_35
    move-exception v0

    .line 244
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

    .line 245
    throw v0
.end method

.method private blacklist closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 5
    .param p1, "closeable"    # Ljava/lang/AutoCloseable;

    .line 407
    :try_start_0
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 412
    goto :goto_c

    .line 410
    :catch_4
    move-exception v0

    .line 411
    .local v0, "ignored":Ljava/lang/Exception;
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->TAG:Ljava/lang/String;

    const-string v2, "close operation failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_c
    return-void

    .line 408
    :catch_d
    move-exception v0

    .line 409
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0
.end method

.method private greylist-max-r doClose()V
    .registers 3

    .line 392
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 393
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->ensurePdfDestroyed()V

    .line 394
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    .line 397
    :cond_c
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_17

    .line 398
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/graphics/pdf/PdfRenderer;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 399
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 402
    :cond_17
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 403
    return-void
.end method

.method private blacklist throwIfDocumentClosed()V
    .registers 3

    .line 416
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    if-eqz v0, :cond_5

    .line 419
    return-void

    .line 417
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Document already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfPageNotInDocument(I)V
    .registers 4
    .param p1, "pageIndex"    # I

    .line 422
    if-ltz p1, :cond_7

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    if-ge p1, v0, :cond_7

    .line 425
    return-void

    .line 423
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 261
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfDocumentClosed()V

    .line 262
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

    .line 263
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 384
    :cond_9
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 386
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 387
    nop

    .line 388
    return-void

    .line 386
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 387
    throw v0
.end method

.method public whitelist getDocumentLinearizationType()I
    .registers 3

    .line 303
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfDocumentClosed()V

    .line 304
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->getDocumentLinearizationType()I

    move-result v0

    .line 305
    .local v0, "documentType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 306
    const/4 v1, 0x1

    return v1

    .line 308
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getPageCount()I
    .registers 2

    .line 274
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfDocumentClosed()V

    .line 275
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    return v0
.end method

.method public whitelist getPdfFormType()I
    .registers 3

    .line 339
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfDocumentClosed()V

    .line 340
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->getPdfFormType()I

    move-result v0

    .line 341
    .local v0, "pdfFormType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 342
    return v1

    .line 343
    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 344
    return v1

    .line 345
    :cond_11
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 346
    return v1

    .line 348
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;
    .registers 4
    .param p1, "index"    # I

    .line 325
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfDocumentClosed()V

    .line 326
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageNotInDocument(I)V

    .line 327
    new-instance v0, Landroid/graphics/pdf/PdfRenderer$Page;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer-IA;)V

    return-object v0
.end method

.method public whitelist shouldScaleForPrinting()Z
    .registers 2

    .line 289
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfDocumentClosed()V

    .line 291
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->scaleForPrinting()Z

    move-result v0

    return v0
.end method

.method public whitelist write(Landroid/os/ParcelFileDescriptor;Z)V
    .registers 4
    .param p1, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "removePasswordProtection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfDocumentClosed()V

    .line 371
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->write(Landroid/os/ParcelFileDescriptor;Z)V

    .line 372
    return-void
.end method
