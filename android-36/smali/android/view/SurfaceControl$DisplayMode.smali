.class public final Landroid/view/SurfaceControl$DisplayMode;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayMode"
.end annotation


# instance fields
.field public blacklist appVsyncOffsetNanos:J

.field public blacklist group:I

.field public blacklist height:I

.field public blacklist id:I

.field public blacklist peakRefreshRate:F

.field public blacklist presentationDeadlineNanos:J

.field public blacklist supportedHdrTypes:[I

.field public blacklist vsyncRate:F

.field public blacklist width:I

.field public blacklist xDpi:F

.field public blacklist yDpi:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 2047
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2048
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_72

    .line 2049
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/SurfaceControl$DisplayMode;

    .line 2050
    .local v2, "that":Landroid/view/SurfaceControl$DisplayMode;
    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    iget v4, v2, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v4, v2, Landroid/view/SurfaceControl$DisplayMode;->width:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget v4, v2, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-ne v3, v4, :cond_70

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iget v4, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    .line 2053
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_70

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iget v4, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    .line 2054
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_70

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    iget v4, p0, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    .line 2055
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_70

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    iget v4, p0, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    .line 2056
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_70

    iget-wide v3, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iget-wide v5, v2, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_70

    iget-wide v3, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iget-wide v5, v2, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_70

    iget-object v3, p0, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    iget-object v4, v2, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    .line 2059
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_70

    iget v3, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iget v4, v2, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v3, v4, :cond_70

    goto :goto_71

    :cond_70
    move v0, v1

    .line 2050
    :goto_71
    return v0

    .line 2048
    .end local v2    # "that":Landroid/view/SurfaceControl$DisplayMode;
    :cond_72
    :goto_72
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 13

    .line 2065
    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-wide v8, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    .line 2066
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v0, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, p0, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    .line 2067
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 2065
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMode{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peakRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vsyncRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->vsyncRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVsyncOffsetNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDeadlineNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedHdrTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    .line 2041
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$DisplayMode;->group:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2032
    return-object v0
.end method
