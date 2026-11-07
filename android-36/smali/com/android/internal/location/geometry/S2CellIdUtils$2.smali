.class Lcom/android/internal/location/geometry/S2CellIdUtils$2;
.super Ljava/lang/Object;
.source "S2CellIdUtils.java"

# interfaces
.implements Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/location/geometry/S2CellIdUtils;->createUvTransforms()[Lcom/android/internal/location/geometry/S2CellIdUtils$UvTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist xyzToU(DDD)D
    .registers 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 578
    neg-double v0, p1

    div-double/2addr v0, p3

    return-wide v0
.end method

.method public blacklist xyzToV(DDD)D
    .registers 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 583
    div-double v0, p5, p3

    return-wide v0
.end method
