.class public Lcom/google/android/media/effect/effects/FaceTanningEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "FaceTanningEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/media/effect/effects/FaceTanningEffect$1;
    }
.end annotation


# static fields
.field private static final mFaceTanningGraph:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.android.effects;\n@import com.google.android.filterpacks.facedetect;\n\n@setting autoBranch = \"synced\";\n\n@filter GLTextureSource input {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = false;\n}\n\n@filter FaceTanFilter faceTanner {\n}\n\n@filter MultiFaceDetectorFilter faceDetector {\n  minEyeDist = 30.0f;\n  rollRange = 45.0f;\n  numChannelsDetector = 3;\n}\n\n@filter ToPackedGrayFilter toGrayScale {\n}\n\n@filter CallbackFilter frameListener {\n}\n\n@connect input[frame]  => toGrayScale[image];\n@connect toGrayScale[image] => faceDetector[image];\n@connect input[frame]  => faceTanner[image];\n@connect faceDetector[faces] => faceTanner[faces];\n@connect faceTanner[image] => frameListener[frame];\n"


# instance fields
.field private mBlendFunction:Landroid/filterfw/core/FilterFunction;

.field private mFrameListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

.field private mSmoothFrame:Landroid/filterfw/core/Frame;


# direct methods
.method static synthetic -set0(Lcom/google/android/media/effect/effects/FaceTanningEffect;Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 85
    const-string/jumbo v3, "@import android.filterpacks.base;\n@import android.filterpacks.imageproc;\n@import com.android.effects;\n@import com.google.android.filterpacks.facedetect;\n\n@setting autoBranch = \"synced\";\n\n@filter GLTextureSource input {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = false;\n}\n\n@filter FaceTanFilter faceTanner {\n}\n\n@filter MultiFaceDetectorFilter faceDetector {\n  minEyeDist = 30.0f;\n  rollRange = 45.0f;\n  numChannelsDetector = 3;\n}\n\n@filter ToPackedGrayFilter toGrayScale {\n}\n\n@filter CallbackFilter frameListener {\n}\n\n@connect input[frame]  => toGrayScale[image];\n@connect toGrayScale[image] => faceDetector[image];\n@connect input[frame]  => faceTanner[image];\n@connect faceDetector[faces] => faceTanner[faces];\n@connect faceTanner[image] => frameListener[frame];\n"

    #@3
    const-string/jumbo v4, "input"

    #@6
    const-string/jumbo v5, "output"

    #@9
    const-class v6, Landroid/filterfw/core/SimpleScheduler;

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move-object v2, p2

    #@e
    invoke-direct/range {v0 .. v6}, Landroid/media/effect/FilterGraphEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    #@11
    .line 80
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@14
    .line 163
    new-instance v0, Lcom/google/android/media/effect/effects/FaceTanningEffect$1;

    #@16
    invoke-direct {v0, p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect$1;-><init>(Lcom/google/android/media/effect/effects/FaceTanningEffect;)V

    #@19
    iput-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mFrameListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@1b
    .line 87
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@1d
    const-string/jumbo v1, "frameListener"

    #@20
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@23
    move-result-object v7

    #@24
    .line 88
    .local v7, "listenerFilter":Landroid/filterfw/core/Filter;
    const-string/jumbo v0, "listener"

    #@27
    iget-object v1, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mFrameListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@29
    invoke-virtual {v7, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 90
    invoke-direct {p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->createBlendFunction()V

    #@2f
    .line 84
    return-void
.end method

.method private createBlendFunction()V
    .locals 6

    #@0
    .prologue
    .line 94
    const-class v2, Landroid/filterpacks/imageproc/BlendFilter;

    #@2
    .line 95
    .local v2, "filterClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 96
    .local v3, "filterName":Ljava/lang/String;
    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    #@9
    move-result-object v0

    #@a
    .line 97
    .local v0, "factory":Landroid/filterfw/core/FilterFactory;
    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@d
    move-result-object v1

    #@e
    .line 98
    .local v1, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->init()V

    #@11
    .line 100
    new-instance v4, Landroid/filterfw/core/FilterFunction;

    #@13
    invoke-virtual {p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    #@16
    move-result-object v5

    #@17
    invoke-direct {v4, v5, v1}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    #@1a
    iput-object v4, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mBlendFunction:Landroid/filterfw/core/FilterFunction;

    #@1c
    .line 93
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 10
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->beginGLEffect()V

    #@3
    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v2

    #@7
    .line 115
    .local v2, "inputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 117
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 118
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@11
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@18
    move-result v6

    #@19
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1c
    move-result v7

    #@1d
    if-eq v6, v7, :cond_3

    #@1f
    .line 121
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@21
    if-eqz v6, :cond_1

    #@23
    .line 122
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@25
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@28
    .line 125
    :cond_1
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    #@2a
    iget-object v7, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mInputName:Ljava/lang/String;

    #@2c
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    #@2f
    move-result-object v5

    #@30
    .line 126
    .local v5, "src":Landroid/filterfw/core/Filter;
    if-eqz v5, :cond_4

    #@32
    .line 127
    const-string/jumbo v6, "texId"

    #@35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@3c
    .line 128
    const-string/jumbo v6, "width"

    #@3f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@46
    .line 129
    const-string/jumbo v6, "height"

    #@49
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@50
    .line 134
    :try_start_0
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    #@52
    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 140
    .end local v5    # "src":Landroid/filterfw/core/Filter;
    :cond_2
    invoke-virtual {p0, p4, p2, p3}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    #@58
    move-result-object v3

    #@59
    .line 142
    .local v3, "outputFrame":Landroid/filterfw/core/Frame;
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@5b
    if-eqz v6, :cond_5

    #@5d
    .line 143
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mBlendFunction:Landroid/filterfw/core/FilterFunction;

    #@5f
    const/4 v7, 0x4

    #@60
    new-array v7, v7, [Ljava/lang/Object;

    #@62
    const-string/jumbo v8, "left"

    #@65
    const/4 v9, 0x0

    #@66
    aput-object v8, v7, v9

    #@68
    const/4 v8, 0x1

    #@69
    aput-object v2, v7, v8

    #@6b
    .line 144
    const-string/jumbo v8, "right"

    #@6e
    const/4 v9, 0x2

    #@6f
    aput-object v8, v7, v9

    #@71
    iget-object v8, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@73
    const/4 v9, 0x3

    #@74
    aput-object v8, v7, v9

    #@76
    .line 143
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    #@79
    move-result-object v4

    #@7a
    .line 145
    .local v4, "resultFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v3, v4}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@7d
    .line 146
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@80
    .line 152
    .end local v4    # "resultFrame":Landroid/filterfw/core/Frame;
    :goto_1
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@83
    .line 153
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@86
    .line 154
    invoke-virtual {p0}, Lcom/google/android/media/effect/effects/FaceTanningEffect;->endGLEffect()V

    #@89
    .line 111
    return-void

    #@8a
    .line 119
    .end local v3    # "outputFrame":Landroid/filterfw/core/Frame;
    :cond_3
    iget-object v6, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@8c
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@93
    move-result v6

    #@94
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@97
    move-result v7

    #@98
    if-eq v6, v7, :cond_2

    #@9a
    goto :goto_0

    #@9b
    .line 131
    .restart local v5    # "src":Landroid/filterfw/core/Filter;
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    #@9d
    const-string/jumbo v7, "Failed to extract texture source in graph."

    #@a0
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v6

    #@a4
    .line 135
    :catch_0
    move-exception v0

    #@a5
    .line 136
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@a7
    const-string/jumbo v7, "Internal error applying effect: "

    #@aa
    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ad
    throw v6

    #@ae
    .line 149
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "src":Landroid/filterfw/core/Filter;
    .restart local v3    # "outputFrame":Landroid/filterfw/core/Frame;
    :cond_5
    invoke-virtual {v3, v2}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@b1
    goto :goto_1
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 159
    invoke-super {p0}, Landroid/media/effect/FilterGraphEffect;->release()V

    #@3
    .line 160
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mSmoothFrame:Landroid/filterfw/core/Frame;

    #@5
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@8
    .line 158
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "blend"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 106
    iget-object v0, p0, Lcom/google/android/media/effect/effects/FaceTanningEffect;->mBlendFunction:Landroid/filterfw/core/FilterFunction;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/FilterFunction;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@e
    .line 104
    :cond_0
    return-void
.end method
