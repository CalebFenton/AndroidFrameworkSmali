.class public Landroid/graphics/pdf/PdfDocumentProxy;
.super Ljava/lang/Object;
.source "PdfDocumentProxy.java"


# static fields
.field private static final blacklist LIB_NAME:Ljava/lang/String; = "pdfclient"

.field private static final blacklist TAG:Ljava/lang/String; = "PdfDocument"


# instance fields
.field private final blacklist mNumPages:I

.field private final blacklist mPdfDocPtr:J


# direct methods
.method protected constructor blacklist <init>(JI)V
    .registers 4
    .param p1, "pdfDocPtr"    # J
    .param p3, "numPages"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Landroid/graphics/pdf/PdfDocumentProxy;->mPdfDocPtr:J

    .line 59
    iput p3, p0, Landroid/graphics/pdf/PdfDocumentProxy;->mNumPages:I

    .line 60
    return-void
.end method

.method private native blacklist cloneWithoutSecurity(I)Z
.end method

.method public static native blacklist createFromFd(ILjava/lang/String;)Landroid/graphics/pdf/models/jni/LoadPdfResult;
.end method

.method static synthetic blacklist lambda$loadLibPdf$0()V
    .registers 1

    .line 77
    const-string v0, "pdfclient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist loadLibPdf()V
    .registers 1

    .line 77
    new-instance v0, Landroid/graphics/pdf/PdfDocumentProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/graphics/pdf/PdfDocumentProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/graphics/pdf/utils/StrictModeUtils;->bypass(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method


# virtual methods
.method public native blacklist addPageAnnotation(ILandroid/graphics/pdf/component/PdfAnnotation;)I
.end method

.method public native blacklist addPageObject(ILandroid/graphics/pdf/component/PdfPageObject;)I
.end method

.method public native blacklist clickOnPage(III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist cloneWithoutSecurity(Landroid/os/ParcelFileDescriptor;)Z
    .registers 3
    .param p1, "destination"    # Landroid/os/ParcelFileDescriptor;

    .line 167
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/pdf/PdfDocumentProxy;->cloneWithoutSecurity(I)Z

    move-result v0

    return v0
.end method

.method public native blacklist destroy()V
.end method

.method public native blacklist getFormType()I
.end method

.method public native blacklist getFormWidgetInfo(II)Landroid/graphics/pdf/models/FormWidgetInfo;
.end method

.method public native blacklist getFormWidgetInfo(III)Landroid/graphics/pdf/models/FormWidgetInfo;
.end method

.method public native blacklist getFormWidgetInfos(I[I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/FormWidgetInfo;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getNumPages()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/graphics/pdf/PdfDocumentProxy;->mNumPages:I

    return v0
.end method

.method public native blacklist getPageAltText(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native blacklist getPageAnnotations(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/component/PdfAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public native blacklist getPageGotoLinks(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageGotoLinkContent;",
            ">;"
        }
    .end annotation
.end method

.method public native blacklist getPageHeight(I)I
.end method

.method public native blacklist getPageLinks(I)Landroid/graphics/pdf/models/jni/LinkRects;
.end method

.method public native blacklist getPageObjects(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/component/PdfPageObject;",
            ">;"
        }
    .end annotation
.end method

.method public native blacklist getPageText(I)Ljava/lang/String;
.end method

.method public native blacklist getPageWidth(I)I
.end method

.method public blacklist getPdfDocPtr()J
    .registers 3

    .line 81
    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocumentProxy;->mPdfDocPtr:J

    return-wide v0
.end method

.method public native blacklist isPdfLinearized()Z
.end method

.method public native blacklist releasePage(I)V
.end method

.method public native blacklist removePageAnnotation(II)Z
.end method

.method public native blacklist removePageObject(II)Z
.end method

.method public native blacklist render(ILandroid/graphics/Bitmap;IIII[FIIZ)Z
.end method

.method public native blacklist retainPage(I)V
.end method

.method public blacklist saveAs(Landroid/os/ParcelFileDescriptor;)Z
    .registers 3
    .param p1, "destination"    # Landroid/os/ParcelFileDescriptor;

    .line 107
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/pdf/PdfDocumentProxy;->saveToFd(I)Z

    move-result v0

    return v0
.end method

.method public native blacklist saveToFd(I)Z
.end method

.method public native blacklist scaleForPrinting()Z
.end method

.method public native blacklist searchPageText(ILjava/lang/String;)Landroid/graphics/pdf/models/jni/MatchRects;
.end method

.method public native blacklist selectPageText(ILandroid/graphics/pdf/models/jni/SelectionBoundary;Landroid/graphics/pdf/models/jni/SelectionBoundary;)Landroid/graphics/pdf/models/jni/PageSelection;
.end method

.method public native blacklist setFormFieldSelectedIndices(II[I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public native blacklist setFormFieldText(IILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public native blacklist updatePageAnnotation(IILandroid/graphics/pdf/component/PdfAnnotation;)Z
.end method

.method public native blacklist updatePageObject(IILandroid/graphics/pdf/component/PdfPageObject;)Z
.end method
