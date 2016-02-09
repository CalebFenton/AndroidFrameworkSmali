.class public final Landroid/hardware/display/DisplayViewport;
.super Ljava/lang/Object;
.source "DisplayViewport.java"


# instance fields
.field public deviceHeight:I

.field public deviceWidth:I

.field public displayId:I

.field public final logicalFrame:Landroid/graphics/Rect;

.field public orientation:I

.field public final physicalFrame:Landroid/graphics/Rect;

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@a
    .line 47
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@11
    .line 31
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/display/DisplayViewport;)V
    .locals 2
    .param p1, "viewport"    # Landroid/hardware/display/DisplayViewport;

    #@0
    .prologue
    .line 56
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@2
    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@4
    .line 57
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    #@6
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    #@8
    .line 58
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    #@a
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    #@c
    .line 59
    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@e
    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@13
    .line 60
    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@15
    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@17
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1a
    .line 61
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    #@1c
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    #@1e
    .line 62
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    #@20
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    #@22
    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DisplayViewport{valid="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 69
    const-string/jumbo v1, ", displayId="

    #@15
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 69
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    #@1b
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 70
    const-string/jumbo v1, ", orientation="

    #@22
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 70
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    #@28
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 71
    const-string/jumbo v1, ", logicalFrame="

    #@2f
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 71
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    #@35
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 72
    const-string/jumbo v1, ", physicalFrame="

    #@3c
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 72
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    #@42
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 73
    const-string/jumbo v1, ", deviceWidth="

    #@49
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 73
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    #@4f
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 74
    const-string/jumbo v1, ", deviceHeight="

    #@56
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 74
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    #@5c
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 75
    const-string/jumbo v1, "}"

    #@63
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    return-object v0
.end method
