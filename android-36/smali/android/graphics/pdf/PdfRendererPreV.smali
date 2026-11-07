.class public final Landroid/graphics/pdf/PdfRendererPreV;
.super Ljava/lang/Object;
.source "PdfRendererPreV.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfRendererPreV$Page;,
        Landroid/graphics/pdf/PdfRendererPreV$PdfDocumentLinearizationType;,
        Landroid/graphics/pdf/PdfRendererPreV$PdfFormType;
    }
.end annotation


# static fields
.field public static final whitelist DOCUMENT_LINEARIZED_TYPE_LINEARIZED:I = 0x1

.field public static final whitelist DOCUMENT_LINEARIZED_TYPE_NON_LINEARIZED:I = 0x0

.field public static final whitelist PDF_FORM_TYPE_ACRO_FORM:I = 0x1

.field public static final whitelist PDF_FORM_TYPE_NONE:I = 0x0

.field public static final whitelist PDF_FORM_TYPE_XFA_FOREGROUND:I = 0x3

.field public static final whitelist PDF_FORM_TYPE_XFA_FULL:I = 0x2


# instance fields
.field private final blacklist mPageCount:I

.field private blacklist mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;
    .registers 1

    iget-object p0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mthrowIfDocumentClosed(Landroid/graphics/pdf/PdfRendererPreV;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->throwIfDocumentClosed()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string v0, "Input FD cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    :try_start_8
    new-instance v0, Landroid/graphics/pdf/PdfProcessor;

    invoke-direct {v0}, Landroid/graphics/pdf/PdfProcessor;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    .line 141
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/pdf/PdfProcessor;->create(Landroid/os/ParcelFileDescriptor;Landroid/graphics/pdf/LoadParams;)V

    .line 142
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->getNumPages()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPageCount:I
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1f

    .line 146
    nop

    .line 147
    return-void

    .line 143
    :catchall_1f
    move-exception v0

    .line 144
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->doClose()V

    .line 145
    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;Landroid/graphics/pdf/LoadParams;)V
    .registers 4
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "params"    # Landroid/graphics/pdf/LoadParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-string v0, "Input FD cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    const-string v0, "LoadParams cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    :try_start_d
    new-instance v0, Landroid/graphics/pdf/PdfProcessor;

    invoke-direct {v0}, Landroid/graphics/pdf/PdfProcessor;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    .line 179
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->create(Landroid/os/ParcelFileDescriptor;Landroid/graphics/pdf/LoadParams;)V

    .line 180
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->getNumPages()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPageCount:I
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_23

    .line 184
    nop

    .line 185
    return-void

    .line 181
    :catchall_23
    move-exception v0

    .line 182
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->doClose()V

    .line 183
    throw v0
.end method

.method private blacklist doClose()V
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    if-eqz v0, :cond_c

    .line 302
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->ensurePdfDestroyed()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    .line 305
    :cond_c
    return-void
.end method

.method private blacklist throwIfDocumentClosed()V
    .registers 3

    .line 308
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    if-eqz v0, :cond_5

    .line 311
    return-void

    .line 309
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Document already closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist throwIfPageNotInDocument(I)V
    .registers 4
    .param p1, "pageIndex"    # I

    .line 314
    if-ltz p1, :cond_7

    iget v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPageCount:I

    if-ge p1, v0, :cond_7

    .line 317
    return-void

    .line 315
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 284
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->throwIfDocumentClosed()V

    .line 285
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->doClose()V

    .line 286
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 294
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->doClose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 296
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 297
    nop

    .line 298
    return-void

    .line 296
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 297
    throw v0
.end method

.method public whitelist getDocumentLinearizationType()I
    .registers 3

    .line 207
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->throwIfDocumentClosed()V

    .line 208
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->getDocumentLinearizationType()I

    move-result v0

    .line 209
    .local v0, "documentType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 210
    const/4 v1, 0x1

    return v1

    .line 212
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getPageCount()I
    .registers 2

    .line 195
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->throwIfDocumentClosed()V

    .line 196
    iget v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPageCount:I

    return v0
.end method

.method public whitelist getPdfFormType()I
    .registers 3

    .line 241
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->throwIfDocumentClosed()V

    .line 242
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfProcessor;->getPdfFormType()I

    move-result v0

    .line 243
    .local v0, "pdfFormType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 244
    return v1

    .line 245
    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 246
    return v1

    .line 247
    :cond_11
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 248
    return v1

    .line 250
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist openPage(I)Landroid/graphics/pdf/PdfRendererPreV$Page;
    .registers 4
    .param p1, "index"    # I

    .line 227
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->throwIfDocumentClosed()V

    .line 228
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfRendererPreV;->throwIfPageNotInDocument(I)V

    .line 229
    new-instance v0, Landroid/graphics/pdf/PdfRendererPreV$Page;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/pdf/PdfRendererPreV$Page;-><init>(Landroid/graphics/pdf/PdfRendererPreV;ILandroid/graphics/pdf/PdfRendererPreV-IA;)V

    return-object v0
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

    .line 272
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV;->throwIfDocumentClosed()V

    .line 273
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV;->mPdfProcessor:Landroid/graphics/pdf/PdfProcessor;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->write(Landroid/os/ParcelFileDescriptor;Z)V

    .line 274
    return-void
.end method
