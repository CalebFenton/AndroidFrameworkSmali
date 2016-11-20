.class public Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;
.super Landroid/filterfw/core/Filter;
.source "FaceRegionMaskFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
    return-void
.end method

.method private maskFormatFor(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 66
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    .line 67
    .local v0, "maskFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    #@8
    .line 68
    const-string/jumbo v1, "colorspace"

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 69
    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "mask"

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 61
    invoke-direct {p0, p2}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->maskFormatFor(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 62
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Unknown output port name:"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 74
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    #@2
    const-string/jumbo v1, "filterpack_facedetect"

    #@5
    const-string/jumbo v2, "face_createmask"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    #@d
    .line 73
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 80
    const-string/jumbo v6, "image"

    #@4
    invoke-virtual {p0, v6}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v4

    #@8
    .line 81
    .local v4, "input":Landroid/filterfw/core/Frame;
    const-string/jumbo v6, "faces"

    #@b
    invoke-virtual {p0, v6}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@e
    move-result-object v0

    #@f
    .line 83
    .local v0, "facemetaFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@15
    .line 85
    .local v1, "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@18
    move-result-object v3

    #@19
    .line 88
    .local v3, "inFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v6, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    #@1b
    const-string/jumbo v7, "width"

    #@1e
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@21
    move-result v8

    #@22
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@29
    .line 89
    iget-object v6, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2b
    const-string/jumbo v7, "height"

    #@2e
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@31
    move-result v8

    #@32
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@39
    .line 90
    iget-object v6, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    #@3b
    const-string/jumbo v7, "maskOnly"

    #@3e
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@45
    .line 93
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@48
    move-result-object v6

    #@49
    invoke-direct {p0, v3}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->maskFormatFor(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@50
    move-result-object v5

    #@51
    .line 96
    .local v5, "maskFrame":Landroid/filterfw/core/Frame;
    const/4 v6, 0x2

    #@52
    new-array v2, v6, [Landroid/filterfw/core/Frame;

    #@54
    const/4 v6, 0x0

    #@55
    aput-object v4, v2, v6

    #@57
    aput-object v0, v2, v9

    #@59
    .line 97
    .local v2, "frames":[Landroid/filterfw/core/Frame;
    iget-object v6, p0, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->mProgram:Landroid/filterfw/core/Program;

    #@5b
    invoke-virtual {v6, v2, v5}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@5e
    .line 100
    const-string/jumbo v6, "mask"

    #@61
    invoke-virtual {p0, v6, v5}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@64
    .line 103
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@67
    .line 78
    return-void
.end method

.method public setupPorts()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 50
    const-string/jumbo v1, "image"

    #@4
    invoke-static {v3, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 52
    const-class v1, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@d
    invoke-static {v1, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@10
    move-result-object v0

    #@11
    .line 54
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "faces"

    #@14
    invoke-virtual {p0, v1, v0}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@17
    .line 55
    const-string/jumbo v1, "mask"

    #@1a
    const-string/jumbo v2, "image"

    #@1d
    invoke-virtual {p0, v1, v2}, Lcom/google/android/filterpacks/facedetect/FaceRegionMaskFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 49
    return-void
.end method
