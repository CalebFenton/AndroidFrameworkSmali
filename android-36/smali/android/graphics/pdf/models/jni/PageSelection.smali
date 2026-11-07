.class public Landroid/graphics/pdf/models/jni/PageSelection;
.super Ljava/lang/Object;
.source "PageSelection.java"


# instance fields
.field private final blacklist mBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLeft:Landroid/graphics/pdf/models/jni/SelectionBoundary;

.field private final blacklist mPage:I

.field private final blacklist mRight:Landroid/graphics/pdf/models/jni/SelectionBoundary;

.field private final blacklist mText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILandroid/graphics/pdf/models/jni/SelectionBoundary;Landroid/graphics/pdf/models/jni/SelectionBoundary;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .param p1, "page"    # I
    .param p2, "left"    # Landroid/graphics/pdf/models/jni/SelectionBoundary;
    .param p3, "right"    # Landroid/graphics/pdf/models/jni/SelectionBoundary;
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/pdf/models/jni/SelectionBoundary;",
            "Landroid/graphics/pdf/models/jni/SelectionBoundary;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    .local p4, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mPage:I

    .line 54
    iput-object p2, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mLeft:Landroid/graphics/pdf/models/jni/SelectionBoundary;

    .line 55
    iput-object p3, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mRight:Landroid/graphics/pdf/models/jni/SelectionBoundary;

    .line 56
    iput-object p4, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mBounds:Ljava/util/List;

    .line 57
    iput-object p5, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mText:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist convert()Landroid/graphics/pdf/models/selection/PageSelection;
    .registers 7

    .line 83
    new-instance v0, Landroid/graphics/pdf/content/PdfPageTextContent;

    iget-object v1, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mBounds:Ljava/util/List;

    .line 84
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/graphics/pdf/models/jni/LinkRects$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/graphics/pdf/models/jni/LinkRects$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Landroid/graphics/pdf/content/PdfPageTextContent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 85
    .local v0, "selectedTextContent":Landroid/graphics/pdf/content/PdfPageTextContent;
    new-instance v1, Landroid/graphics/pdf/models/selection/PageSelection;

    iget v2, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mPage:I

    iget-object v3, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mLeft:Landroid/graphics/pdf/models/jni/SelectionBoundary;

    invoke-virtual {v3}, Landroid/graphics/pdf/models/jni/SelectionBoundary;->convert()Landroid/graphics/pdf/models/selection/SelectionBoundary;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mRight:Landroid/graphics/pdf/models/jni/SelectionBoundary;

    .line 86
    invoke-virtual {v4}, Landroid/graphics/pdf/models/jni/SelectionBoundary;->convert()Landroid/graphics/pdf/models/selection/SelectionBoundary;

    move-result-object v4

    .line 87
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/pdf/models/selection/PageSelection;-><init>(ILandroid/graphics/pdf/models/selection/SelectionBoundary;Landroid/graphics/pdf/models/selection/SelectionBoundary;Ljava/util/List;)V

    .line 85
    return-object v1
.end method

.method public blacklist getBounds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mBounds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLeft()Landroid/graphics/pdf/models/jni/SelectionBoundary;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mLeft:Landroid/graphics/pdf/models/jni/SelectionBoundary;

    return-object v0
.end method

.method public blacklist getPage()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mPage:I

    return v0
.end method

.method public blacklist getRight()Landroid/graphics/pdf/models/jni/SelectionBoundary;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mRight:Landroid/graphics/pdf/models/jni/SelectionBoundary;

    return-object v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/graphics/pdf/models/jni/PageSelection;->mText:Ljava/lang/String;

    return-object v0
.end method
