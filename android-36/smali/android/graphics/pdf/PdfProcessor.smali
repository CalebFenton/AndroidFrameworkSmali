.class public Landroid/graphics/pdf/PdfProcessor;
.super Ljava/lang/Object;
.source "PdfProcessor.java"


# static fields
.field public static final blacklist PDF_FORM_TYPE_ACRO_FORM:I = 0x1

.field public static final blacklist PDF_FORM_TYPE_NONE:I = 0x0

.field public static final blacklist PDF_FORM_TYPE_XFA_FOREGROUND:I = 0x3

.field public static final blacklist PDF_FORM_TYPE_XFA_FULL:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "PdfProcessor"

.field private static final blacklist sPdfiumLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mPageAnnotationsIdManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/pdf/PdfPageComponentsIdManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPageObjectIdManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/pdf/PdfPageComponentsIdManager;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

.field private final blacklist mPdfEventLogger:Landroid/graphics/pdf/logging/PdfEventLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Landroid/graphics/pdf/PdfDocumentProxy;->loadLibPdf()V

    .line 90
    new-instance v0, Landroid/graphics/pdf/logging/PdfEventLogger;

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 92
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/pdf/logging/PdfEventLogger;-><init>(IJ)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfEventLogger:Landroid/graphics/pdf/logging/PdfEventLogger;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfProcessor;->mPageObjectIdManagerMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfProcessor;->mPageAnnotationsIdManagerMap:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method private blacklist applyEditSetText(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "editRecord"    # Landroid/graphics/pdf/models/FormEditRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/pdf/models/FormEditRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 542
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t apply set text record without text"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getText()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_10
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 547
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getWidgetIndex()I

    move-result v3

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/pdf/PdfDocumentProxy;->setFormFieldText(IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 549
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    if-eqz v2, :cond_21

    .line 552
    monitor-exit v1

    return-object v2

    .line 550
    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot set form field text on this widget."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "text":Ljava/lang/String;
    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "editRecord":Landroid/graphics/pdf/models/FormEditRecord;
    throw v3

    .line 553
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .restart local v0    # "text":Ljava/lang/String;
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "editRecord":Landroid/graphics/pdf/models/FormEditRecord;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method private blacklist applyEditTypeClick(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "editRecord"    # Landroid/graphics/pdf/models/FormEditRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/pdf/models/FormEditRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 513
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getClickPoint()Landroid/graphics/Point;

    move-result-object v0

    const-string v1, "Can\'t apply click edit record without point"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 515
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getClickPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 516
    .local v0, "clickPoint":Landroid/graphics/Point;
    sget-object v1, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_10
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 518
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/pdf/PdfDocumentProxy;->clickOnPage(III)Ljava/util/List;

    move-result-object v2

    .line 519
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    if-eqz v2, :cond_21

    .line 522
    monitor-exit v1

    return-object v2

    .line 520
    :cond_21
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot click on this widget."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clickPoint":Landroid/graphics/Point;
    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "editRecord":Landroid/graphics/pdf/models/FormEditRecord;
    throw v3

    .line 523
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .restart local v0    # "clickPoint":Landroid/graphics/Point;
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "editRecord":Landroid/graphics/pdf/models/FormEditRecord;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method private blacklist applyEditTypeSetIndices(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "editRecord"    # Landroid/graphics/pdf/models/FormEditRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/pdf/models/FormEditRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 528
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 530
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getSelectedIndices()[I

    move-result-object v1

    .line 531
    .local v1, "selectedIndices":[I
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 532
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getWidgetIndex()I

    move-result v3

    .line 531
    invoke-virtual {v2, p1, v3, v1}, Landroid/graphics/pdf/PdfDocumentProxy;->setFormFieldSelectedIndices(II[I)Ljava/util/List;

    move-result-object v2

    .line 533
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    if-eqz v2, :cond_18

    .line 536
    monitor-exit v0

    return-object v2

    .line 534
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot set selected indices on this widget."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "editRecord":Landroid/graphics/pdf/models/FormEditRecord;
    throw v3

    .line 537
    .end local v1    # "selectedIndices":[I
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "editRecord":Landroid/graphics/pdf/models/FormEditRecord;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private blacklist assertPdfDocumentNotNull()V
    .registers 3

    .line 829
    iget-object v0, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    const-string v1, "PdfDocumentProxy cannot be null"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 830
    return-void
.end method

.method private blacklist clipInBitmap(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "clip"    # Landroid/graphics/Rect;
    .param p2, "destination"    # Landroid/graphics/Bitmap;

    .line 821
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 822
    return v0

    .line 824
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_1d

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_1d

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_1d

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 825
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 824
    :goto_1e
    return v0
.end method

.method private blacklist cloneWithoutSecurity(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "destination"    # Landroid/os/ParcelFileDescriptor;

    .line 802
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 804
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->cloneWithoutSecurity(Landroid/os/ParcelFileDescriptor;)Z

    .line 805
    monitor-exit v0

    .line 806
    return-void

    .line 805
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private blacklist saveAs(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "destination"    # Landroid/os/ParcelFileDescriptor;

    .line 814
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 816
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->saveAs(Landroid/os/ParcelFileDescriptor;)Z

    .line 817
    monitor-exit v0

    .line 818
    return-void

    .line 817
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method


# virtual methods
.method public blacklist addPageAnnotation(ILandroid/graphics/pdf/component/PdfAnnotation;)I
    .registers 7
    .param p1, "pageNum"    # I
    .param p2, "annotation"    # Landroid/graphics/pdf/component/PdfAnnotation;

    .line 629
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 631
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/pdf/PdfDocumentProxy;->addPageAnnotation(ILandroid/graphics/pdf/component/PdfAnnotation;)I

    move-result v1

    .line 632
    .local v1, "addedAnnotationIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    .line 635
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPageAnnotationsIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    invoke-virtual {v2, v1}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->getIdForIndex(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 633
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to add annotation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "annotation":Landroid/graphics/pdf/component/PdfAnnotation;
    throw v2

    .line 636
    .end local v1    # "addedAnnotationIndex":I
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "annotation":Landroid/graphics/pdf/component/PdfAnnotation;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist addPageObject(ILandroid/graphics/pdf/component/PdfPageObject;)I
    .registers 7
    .param p1, "pageNum"    # I
    .param p2, "pageObject"    # Landroid/graphics/pdf/component/PdfPageObject;

    .line 733
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 735
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/pdf/PdfDocumentProxy;->addPageObject(ILandroid/graphics/pdf/component/PdfPageObject;)I

    move-result v1

    .line 736
    .local v1, "addedObjectIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    .line 739
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPageObjectIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    invoke-virtual {v2, v1}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->getIdForIndex(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 737
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to add PageObject"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "pageObject":Landroid/graphics/pdf/component/PdfPageObject;
    throw v2

    .line 740
    .end local v1    # "addedObjectIndex":I
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "pageObject":Landroid/graphics/pdf/component/PdfPageObject;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist applyEdit(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;
    .registers 6
    .param p1, "pageNum"    # I
    .param p2, "editRecord"    # Landroid/graphics/pdf/models/FormEditRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/pdf/models/FormEditRecord;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 499
    const-string v0, "Edit record cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 500
    const/4 v0, 0x1

    if-ltz p1, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const-string v2, "Invalid page number"

    invoke-static {v1, v2}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getType()I

    move-result v1

    if-nez v1, :cond_1b

    .line 502
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->applyEditTypeClick(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 503
    :cond_1b
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getType()I

    move-result v1

    if-ne v1, v0, :cond_26

    .line 504
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->applyEditTypeSetIndices(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 505
    :cond_26
    invoke-virtual {p2}, Landroid/graphics/pdf/models/FormEditRecord;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 506
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfProcessor;->applyEditSetText(ILandroid/graphics/pdf/models/FormEditRecord;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 508
    :cond_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist create(Landroid/os/ParcelFileDescriptor;Landroid/graphics/pdf/LoadParams;)V
    .registers 16
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "params"    # Landroid/graphics/pdf/LoadParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 113
    .local v1, "loadingStartTime":J
    const-string v0, "Input FD cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfProcessor;->ensurePdfDestroyed()V

    .line 116
    :try_start_c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_17} :catch_a8

    .line 119
    nop

    .line 121
    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Landroid/graphics/pdf/LoadParams;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move-object v3, v0

    .line 122
    .local v3, "password":Ljava/lang/String;
    sget-object v4, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v4

    .line 123
    :try_start_24
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-static {v0, v3}, Landroid/graphics/pdf/PdfDocumentProxy;->createFromFd(ILjava/lang/String;)Landroid/graphics/pdf/models/jni/LoadPdfResult;

    move-result-object v0

    .line 125
    .local v0, "result":Landroid/graphics/pdf/models/jni/LoadPdfResult;
    sget-object v5, Landroid/graphics/pdf/PdfProcessor$1;->$SwitchMap$android$graphics$pdf$models$jni$PdfStatus:[I

    iget-object v6, v0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->status:Landroid/graphics/pdf/models/jni/PdfStatus;

    invoke-virtual {v6}, Landroid/graphics/pdf/models/jni/PdfStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_b2

    .line 165
    iget-object v5, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfEventLogger:Landroid/graphics/pdf/logging/PdfEventLogger;

    goto :goto_90

    .line 148
    :pswitch_3c
    iget-object v5, v0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->pdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    iput-object v5, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 151
    iget-object v5, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocumentProxy;->isPdfLinearized()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 152
    const/4 v5, 0x1

    goto :goto_4b

    .line 153
    :cond_4a
    const/4 v5, 0x2

    :goto_4b
    move v11, v5

    .line 156
    .local v11, "linearizationType":I
    iget-object v6, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfEventLogger:Landroid/graphics/pdf/logging/PdfEventLogger;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    iget v9, v0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->pdfSizeInKb:F

    iget-object v5, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 161
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocumentProxy;->getNumPages()I

    move-result v12

    .line 156
    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/pdf/logging/PdfEventLogger;->logPdfLoadReportedEvent(JFIII)V

    .line 162
    .end local v11    # "linearizationType":I
    nop

    .line 174
    .end local v0    # "result":Landroid/graphics/pdf/models/jni/LoadPdfResult;
    monitor-exit v4

    .line 175
    return-void

    .line 138
    .restart local v0    # "result":Landroid/graphics/pdf/models/jni/LoadPdfResult;
    :pswitch_62
    iget-object v5, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfEventLogger:Landroid/graphics/pdf/logging/PdfEventLogger;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    iget v8, v0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->pdfSizeInKb:F

    .line 138
    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/pdf/logging/PdfEventLogger;->logPdfLoadReportedEvent(JFIII)V

    .line 144
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Password required to access document"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "loadingStartTime":J
    .end local v3    # "password":Ljava/lang/String;
    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "params":Landroid/graphics/pdf/LoadParams;
    throw v5

    .line 128
    .restart local v1    # "loadingStartTime":J
    .restart local v3    # "password":Ljava/lang/String;
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "params":Landroid/graphics/pdf/LoadParams;
    :pswitch_79
    iget-object v5, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfEventLogger:Landroid/graphics/pdf/logging/PdfEventLogger;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    iget v8, v0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->pdfSizeInKb:F

    .line 128
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/pdf/logging/PdfEventLogger;->logPdfLoadReportedEvent(JFIII)V

    .line 134
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unable to load the document!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "loadingStartTime":J
    .end local v3    # "password":Ljava/lang/String;
    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "params":Landroid/graphics/pdf/LoadParams;
    throw v5

    .line 166
    .restart local v1    # "loadingStartTime":J
    .restart local v3    # "password":Ljava/lang/String;
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "params":Landroid/graphics/pdf/LoadParams;
    :goto_90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    iget v8, v0, Landroid/graphics/pdf/models/jni/LoadPdfResult;->pdfSizeInKb:F

    .line 165
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/pdf/logging/PdfEventLogger;->logPdfLoadReportedEvent(JFIII)V

    .line 171
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected error has occurred!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "loadingStartTime":J
    .end local v3    # "password":Ljava/lang/String;
    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "params":Landroid/graphics/pdf/LoadParams;
    throw v5

    .line 174
    .end local v0    # "result":Landroid/graphics/pdf/models/jni/LoadPdfResult;
    .restart local v1    # "loadingStartTime":J
    .restart local v3    # "password":Ljava/lang/String;
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "params":Landroid/graphics/pdf/LoadParams;
    :catchall_a5
    move-exception v0

    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_24 .. :try_end_a7} :catchall_a5

    throw v0

    .line 117
    .end local v3    # "password":Ljava/lang/String;
    :catch_a8
    move-exception v0

    .line 118
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptor not seekable"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_62
        :pswitch_3c
    .end packed-switch
.end method

.method public blacklist ensurePdfDestroyed()V
    .registers 6

    .line 558
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_20

    if-eqz v1, :cond_1e

    .line 561
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocumentProxy;->destroy()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_10

    .line 565
    :goto_d
    :try_start_d
    iput-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_20

    .line 566
    goto :goto_1e

    .line 562
    :catchall_10
    move-exception v2

    .line 563
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_11
    const-string v3, "PdfProcessor"

    const-string v4, "Error closing PdfDocumentProxy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_d

    .line 565
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_19
    move-exception v2

    :try_start_1a
    iput-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 566
    nop

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    throw v2

    .line 568
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist getDocumentLinearizationType()I
    .registers 3

    .line 405
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 407
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocumentProxy;->isPdfLinearized()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    goto :goto_11

    .line 408
    :cond_10
    const/4 v1, 0x1

    :goto_11
    monitor-exit v0

    .line 407
    return v1

    .line 409
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method blacklist getFormWidgetInfoAtIndex(II)Landroid/graphics/pdf/models/FormWidgetInfo;
    .registers 7
    .param p1, "pageNum"    # I
    .param p2, "annotationIndex"    # I

    .line 462
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 464
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/pdf/PdfDocumentProxy;->getFormWidgetInfo(II)Landroid/graphics/pdf/models/FormWidgetInfo;

    move-result-object v1

    .line 465
    .local v1, "result":Landroid/graphics/pdf/models/FormWidgetInfo;
    if-eqz v1, :cond_10

    .line 468
    monitor-exit v0

    return-object v1

    .line 466
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No widget found at this index."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "annotationIndex":I
    throw v2

    .line 469
    .end local v1    # "result":Landroid/graphics/pdf/models/FormWidgetInfo;
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "annotationIndex":I
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist getFormWidgetInfoAtPosition(III)Landroid/graphics/pdf/models/FormWidgetInfo;
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 475
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 477
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/pdf/PdfDocumentProxy;->getFormWidgetInfo(III)Landroid/graphics/pdf/models/FormWidgetInfo;

    move-result-object v1

    .line 478
    .local v1, "result":Landroid/graphics/pdf/models/FormWidgetInfo;
    if-eqz v1, :cond_10

    .line 481
    monitor-exit v0

    return-object v1

    .line 479
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No widget found at point."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    throw v2

    .line 482
    .end local v1    # "result":Landroid/graphics/pdf/models/FormWidgetInfo;
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist getFormWidgetInfos(I[I)Ljava/util/List;
    .registers 5
    .param p1, "pageNum"    # I
    .param p2, "types"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/FormWidgetInfo;",
            ">;"
        }
    .end annotation

    .line 447
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 449
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/pdf/PdfDocumentProxy;->getFormWidgetInfos(I[I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 450
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getNumPages()I
    .registers 3

    .line 179
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 181
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocumentProxy;->getNumPages()I

    move-result v1

    monitor-exit v0

    return v1

    .line 182
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getPageAnnotations(I)Ljava/util/List;
    .registers 10
    .param p1, "pageNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/pdf/component/PdfAnnotation;",
            ">;>;"
        }
    .end annotation

    .line 598
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 600
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageAnnotationsIdManagerMap:Ljava/util/HashMap;

    .line 601
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    .line 602
    .local v1, "pageAnnotationIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v2, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->getPageAnnotations(I)Ljava/util/List;

    move-result-object v2

    .line 603
    .local v2, "pdfAnnotations":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/component/PdfAnnotation;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v3, "pdfAnnotationIdPairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/pdf/component/PdfAnnotation;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 605
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 606
    new-instance v5, Landroid/util/Pair;

    .line 607
    invoke-virtual {v1, v4}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->getIdForIndex(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 608
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/pdf/component/PdfAnnotation;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 606
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 611
    .end local v4    # "i":I
    :cond_43
    monitor-exit v0

    return-object v3

    .line 612
    .end local v1    # "pageAnnotationIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    .end local v2    # "pdfAnnotations":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/component/PdfAnnotation;>;"
    .end local v3    # "pdfAnnotationIdPairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/pdf/component/PdfAnnotation;>;>;"
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public blacklist getPageGotoLinks(I)Ljava/util/List;
    .registers 4
    .param p1, "pageNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageGotoLinkContent;",
            ">;"
        }
    .end annotation

    .line 370
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 372
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->getPageGotoLinks(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 373
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getPageHeight(I)I
    .registers 4
    .param p1, "pageNum"    # I

    .line 235
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 237
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->getPageHeight(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 238
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getPageImageContents(I)Ljava/util/List;
    .registers 5
    .param p1, "pageNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageImageContent;",
            ">;"
        }
    .end annotation

    .line 212
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 214
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->getPageAltText(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/graphics/pdf/PdfProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/graphics/pdf/PdfProcessor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 215
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    .line 214
    return-object v1

    .line 216
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist getPageLinkContents(I)Ljava/util/List;
    .registers 4
    .param p1, "pageNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageLinkContent;",
            ">;"
        }
    .end annotation

    .line 362
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 364
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->getPageLinks(I)Landroid/graphics/pdf/models/jni/LinkRects;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/pdf/models/jni/LinkRects;->unflattenToList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 365
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist getPageObjects(I)Ljava/util/List;
    .registers 10
    .param p1, "pageNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/pdf/component/PdfPageObject;",
            ">;>;"
        }
    .end annotation

    .line 707
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 709
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageObjectIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    .line 710
    .local v1, "pageObjectIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v2, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->getPageObjects(I)Ljava/util/List;

    move-result-object v2

    .line 711
    .local v2, "pageObjects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/component/PdfPageObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v3, "pageObjectIdPairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/pdf/component/PdfPageObject;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 713
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 714
    new-instance v5, Landroid/util/Pair;

    .line 715
    invoke-virtual {v1, v4}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->getIdForIndex(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/pdf/component/PdfPageObject;

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 714
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 718
    .end local v4    # "i":I
    :cond_43
    monitor-exit v0

    return-object v3

    .line 719
    .end local v1    # "pageObjectIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    .end local v2    # "pageObjects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/component/PdfPageObject;>;"
    .end local v3    # "pageObjectIdPairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Landroid/graphics/pdf/component/PdfPageObject;>;>;"
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public blacklist getPageTextContents(I)Ljava/util/List;
    .registers 5
    .param p1, "pageNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageTextContent;",
            ">;"
        }
    .end annotation

    .line 195
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 197
    new-instance v1, Landroid/graphics/pdf/content/PdfPageTextContent;

    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v2, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->getPageText(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/pdf/content/PdfPageTextContent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "content":Landroid/graphics/pdf/content/PdfPageTextContent;
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 199
    .end local v1    # "content":Landroid/graphics/pdf/content/PdfPageTextContent;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist getPageWidth(I)I
    .registers 4
    .param p1, "pageNum"    # I

    .line 224
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 226
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->getPageWidth(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 227
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getPdfFormType()I
    .registers 4

    .line 418
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 420
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocumentProxy;->getFormType()I

    move-result v1

    .line 421
    .local v1, "pdfFormType":I
    packed-switch v1, :pswitch_data_18

    .line 424
    const/4 v2, 0x0

    goto :goto_12

    .line 423
    :pswitch_11
    move v2, v1

    .line 424
    :goto_12
    monitor-exit v0

    .line 421
    return v2

    .line 426
    .end local v1    # "pdfFormType":I
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public blacklist releasePage(I)V
    .registers 5
    .param p1, "pageNum"    # I

    .line 392
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 394
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageObjectIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageAnnotationsIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->releasePage(I)V

    .line 397
    monitor-exit v0

    .line 398
    return-void

    .line 397
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist removePageAnnotation(II)V
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "annotationId"    # I

    .line 648
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 650
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageAnnotationsIdManagerMap:Ljava/util/HashMap;

    .line 651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    .line 652
    .local v1, "pdfAnnotationsIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    invoke-virtual {v1, p2}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->getIndexForId(I)I

    move-result v2

    .line 653
    .local v2, "annotationIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    .line 657
    iget-object v3, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v3, p1, v2}, Landroid/graphics/pdf/PdfDocumentProxy;->removePageAnnotation(II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 660
    invoke-virtual {v1, p2}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->deleteId(I)V

    .line 661
    .end local v1    # "pdfAnnotationsIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    .end local v2    # "annotationIndex":I
    monitor-exit v0

    .line 662
    return-void

    .line 658
    .restart local v1    # "pdfAnnotationsIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    .restart local v2    # "annotationIndex":I
    :cond_26
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Annotation cannot be removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "annotationId":I
    throw v3

    .line 654
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "annotationId":I
    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown annotationId. getPageAnnotations() call never made?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "annotationId":I
    throw v3

    .line 661
    .end local v1    # "pdfAnnotationsIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    .end local v2    # "annotationIndex":I
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "annotationId":I
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public blacklist removePageObject(II)V
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "objectId"    # I

    .line 779
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 781
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageObjectIdManagerMap:Ljava/util/HashMap;

    .line 782
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    .line 783
    .local v1, "pageObjectIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    invoke-virtual {v1, p2}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->getIndexForId(I)I

    move-result v2

    .line 784
    .local v2, "objectIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    .line 788
    iget-object v3, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v3, p1, v2}, Landroid/graphics/pdf/PdfDocumentProxy;->removePageObject(II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 791
    invoke-virtual {v1, p2}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->deleteId(I)V

    .line 792
    .end local v1    # "pageObjectIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    .end local v2    # "objectIndex":I
    monitor-exit v0

    .line 793
    return-void

    .line 789
    .restart local v1    # "pageObjectIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    .restart local v2    # "objectIndex":I
    :cond_26
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Page object cannot be removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "objectId":I
    throw v3

    .line 785
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "objectId":I
    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown objectId. getPageObjects() call never made ?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "objectId":I
    throw v3

    .line 792
    .end local v1    # "pageObjectIdManager":Landroid/graphics/pdf/PdfPageComponentsIdManager;
    .end local v2    # "objectIndex":I
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "objectId":I
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public blacklist renderPage(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/pdf/RenderParams;Z)V
    .registers 24
    .param p1, "pageNum"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "destClip"    # Landroid/graphics/Rect;
    .param p4, "transform"    # Landroid/graphics/Matrix;
    .param p5, "params"    # Landroid/graphics/pdf/RenderParams;
    .param p6, "renderFormFields"    # Z

    .line 250
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    const-string v0, "Destination bitmap cannot be null"

    invoke-static {v4, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const-string v0, "RenderParams cannot be null"

    move-object/from16 v14, p5

    invoke-static {v14, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_1e

    move v0, v3

    goto :goto_1f

    :cond_1e
    move v0, v5

    :goto_1f
    const-string v2, "Unsupported pixel format"

    invoke-static {v0, v2}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 254
    if-eqz p4, :cond_2f

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    move v0, v5

    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v3

    :goto_30
    const-string v2, "Transform not affine"

    invoke-static {v0, v2}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 256
    invoke-virtual {v14}, Landroid/graphics/pdf/RenderParams;->getRenderMode()I

    move-result v10

    .line 257
    .local v10, "renderMode":I
    if-eq v10, v3, :cond_40

    const/4 v0, 0x2

    if-ne v10, v0, :cond_3f

    goto :goto_40

    :cond_3f
    move v3, v5

    :cond_40
    :goto_40
    const-string v0, "Unsupported render mode"

    invoke-static {v3, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 259
    invoke-direct {v1, v13, v4}, Landroid/graphics/pdf/PdfProcessor;->clipInBitmap(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)Z

    move-result v0

    const-string v2, "destClip not in bounds"

    invoke-static {v0, v2}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 260
    if-eqz v13, :cond_53

    iget v0, v13, Landroid/graphics/Rect;->left:I

    goto :goto_54

    :cond_53
    move v0, v5

    :goto_54
    move v2, v0

    .line 261
    .local v2, "contentLeft":I
    if-eqz v13, :cond_59

    iget v5, v13, Landroid/graphics/Rect;->top:I

    :cond_59
    move v6, v5

    .line 262
    .local v6, "contentTop":I
    if-eqz v13, :cond_5f

    iget v0, v13, Landroid/graphics/Rect;->right:I

    goto :goto_63

    :cond_5f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_63
    move v7, v0

    .line 263
    .local v7, "contentRight":I
    if-eqz v13, :cond_69

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_6d

    :cond_69
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_6d
    move v8, v0

    .line 266
    .local v8, "contentBottom":I
    if-nez p4, :cond_91

    .line 267
    sub-int v0, v7, v2

    .line 268
    .local v0, "clipWidth":I
    sub-int v3, v8, v6

    .line 269
    .local v3, "clipHeight":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 270
    .end local p4    # "transform":Landroid/graphics/Matrix;
    .local v5, "transform":Landroid/graphics/Matrix;
    int-to-float v9, v0

    invoke-virtual/range {p0 .. p1}, Landroid/graphics/pdf/PdfProcessor;->getPageWidth(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    int-to-float v11, v3

    .line 271
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/pdf/PdfProcessor;->getPageHeight(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 270
    invoke-virtual {v5, v9, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 272
    int-to-float v9, v2

    int-to-float v11, v6

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object v15, v5

    goto :goto_93

    .line 266
    .end local v0    # "clipWidth":I
    .end local v3    # "clipHeight":I
    .end local v5    # "transform":Landroid/graphics/Matrix;
    .restart local p4    # "transform":Landroid/graphics/Matrix;
    :cond_91
    move-object/from16 v15, p4

    .line 275
    .end local p4    # "transform":Landroid/graphics/Matrix;
    .local v15, "transform":Landroid/graphics/Matrix;
    :goto_93
    const/16 v0, 0x9

    new-array v9, v0, [F

    .line 276
    .local v9, "transformArr":[F
    invoke-virtual {v15, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 278
    sget-object v16, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v16

    .line 279
    :try_start_9d
    invoke-direct {v1}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_b2

    .line 280
    move v5, v2

    .end local v2    # "contentLeft":I
    .local v5, "contentLeft":I
    :try_start_a1
    iget-object v2, v1, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 289
    invoke-virtual {v14}, Landroid/graphics/pdf/RenderParams;->getRenderAnnotations()I

    move-result v11

    .line 280
    move/from16 v3, p1

    move/from16 v12, p6

    invoke-virtual/range {v2 .. v12}, Landroid/graphics/pdf/PdfDocumentProxy;->render(ILandroid/graphics/Bitmap;IIII[FIIZ)Z

    .line 291
    monitor-exit v16

    .line 292
    return-void

    .line 291
    :catchall_b0
    move-exception v0

    goto :goto_b4

    .end local v5    # "contentLeft":I
    .restart local v2    # "contentLeft":I
    :catchall_b2
    move-exception v0

    move v5, v2

    .end local v2    # "contentLeft":I
    .restart local v5    # "contentLeft":I
    :goto_b4
    monitor-exit v16
    :try_end_b5
    .catchall {:try_start_a1 .. :try_end_b5} :catchall_b0

    throw v0
.end method

.method public blacklist retainPage(I)V
    .registers 6
    .param p1, "pageNum"    # I

    .line 378
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 380
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageObjectIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 381
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageObjectIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    invoke-direct {v3}, Landroid/graphics/pdf/PdfPageComponentsIdManager;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_20
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageAnnotationsIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 384
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageAnnotationsIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    invoke-direct {v3}, Landroid/graphics/pdf/PdfPageComponentsIdManager;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_3a
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfDocumentProxy;->retainPage(I)V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public blacklist scaleForPrinting()Z
    .registers 3

    .line 431
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 433
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocumentProxy;->scaleForPrinting()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 434
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist searchPageText(ILjava/lang/String;)Ljava/util/List;
    .registers 16
    .param p1, "pageNum"    # I
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/PageMatchBounds;",
            ">;"
        }
    .end annotation

    .line 306
    move-object v9, p2

    const-string v0, "Search query cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    sget-object v10, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v10

    .line 308
    :try_start_9
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v11, v1

    .line 310
    .local v11, "searchStartTime":J
    iget-object v0, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 311
    invoke-virtual {v0, p1, p2}, Landroid/graphics/pdf/PdfDocumentProxy;->searchPageText(ILjava/lang/String;)Landroid/graphics/pdf/models/jni/MatchRects;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/pdf/models/jni/MatchRects;->unflattenToList()Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "searchPageTextResult":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/models/PageMatchBounds;>;"
    if-nez p1, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    .line 316
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfEventLogger:Landroid/graphics/pdf/logging/PdfEventLogger;

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    .line 318
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 321
    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocumentProxy;->getNumPages()I

    move-result v7

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 316
    const/4 v6, 0x1

    move v5, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/pdf/logging/PdfEventLogger;->logSearchReportedEvent(JIIIII)V

    .line 325
    :cond_3e
    monitor-exit v10

    return-object v0

    .line 326
    .end local v0    # "searchPageTextResult":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/models/PageMatchBounds;>;"
    .end local v11    # "searchStartTime":J
    :catchall_40
    move-exception v0

    monitor-exit v10
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public blacklist selectPageText(ILandroid/graphics/pdf/models/selection/SelectionBoundary;Landroid/graphics/pdf/models/selection/SelectionBoundary;)Landroid/graphics/pdf/models/selection/PageSelection;
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "start"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;
    .param p3, "stop"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;

    .line 339
    const-string v0, "Start selection boundary cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    const-string v0, "Stop selection boundary cannot be null"

    invoke-static {p3, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_d
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 343
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    .line 345
    invoke-static {p2}, Landroid/graphics/pdf/models/jni/SelectionBoundary;->convert(Landroid/graphics/pdf/models/selection/SelectionBoundary;)Landroid/graphics/pdf/models/jni/SelectionBoundary;

    move-result-object v2

    .line 346
    invoke-static {p3}, Landroid/graphics/pdf/models/jni/SelectionBoundary;->convert(Landroid/graphics/pdf/models/selection/SelectionBoundary;)Landroid/graphics/pdf/models/jni/SelectionBoundary;

    move-result-object v3

    .line 344
    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/pdf/PdfDocumentProxy;->selectPageText(ILandroid/graphics/pdf/models/jni/SelectionBoundary;Landroid/graphics/pdf/models/jni/SelectionBoundary;)Landroid/graphics/pdf/models/jni/PageSelection;

    move-result-object v1

    .line 347
    .local v1, "legacyPageSelection":Landroid/graphics/pdf/models/jni/PageSelection;
    if-eqz v1, :cond_2c

    .line 349
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfEventLogger:Landroid/graphics/pdf/logging/PdfEventLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroid/graphics/pdf/logging/PdfEventLogger;->logPdfApiUsageReportedEvent(II)V

    .line 353
    invoke-virtual {v1}, Landroid/graphics/pdf/models/jni/PageSelection;->convert()Landroid/graphics/pdf/models/selection/PageSelection;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 355
    :cond_2c
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 356
    .end local v1    # "legacyPageSelection":Landroid/graphics/pdf/models/jni/PageSelection;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public blacklist updatePageAnnotation(IILandroid/graphics/pdf/component/PdfAnnotation;)Z
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "annotationId"    # I
    .param p3, "annotation"    # Landroid/graphics/pdf/component/PdfAnnotation;

    .line 677
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 679
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageAnnotationsIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    .line 680
    invoke-virtual {v1, p2}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->getIndexForId(I)I

    move-result v1

    .line 681
    .local v1, "annotationIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 685
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v2, p1, v1, p3}, Landroid/graphics/pdf/PdfDocumentProxy;->updatePageAnnotation(IILandroid/graphics/pdf/component/PdfAnnotation;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 688
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 686
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Update Failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "annotationId":I
    .end local p3    # "annotation":Landroid/graphics/pdf/component/PdfAnnotation;
    throw v2

    .line 682
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "annotationId":I
    .restart local p3    # "annotation":Landroid/graphics/pdf/component/PdfAnnotation;
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown annotation Id. getPageAnnotations() call never made?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "annotationId":I
    .end local p3    # "annotation":Landroid/graphics/pdf/component/PdfAnnotation;
    throw v2

    .line 689
    .end local v1    # "annotationIndex":I
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "annotationId":I
    .restart local p3    # "annotation":Landroid/graphics/pdf/component/PdfAnnotation;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist updatePageObject(IILandroid/graphics/pdf/component/PdfPageObject;)Z
    .registers 8
    .param p1, "pageNum"    # I
    .param p2, "objectId"    # I
    .param p3, "pageObject"    # Landroid/graphics/pdf/component/PdfPageObject;

    .line 755
    sget-object v0, Landroid/graphics/pdf/PdfProcessor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_3
    invoke-direct {p0}, Landroid/graphics/pdf/PdfProcessor;->assertPdfDocumentNotNull()V

    .line 757
    iget-object v1, p0, Landroid/graphics/pdf/PdfProcessor;->mPageObjectIdManagerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/pdf/PdfPageComponentsIdManager;

    invoke-virtual {v1, p2}, Landroid/graphics/pdf/PdfPageComponentsIdManager;->getIndexForId(I)I

    move-result v1

    .line 758
    .local v1, "objectIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 762
    iget-object v2, p0, Landroid/graphics/pdf/PdfProcessor;->mPdfDocument:Landroid/graphics/pdf/PdfDocumentProxy;

    invoke-virtual {v2, p1, v1, p3}, Landroid/graphics/pdf/PdfDocumentProxy;->updatePageObject(IILandroid/graphics/pdf/component/PdfPageObject;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 765
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 763
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Update Failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "objectId":I
    .end local p3    # "pageObject":Landroid/graphics/pdf/component/PdfPageObject;
    throw v2

    .line 759
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "objectId":I
    .restart local p3    # "pageObject":Landroid/graphics/pdf/component/PdfPageObject;
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown objectId. getPageObjects() call never made?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .end local p1    # "pageNum":I
    .end local p2    # "objectId":I
    .end local p3    # "pageObject":Landroid/graphics/pdf/component/PdfPageObject;
    throw v2

    .line 766
    .end local v1    # "objectIndex":I
    .restart local p0    # "this":Landroid/graphics/pdf/PdfProcessor;
    .restart local p1    # "pageNum":I
    .restart local p2    # "objectId":I
    .restart local p3    # "pageObject":Landroid/graphics/pdf/component/PdfPageObject;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist write(Landroid/os/ParcelFileDescriptor;Z)V
    .registers 4
    .param p1, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "removePasswordProtection"    # Z

    .line 576
    const-string v0, "Destination FD cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 577
    if-eqz p2, :cond_b

    .line 578
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfProcessor;->cloneWithoutSecurity(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_e

    .line 580
    :cond_b
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfProcessor;->saveAs(Landroid/os/ParcelFileDescriptor;)V

    .line 582
    :goto_e
    return-void
.end method
