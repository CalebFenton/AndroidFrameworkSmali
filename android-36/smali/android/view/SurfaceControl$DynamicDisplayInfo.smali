.class public final Landroid/view/SurfaceControl$DynamicDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicDisplayInfo"
.end annotation


# instance fields
.field public blacklist activeColorMode:I

.field public blacklist activeDisplayModeId:I

.field public blacklist autoLowLatencyModeSupported:Z

.field public blacklist frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

.field public blacklist gameContentTypeSupported:Z

.field public blacklist hasArrSupport:Z

.field public blacklist hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public blacklist preferredBootDisplayMode:I

.field public blacklist renderFrameRate:F

.field public blacklist supportedColorModes:[I

.field public blacklist supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

.field public blacklist supportedRefreshRates:[F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1977
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1978
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6a

    .line 1979
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;

    .line 1980
    .local v2, "that":Landroid/view/SurfaceControl$DynamicDisplayInfo;
    iget-object v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iget v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    if-ne v3, v4, :cond_68

    iget v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    iget v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_68

    iget-object v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    .line 1983
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_68

    iget v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    iget v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    if-ne v3, v4, :cond_68

    iget-object v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 1985
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    iget v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    if-ne v3, v4, :cond_68

    iget-boolean v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hasArrSupport:Z

    iget-boolean v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hasArrSupport:Z

    if-ne v3, v4, :cond_68

    iget-object v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 1988
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedRefreshRates:[F

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedRefreshRates:[F

    .line 1989
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_68

    goto :goto_69

    :cond_68
    move v0, v1

    .line 1980
    :goto_69
    return v0

    .line 1978
    .end local v2    # "that":Landroid/view/SurfaceControl$DynamicDisplayInfo;
    :cond_6a
    :goto_6a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 1994
    iget-object v0, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    .line 1995
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-boolean v0, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hasArrSupport:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v0, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedRefreshRates:[F

    .line 1996
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 1994
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicDisplayInfo{supportedDisplayModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    .line 1961
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplayModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", renderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasArrSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hasArrSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameRateCategoryRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedRefreshRates:[F

    .line 1966
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedColorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    .line 1967
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hdrCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoLowLatencyModeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->autoLowLatencyModeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameContentTypeSupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->gameContentTypeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferredBootDisplayMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1960
    return-object v0
.end method
