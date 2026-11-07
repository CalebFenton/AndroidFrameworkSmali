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
.field private final greylist-max-o mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method public constructor whitelist <init>(III)V
    .registers 6
    .param p1, "pageWidth"    # I
    .param p2, "pageHeight"    # I
    .param p3, "pageNumber"    # I

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;-><init>(Landroid/graphics/pdf/PdfDocument-IA;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 332
    const-string/jumbo v0, "page width must be positive"

    if-lez p1, :cond_33

    .line 335
    if-lez p2, :cond_2d

    .line 338
    if-ltz p3, :cond_24

    .line 341
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fputmPageWidth(Landroid/graphics/pdf/PdfDocument$PageInfo;I)V

    .line 342
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fputmPageHeight(Landroid/graphics/pdf/PdfDocument$PageInfo;I)V

    .line 343
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fputmPageNumber(Landroid/graphics/pdf/PdfDocument$PageInfo;I)V

    .line 344
    return-void

    .line 339
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pageNumber must be non negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist create()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .registers 6

    .line 370
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 371
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmPageWidth(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmPageHeight(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fputmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)V

    .line 374
    :cond_1f
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-object v0
.end method

.method public whitelist setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    .registers 4
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .line 354
    if-eqz p1, :cond_27

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1f

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1f

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmPageWidth(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    if-gt v0, v1, :cond_1f

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmPageHeight(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    if-gt v0, v1, :cond_1f

    goto :goto_27

    .line 358
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentRect does not fit the page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fputmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)V

    .line 361
    return-object p0
.end method
