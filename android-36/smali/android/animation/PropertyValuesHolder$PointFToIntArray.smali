.class Landroid/animation/PropertyValuesHolder$PointFToIntArray;
.super Landroid/animation/TypeConverter;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointFToIntArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/animation/TypeConverter<",
        "Landroid/graphics/PointF;",
        "[I>;"
    }
.end annotation


# instance fields
.field private greylist-max-o mCoordinates:[I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1683
    const-class v0, Landroid/graphics/PointF;

    const-class v1, [I

    invoke-direct {p0, v0, v1}, Landroid/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1680
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    .line 1684
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

    .line 1679
    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->convert(Landroid/graphics/PointF;)[I

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o convert(Landroid/graphics/PointF;)[I
    .registers 5
    .param p1, "value"    # Landroid/graphics/PointF;

    .line 1688
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1689
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1690
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    return-object v0
.end method
