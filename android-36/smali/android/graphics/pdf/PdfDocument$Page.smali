.class public final Landroid/graphics/pdf/PdfDocument$Page;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Page"
.end annotation


# instance fields
.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private final greylist-max-o mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mfinish(Landroid/graphics/pdf/PdfDocument$Page;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument$Page;->finish()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pageInfo"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 398
    iput-object p2, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 399
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V

    return-void
.end method

.method private greylist-max-o finish()V
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_c

    .line 454
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->release()V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 457
    :cond_c
    return-void
.end method


# virtual methods
.method public whitelist getCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 434
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public whitelist getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .registers 2

    .line 445
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-object v0
.end method

.method greylist-max-o isFinished()Z
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
