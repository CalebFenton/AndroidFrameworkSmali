.class public Lcom/google/android/media/effect/effects/FaceTrackingEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "FaceTrackingEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;
    }
.end annotation


# static fields
.field private static final FACE_DETECTOR_MAX_SIZE:I = 0x140

.field private static final mFaceTrackingGraph:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.google.android.filterpacks.facedetect;\n\n\n@filter GLTextureSource srcTex {\n  texId = 0;\n  repeatFrame = true;\n}\n\n@filter FrameBranch branch1 {\n  outputs = 2;\n}\n\n@filter ToPackedGrayFilter toPackedGray {\n}\n\n@filter MultiFaceTrackerFilter faceTracker {\n  quality = 0.0f;\n  smoothness = 0.2f;\n  minEyeDist = 30.0f;\n  rollRange = 45.0f;\n  numSkipFrames = 9;\n  trackingError = 1.0;\n  mouthOnlySmoothing = 0;\n  useAffineCorrection = 1;\n  patchSize = 15;\n}\n\n@filter CallbackFilter faceListener {\n}\n\n@filter GLTextureTarget trgTex {\n  texId = 0;\n}\n\n@connect srcTex[frame]           => branch1[in];\n@connect branch1[out0]           => toPackedGray[image];\n@connect toPackedGray[image]     => faceTracker[image];\n@connect faceTracker[faces]      => faceListener[frame];\n@connect branch1[out1]           => trgTex[frame];\n"


# instance fields
.field private mEffectListener:Landroid/media/effect/EffectUpdateListener;

.field private mFaceListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

.field private mFirstTime:Z

.field private mInputHeight:I

.field private mInputWidth:I


# direct methods
.method static synthetic -get0(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)Landroid/media/effect/EffectUpdateListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 93
    const-string/jumbo v3, "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.google.android.filterpacks.facedetect;\n\n\n@filter GLTextureSource srcTex {\n  texId = 0;\n  repeatFrame = true;\n}\n\n@filter FrameBranch branch1 {\n  outputs = 2;\n}\n\n@filter ToPackedGrayFilter toPackedGray {\n}\n\n@filter MultiFaceTrackerFilter faceTracker {\n  quality = 0.0f;\n  smoothness = 0.2f;\n  minEyeDist = 30.0f;\n  rollRange = 45.0f;\n  numSkipFrames = 9;\n  trackingError = 1.0;\n  mouthOnlySmoothing = 0;\n  useAffineCorrection = 1;\n  patchSize = 15;\n}\n\n@filter CallbackFilter faceListener {\n}\n\n@filter GLTextureTarget trgTex {\n  texId = 0;\n}\n\n@connect srcTex[frame]           => branch1[in];\n@connect branch1[out0]           => toPackedGray[image];\n@connect toPackedGray[image]     => faceTracker[image];\n@connect faceTracker[faces]      => faceListener[frame];\n@connect branch1[out1]           => trgTex[frame];\n"

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
    .line 44
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFirstTime:Z

    #@15
    .line 45
    iput v8, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputWidth:I

    #@17
    .line 46
    iput v8, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputHeight:I

    #@19
    .line 47
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    #@1c
    .line 134
    new-instance v0, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;

    #@1e
    invoke-direct {v0, p0}, Lcom/google/android/media/effect/effects/FaceTrackingEffect$1;-><init>(Lcom/google/android/media/effect/effects/FaceTrackingEffect;)V

    #@21
    iput-object v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFaceListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@23
    .line 94
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@25
    const-string/jumbo v1, "faceListener"

    #@28
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@2b
    move-result-object v7

    #@2c
    .line 95
    .local v7, "listenerFilter":Landroid/filterfw/core/Filter;
    const-string/jumbo v0, "listener"

    #@2f
    iget-object v1, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFaceListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@31
    invoke-virtual {v7, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@34
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
    .line 100
    iget-boolean v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFirstTime:Z

    #@4
    if-eqz v3, :cond_2

    #@6
    .line 104
    if-le p2, p3, :cond_1

    #@8
    .line 105
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v1

    #@c
    .line 106
    .local v1, "fdWidth":I
    mul-int v3, v1, p3

    #@e
    div-int v0, v3, p2

    #@10
    .line 112
    .local v0, "fdHeight":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@12
    const-string/jumbo v4, "toPackedGray"

    #@15
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@18
    move-result-object v2

    #@19
    .line 113
    .local v2, "grayFilter":Landroid/filterfw/core/Filter;
    const-string/jumbo v3, "owidth"

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@23
    .line 114
    const-string/jumbo v3, "oheight"

    #@26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2d
    .line 115
    const/4 v3, 0x0

    #@2e
    iput-boolean v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mFirstTime:Z

    #@30
    .line 116
    iput p2, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputWidth:I

    #@32
    .line 117
    iput p3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputHeight:I

    #@34
    .line 122
    .end local v0    # "fdHeight":I
    .end local v1    # "fdWidth":I
    .end local v2    # "grayFilter":Landroid/filterfw/core/Filter;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/effect/FilterGraphEffect;->apply(IIII)V

    #@37
    .line 99
    return-void

    #@38
    .line 109
    :cond_1
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    #@3b
    move-result v0

    #@3c
    .line 110
    .restart local v0    # "fdHeight":I
    mul-int v3, v0, p2

    #@3e
    div-int v1, v3, p3

    #@40
    .restart local v1    # "fdWidth":I
    goto :goto_0

    #@41
    .line 119
    .end local v0    # "fdHeight":I
    .end local v1    # "fdWidth":I
    :cond_2
    iget v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputWidth:I

    #@43
    if-ne p2, v3, :cond_3

    #@45
    iget v3, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mInputHeight:I

    #@47
    if-eq p3, v3, :cond_0

    #@49
    .line 120
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    #@4b
    const-string/jumbo v4, "FaceTrackingEffect can\'t change input size!"

    #@4e
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@51
    throw v3
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 126
    return-void
.end method

.method public setUpdateListener(Landroid/media/effect/EffectUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/effect/EffectUpdateListener;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceTrackingEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    #@2
    .line 130
    return-void
.end method
