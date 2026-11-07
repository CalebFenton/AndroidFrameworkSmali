.class public final Landroid/graphics/pdf/component/HighlightAnnotation;
.super Landroid/graphics/pdf/component/PdfAnnotation;
.source "HighlightAnnotation.java"


# instance fields
.field private blacklist mBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mColor:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/graphics/pdf/component/PdfAnnotation;-><init>(I)V

    .line 49
    iput-object p1, p0, Landroid/graphics/pdf/component/HighlightAnnotation;->mBounds:Ljava/util/List;

    .line 50
    const/16 v0, -0x100

    iput v0, p0, Landroid/graphics/pdf/component/HighlightAnnotation;->mColor:I

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist getBounds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/graphics/pdf/component/HighlightAnnotation;->mBounds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getColor()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/graphics/pdf/component/HighlightAnnotation;->mColor:I

    return v0
.end method

.method public blacklist setBounds(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const-string v0, "Bounds should not be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Bounds should not be empty"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 64
    iput-object p1, p0, Landroid/graphics/pdf/component/HighlightAnnotation;->mBounds:Ljava/util/List;

    .line 65
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 91
    iput p1, p0, Landroid/graphics/pdf/component/HighlightAnnotation;->mColor:I

    .line 92
    return-void
.end method
