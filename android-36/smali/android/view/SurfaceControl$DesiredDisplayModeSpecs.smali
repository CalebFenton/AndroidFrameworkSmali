.class public final Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesiredDisplayModeSpecs"
.end annotation


# instance fields
.field public blacklist allowGroupSwitching:Z

.field public final blacklist appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

.field public blacklist defaultMode:I

.field public blacklist idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

.field public final blacklist primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 2403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2404
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2405
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2406
    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V
    .registers 9
    .param p1, "defaultMode"    # I
    .param p2, "allowGroupSwitching"    # Z
    .param p3, "primaryRanges"    # Landroid/view/SurfaceControl$RefreshRateRanges;
    .param p4, "appRequestRanges"    # Landroid/view/SurfaceControl$RefreshRateRanges;
    .param p5, "idleScreenRefreshRateConfig"    # Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2417
    iput p1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 2418
    iput-boolean p2, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 2419
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p3, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p3, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2421
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p4, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p4, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2423
    nop

    .line 2424
    if-nez p5, :cond_22

    const/4 v0, 0x0

    goto :goto_29

    :cond_22
    new-instance v0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    iget v1, p5, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    :goto_29
    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2426
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .registers 3
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2409
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2410
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2411
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->copyFrom(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    .line 2412
    return-void
.end method

.method private blacklist copyIdleScreenRefreshRateConfig(Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V
    .registers 4
    .param p1, "other"    # Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2471
    iget-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    if-nez v0, :cond_10

    .line 2472
    if-eqz p1, :cond_1b

    .line 2473
    new-instance v0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    iget v1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    goto :goto_1b

    .line 2476
    :cond_10
    if-nez p1, :cond_16

    .line 2477
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    goto :goto_1b

    .line 2479
    :cond_16
    iget-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->copyFrom(Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 2481
    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .registers 4
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2454
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    iput v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    .line 2455
    iget-boolean v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iput-boolean v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 2456
    iget-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRanges;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRanges;)V

    .line 2457
    iget-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRanges;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRanges;)V

    .line 2458
    iget-object v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->copyIdleScreenRefreshRateConfig(Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 2459
    return-void
.end method

.method public blacklist equals(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 4
    .param p1, "other"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2437
    if-eqz p1, :cond_2e

    iget v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    iget v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ne v0, v1, :cond_2e

    iget-boolean v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iget-boolean v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2439
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2440
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    iget-object v1, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2441
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 2437
    :goto_2f
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 2430
    instance-of v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->equals(Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2447
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " allowGroupSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " primaryRanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appRequestRanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " idleScreenRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->idleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2467
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2463
    return-object v0
.end method
