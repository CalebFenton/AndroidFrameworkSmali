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
.field private mCanvas:Landroid/graphics/Canvas;

.field private final mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method static synthetic -wrap0(Landroid/graphics/pdf/PdfDocument$Page;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument$Page;->finish()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pageInfo"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@0
    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 394
    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    #@5
    .line 395
    iput-object p2, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@7
    .line 393
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument$Page;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pageInfo"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V

    #@3
    return-void
.end method

.method private finish()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 450
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 451
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    #@7
    invoke-virtual {v0}, Landroid/graphics/Canvas;->release()V

    #@a
    .line 452
    iput-object v1, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    #@c
    .line 449
    :cond_0
    return-void
.end method


# virtual methods
.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    #@2
    return-object v0
.end method

.method public getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .locals 1

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@2
    return-object v0
.end method

.method isFinished()Z
    .locals 1

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
