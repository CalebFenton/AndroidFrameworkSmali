.class public Lcom/google/android/media/effect/effects/VCOEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "VCOEffect.java"


# static fields
.field private static final FACE_DETECTOR_MAX_SIZE:I = 0x140

.field private static final mVCOGraph:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.google.android.filterpacks.facedetect;\n\n@filter GLTextureSource srcTex {\n  texId = 0;\n  repeatFrame = true;\n}\n\n@filter FrameBranch branch1 {\n  outputs = 3;\n}\n\n@filter ToPackedGrayFilter toPackedGray {\n}\n\n@filter MultiFaceTrackerFilter faceTracker {\n  quality = 0.0f;\n  smoothness = 0.2f;\n  minEyeDist = 25.0f;\n  rollRange = 45.0f;\n  numSkipFrames = 19;\n  trackingError = 1.0;\n  mouthOnlySmoothing = 0;\n  useAffineCorrection = 1;\n  patchSize = 11;\n}\n\n@filter FrameBranch branch2 {\n  outputs = 2;\n}\n\n@filter LipDiffer lipDiffer {\n}\n\n@filter FaceZoomer faceZoomer {\n}\n\n@filter GLTextureTarget trgTex {\n  texId = 0;\n}\n\n@connect srcTex[frame]         => branch1[in];\n@connect branch1[out0]         => toPackedGray[image];\n@connect branch1[out1]         => lipDiffer[image];\n@connect branch1[out2]         => faceZoomer[image];\n@connect toPackedGray[image]   => faceTracker[image];\n@connect faceTracker[faces]    => branch2[in];\n@connect branch2[out0]         => lipDiffer[faces];\n@connect branch2[out1]         => faceZoomer[faces];\n@connect lipDiffer[diffs]      => faceZoomer[lips];\n@connect faceZoomer[image]     => trgTex[frame];\n"


# instance fields
.field private mFirstTime:Z

.field private mInputHeight:I

.field private mInputWidth:I


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 93
    const-string/jumbo v3, "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.google.android.filterpacks.facedetect;\n\n@filter GLTextureSource srcTex {\n  texId = 0;\n  repeatFrame = true;\n}\n\n@filter FrameBranch branch1 {\n  outputs = 3;\n}\n\n@filter ToPackedGrayFilter toPackedGray {\n}\n\n@filter MultiFaceTrackerFilter faceTracker {\n  quality = 0.0f;\n  smoothness = 0.2f;\n  minEyeDist = 25.0f;\n  rollRange = 45.0f;\n  numSkipFrames = 19;\n  trackingError = 1.0;\n  mouthOnlySmoothing = 0;\n  useAffineCorrection = 1;\n  patchSize = 11;\n}\n\n@filter FrameBranch branch2 {\n  outputs = 2;\n}\n\n@filter LipDiffer lipDiffer {\n}\n\n@filter FaceZoomer faceZoomer {\n}\n\n@filter GLTextureTarget trgTex {\n  texId = 0;\n}\n\n@connect srcTex[frame]         => branch1[in];\n@connect branch1[out0]         => toPackedGray[image];\n@connect branch1[out1]         => lipDiffer[image];\n@connect branch1[out2]         => faceZoomer[image];\n@connect toPackedGray[image]   => faceTracker[image];\n@connect faceTracker[faces]    => branch2[in];\n@connect branch2[out0]         => lipDiffer[faces];\n@connect branch2[out1]         => faceZoomer[faces];\n@connect lipDiffer[diffs]      => faceZoomer[lips];\n@connect faceZoomer[image]     => trgTex[frame];\n"

    #@4
    const-string/jumbo v4, "srcTex"

    #@7
    const-string/jumbo v5, "trgTex"

    #@a
    const-class v6, Landroid/filterfw/core/OneShotScheduler;

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move-object v2, p2

    #@f
    invoke-direct/range {v0 .. v6}, Landroid/media/effect/FilterGraphEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    #@12
    .line 35
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mFirstTime:Z

    #@15
    .line 36
    iput v7, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputWidth:I

    #@17
    .line 37
    iput v7, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputHeight:I

    #@19
    .line 92
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 5
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    #@0
    .prologue
    const/16 v4, 0x140

    #@2
    .line 98
    iget-boolean v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mFirstTime:Z

    #@4
    if-eqz v3, :cond_2

    #@6
    .line 102
    if-le p2, p3, :cond_1

    #@8
    .line 103
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v1

    #@c
    .line 104
    .local v1, "fdWidth":I
    mul-int v3, v1, p3

    #@e
    div-int v0, v3, p2

    #@10
    .line 110
    .local v0, "fdHeight":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@12
    const-string/jumbo v4, "toPackedGray"

    #@15
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@18
    move-result-object v2

    #@19
    .line 111
    .local v2, "grayFilter":Landroid/filterfw/core/Filter;
    const-string/jumbo v3, "owidth"

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@23
    .line 112
    const-string/jumbo v3, "oheight"

    #@26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2d
    .line 113
    const/4 v3, 0x0

    #@2e
    iput-boolean v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mFirstTime:Z

    #@30
    .line 114
    iput p2, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputWidth:I

    #@32
    .line 115
    iput p3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputHeight:I

    #@34
    .line 120
    .end local v0    # "fdHeight":I
    .end local v1    # "fdWidth":I
    .end local v2    # "grayFilter":Landroid/filterfw/core/Filter;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/effect/FilterGraphEffect;->apply(IIII)V

    #@37
    .line 97
    return-void

    #@38
    .line 107
    :cond_1
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    #@3b
    move-result v0

    #@3c
    .line 108
    .restart local v0    # "fdHeight":I
    mul-int v3, v0, p2

    #@3e
    div-int v1, v3, p3

    #@40
    .restart local v1    # "fdWidth":I
    goto :goto_0

    #@41
    .line 117
    .end local v0    # "fdHeight":I
    .end local v1    # "fdWidth":I
    :cond_2
    iget v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputWidth:I

    #@43
    if-ne p2, v3, :cond_3

    #@45
    iget v3, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mInputHeight:I

    #@47
    if-eq p3, v3, :cond_0

    #@49
    .line 118
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    #@4b
    const-string/jumbo v4, "VCOEffect can\'t change input size!"

    #@4e
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@51
    throw v3
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 125
    const-string/jumbo v2, "timestamp"

    #@3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 126
    iget-object v2, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@b
    const-string/jumbo v3, "srcTex"

    #@e
    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@11
    move-result-object v0

    #@12
    .line 127
    .local v0, "srcTexFilter":Landroid/filterfw/core/Filter;
    const-string/jumbo v2, "timestamp"

    #@15
    invoke-virtual {v0, v2, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    .line 129
    .end local v0    # "srcTexFilter":Landroid/filterfw/core/Filter;
    :cond_0
    const-string/jumbo v2, "maxOutputSize"

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 130
    iget-object v2, p0, Lcom/google/android/media/effect/effects/VCOEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@23
    const-string/jumbo v3, "faceZoomer"

    #@26
    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@29
    move-result-object v1

    #@2a
    .line 131
    .local v1, "zoomerFilter":Landroid/filterfw/core/Filter;
    const-string/jumbo v2, "maxOutputSize"

    #@2d
    invoke-virtual {v1, v2, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@30
    .line 124
    .end local v1    # "zoomerFilter":Landroid/filterfw/core/Filter;
    :cond_1
    return-void
.end method
