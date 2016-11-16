.class public Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;
.super Landroid/filterfw/core/Filter;
.source "MultiFaceTrackerFilter.java"


# instance fields
.field private mInputChannels:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mIsInitialized:Z

.field private mProgram:Landroid/filterfw/core/NativeProgram;
    .annotation runtime Landroid/filterfw/core/GenerateProgramPorts;
        value = {
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "modulePath"
                type = Ljava/lang/String;
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "ffModule"
                type = Ljava/lang/String;
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "lmModule"
                type = Ljava/lang/String;
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "numSkipFrames"
                type = I
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "trackingError"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "minEyeDist"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "rollRange"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "quality"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "smoothness"
                type = F
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "mouthOnlySmoothing"
                type = I
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "useAffineCorrection"
                type = I
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "numChannelsDetector"
                type = I
            .end subannotation,
            .subannotation Landroid/filterfw/core/GenerateProgramPort;
                hasDefault = true
                name = "patchSize"
                type = I
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 78
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 70
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@7
    .line 72
    iput-boolean v1, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mIsInitialized:Z

    #@9
    .line 73
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    #@b
    .line 74
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    #@d
    .line 75
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    #@f
    .line 77
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/NativeProgram;->reset()V

    #@9
    .line 106
    :cond_0
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "environment"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    #@2
    const-string/jumbo v1, "filterpack_facedetect"

    #@5
    const-string/jumbo v2, "multiface_tracker"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@d
    .line 97
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@f
    invoke-virtual {p0, v0, p1}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    #@12
    .line 95
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 113
    const-string/jumbo v5, "image"

    #@4
    invoke-virtual {p0, v5}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v1

    #@8
    .line 116
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@b
    move-result-object v2

    #@c
    .line 117
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-boolean v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mIsInitialized:Z

    #@e
    if-nez v5, :cond_1

    #@10
    .line 118
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@13
    move-result v5

    #@14
    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    #@16
    .line 119
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@19
    move-result v5

    #@1a
    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    #@1c
    .line 120
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@1f
    move-result v5

    #@20
    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    #@22
    .line 121
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@24
    const-string/jumbo v7, "imgWidth"

    #@27
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    #@29
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@30
    .line 122
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@32
    const-string/jumbo v7, "imgHeight"

    #@35
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    #@37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@3e
    .line 123
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@40
    const-string/jumbo v7, "imgChannels"

    #@43
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    #@45
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v8

    #@49
    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@4c
    .line 124
    const/4 v5, 0x1

    #@4d
    iput-boolean v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mIsInitialized:Z

    #@4f
    .line 138
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@51
    invoke-virtual {v5, v1, v6}, Landroid/filterfw/core/NativeProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@54
    .line 141
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@56
    const-string/jumbo v7, "num_faces"

    #@59
    invoke-virtual {v5, v7}, Landroid/filterfw/core/NativeProgram;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    #@5c
    move-result-object v5

    #@5d
    check-cast v5, Ljava/lang/String;

    #@5f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@62
    move-result v0

    #@63
    .line 142
    .local v0, "faceCount":I
    const-class v5, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@65
    .line 144
    const/4 v7, 0x2

    #@66
    .line 142
    invoke-static {v5, v0, v7}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    #@69
    move-result-object v4

    #@6a
    .line 145
    .local v4, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@71
    move-result-object v3

    #@72
    .line 148
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v7, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@74
    move-object v5, v6

    #@75
    check-cast v5, Landroid/filterfw/core/Frame;

    #@77
    invoke-virtual {v7, v5, v3}, Landroid/filterfw/core/NativeProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@7a
    .line 151
    const-string/jumbo v5, "faces"

    #@7d
    invoke-virtual {p0, v5, v3}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@80
    .line 154
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@83
    .line 111
    return-void

    #@84
    .line 125
    .end local v0    # "faceCount":I
    .end local v3    # "output":Landroid/filterfw/core/Frame;
    .end local v4    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_1
    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    #@86
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@89
    move-result v7

    #@8a
    if-ne v5, v7, :cond_2

    #@8c
    .line 126
    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    #@8e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@91
    move-result v7

    #@92
    if-eq v5, v7, :cond_3

    #@94
    .line 128
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@96
    invoke-virtual {v5}, Landroid/filterfw/core/NativeProgram;->reset()V

    #@99
    .line 129
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@9c
    move-result v5

    #@9d
    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    #@9f
    .line 130
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@a2
    move-result v5

    #@a3
    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    #@a5
    .line 131
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@a8
    move-result v5

    #@a9
    iput v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    #@ab
    .line 132
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@ad
    const-string/jumbo v7, "imgWidth"

    #@b0
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputWidth:I

    #@b2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5
    move-result-object v8

    #@b6
    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@b9
    .line 133
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@bb
    const-string/jumbo v7, "imgHeight"

    #@be
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputHeight:I

    #@c0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v8

    #@c4
    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@c7
    .line 134
    iget-object v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@c9
    const-string/jumbo v7, "imgChannels"

    #@cc
    iget v8, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    #@ce
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v5, v7, v8}, Landroid/filterfw/core/NativeProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@d5
    goto/16 :goto_0

    #@d7
    .line 127
    :cond_3
    iget v5, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mInputChannels:I

    #@d9
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@dc
    move-result v7

    #@dd
    if-eq v5, v7, :cond_0

    #@df
    goto :goto_1
.end method

.method public setupPorts()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 84
    const/4 v2, 0x1

    #@2
    invoke-static {v2, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@5
    move-result-object v0

    #@6
    .line 86
    .local v0, "imageFormat":Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@8
    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@b
    move-result-object v1

    #@c
    .line 90
    .local v1, "outputFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v2, "image"

    #@f
    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@12
    .line 91
    const-string/jumbo v2, "faces"

    #@15
    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 82
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/MultiFaceTrackerFilter;->mProgram:Landroid/filterfw/core/NativeProgram;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/NativeProgram;->tearDown()V

    #@9
    .line 101
    :cond_0
    return-void
.end method
