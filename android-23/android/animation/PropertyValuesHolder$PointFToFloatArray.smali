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
        "Landroid/animation/TypeConverter",
        "<",
        "Landroid/graphics/PointF;",
        "[F>;"
    }
.end annotation


# instance fields
.field private mCoordinates:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1574
    const-class v0, Landroid/graphics/PointF;

    #@2
    const-class v1, [F

    #@4
    invoke-direct {p0, v0, v1}, Landroid/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    #@7
    .line 1571
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [F

    #@a
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    #@c
    .line 1573
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1578
    check-cast p1, Landroid/graphics/PointF;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->convert(Landroid/graphics/PointF;)[F

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public convert(Landroid/graphics/PointF;)[F
    .locals 3
    .param p1, "value"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 1579
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    #@2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    #@4
    const/4 v2, 0x0

    #@5
    aput v1, v0, v2

    #@7
    .line 1580
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    #@9
    iget v1, p1, Landroid/graphics/PointF;->y:F

    #@b
    const/4 v2, 0x1

    #@c
    aput v1, v0, v2

    #@e
    .line 1581
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;->mCoordinates:[F

    #@10
    return-object v0
.end method
