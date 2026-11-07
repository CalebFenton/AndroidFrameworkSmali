.class public final Landroid/view/SurfaceControl$StaticDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaticDisplayInfo"
.end annotation


# instance fields
.field public blacklist density:F

.field public blacklist deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

.field public blacklist installOrientation:I

.field public blacklist isInternal:Z

.field public blacklist secure:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1919
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1920
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    .line 1921
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 1922
    .local v2, "that":Landroid/view/SurfaceControl$StaticDisplayInfo;
    iget-boolean v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    iget-boolean v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    iget v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3a

    iget-boolean v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    iget-boolean v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 1925
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    iget v4, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    if-ne v3, v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 1922
    :goto_3b
    return v0

    .line 1920
    .end local v2    # "that":Landroid/view/SurfaceControl$StaticDisplayInfo;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1931
    iget-boolean v0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget v4, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StaticDisplayInfo{isInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceProductInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
