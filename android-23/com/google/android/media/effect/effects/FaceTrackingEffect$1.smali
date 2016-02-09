.class Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;
.super Ljava/lang/Object;
.source "FaceTrackingEffect.java"

# interfaces
.implements Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/media/effect/effects/FaceTrackingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;


# direct methods
.method constructor <init>(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    #@0
    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V
    .locals 12
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;
    .param p3, "userData"    # Ljava/lang/Object;

    #@0
    .prologue
    const/high16 v11, 0x44fa0000    # 2000.0f

    #@2
    const/high16 v10, 0x3f000000    # 0.5f

    #@4
    .line 138
    const/16 v3, 0x7d0

    #@6
    .line 139
    .local v3, "pixelRange":I
    iget-object v4, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    #@8
    invoke-static {v4}, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->-get0(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)Landroid/media/effect/EffectUpdateListener;

    #@b
    move-result-object v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 140
    const/4 v0, 0x0

    #@f
    .line 141
    .local v0, "facedata":[Landroid/hardware/Camera$Face;
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@15
    .line 142
    .local v1, "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-virtual {v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@18
    move-result v4

    #@19
    new-array v0, v4, [Landroid/hardware/Camera$Face;

    #@1b
    .line 143
    .local v0, "facedata":[Landroid/hardware/Camera$Face;
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@1f
    move-result v4

    #@20
    if-ge v2, v4, :cond_0

    #@22
    .line 144
    new-instance v4, Landroid/hardware/Camera$Face;

    #@24
    invoke-direct {v4}, Landroid/hardware/Camera$Face;-><init>()V

    #@27
    aput-object v4, v0, v2

    #@29
    .line 145
    aget-object v4, v0, v2

    #@2b
    .line 146
    new-instance v5, Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    #@30
    move-result v6

    #@31
    sub-float/2addr v6, v10

    #@32
    mul-float/2addr v6, v11

    #@33
    float-to-int v6, v6

    #@34
    .line 147
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    #@37
    move-result v7

    #@38
    sub-float/2addr v7, v10

    #@39
    mul-float/2addr v7, v11

    #@3a
    float-to-int v7, v7

    #@3b
    .line 148
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    #@3e
    move-result v8

    #@3f
    sub-float/2addr v8, v10

    #@40
    mul-float/2addr v8, v11

    #@41
    float-to-int v8, v8

    #@42
    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    #@45
    move-result v9

    #@46
    sub-float/2addr v9, v10

    #@47
    mul-float/2addr v9, v11

    #@48
    float-to-int v9, v9

    #@49
    .line 146
    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    #@4c
    .line 145
    iput-object v5, v4, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    #@4e
    .line 150
    aget-object v4, v0, v2

    #@50
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getId(I)I

    #@53
    move-result v5

    #@54
    iput v5, v4, Landroid/hardware/Camera$Face;->id:I

    #@56
    .line 151
    aget-object v4, v0, v2

    #@58
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getConfidence(I)F

    #@5b
    move-result v5

    #@5c
    const/high16 v6, 0x42c60000    # 99.0f

    #@5e
    mul-float/2addr v5, v6

    #@5f
    const/high16 v6, 0x3f800000    # 1.0f

    #@61
    add-float/2addr v5, v6

    #@62
    float-to-int v5, v5

    #@63
    iput v5, v4, Landroid/hardware/Camera$Face;->score:I

    #@65
    .line 152
    aget-object v4, v0, v2

    #@67
    .line 153
    new-instance v5, Landroid/graphics/Point;

    #@69
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@6c
    move-result v6

    #@6d
    sub-float/2addr v6, v10

    #@6e
    mul-float/2addr v6, v11

    #@6f
    float-to-int v6, v6

    #@70
    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@73
    move-result v7

    #@74
    sub-float/2addr v7, v10

    #@75
    mul-float/2addr v7, v11

    #@76
    float-to-int v7, v7

    #@77
    .line 153
    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    #@7a
    .line 152
    iput-object v5, v4, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    #@7c
    .line 155
    aget-object v4, v0, v2

    #@7e
    .line 156
    new-instance v5, Landroid/graphics/Point;

    #@80
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@83
    move-result v6

    #@84
    sub-float/2addr v6, v10

    #@85
    mul-float/2addr v6, v11

    #@86
    float-to-int v6, v6

    #@87
    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@8a
    move-result v7

    #@8b
    sub-float/2addr v7, v10

    #@8c
    mul-float/2addr v7, v11

    #@8d
    float-to-int v7, v7

    #@8e
    .line 156
    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    #@91
    .line 155
    iput-object v5, v4, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    #@93
    .line 158
    aget-object v4, v0, v2

    #@95
    .line 159
    new-instance v5, Landroid/graphics/Point;

    #@97
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    #@9a
    move-result v6

    #@9b
    sub-float/2addr v6, v10

    #@9c
    mul-float/2addr v6, v11

    #@9d
    float-to-int v6, v6

    #@9e
    .line 160
    invoke-virtual {v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    #@a1
    move-result v7

    #@a2
    sub-float/2addr v7, v10

    #@a3
    mul-float/2addr v7, v11

    #@a4
    float-to-int v7, v7

    #@a5
    .line 159
    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    #@a8
    .line 158
    iput-object v5, v4, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    #@aa
    .line 143
    add-int/lit8 v2, v2, 0x1

    #@ac
    goto/16 :goto_0

    #@ae
    .line 162
    :cond_0
    iget-object v4, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    #@b0
    invoke-static {v4}, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->-get0(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)Landroid/media/effect/EffectUpdateListener;

    #@b3
    move-result-object v4

    #@b4
    iget-object v5, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;->this$0:Lcom/google/android/media/effect/effects/FaceTrackingEffect;

    #@b6
    invoke-interface {v4, v5, v0}, Landroid/media/effect/EffectUpdateListener;->onEffectUpdated(Landroid/media/effect/Effect;Ljava/lang/Object;)V

    #@b9
    .line 135
    .end local v0    # "facedata":[Landroid/hardware/Camera$Face;
    .end local v1    # "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
