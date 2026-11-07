.class public Landroid/graphics/pdf/models/jni/LoadPdfResult;
.super Ljava/lang/Object;
.source "LoadPdfResult.java"


# instance fields
.field public final blacklist pdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

.field public final blacklist pdfSizeInKb:F

.field public final blacklist status:Landroid/graphics/pdf/models/jni/PdfStatus;


# direct methods
.method public constructor blacklist <init>(ILandroid/graphics/pdf/PdfDocumentProxy;F)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "pdfDocument"    # Landroid/graphics/pdf/PdfDocumentProxy;
    .param p3, "pdfSizeInKb"    # F

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Landroid/graphics/pdf/models/jni/PdfStatus;->LOADED:Landroid/graphics/pdf/models/jni/PdfStatus;

    invoke-virtual {v0}, Landroid/graphics/pdf/models/jni/PdfStatus;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_17

    .line 39
    if-eqz p2, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    const-string v0, "Missing PdfDocumentProxy"

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    goto :goto_20

    .line 41
    :cond_17
    if-nez p2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    const-string v0, "Shouldn\'t construct broken PdfDocumentProxy"

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 45
    :goto_20
    invoke-static {}, Landroid/graphics/pdf/models/jni/PdfStatus;->values()[Landroid/graphics/pdf/models/jni/PdfStatus;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->status:Landroid/graphics/pdf/models/jni/PdfStatus;

    .line 46
    iput-object p2, p0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->pdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 47
    iput p3, p0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->pdfSizeInKb:F

    .line 48
    return-void
.end method
