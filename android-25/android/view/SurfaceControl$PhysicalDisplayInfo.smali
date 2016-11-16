.class public final Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhysicalDisplayInfo"
.end annotation


# instance fields
.field public appVsyncOffsetNanos:J

.field public density:F

.field public height:I

.field public presentationDeadlineNanos:J

.field public refreshRate:F

.field public secure:Z

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 0
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 559
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    #@6
    .line 558
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    .line 586
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@2
    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@4
    .line 587
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@6
    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@8
    .line 588
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    #@a
    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    #@c
    .line 589
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    #@e
    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    #@10
    .line 590
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    #@12
    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    #@14
    .line 591
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    #@16
    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    #@18
    .line 592
    iget-boolean v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    #@1a
    iput-boolean v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    #@1c
    .line 593
    iget-wide v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    #@1e
    iput-wide v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    #@20
    .line 594
    iget-wide v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    #@22
    iput-wide v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    #@24
    .line 585
    return-void
.end method

.method public equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .locals 6
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 568
    if-eqz p1, :cond_0

    #@3
    .line 569
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@5
    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 570
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@b
    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 571
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    #@11
    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    #@13
    cmpl-float v1, v1, v2

    #@15
    if-nez v1, :cond_0

    #@17
    .line 572
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    #@19
    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    #@1b
    cmpl-float v1, v1, v2

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 573
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    #@21
    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    #@23
    cmpl-float v1, v1, v2

    #@25
    if-nez v1, :cond_0

    #@27
    .line 574
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    #@29
    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    #@2b
    cmpl-float v1, v1, v2

    #@2d
    if-nez v1, :cond_0

    #@2f
    .line 575
    iget-boolean v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    #@31
    iget-boolean v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    #@33
    if-ne v1, v2, :cond_0

    #@35
    .line 576
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    #@37
    iget-wide v4, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    #@39
    cmp-long v1, v2, v4

    #@3b
    if-nez v1, :cond_0

    #@3d
    .line 577
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    #@3f
    iget-wide v4, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    #@41
    cmp-long v1, v2, v4

    #@43
    if-nez v1, :cond_0

    #@45
    const/4 v0, 0x1

    #@46
    .line 568
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 564
    instance-of v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 582
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PhysicalDisplayInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " x "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, " fps, "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 601
    const-string/jumbo v1, "density "

    #@36
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 601
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    #@3c
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 601
    const-string/jumbo v1, ", "

    #@43
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 601
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    #@49
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 601
    const-string/jumbo v1, " x "

    #@50
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 601
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    #@56
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 601
    const-string/jumbo v1, " dpi, secure "

    #@5d
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 601
    iget-boolean v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    #@63
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 602
    const-string/jumbo v1, ", appVsyncOffset "

    #@6a
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 602
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    #@70
    .line 600
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 603
    const-string/jumbo v1, ", bufferDeadline "

    #@77
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 603
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    #@7d
    .line 600
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 603
    const-string/jumbo v1, "}"

    #@84
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v0

    #@8c
    return-object v0
.end method
