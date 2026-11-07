.class public final Landroid/graphics/pdf/component/StampAnnotation;
.super Landroid/graphics/pdf/component/PdfAnnotation;
.source "StampAnnotation.java"


# instance fields
.field private blacklist mBounds:Landroid/graphics/RectF;

.field private blacklist mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/pdf/component/PdfPageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 49
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/pdf/component/PdfAnnotation;-><init>(I)V

    .line 50
    iput-object p1, p0, Landroid/graphics/pdf/component/StampAnnotation;->mBounds:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/component/StampAnnotation;->mObjects:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist addObject(Landroid/graphics/pdf/component/PdfPageObject;)V
    .registers 5
    .param p1, "pageObject"    # Landroid/graphics/pdf/component/PdfPageObject;

    .line 84
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfPageObject;->getPdfObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    .line 85
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfPageObject;->getPdfObjectType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_18

    .line 86
    invoke-virtual {p1}, Landroid/graphics/pdf/component/PdfPageObject;->getPdfObjectType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    nop

    .line 84
    :goto_19
    const-string v0, "Unsupported page object type"

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/graphics/pdf/component/StampAnnotation;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public blacklist getBounds()Landroid/graphics/RectF;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/graphics/pdf/component/StampAnnotation;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist getObjects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/component/PdfPageObject;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroid/graphics/pdf/component/StampAnnotation;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method public blacklist removeObject(I)V
    .registers 4
    .param p1, "index"    # I

    .line 111
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/graphics/pdf/component/StampAnnotation;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v1, "Invalid Index"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroid/graphics/pdf/component/StampAnnotation;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public blacklist setBounds(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 61
    const-string v0, "Bounds should not be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Landroid/graphics/pdf/component/StampAnnotation;->mBounds:Landroid/graphics/RectF;

    .line 63
    return-void
.end method
