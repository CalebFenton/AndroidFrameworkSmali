.class public Landroid/print/pdf/PrintedPdfDocument;
.super Landroid/graphics/pdf/PdfDocument;
.source "PrintedPdfDocument.java"


# static fields
.field private static final MILS_PER_INCH:I = 0x3e8

.field private static final POINTS_IN_INCH:I = 0x48


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mPageHeight:I

.field private final mPageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    #@2
    const/high16 v7, 0x42900000    # 72.0f

    #@4
    .line 84
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    #@7
    .line 85
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    #@a
    move-result-object v4

    #@b
    .line 88
    .local v4, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    invoke-virtual {v4}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    #@e
    move-result v6

    #@f
    int-to-float v6, v6

    #@10
    div-float/2addr v6, v8

    #@11
    mul-float/2addr v6, v7

    #@12
    float-to-int v6, v6

    #@13
    iput v6, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    #@15
    .line 90
    invoke-virtual {v4}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    #@18
    move-result v6

    #@19
    int-to-float v6, v6

    #@1a
    div-float/2addr v6, v8

    #@1b
    mul-float/2addr v6, v7

    #@1c
    float-to-int v6, v6

    #@1d
    iput v6, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    #@1f
    .line 94
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    #@22
    move-result-object v5

    #@23
    .line 95
    .local v5, "minMargins":Landroid/print/PrintAttributes$Margins;
    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    #@26
    move-result v6

    #@27
    int-to-float v6, v6

    #@28
    div-float/2addr v6, v8

    #@29
    mul-float/2addr v6, v7

    #@2a
    float-to-int v1, v6

    #@2b
    .line 97
    .local v1, "marginLeft":I
    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    #@2e
    move-result v6

    #@2f
    int-to-float v6, v6

    #@30
    div-float/2addr v6, v8

    #@31
    mul-float/2addr v6, v7

    #@32
    float-to-int v3, v6

    #@33
    .line 99
    .local v3, "marginTop":I
    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    #@36
    move-result v6

    #@37
    int-to-float v6, v6

    #@38
    div-float/2addr v6, v8

    #@39
    mul-float/2addr v6, v7

    #@3a
    float-to-int v2, v6

    #@3b
    .line 101
    .local v2, "marginRight":I
    invoke-virtual {v5}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    #@3e
    move-result v6

    #@3f
    int-to-float v6, v6

    #@40
    div-float/2addr v6, v8

    #@41
    mul-float/2addr v6, v7

    #@42
    float-to-int v0, v6

    #@43
    .line 103
    .local v0, "marginBottom":I
    new-instance v6, Landroid/graphics/Rect;

    #@45
    iget v7, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    #@47
    sub-int/2addr v7, v2

    #@48
    .line 104
    iget v8, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    #@4a
    sub-int/2addr v8, v0

    #@4b
    .line 103
    invoke-direct {v6, v1, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #@4e
    iput-object v6, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    #@50
    .line 84
    return-void
.end method


# virtual methods
.method public getPageContentRect()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    #@0
    .prologue
    .line 152
    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    #@2
    return v0
.end method

.method public getPageWidth()I
    .locals 1

    #@0
    .prologue
    .line 143
    iget v0, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    #@2
    return v0
.end method

.method public startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 4
    .param p1, "pageNumber"    # I

    #@0
    .prologue
    .line 130
    new-instance v1, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    #@2
    .line 131
    iget v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageWidth:I

    #@4
    iget v3, p0, Landroid/print/pdf/PrintedPdfDocument;->mPageHeight:I

    #@6
    .line 130
    invoke-direct {v1, v2, v3, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    #@9
    .line 132
    iget-object v2, p0, Landroid/print/pdf/PrintedPdfDocument;->mContentRect:Landroid/graphics/Rect;

    #@b
    .line 130
    invoke-virtual {v1, v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@12
    move-result-object v0

    #@13
    .line 134
    .local v0, "pageInfo":Landroid/graphics/pdf/PdfDocument$PageInfo;
    invoke-virtual {p0, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method
