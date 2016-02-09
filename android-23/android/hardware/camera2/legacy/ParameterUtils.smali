.class public Landroid/hardware/camera2/legacy/ParameterUtils;
.super Ljava/lang/Object;
.source "ParameterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;,
        Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;,
        Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_TOLERANCE:D = 0.05000000074505806

.field public static final CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

.field private static final DEBUG:Z = false

.field public static final NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

.field public static final NORMALIZED_RECTANGLE_MAX:I = 0x3e8

.field public static final NORMALIZED_RECTANGLE_MIN:I = -0x3e8

.field public static final RECTANGLE_EMPTY:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "ParameterUtils"

.field private static final ZOOM_RATIO_MULTIPLIER:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x3e8

    #@2
    const/16 v1, -0x3e8

    #@4
    const/4 v3, 0x0

    #@5
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@a
    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    #@c
    .line 58
    new-instance v0, Landroid/hardware/Camera$Area;

    #@e
    new-instance v1, Landroid/graphics/Rect;

    #@10
    sget-object v2, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    #@12
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@15
    .line 59
    const/4 v2, 0x1

    #@16
    .line 58
    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    #@19
    .line 57
    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    #@1b
    .line 62
    new-instance v0, Landroid/graphics/Rect;

    #@1d
    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    #@20
    .line 61
    sput-object v0, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    #@22
    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1004
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8
    throw v0
.end method

.method public static containsSize(Ljava/util/List;II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 273
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v2, "sizeList must not be null"

    #@3
    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 274
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/hardware/Camera$Size;

    #@16
    .line 275
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    #@18
    if-ne v2, p2, :cond_0

    #@1a
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    #@1c
    if-ne v2, p1, :cond_0

    #@1e
    .line 276
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 279
    .end local v0    # "s":Landroid/hardware/Camera$Size;
    :cond_1
    const/4 v2, 0x0

    #@21
    return v2
.end method

.method public static convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    .locals 1
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "area"    # Landroid/hardware/Camera$Area;

    #@0
    .prologue
    .line 896
    const/4 v0, 0x1

    #@1
    .line 895
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    .locals 12
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "area"    # Landroid/hardware/Camera$Area;
    .param p3, "usePreviewCrop"    # Z

    #@0
    .prologue
    const/high16 v11, 0x44fa0000    # 2000.0f

    #@2
    const/high16 v10, 0x447a0000    # 1000.0f

    #@4
    const/high16 v9, 0x3f800000    # 1.0f

    #@6
    .line 958
    iget-object v1, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    #@8
    .line 959
    .local v1, "previewCrop":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->reportedCrop:Landroid/graphics/Rect;

    #@a
    .line 961
    .local v2, "reportedCrop":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@d
    move-result v8

    #@e
    int-to-float v8, v8

    #@f
    mul-float/2addr v8, v9

    #@10
    div-float v5, v8, v11

    #@12
    .line 963
    .local v5, "scaleW":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@15
    move-result v8

    #@16
    int-to-float v8, v8

    #@17
    mul-float/2addr v8, v9

    #@18
    div-float v4, v8, v11

    #@1a
    .line 970
    .local v4, "scaleH":F
    new-instance v6, Landroid/graphics/Matrix;

    #@1c
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    #@1f
    .line 973
    .local v6, "transform":Landroid/graphics/Matrix;
    invoke-virtual {v6, v10, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@22
    .line 976
    invoke-virtual {v6, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@25
    .line 979
    iget v8, v1, Landroid/graphics/Rect;->left:I

    #@27
    int-to-float v8, v8

    #@28
    iget v9, v1, Landroid/graphics/Rect;->top:I

    #@2a
    int-to-float v9, v9

    #@2b
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@2e
    .line 981
    if-eqz p3, :cond_2

    #@30
    move-object v0, v1

    #@31
    .line 984
    .local v0, "cropToIntersectAgainst":Landroid/graphics/Rect;
    :goto_0
    iget-object v8, p2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@33
    invoke-static {v6, v8}, Landroid/hardware/camera2/utils/ParamsUtils;->mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@36
    move-result-object v3

    #@37
    .line 987
    .local v3, "reportedMetering":Landroid/graphics/Rect;
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@3a
    move-result v8

    #@3b
    if-nez v8, :cond_0

    #@3d
    .line 988
    sget-object v8, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@42
    .line 991
    :cond_0
    iget v7, p2, Landroid/hardware/Camera$Area;->weight:I

    #@44
    .line 992
    .local v7, "weight":I
    if-gez v7, :cond_1

    #@46
    .line 993
    const-string/jumbo v8, "ParameterUtils"

    #@49
    .line 994
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v10, "convertCameraAreaToMeteringRectangle - rectangle "

    #@51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    .line 995
    invoke-static {p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;

    #@58
    move-result-object v10

    #@59
    .line 994
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    .line 995
    const-string/jumbo v10, " has too small weight, clip to 0"

    #@60
    .line 994
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    .line 993
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 996
    const/4 v7, 0x0

    #@6c
    .line 999
    :cond_1
    new-instance v8, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    #@6e
    iget v9, p2, Landroid/hardware/Camera$Area;->weight:I

    #@70
    invoke-direct {v8, v3, v9}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;-><init>(Landroid/graphics/Rect;I)V

    #@73
    return-object v8

    #@74
    .line 981
    .end local v0    # "cropToIntersectAgainst":Landroid/graphics/Rect;
    .end local v3    # "reportedMetering":Landroid/graphics/Rect;
    .end local v7    # "weight":I
    :cond_2
    move-object v0, v2

    #@75
    .restart local v0    # "cropToIntersectAgainst":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method private static convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 8
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "usePreviewCrop"    # Z

    #@0
    .prologue
    .line 944
    new-instance v2, Landroid/graphics/Rect;

    #@2
    iget v4, p2, Landroid/graphics/Point;->x:I

    #@4
    iget v5, p2, Landroid/graphics/Point;->y:I

    #@6
    iget v6, p2, Landroid/graphics/Point;->x:I

    #@8
    iget v7, p2, Landroid/graphics/Point;->y:I

    #@a
    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@d
    .line 945
    .local v2, "pointedRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/hardware/Camera$Area;

    #@f
    const/4 v4, 0x1

    #@10
    invoke-direct {v1, v2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    #@13
    .line 948
    .local v1, "pointedArea":Landroid/hardware/Camera$Area;
    invoke-static {p0, p1, v1, p3}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    #@16
    move-result-object v0

    #@17
    .line 951
    .local v0, "adjustedRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    new-instance v3, Landroid/graphics/Point;

    #@19
    iget-object v4, v0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@1b
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@1d
    iget-object v5, v0, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@1f
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@21
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    #@24
    .line 953
    .local v3, "transformedPoint":Landroid/graphics/Point;
    return-object v3
.end method

.method public static convertFaceFromLegacy(Landroid/hardware/Camera$Face;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/params/Face;
    .locals 9
    .param p0, "face"    # Landroid/hardware/Camera$Face;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/16 v7, -0x7d0

    #@3
    .line 914
    const-string/jumbo v6, "face must not be null"

    #@6
    invoke-static {p0, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 918
    new-instance v2, Landroid/hardware/Camera$Area;

    #@b
    iget-object v6, p0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    #@d
    invoke-direct {v2, v6, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    #@10
    .line 921
    .local v2, "fakeArea":Landroid/hardware/Camera$Area;
    invoke-static {p1, p2, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    #@13
    move-result-object v1

    #@14
    .line 923
    .local v1, "faceRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    iget-object v3, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    #@16
    .local v3, "leftEye":Landroid/graphics/Point;
    iget-object v5, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    #@18
    .local v5, "rightEye":Landroid/graphics/Point;
    iget-object v4, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    #@1a
    .line 924
    .local v4, "mouth":Landroid/graphics/Point;
    if-eqz v3, :cond_0

    #@1c
    if-eqz v5, :cond_0

    #@1e
    if-eqz v4, :cond_0

    #@20
    iget v6, v3, Landroid/graphics/Point;->x:I

    #@22
    if-eq v6, v7, :cond_0

    #@24
    .line 925
    iget v6, v3, Landroid/graphics/Point;->y:I

    #@26
    if-eq v6, v7, :cond_0

    #@28
    iget v6, v5, Landroid/graphics/Point;->x:I

    #@2a
    if-eq v6, v7, :cond_0

    #@2c
    iget v6, v5, Landroid/graphics/Point;->y:I

    #@2e
    if-eq v6, v7, :cond_0

    #@30
    .line 926
    iget v6, v4, Landroid/graphics/Point;->x:I

    #@32
    if-eq v6, v7, :cond_0

    #@34
    iget v6, v4, Landroid/graphics/Point;->y:I

    #@36
    if-eq v6, v7, :cond_0

    #@38
    .line 927
    invoke-static {p1, p2, v3, v8}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    #@3b
    move-result-object v3

    #@3c
    .line 929
    invoke-static {p1, p2, v3, v8}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    #@3f
    move-result-object v5

    #@40
    .line 931
    invoke-static {p1, p2, v3, v8}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraPointToActiveArrayPoint(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    #@43
    move-result-object v4

    #@44
    .line 934
    iget v6, p0, Landroid/hardware/Camera$Face;->id:I

    #@46
    invoke-virtual {v1, v6, v3, v5, v4}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toFace(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face;

    #@49
    move-result-object v0

    #@4a
    .line 939
    .local v0, "api2Face":Landroid/hardware/camera2/params/Face;
    :goto_0
    return-object v0

    #@4b
    .line 936
    .end local v0    # "api2Face":Landroid/hardware/camera2/params/Face;
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toFace()Landroid/hardware/camera2/params/Face;

    #@4e
    move-result-object v0

    #@4f
    .restart local v0    # "api2Face":Landroid/hardware/camera2/params/Face;
    goto :goto_0
.end method

.method public static convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    .locals 13
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "meteringRect"    # Landroid/hardware/camera2/params/MeteringRectangle;
    .param p2, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    #@0
    .prologue
    .line 802
    iget-object v4, p2, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    #@2
    .line 805
    .local v4, "previewCrop":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v11

    #@6
    int-to-float v11, v11

    #@7
    .line 804
    const/high16 v12, 0x44fa0000    # 2000.0f

    #@9
    div-float v9, v12, v11

    #@b
    .line 807
    .local v9, "scaleW":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@e
    move-result v11

    #@f
    int-to-float v11, v11

    #@10
    .line 806
    const/high16 v12, 0x44fa0000    # 2000.0f

    #@12
    div-float v8, v12, v11

    #@14
    .line 809
    .local v8, "scaleH":F
    new-instance v10, Landroid/graphics/Matrix;

    #@16
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    #@19
    .line 812
    .local v10, "transform":Landroid/graphics/Matrix;
    iget v11, v4, Landroid/graphics/Rect;->left:I

    #@1b
    neg-int v11, v11

    #@1c
    int-to-float v11, v11

    #@1d
    iget v12, v4, Landroid/graphics/Rect;->top:I

    #@1f
    neg-int v12, v12

    #@20
    int-to-float v12, v12

    #@21
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@24
    .line 814
    invoke-virtual {v10, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@27
    .line 816
    const/high16 v11, -0x3b860000    # -1000.0f

    #@29
    const/high16 v12, -0x3b860000    # -1000.0f

    #@2b
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@2e
    .line 822
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    #@31
    move-result-object v11

    #@32
    invoke-static {v10, v11}, Landroid/hardware/camera2/utils/ParamsUtils;->mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@35
    move-result-object v3

    #@36
    .line 828
    .local v3, "normalizedRegionUnbounded":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    #@38
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@3b
    .line 831
    .local v2, "normalizedIntersected":Landroid/graphics/Rect;
    sget-object v11, Landroid/hardware/camera2/legacy/ParameterUtils;->NORMALIZED_RECTANGLE_DEFAULT:Landroid/graphics/Rect;

    #@3d
    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@40
    move-result v11

    #@41
    if-nez v11, :cond_1

    #@43
    .line 832
    const-string/jumbo v11, "ParameterUtils"

    #@46
    .line 833
    const-string/jumbo v12, "convertMeteringRectangleToLegacy - metering rectangle too small, no metering will be done"

    #@49
    .line 832
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 835
    sget-object v11, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    #@4e
    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@51
    .line 836
    new-instance v0, Landroid/hardware/Camera$Area;

    #@53
    sget-object v11, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    #@55
    .line 837
    const/4 v12, 0x0

    #@56
    .line 836
    invoke-direct {v0, v11, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    #@59
    .line 846
    .local v0, "meteringArea":Landroid/hardware/Camera$Area;
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    #@5c
    move-result-object v5

    #@5d
    .line 847
    .local v5, "previewMetering":Landroid/graphics/Rect;
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@60
    move-result v11

    #@61
    if-nez v11, :cond_0

    #@63
    .line 848
    sget-object v11, Landroid/hardware/camera2/legacy/ParameterUtils;->RECTANGLE_EMPTY:Landroid/graphics/Rect;

    #@65
    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@68
    .line 858
    :cond_0
    new-instance v1, Landroid/hardware/Camera$Area;

    #@6a
    .line 859
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    #@6d
    move-result v11

    #@6e
    .line 858
    invoke-direct {v1, v3, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    #@71
    .line 861
    .local v1, "normalizedAreaUnbounded":Landroid/hardware/Camera$Area;
    const/4 v11, 0x0

    #@72
    .line 860
    invoke-static {p0, p2, v1, v11}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;Z)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    #@75
    move-result-object v7

    #@76
    .line 862
    .local v7, "reportedMeteringRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    iget-object v6, v7, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->rect:Landroid/graphics/Rect;

    #@78
    .line 875
    .local v6, "reportedMetering":Landroid/graphics/Rect;
    new-instance v11, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    #@7a
    invoke-direct {v11, v0, v5, v6}, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;-><init>(Landroid/hardware/Camera$Area;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@7d
    return-object v11

    #@7e
    .line 839
    .end local v0    # "meteringArea":Landroid/hardware/Camera$Area;
    .end local v1    # "normalizedAreaUnbounded":Landroid/hardware/Camera$Area;
    .end local v5    # "previewMetering":Landroid/graphics/Rect;
    .end local v6    # "reportedMetering":Landroid/graphics/Rect;
    .end local v7    # "reportedMeteringRect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    :cond_1
    new-instance v0, Landroid/hardware/Camera$Area;

    #@80
    .line 840
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    #@83
    move-result v11

    #@84
    .line 839
    invoke-direct {v0, v2, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    #@87
    .restart local v0    # "meteringArea":Landroid/hardware/Camera$Area;
    goto :goto_0
.end method

.method public static convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .locals 8
    .param p0, "activeArraySize"    # Landroid/graphics/Rect;
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .param p2, "previewSize"    # Landroid/util/Size;
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 751
    new-instance v1, Landroid/graphics/Rect;

    #@3
    .line 753
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@a
    move-result v2

    #@b
    .line 751
    invoke-direct {v1, v7, v7, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    #@e
    .line 755
    .local v1, "activeArraySizeOnly":Landroid/graphics/Rect;
    move-object v3, p1

    #@f
    .line 757
    .local v3, "userCropRegion":Landroid/graphics/Rect;
    if-nez v3, :cond_0

    #@11
    .line 758
    move-object v3, v1

    #@12
    .line 765
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    #@14
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@17
    .line 766
    .local v4, "reportedCropRegion":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    #@19
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@1c
    .local v5, "previewCropRegion":Landroid/graphics/Rect;
    move-object v0, p3

    #@1d
    move-object v2, p2

    #@1e
    .line 767
    invoke-static/range {v0 .. v5}, Landroid/hardware/camera2/legacy/ParameterUtils;->getClosestAvailableZoomCrop(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@21
    move-result v6

    #@22
    .line 778
    .local v6, "zoomIdx":I
    new-instance v0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    #@24
    invoke-direct {v0, v6, v5, v4}, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@27
    return-object v0
.end method

.method public static convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;
    .locals 3
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    #@0
    .prologue
    .line 237
    const-string/jumbo v0, "size must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 239
    new-instance v0, Landroid/util/Size;

    #@8
    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    #@a
    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    #@c
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@f
    return-object v0
.end method

.method public static convertSizeList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v3, "sizeList must not be null"

    #@3
    invoke-static {p0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 248
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    .line 249
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/hardware/Camera$Size;

    #@1f
    .line 250
    .local v0, "s":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/util/Size;

    #@21
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    #@23
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    #@25
    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    #@28
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 252
    .end local v0    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    return-object v2
.end method

.method public static convertSizeListToArray(Ljava/util/List;)[Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    #@0
    .prologue
    .line 259
    .local p0, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v5, "sizeList must not be null"

    #@3
    invoke-static {p0, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 261
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v5

    #@a
    new-array v0, v5, [Landroid/util/Size;

    #@c
    .line 262
    .local v0, "array":[Landroid/util/Size;
    const/4 v1, 0x0

    #@d
    .line 263
    .local v1, "ctr":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v4

    #@11
    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/hardware/Camera$Size;

    #@1d
    .line 264
    .local v3, "s":Landroid/hardware/Camera$Size;
    add-int/lit8 v2, v1, 0x1

    #@1f
    .end local v1    # "ctr":I
    .local v2, "ctr":I
    new-instance v5, Landroid/util/Size;

    #@21
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    #@23
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    #@25
    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    #@28
    aput-object v5, v0, v1

    #@2a
    move v1, v2

    #@2b
    .end local v2    # "ctr":I
    .restart local v1    # "ctr":I
    goto :goto_0

    #@2c
    .line 266
    .end local v3    # "s":Landroid/hardware/Camera$Size;
    :cond_0
    return-object v0
.end method

.method private static getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;
    .locals 11
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "streamSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 650
    const-string/jumbo v8, "params must not be null"

    #@3
    invoke-static {p0, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 651
    const-string/jumbo v8, "activeArray must not be null"

    #@9
    invoke-static {p1, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 652
    const-string/jumbo v8, "streamSize must not be null"

    #@f
    invoke-static {p2, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 657
    invoke-static {p1, p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    #@15
    move-result-object v4

    #@16
    .line 659
    .local v4, "unzoomedStreamCrop":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    #@19
    move-result v8

    #@1a
    if-nez v8, :cond_0

    #@1c
    .line 661
    new-instance v8, Ljava/util/ArrayList;

    #@1e
    const/4 v9, 0x1

    #@1f
    new-array v9, v9, [Landroid/graphics/Rect;

    #@21
    const/4 v10, 0x0

    #@22
    aput-object v4, v9, v10

    #@24
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@27
    move-result-object v9

    #@28
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2b
    return-object v8

    #@2c
    .line 664
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    #@2e
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    #@31
    move-result v8

    #@32
    add-int/lit8 v8, v8, 0x1

    #@34
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@37
    .line 665
    .local v7, "zoomCropRectangles":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v1, Landroid/graphics/Matrix;

    #@39
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@3c
    .line 666
    .local v1, "scaleMatrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    #@3e
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@41
    .line 668
    .local v2, "scaledRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    #@44
    move-result-object v8

    #@45
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v6

    #@49
    .local v6, "zoom$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_1

    #@4f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v8

    #@53
    check-cast v8, Ljava/lang/Integer;

    #@55
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@58
    move-result v5

    #@59
    .line 669
    .local v5, "zoom":I
    int-to-float v8, v5

    #@5a
    const/high16 v9, 0x42c80000    # 100.0f

    #@5c
    div-float v3, v9, v8

    #@5e
    .line 672
    .local v3, "shrinkRatio":F
    invoke-static {v4, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->convertRectF(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    #@61
    .line 676
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    #@64
    move-result v8

    #@65
    .line 677
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    #@68
    move-result v9

    #@69
    .line 674
    invoke-virtual {v1, v3, v3, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    #@6c
    .line 679
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@6f
    .line 681
    invoke-static {v2}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    #@72
    move-result-object v0

    #@73
    .line 684
    .local v0, "intRect":Landroid/graphics/Rect;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@76
    goto :goto_0

    #@77
    .line 687
    .end local v0    # "intRect":Landroid/graphics/Rect;
    .end local v3    # "shrinkRatio":F
    .end local v5    # "zoom":I
    :cond_1
    return-object v7
.end method

.method public static getAvailablePreviewZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "previewSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 623
    const-string/jumbo v0, "params must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 624
    const-string/jumbo v0, "activeArray must not be null"

    #@9
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 625
    const-string/jumbo v0, "previewSize must not be null"

    #@f
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 627
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static getAvailableZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 593
    const-string/jumbo v0, "params must not be null"

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 594
    const-string/jumbo v0, "activeArray must not be null"

    #@9
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 596
    invoke-static {p1}, Landroid/hardware/camera2/utils/ParamsUtils;->createSize(Landroid/graphics/Rect;)Landroid/util/Size;

    #@f
    move-result-object v0

    #@10
    invoke-static {p0, p1, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static getClosestAvailableZoomCrop(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 15
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "streamSize"    # Landroid/util/Size;
    .param p3, "cropRegion"    # Landroid/graphics/Rect;
    .param p4, "reportedCropRegion"    # Landroid/graphics/Rect;
    .param p5, "previewCropRegion"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 378
    const-string/jumbo v13, "params must not be null"

    #@3
    invoke-static {p0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 379
    const-string/jumbo v13, "activeArray must not be null"

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 380
    const-string/jumbo v13, "streamSize must not be null"

    #@11
    move-object/from16 v0, p2

    #@13
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 381
    const-string/jumbo v13, "reportedCropRegion must not be null"

    #@19
    move-object/from16 v0, p4

    #@1b
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 382
    const-string/jumbo v13, "previewCropRegion must not be null"

    #@21
    move-object/from16 v0, p5

    #@23
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 384
    new-instance v1, Landroid/graphics/Rect;

    #@28
    move-object/from16 v0, p3

    #@2a
    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@2d
    .line 389
    .local v1, "actualCrop":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    #@2f
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@32
    move-result v13

    #@33
    if-nez v13, :cond_0

    #@35
    .line 390
    const-string/jumbo v13, "ParameterUtils"

    #@38
    const-string/jumbo v14, "getClosestAvailableZoomCrop - Crop region out of range; setting to active array size"

    #@3b
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 392
    move-object/from16 v0, p1

    #@40
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@43
    .line 395
    :cond_0
    invoke-static/range {p1 .. p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    #@46
    move-result-object v12

    #@47
    .line 399
    .local v12, "previewCrop":Landroid/graphics/Rect;
    invoke-static {v12, v1}, Landroid/hardware/camera2/legacy/ParameterUtils;->shrinkToSameAspectRatioCentered(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@4a
    move-result-object v7

    #@4b
    .line 412
    .local v7, "cropRegionAsPreview":Landroid/graphics/Rect;
    const/4 v5, 0x0

    #@4c
    .line 413
    .local v5, "bestReportedCropRegion":Landroid/graphics/Rect;
    const/4 v4, 0x0

    #@4d
    .line 414
    .local v4, "bestPreviewCropRegion":Landroid/graphics/Rect;
    const/4 v6, -0x1

    #@4e
    .line 417
    .local v6, "bestZoomIndex":I
    invoke-static/range {p0 .. p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailableZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Ljava/util/List;

    #@51
    move-result-object v3

    #@52
    .line 419
    .local v3, "availableReportedCropRegions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static/range {p0 .. p2}, Landroid/hardware/camera2/legacy/ParameterUtils;->getAvailablePreviewZoomCropRectangles(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;Landroid/util/Size;)Ljava/util/List;

    #@55
    move-result-object v2

    #@56
    .line 430
    .local v2, "availablePreviewCropRegions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@59
    move-result v13

    #@5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5d
    move-result v14

    #@5e
    if-eq v13, v14, :cond_1

    #@60
    .line 431
    new-instance v13, Ljava/lang/AssertionError;

    #@62
    const-string/jumbo v14, "available reported/preview crop region size mismatch"

    #@65
    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@68
    throw v13

    #@69
    .line 434
    :cond_1
    const/4 v10, 0x0

    #@6a
    .end local v4    # "bestPreviewCropRegion":Landroid/graphics/Rect;
    .end local v5    # "bestReportedCropRegion":Landroid/graphics/Rect;
    .local v10, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6d
    move-result v13

    #@6e
    if-ge v10, v13, :cond_4

    #@70
    .line 435
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@73
    move-result-object v8

    #@74
    check-cast v8, Landroid/graphics/Rect;

    #@76
    .line 436
    .local v8, "currentPreviewCropRegion":Landroid/graphics/Rect;
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@79
    move-result-object v9

    #@7a
    check-cast v9, Landroid/graphics/Rect;

    #@7c
    .line 439
    .local v9, "currentReportedCropRegion":Landroid/graphics/Rect;
    const/4 v13, -0x1

    #@7d
    if-ne v6, v13, :cond_2

    #@7f
    .line 440
    const/4 v11, 0x1

    #@80
    .line 451
    .local v11, "isBest":Z
    :goto_1
    if-eqz v11, :cond_4

    #@82
    .line 452
    move-object v4, v8

    #@83
    .line 453
    .local v4, "bestPreviewCropRegion":Landroid/graphics/Rect;
    move-object v5, v9

    #@84
    .line 454
    .local v5, "bestReportedCropRegion":Landroid/graphics/Rect;
    move v6, v10

    #@85
    .line 434
    add-int/lit8 v10, v10, 0x1

    #@87
    goto :goto_0

    #@88
    .line 441
    .end local v4    # "bestPreviewCropRegion":Landroid/graphics/Rect;
    .end local v5    # "bestReportedCropRegion":Landroid/graphics/Rect;
    .end local v11    # "isBest":Z
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    #@8b
    move-result v13

    #@8c
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@8f
    move-result v14

    #@90
    if-lt v13, v14, :cond_3

    #@92
    .line 442
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    #@95
    move-result v13

    #@96
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@99
    move-result v14

    #@9a
    if-lt v13, v14, :cond_3

    #@9c
    .line 443
    const/4 v11, 0x1

    #@9d
    .line 442
    .restart local v11    # "isBest":Z
    goto :goto_1

    #@9e
    .line 445
    .end local v11    # "isBest":Z
    :cond_3
    const/4 v11, 0x0

    #@9f
    .restart local v11    # "isBest":Z
    goto :goto_1

    #@a0
    .line 460
    .end local v8    # "currentPreviewCropRegion":Landroid/graphics/Rect;
    .end local v9    # "currentReportedCropRegion":Landroid/graphics/Rect;
    .end local v11    # "isBest":Z
    :cond_4
    const/4 v13, -0x1

    #@a1
    if-ne v6, v13, :cond_5

    #@a3
    .line 462
    new-instance v13, Ljava/lang/AssertionError;

    #@a5
    const-string/jumbo v14, "Should\'ve found at least one valid zoom index"

    #@a8
    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@ab
    throw v13

    #@ac
    .line 466
    :cond_5
    move-object/from16 v0, p4

    #@ae
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@b1
    .line 467
    move-object/from16 v0, p5

    #@b3
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@b6
    .line 469
    return v6
.end method

.method public static getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 286
    const-string/jumbo v1, "params must not be null"

    #@3
    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 288
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    invoke-static {v1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeList(Ljava/util/List;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    .line 289
    .local v0, "supportedJpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    invoke-static {v0}, Landroid/hardware/camera2/utils/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/util/Size;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public static getMaxZoomRatio(Landroid/hardware/Camera$Parameters;)F
    .locals 5
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 700
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 701
    return v4

    #@9
    .line 704
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    #@c
    move-result-object v2

    #@d
    .line 705
    .local v2, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@10
    move-result v3

    #@11
    add-int/lit8 v3, v3, -0x1

    #@13
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/lang/Integer;

    #@19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v0

    #@1d
    .line 706
    .local v0, "zoom":I
    int-to-float v3, v0

    #@1e
    mul-float/2addr v3, v4

    #@1f
    const/high16 v4, 0x42c80000    # 100.0f

    #@21
    div-float v1, v3, v4

    #@23
    .line 708
    .local v1, "zoomRatio":F
    return v1
.end method

.method private static getPreviewCropRectangleUnzoomed(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 11
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "previewSize"    # Landroid/util/Size;

    #@0
    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    #@2
    const/4 v10, 0x0

    #@3
    .line 493
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@6
    move-result v6

    #@7
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@a
    move-result v7

    #@b
    if-le v6, v7, :cond_0

    #@d
    .line 494
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v7, "previewSize must not be wider than activeArray"

    #@12
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v6

    #@16
    .line 495
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@19
    move-result v6

    #@1a
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@1d
    move-result v7

    #@1e
    if-le v6, v7, :cond_1

    #@20
    .line 496
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v7, "previewSize must not be taller than activeArray"

    #@25
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v6

    #@29
    .line 499
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@2c
    move-result v6

    #@2d
    int-to-float v6, v6

    #@2e
    mul-float/2addr v6, v8

    #@2f
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@32
    move-result v7

    #@33
    int-to-float v7, v7

    #@34
    div-float v0, v6, v7

    #@36
    .line 500
    .local v0, "aspectRatioArray":F
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@39
    move-result v6

    #@3a
    int-to-float v6, v6

    #@3b
    mul-float/2addr v6, v8

    #@3c
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@3f
    move-result v7

    #@40
    int-to-float v7, v7

    #@41
    div-float v1, v6, v7

    #@43
    .line 503
    .local v1, "aspectRatioPreview":F
    sub-float v6, v1, v0

    #@45
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@48
    move-result v6

    #@49
    float-to-double v6, v6

    #@4a
    const-wide v8, 0x3fa99999a0000000L    # 0.05000000074505806

    #@4f
    cmpg-double v6, v6, v8

    #@51
    if-gez v6, :cond_2

    #@53
    .line 504
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@56
    move-result v6

    #@57
    int-to-float v2, v6

    #@58
    .line 505
    .local v2, "cropH":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@5b
    move-result v6

    #@5c
    int-to-float v4, v6

    #@5d
    .line 516
    .local v4, "cropW":F
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    #@5f
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@62
    .line 517
    .local v5, "translateMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    #@64
    invoke-direct {v3, v10, v10, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@67
    .line 520
    .local v3, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    #@6a
    move-result v6

    #@6b
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    #@6e
    move-result v7

    #@6f
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@72
    .line 521
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    #@75
    move-result v6

    #@76
    neg-float v6, v6

    #@77
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    #@7a
    move-result v7

    #@7b
    neg-float v7, v7

    #@7c
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@7f
    .line 523
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@82
    .line 526
    invoke-static {v3}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    #@85
    move-result-object v6

    #@86
    return-object v6

    #@87
    .line 506
    .end local v2    # "cropH":F
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v4    # "cropW":F
    .end local v5    # "translateMatrix":Landroid/graphics/Matrix;
    :cond_2
    cmpg-float v6, v1, v0

    #@89
    if-gez v6, :cond_3

    #@8b
    .line 508
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@8e
    move-result v6

    #@8f
    int-to-float v2, v6

    #@90
    .line 509
    .restart local v2    # "cropH":F
    mul-float v4, v2, v1

    #@92
    .restart local v4    # "cropW":F
    goto :goto_0

    #@93
    .line 512
    .end local v2    # "cropH":F
    .end local v4    # "cropW":F
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@96
    move-result v6

    #@97
    int-to-float v4, v6

    #@98
    .line 513
    .restart local v4    # "cropW":F
    div-float v2, v4, v1

    #@9a
    .restart local v2    # "cropH":F
    goto :goto_0
.end method

.method private static getZoomRatio(Landroid/util/Size;Landroid/util/Size;)Landroid/util/SizeF;
    .locals 5
    .param p0, "activeArraySize"    # Landroid/util/Size;
    .param p1, "cropSize"    # Landroid/util/Size;

    #@0
    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    #@2
    .line 724
    const-string/jumbo v2, "activeArraySize must not be null"

    #@5
    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 725
    const-string/jumbo v2, "cropSize must not be null"

    #@b
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 726
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@11
    move-result v2

    #@12
    const-string/jumbo v3, "cropSize.width must be positive"

    #@15
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@18
    .line 727
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@1b
    move-result v2

    #@1c
    const-string/jumbo v3, "cropSize.height must be positive"

    #@1f
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@22
    .line 729
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    #@25
    move-result v2

    #@26
    int-to-float v2, v2

    #@27
    mul-float/2addr v2, v4

    #@28
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@2b
    move-result v3

    #@2c
    int-to-float v3, v3

    #@2d
    div-float v1, v2, v3

    #@2f
    .line 730
    .local v1, "zoomRatioWidth":F
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    #@32
    move-result v2

    #@33
    int-to-float v2, v2

    #@34
    mul-float/2addr v2, v4

    #@35
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@38
    move-result v3

    #@39
    int-to-float v3, v3

    #@3a
    div-float v0, v2, v3

    #@3c
    .line 732
    .local v0, "zoomRatioHeight":F
    new-instance v2, Landroid/util/SizeF;

    #@3e
    invoke-direct {v2, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    #@41
    return-object v2
.end method

.method private static shrinkToSameAspectRatioCentered(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "reference"    # Landroid/graphics/Rect;
    .param p1, "shrinkTarget"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    #@2
    .line 543
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@5
    move-result v6

    #@6
    int-to-float v6, v6

    #@7
    mul-float/2addr v6, v8

    #@8
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@b
    move-result v7

    #@c
    int-to-float v7, v7

    #@d
    div-float v0, v6, v7

    #@f
    .line 544
    .local v0, "aspectRatioReference":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@12
    move-result v6

    #@13
    int-to-float v6, v6

    #@14
    mul-float/2addr v6, v8

    #@15
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@18
    move-result v7

    #@19
    int-to-float v7, v7

    #@1a
    div-float v1, v6, v7

    #@1c
    .line 547
    .local v1, "aspectRatioShrinkTarget":F
    cmpg-float v6, v1, v0

    #@1e
    if-gez v6, :cond_0

    #@20
    .line 549
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@23
    move-result v6

    #@24
    int-to-float v2, v6

    #@25
    .line 550
    .local v2, "cropH":F
    mul-float v3, v2, v1

    #@27
    .line 557
    .local v3, "cropW":F
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    #@29
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@2c
    .line 558
    .local v5, "translateMatrix":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    #@2e
    invoke-direct {v4, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@31
    .line 561
    .local v4, "shrunkRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@34
    move-result v6

    #@35
    int-to-float v6, v6

    #@36
    div-float v6, v3, v6

    #@38
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@3b
    move-result v7

    #@3c
    int-to-float v7, v7

    #@3d
    div-float v7, v2, v7

    #@3f
    .line 562
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    #@42
    move-result v8

    #@43
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    #@46
    move-result v9

    #@47
    .line 561
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    #@4a
    .line 564
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@4d
    .line 566
    invoke-static {v4}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    #@50
    move-result-object v6

    #@51
    return-object v6

    #@52
    .line 553
    .end local v2    # "cropH":F
    .end local v3    # "cropW":F
    .end local v4    # "shrunkRect":Landroid/graphics/RectF;
    .end local v5    # "translateMatrix":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@55
    move-result v6

    #@56
    int-to-float v3, v6

    #@57
    .line 554
    .restart local v3    # "cropW":F
    div-float v2, v3, v1

    #@59
    .restart local v2    # "cropH":F
    goto :goto_0
.end method

.method public static stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;
    .locals 4
    .param p0, "area"    # Landroid/hardware/Camera$Area;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v3, 0x2c

    #@3
    .line 296
    if-nez p0, :cond_0

    #@5
    .line 297
    return-object v2

    #@6
    .line 299
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 300
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@d
    .line 302
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v2, 0x0

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@11
    .line 303
    const-string/jumbo v2, "(["

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 304
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    const-string/jumbo v2, "]["

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    iget v2, v0, Landroid/graphics/Rect;->right:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 305
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    const/16 v2, 0x5d

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 308
    iget v2, p0, Landroid/hardware/Camera$Area;->weight:I

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    .line 309
    const/16 v2, 0x29

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    return-object v2
.end method

.method public static stringFromAreaList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v4, 0x0

    #@1
    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 322
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    #@8
    .line 323
    return-object v4

    #@9
    .line 326
    :cond_0
    const/4 v2, 0x0

    #@a
    .line 327
    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "area$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_3

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/hardware/Camera$Area;

    #@1a
    .line 328
    .local v0, "area":Landroid/hardware/Camera$Area;
    if-nez v0, :cond_2

    #@1c
    .line 329
    const-string/jumbo v4, "null"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 334
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v4, v4, -0x1

    #@28
    if-eq v2, v4, :cond_1

    #@2a
    .line 335
    const-string/jumbo v4, ", "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 338
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 331
    :cond_2
    invoke-static {v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->stringFromArea(Landroid/hardware/Camera$Area;)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    goto :goto_1

    #@3b
    .line 341
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    return-object v4
.end method
