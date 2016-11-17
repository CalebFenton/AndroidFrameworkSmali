.class final Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayModeRecord"
.end annotation


# instance fields
.field public final mMode:Landroid/view/Display$Mode;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 3
    .param p1, "phys"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 622
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@5
    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@7
    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    #@9
    invoke-static {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@f
    .line 621
    return-void
.end method


# virtual methods
.method public hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .locals 5
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 633
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@3
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    #@6
    move-result v3

    #@7
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@a
    move-result v1

    #@b
    .line 634
    .local v1, "modeRefreshRate":I
    iget v3, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    #@d
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@10
    move-result v0

    #@11
    .line 635
    .local v0, "displayInfoRefreshRate":I
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@13
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    #@16
    move-result v3

    #@17
    iget v4, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    .line 636
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@1d
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    #@20
    move-result v3

    #@21
    iget v4, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    #@23
    if-ne v3, v4, :cond_0

    #@25
    .line 637
    if-ne v1, v0, :cond_0

    #@27
    const/4 v2, 0x1

    #@28
    .line 635
    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DisplayModeRecord{mMode="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "}"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
