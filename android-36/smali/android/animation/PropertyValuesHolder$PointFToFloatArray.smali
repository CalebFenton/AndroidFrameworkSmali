.class Landroid/animation/PropertyValuesHolder$PointFToFloatArray;
.super Landroid/animation/TypeConverter;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointFToFloatArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/animation/TypeConverter<",
        "Landroid/graphics/PointF;",
        "[F>;"
    }
.end annotation


# instance fields
.field private greylist-max-o mCoordinates:[F


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1665
    const-class v0, Landroid/graphics/PointF;

    const-class v1, [F

    invoke-direct {p0, v0, v1}, Landroid/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1662
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    .line 1666
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1661
    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->convert(Landroid/graphics/PointF;)[F

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o convert(Landroid/graphics/PointF;)[F
    .registers 5
    .param p1, "value"    # Landroid/graphics/PointF;

    .line 1670
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    .line 1671
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    aput v2, v0, v1

    .line 1672
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    return-object v0
.end method
