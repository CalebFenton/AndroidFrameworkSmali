.class public final Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument$PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "pageWidth"    # I
    .param p2, "pageHeight"    # I
    .param p3, "pageNumber"    # I

    #@0
    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 319
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;-><init>(Landroid/graphics/pdf/PdfDocument$PageInfo;)V

    #@9
    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@b
    .line 329
    if-gtz p1, :cond_0

    #@d
    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "page width must be positive"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 332
    :cond_0
    if-gtz p2, :cond_1

    #@18
    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "page width must be positive"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 335
    :cond_1
    if-gez p3, :cond_2

    #@23
    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v1, "pageNumber must be non negative"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 338
    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@2e
    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set3(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    #@31
    .line 339
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@33
    invoke-static {v0, p2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set1(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    #@36
    .line 340
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@38
    invoke-static {v0, p3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set2(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    #@3b
    .line 328
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 367
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@3
    invoke-static {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get0(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 368
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@b
    new-instance v1, Landroid/graphics/Rect;

    #@d
    .line 369
    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@f
    invoke-static {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get2(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    #@12
    move-result v2

    #@13
    iget-object v3, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@15
    invoke-static {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get1(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    #@18
    move-result v3

    #@19
    .line 368
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1c
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set0(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@1f
    .line 371
    :cond_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@21
    return-object v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    .locals 2
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 351
    if-eqz p1, :cond_2

    #@2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 352
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@8
    if-gez v0, :cond_1

    #@a
    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "contentRect does not fit the page"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 353
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@15
    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@17
    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get2(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    #@1a
    move-result v1

    #@1b
    if-gt v0, v1, :cond_0

    #@1d
    .line 354
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@1f
    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@21
    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-get1(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    #@24
    move-result v1

    #@25
    if-gt v0, v1, :cond_0

    #@27
    .line 357
    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@29
    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-set0(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@2c
    .line 358
    return-object p0
.end method
