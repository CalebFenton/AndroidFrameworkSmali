.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final whitelist RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final whitelist RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final greylist-max-o mHeight:I

.field private greylist-max-o mIndex:I

.field private final greylist-max-o mWidth:I

.field final synthetic blacklist this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 469
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Landroid/util/CloseGuard;

    .line 470
    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    .line 471
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->retainPage(I)V

    .line 472
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    .line 473
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    .line 475
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private greylist-max-o doClose()V
    .registers 4

    .line 1014
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 1015
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v2}, Landroid/graphics/pdf/PdfProcessor;->releasePage(I)V

    .line 1016
    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    .line 1019
    :cond_1a
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 1020
    return-void
.end method

.method private blacklist throwIfDocumentOrPageClosed()V
    .registers 2

    .line 1023
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$mthrowIfDocumentClosed(Landroid/graphics/pdf/PdfRenderer;)V

    .line 1024
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfPageClosed()V

    .line 1025
    return-void
.end method

.method private blacklist throwIfPageClosed()V
    .registers 3

    .line 1028
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1031
    return-void

    .line 1029
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addPageAnnotation(Landroid/graphics/pdf/component/PdfAnnotation;)I
    .registers 4
    .param p1, "annotation"    # Landroid/graphics/pdf/component/PdfAnnotation;

    .line 828
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 829
    const-string v0, "Annotation should not be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 830
    nop

    .line 831
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfAnnotation;->getPdfAnnotationType()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 830
    :goto_12
    const-string v1, "Annotation should be of valid type"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 833
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->addPageAnnotation(ILandroid/graphics/pdf/component/PdfAnnotation;)I

    move-result v0

    return v0
.end method

.method public blacklist addPageObject(Landroid/graphics/pdf/component/PdfPageObject;)I
    .registers 4
    .param p1, "pageObject"    # Landroid/graphics/pdf/component/PdfPageObject;

    .line 927
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 928
    const-string v0, "PdfPageObject should not be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 929
    nop

    .line 930
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfPageObject;->getPdfObjectType()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/pdf/component/PdfPageObjectType;->isValidType(I)Z

    move-result v0

    .line 929
    const-string v1, "PageObject should be of valid type"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 932
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->addPageObject(ILandroid/graphics/pdf/component/PdfPageObject;)I

    move-result v0

    return v0
.end method

.method public whitelist applyEdit(Landroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;
    .registers 4
    .param p1, "editRecord"    # Landroid/graphics/pdf/models/FormEditRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/pdf/models/FormEditRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 782
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->applyEdit(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 995
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 996
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    .line 997
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1003
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 1004
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 1007
    :cond_9
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 1009
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1010
    nop

    .line 1011
    return-void

    .line 1009
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1010
    throw v0
.end method

.method public whitelist getFormWidgetInfoAtIndex(I)Landroid/graphics/pdf/models/FormWidgetInfo;
    .registers 4
    .param p1, "widgetIndex"    # I

    .line 736
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 737
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->getFormWidgetInfoAtIndex(II)Landroid/graphics/pdf/models/FormWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormWidgetInfoAtPosition(II)Landroid/graphics/pdf/models/FormWidgetInfo;
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 751
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 752
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->getFormWidgetInfoAtPosition(III)Landroid/graphics/pdf/models/FormWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormWidgetInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/FormWidgetInfo;",
            ">;"
        }
    .end annotation

    .line 704
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/graphics/pdf/PdfRenderer$Page;->getFormWidgetInfos([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormWidgetInfos([I)Ljava/util/List;
    .registers 4
    .param p1, "types"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/FormWidgetInfo;",
            ">;"
        }
    .end annotation

    .line 718
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 719
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->getFormWidgetInfos(I[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGotoLinks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageGotoLinkContent;",
            ">;"
        }
    .end annotation

    .line 691
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 692
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageGotoLinks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 514
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public whitelist getImageContents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageImageContent;",
            ">;"
        }
    .end annotation

    .line 614
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 615
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageImageContents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIndex()I
    .registers 2

    .line 486
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public whitelist getLinkContents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageLinkContent;",
            ">;"
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 676
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageLinkContents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPageAnnotations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/pdf/component/PdfAnnotation;",
            ">;>;"
        }
    .end annotation

    .line 804
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 805
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageAnnotations(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPageObjects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/pdf/component/PdfPageObject;",
            ">;>;"
        }
    .end annotation

    .line 907
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 908
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageObjects(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextContents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageTextContent;",
            ">;"
        }
    .end annotation

    .line 597
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 598
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageTextContents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 500
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public blacklist removePageAnnotation(I)V
    .registers 4
    .param p1, "annotationId"    # I

    .line 852
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 853
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Annotation id should be non-negative"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 855
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->removePageAnnotation(II)V

    .line 856
    return-void
.end method

.method public blacklist removePageObject(I)V
    .registers 4
    .param p1, "objectId"    # I

    .line 981
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 982
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Page object id should be greater than equal to 0"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 984
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->removePageObject(II)V

    .line 985
    return-void
.end method

.method public whitelist render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .registers 14
    .param p1, "destination"    # Landroid/graphics/Bitmap;
    .param p2, "destClip"    # Landroid/graphics/Rect;
    .param p3, "transform"    # Landroid/graphics/Matrix;
    .param p4, "renderMode"    # I

    .line 552
    const-wide/32 v0, 0x1498e613

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v8

    .line 553
    .local v8, "renderFormFields":Z
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v2

    iget v3, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    new-instance v0, Landroid/graphics/pdf/RenderParams$Builder;

    invoke-direct {v0, p4}, Landroid/graphics/pdf/RenderParams$Builder;-><init>(I)V

    .line 554
    invoke-virtual {v0}, Landroid/graphics/pdf/RenderParams$Builder;->build()Landroid/graphics/pdf/RenderParams;

    move-result-object v7

    .line 553
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "destination":Landroid/graphics/Bitmap;
    .end local p2    # "destClip":Landroid/graphics/Rect;
    .end local p3    # "transform":Landroid/graphics/Matrix;
    .local v4, "destination":Landroid/graphics/Bitmap;
    .local v5, "destClip":Landroid/graphics/Rect;
    .local v6, "transform":Landroid/graphics/Matrix;
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/pdf/PdfProcessor;->renderPage(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/pdf/RenderParams;Z)V

    .line 555
    return-void
.end method

.method public whitelist render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/pdf/RenderParams;)V
    .registers 14
    .param p1, "destination"    # Landroid/graphics/Bitmap;
    .param p2, "destClip"    # Landroid/graphics/Rect;
    .param p3, "transform"    # Landroid/graphics/Matrix;
    .param p4, "params"    # Landroid/graphics/pdf/RenderParams;

    .line 579
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 580
    const-wide/32 v0, 0x1498e613

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v8

    .line 581
    .local v8, "renderFormFields":Z
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v2

    iget v3, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "destination":Landroid/graphics/Bitmap;
    .end local p2    # "destClip":Landroid/graphics/Rect;
    .end local p3    # "transform":Landroid/graphics/Matrix;
    .end local p4    # "params":Landroid/graphics/pdf/RenderParams;
    .local v4, "destination":Landroid/graphics/Bitmap;
    .local v5, "destClip":Landroid/graphics/Rect;
    .local v6, "transform":Landroid/graphics/Matrix;
    .local v7, "params":Landroid/graphics/pdf/RenderParams;
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/pdf/PdfProcessor;->renderPage(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/pdf/RenderParams;Z)V

    .line 583
    return-void
.end method

.method public whitelist searchText(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/PageMatchBounds;",
            ">;"
        }
    .end annotation

    .line 635
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 636
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->searchPageText(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist selectContent(Landroid/graphics/pdf/models/selection/SelectionBoundary;Landroid/graphics/pdf/models/selection/SelectionBoundary;)Landroid/graphics/pdf/models/selection/PageSelection;
    .registers 5
    .param p1, "start"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;
    .param p2, "stop"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;

    .line 661
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 662
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->selectPageText(ILandroid/graphics/pdf/models/selection/SelectionBoundary;Landroid/graphics/pdf/models/selection/SelectionBoundary;)Landroid/graphics/pdf/models/selection/PageSelection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updatePageAnnotation(ILandroid/graphics/pdf/component/PdfAnnotation;)Z
    .registers 7
    .param p1, "annotationId"    # I
    .param p2, "annotation"    # Landroid/graphics/pdf/component/PdfAnnotation;

    .line 878
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 879
    const-string v0, "PdfAnnotation should not be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 880
    nop

    .line 881
    invoke-virtual {p2}, Landroid/graphics/pdf/component/PdfAnnotation;->getPdfAnnotationType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 880
    :goto_14
    const-string v3, "Annotation should be of valid type"

    invoke-static {v0, v3}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 883
    if-ltz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    const-string v0, "Annotation Id should be non-negative"

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 885
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->updatePageAnnotation(IILandroid/graphics/pdf/component/PdfAnnotation;)Z

    move-result v0

    return v0
.end method

.method public blacklist updatePageObject(ILandroid/graphics/pdf/component/PdfPageObject;)Z
    .registers 5
    .param p1, "objectId"    # I
    .param p2, "pageObject"    # Landroid/graphics/pdf/component/PdfPageObject;

    .line 958
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfDocumentOrPageClosed()V

    .line 959
    const-string v0, "PdfPageObject should not be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 960
    nop

    .line 961
    invoke-virtual {p2}, Landroid/graphics/pdf/component/PdfPageObject;->getPdfObjectType()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/pdf/component/PdfPageObjectType;->isValidType(I)Z

    move-result v0

    .line 960
    const-string v1, "PageObject should be of valid type"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 963
    if-ltz p1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "Page object id should be greater than equal to 0"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 965
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->updatePageObject(IILandroid/graphics/pdf/component/PdfPageObject;)Z

    move-result v0

    return v0
.end method
