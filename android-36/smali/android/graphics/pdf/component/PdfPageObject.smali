.class public abstract Landroid/graphics/pdf/component/PdfPageObject;
.super Ljava/lang/Object;
.source "PdfPageObject.java"


# instance fields
.field private blacklist mTransform:Landroid/graphics/Matrix;

.field private final blacklist mType:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/graphics/pdf/component/PdfPageObject;->mType:I

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/component/PdfPageObject;->mTransform:Landroid/graphics/Matrix;

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist getMatrix()[F
    .registers 3

    .line 76
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 77
    .local v0, "value":[F
    iget-object v1, p0, Landroid/graphics/pdf/component/PdfPageObject;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 78
    return-object v0
.end method

.method public blacklist getPdfObjectType()I
    .registers 2

    .line 53
    iget v0, p0, Landroid/graphics/pdf/component/PdfPageObject;->mType:I

    return v0
.end method

.method public blacklist setMatrix(Landroid/graphics/Matrix;)V
    .registers 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 87
    iput-object p1, p0, Landroid/graphics/pdf/component/PdfPageObject;->mTransform:Landroid/graphics/Matrix;

    .line 88
    return-void
.end method

.method public blacklist transform(FFFFFF)V
    .registers 11
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "e"    # F
    .param p6, "f"    # F

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p5, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    const/4 v2, 0x4

    aput p2, v1, v2

    const/4 v2, 0x5

    aput p6, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 66
    iget-object v1, p0, Landroid/graphics/pdf/component/PdfPageObject;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 67
    return-void
.end method
