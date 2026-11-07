.class public final Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleScreenRefreshRateConfig"
.end annotation


# instance fields
.field public blacklist timeoutMillis:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 2315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2316
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2317
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "timeoutMillis"    # I

    .line 2319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2320
    iput p1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2321
    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V
    .registers 3
    .param p1, "other"    # Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2355
    if-eqz p1, :cond_6

    .line 2356
    iget v0, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    iput v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2358
    :cond_6
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 2328
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2329
    return v0

    .line 2332
    :cond_4
    instance-of v1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    if-nez p1, :cond_c

    goto :goto_18

    .line 2337
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2338
    .local v1, "idleScreenRefreshRateConfig":Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
    iget v3, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    iget v4, v1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    if-ne v3, v4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    return v0

    .line 2333
    .end local v1    # "idleScreenRefreshRateConfig":Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
    :cond_18
    :goto_18
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2343
    iget v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timeoutMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
