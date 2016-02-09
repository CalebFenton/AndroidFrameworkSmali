.class public Landroid/filterpacks/numeric/SinWaveFilter;
.super Landroid/filterfw/core/Filter;
.source "SinWaveFilter.java"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mStepSize:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "stepSize"
    .end annotation
.end field

.field private mValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 35
    const v0, 0x3d4ccccd    # 0.05f

    #@6
    iput v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mStepSize:F

    #@8
    .line 37
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    #@b
    .line 41
    return-void
.end method


# virtual methods
.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    #@3
    .line 52
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@6
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@9
    move-result-object v0

    #@a
    .line 59
    .local v0, "output":Landroid/filterfw/core/Frame;
    iget v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    #@c
    float-to-double v2, v1

    #@d
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@10
    move-result-wide v2

    #@11
    double-to-float v1, v2

    #@12
    const/high16 v2, 0x3f800000    # 1.0f

    #@14
    add-float/2addr v1, v2

    #@15
    const/high16 v2, 0x40000000    # 2.0f

    #@17
    div-float/2addr v1, v2

    #@18
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    #@1f
    .line 60
    const-string/jumbo v1, "value"

    #@22
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/numeric/SinWaveFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@25
    .line 61
    iget v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    #@27
    iget v2, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mStepSize:F

    #@29
    add-float/2addr v1, v2

    #@2a
    iput v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    #@2c
    .line 62
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@2f
    .line 57
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 47
    const-class v0, Ljava/lang/Float;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@9
    .line 48
    const-string/jumbo v0, "value"

    #@c
    iget-object v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/numeric/SinWaveFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@11
    .line 46
    return-void
.end method
