.class public final Landroid/graphics/pdf/PdfRendererPreV$Page;
.super Ljava/lang/Object;
.source "PdfRendererPreV.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRendererPreV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# instance fields
.field private final blacklist mHeight:I

.field private blacklist mIndex:I

.field private final blacklist mWidth:I

.field final synthetic blacklist this$0:Landroid/graphics/pdf/PdfRendererPreV;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/pdf/PdfRendererPreV;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfRendererPreV;
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

    .line 342
    iput-object p1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p2, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    .line 344
    invoke-static {p1}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->retainPage(I)V

    .line 345
    invoke-static {p1}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/pdf/PdfProcessor;->getPageWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mWidth:I

    .line 346
    invoke-static {p1}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/pdf/PdfProcessor;->getPageHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mHeight:I

    .line 347
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/pdf/PdfRendererPreV;ILandroid/graphics/pdf/PdfRendererPreV-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRendererPreV$Page;-><init>(Landroid/graphics/pdf/PdfRendererPreV;I)V

    return-void
.end method

.method private blacklist doClose()V
    .registers 4

    .line 844
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 845
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v2, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v2}, Landroid/graphics/pdf/PdfProcessor;->releasePage(I)V

    .line 846
    iput v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    .line 848
    :cond_1a
    return-void
.end method

.method private blacklist throwIfDocumentOrPageClosed()V
    .registers 2

    .line 857
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$mthrowIfDocumentClosed(Landroid/graphics/pdf/PdfRendererPreV;)V

    .line 858
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfPageClosed()V

    .line 859
    return-void
.end method

.method private blacklist throwIfPageClosed()V
    .registers 3

    .line 851
    iget v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 854
    return-void

    .line 852
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page already closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addPageAnnotation(Landroid/graphics/pdf/component/PdfAnnotation;)I
    .registers 4
    .param p1, "annotation"    # Landroid/graphics/pdf/component/PdfAnnotation;

    .line 659
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 660
    const-string v0, "Annotation should not be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    nop

    .line 662
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfAnnotation;->getPdfAnnotationType()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 661
    :goto_12
    const-string v1, "Annotation should be of valid type"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 664
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->addPageAnnotation(ILandroid/graphics/pdf/component/PdfAnnotation;)I

    move-result v0

    return v0
.end method

.method public blacklist addPageObject(Landroid/graphics/pdf/component/PdfPageObject;)I
    .registers 4
    .param p1, "pageObject"    # Landroid/graphics/pdf/component/PdfPageObject;

    .line 760
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 761
    const-string v0, "PdfPageObject should not be null."

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 762
    nop

    .line 763
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfPageObject;->getPdfObjectType()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 762
    :goto_12
    const-string v1, "PageObject should be of valid type."

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 765
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

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

    .line 611
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$mthrowIfDocumentClosed(Landroid/graphics/pdf/PdfRendererPreV;)V

    .line 612
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfPageClosed()V

    .line 613
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->applyEdit(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 827
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 828
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->doClose()V

    .line 829
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 837
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->doClose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 839
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 840
    nop

    .line 841
    return-void

    .line 839
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 840
    throw v0
.end method

.method public whitelist getFormWidgetInfoAtIndex(I)Landroid/graphics/pdf/models/FormWidgetInfo;
    .registers 4
    .param p1, "annotationIndex"    # I

    .line 563
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$mthrowIfDocumentClosed(Landroid/graphics/pdf/PdfRendererPreV;)V

    .line 564
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfPageClosed()V

    .line 565
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->getFormWidgetInfoAtIndex(II)Landroid/graphics/pdf/models/FormWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormWidgetInfoAtPosition(II)Landroid/graphics/pdf/models/FormWidgetInfo;
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 580
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$mthrowIfDocumentClosed(Landroid/graphics/pdf/PdfRendererPreV;)V

    .line 581
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfPageClosed()V

    .line 582
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

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

    .line 528
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->getFormWidgetInfos([I)Ljava/util/List;

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

    .line 543
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$mthrowIfDocumentClosed(Landroid/graphics/pdf/PdfRendererPreV;)V

    .line 544
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfPageClosed()V

    .line 545
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

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

    .line 513
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 514
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageGotoLinks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 440
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 441
    iget v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mHeight:I

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

    .line 412
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 413
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageImageContents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIndex()I
    .registers 2

    .line 356
    iget v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

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

    .line 498
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 499
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

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

    .line 635
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 636
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

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

    .line 740
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 741
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

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

    .line 396
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 397
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfProcessor;->getPageTextContents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 426
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 427
    iget v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mWidth:I

    return v0
.end method

.method public blacklist removePageAnnotation(I)V
    .registers 4
    .param p1, "annotationId"    # I

    .line 684
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 685
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Annotation id should be non-negative"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 687
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->removePageAnnotation(II)V

    .line 688
    return-void
.end method

.method public blacklist removePageObject(I)V
    .registers 4
    .param p1, "objectId"    # I

    .line 814
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 815
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Page object id should be greater than equal to 0."

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 817
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->removePageObject(II)V

    .line 818
    return-void
.end method

.method public whitelist render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/pdf/RenderParams;)V
    .registers 13
    .param p1, "destination"    # Landroid/graphics/Bitmap;
    .param p2, "destClip"    # Landroid/graphics/Rect;
    .param p3, "transform"    # Landroid/graphics/Matrix;
    .param p4, "params"    # Landroid/graphics/pdf/RenderParams;

    .line 380
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 381
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v1

    iget v2, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "destination":Landroid/graphics/Bitmap;
    .end local p2    # "destClip":Landroid/graphics/Rect;
    .end local p3    # "transform":Landroid/graphics/Matrix;
    .end local p4    # "params":Landroid/graphics/pdf/RenderParams;
    .local v3, "destination":Landroid/graphics/Bitmap;
    .local v4, "destClip":Landroid/graphics/Rect;
    .local v5, "transform":Landroid/graphics/Matrix;
    .local v6, "params":Landroid/graphics/pdf/RenderParams;
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/pdf/PdfProcessor;->renderPage(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/pdf/RenderParams;Z)V

    .line 383
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

    .line 460
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 461
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/pdf/PdfProcessor;->searchPageText(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist selectContent(Landroid/graphics/pdf/models/selection/SelectionBoundary;Landroid/graphics/pdf/models/selection/SelectionBoundary;)Landroid/graphics/pdf/models/selection/PageSelection;
    .registers 5
    .param p1, "start"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;
    .param p2, "stop"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;

    .line 485
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 486
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->selectPageText(ILandroid/graphics/pdf/models/selection/SelectionBoundary;Landroid/graphics/pdf/models/selection/SelectionBoundary;)Landroid/graphics/pdf/models/selection/PageSelection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updatePageAnnotation(ILandroid/graphics/pdf/component/PdfAnnotation;)Z
    .registers 7
    .param p1, "annotationId"    # I
    .param p2, "annotation"    # Landroid/graphics/pdf/component/PdfAnnotation;

    .line 711
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 712
    const-string v0, "PdfAnnotation should not be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 713
    nop

    .line 714
    invoke-virtual {p2}, Landroid/graphics/pdf/component/PdfAnnotation;->getPdfAnnotationType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 713
    :goto_14
    const-string v3, "Annotation should be of valid type"

    invoke-static {v0, v3}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 716
    if-ltz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    const-string v0, "Annotation Id should be non-negative"

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 718
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->updatePageAnnotation(IILandroid/graphics/pdf/component/PdfAnnotation;)Z

    move-result v0

    return v0
.end method

.method public blacklist updatePageObject(ILandroid/graphics/pdf/component/PdfPageObject;)Z
    .registers 7
    .param p1, "objectId"    # I
    .param p2, "pageObject"    # Landroid/graphics/pdf/component/PdfPageObject;

    .line 791
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRendererPreV$Page;->throwIfDocumentOrPageClosed()V

    .line 792
    const-string v0, "PdfPageObject should not be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 793
    nop

    .line 794
    invoke-virtual {p2}, Landroid/graphics/pdf/component/PdfPageObject;->getPdfObjectType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 793
    :goto_14
    const-string v3, "PageObject should be of valid type"

    invoke-static {v0, v3}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 796
    if-ltz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    const-string v0, "Page object id should be greater than equal to 0."

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 798
    iget-object v0, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->this$0:Landroid/graphics/pdf/PdfRendererPreV;

    invoke-static {v0}, Landroid/graphics/pdf/PdfRendererPreV;->-$$Nest$fgetmPdfProcessor(Landroid/graphics/pdf/PdfRendererPreV;)Landroid/graphics/pdf/PdfProcessor;

    move-result-object v0

    iget v1, p0, Landroid/graphics/pdf/PdfRendererPreV$Page;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->updatePageObject(IILandroid/graphics/pdf/component/PdfPageObject;)Z

    move-result v0

    return v0
.end method
