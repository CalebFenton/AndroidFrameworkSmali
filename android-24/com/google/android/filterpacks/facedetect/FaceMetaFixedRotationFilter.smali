.class public Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "FaceMetaFixedRotationFilter.java"


# instance fields
.field private mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@6
    .line 44
    return-void
.end method

.method private RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;
    .locals 3
    .param p1, "rotation"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 113
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 119
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@7
    invoke-direct {v0, p2, p3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@a
    return-object v0

    #@b
    .line 114
    :sswitch_0
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@d
    sub-float v1, v2, p3

    #@f
    invoke-direct {v0, v1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@12
    return-object v0

    #@13
    .line 115
    :sswitch_1
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@15
    sub-float v1, v2, p2

    #@17
    sub-float/2addr v2, p3

    #@18
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@1b
    return-object v0

    #@1c
    .line 116
    :sswitch_2
    new-instance v0, Landroid/filterfw/geometry/Point;

    #@1e
    sub-float v1, v2, p2

    #@20
    invoke-direct {v0, p3, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@23
    return-object v0

    #@24
    .line 113
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v2

    #@4
    .line 63
    .local v2, "frameManager":Landroid/filterfw/core/FrameManager;
    const-string/jumbo v8, "faces"

    #@7
    invoke-virtual {p0, v8}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v1

    #@b
    .line 64
    .local v1, "facesFrame":Landroid/filterfw/core/Frame;
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@d
    if-nez v8, :cond_0

    #@f
    .line 65
    const-string/jumbo v8, "faces"

    #@12
    invoke-virtual {p0, v8, v1}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@15
    .line 66
    return-void

    #@16
    .line 70
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@1c
    .line 71
    .local v0, "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const-class v8, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@1e
    .line 72
    invoke-virtual {v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@21
    move-result v9

    #@22
    .line 73
    const/4 v10, 0x2

    #@23
    .line 71
    invoke-static {v8, v9, v10}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@26
    move-result-object v6

    #@27
    .line 74
    .local v6, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v2, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@2a
    move-result-object v5

    #@2b
    .line 75
    .local v5, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@31
    .line 76
    .local v4, "outfaces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/4 v3, 0x0

    #@32
    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@35
    move-result v8

    #@36
    if-ge v3, v8, :cond_1

    #@38
    .line 77
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getId(I)I

    #@3b
    move-result v8

    #@3c
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setId(II)V

    #@3f
    .line 78
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@41
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    #@44
    move-result v9

    #@45
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    #@48
    move-result v10

    #@49
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    #@4c
    move-result-object v7

    #@4d
    .line 79
    .local v7, "p":Landroid/filterfw/geometry/Point;
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    #@4f
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceX0(IF)V

    #@52
    .line 80
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    #@54
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceY0(IF)V

    #@57
    .line 82
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@59
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    #@5c
    move-result v9

    #@5d
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    #@60
    move-result v10

    #@61
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    #@64
    move-result-object v7

    #@65
    .line 83
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    #@67
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceX1(IF)V

    #@6a
    .line 84
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    #@6c
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setFaceY1(IF)V

    #@6f
    .line 86
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@71
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@74
    move-result v9

    #@75
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@78
    move-result v10

    #@79
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    #@7c
    move-result-object v7

    #@7d
    .line 87
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    #@7f
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLeftEyeX(IF)V

    #@82
    .line 88
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    #@84
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLeftEyeY(IF)V

    #@87
    .line 90
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@89
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@8c
    move-result v9

    #@8d
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@90
    move-result v10

    #@91
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    #@94
    move-result-object v7

    #@95
    .line 91
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    #@97
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setRightEyeX(IF)V

    #@9a
    .line 92
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    #@9c
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setRightEyeY(IF)V

    #@9f
    .line 94
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@a1
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    #@a4
    move-result v9

    #@a5
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    #@a8
    move-result v10

    #@a9
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    #@ac
    move-result-object v7

    #@ad
    .line 95
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    #@af
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setMouthX(IF)V

    #@b2
    .line 96
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    #@b4
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setMouthY(IF)V

    #@b7
    .line 98
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@b9
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipX(I)F

    #@bc
    move-result v9

    #@bd
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getUpperLipY(I)F

    #@c0
    move-result v10

    #@c1
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    #@c4
    move-result-object v7

    #@c5
    .line 99
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    #@c7
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setUpperLipX(IF)V

    #@ca
    .line 100
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    #@cc
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setUpperLipY(IF)V

    #@cf
    .line 102
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->mRotation:I

    #@d1
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipX(I)F

    #@d4
    move-result v9

    #@d5
    invoke-virtual {v0, v3}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLowerLipY(I)F

    #@d8
    move-result v10

    #@d9
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->RotatePointInFrame(IFF)Landroid/filterfw/geometry/Point;

    #@dc
    move-result-object v7

    #@dd
    .line 103
    iget v8, v7, Landroid/filterfw/geometry/Point;->x:F

    #@df
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLowerLipX(IF)V

    #@e2
    .line 104
    iget v8, v7, Landroid/filterfw/geometry/Point;->y:F

    #@e4
    invoke-virtual {v4, v3, v8}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->setLowerLipY(IF)V

    #@e7
    .line 76
    add-int/lit8 v3, v3, 0x1

    #@e9
    goto/16 :goto_0

    #@eb
    .line 107
    .end local v7    # "p":Landroid/filterfw/geometry/Point;
    :cond_1
    const-string/jumbo v8, "faces"

    #@ee
    invoke-virtual {p0, v8, v5}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@f1
    .line 110
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@f4
    .line 59
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 51
    const-class v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@2
    .line 52
    const/4 v2, 0x2

    #@3
    .line 51
    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@6
    move-result-object v0

    #@7
    .line 54
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "faces"

    #@a
    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@d
    .line 55
    const-string/jumbo v1, "faces"

    #@10
    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceMetaFixedRotationFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@13
    .line 49
    return-void
.end method
