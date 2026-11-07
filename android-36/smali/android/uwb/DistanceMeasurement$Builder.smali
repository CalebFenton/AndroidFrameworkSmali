.class public final Landroid/uwb/DistanceMeasurement$Builder;
.super Ljava/lang/Object;
.source "DistanceMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/DistanceMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConfidenceLevel:D

.field private blacklist mErrorMeters:D

.field private blacklist mMeters:D


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/uwb/DistanceMeasurement$Builder;->mMeters:D

    .line 151
    iput-wide v0, p0, Landroid/uwb/DistanceMeasurement$Builder;->mErrorMeters:D

    .line 152
    iput-wide v0, p0, Landroid/uwb/DistanceMeasurement$Builder;->mConfidenceLevel:D

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/uwb/DistanceMeasurement;
    .registers 10

    .line 209
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement$Builder;->mMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_35

    .line 213
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement$Builder;->mErrorMeters:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 217
    iget-wide v0, p0, Landroid/uwb/DistanceMeasurement$Builder;->mConfidenceLevel:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_25

    .line 221
    new-instance v1, Landroid/uwb/DistanceMeasurement;

    iget-wide v2, p0, Landroid/uwb/DistanceMeasurement$Builder;->mMeters:D

    iget-wide v4, p0, Landroid/uwb/DistanceMeasurement$Builder;->mErrorMeters:D

    iget-wide v6, p0, Landroid/uwb/DistanceMeasurement$Builder;->mConfidenceLevel:D

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/uwb/DistanceMeasurement;-><init>(DDDLandroid/uwb/DistanceMeasurement-IA;)V

    return-object v1

    .line 218
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Confidence level cannot be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error meters cannot be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Meters cannot be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConfidenceLevel(D)Landroid/uwb/DistanceMeasurement$Builder;
    .registers 6
    .param p1, "confidenceLevel"    # D

    .line 194
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_f

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_f

    .line 198
    iput-wide p1, p0, Landroid/uwb/DistanceMeasurement$Builder;->mConfidenceLevel:D

    .line 199
    return-object p0

    .line 195
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confidenceLevel must be in the range [0.0, 1.0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setErrorMeters(D)Landroid/uwb/DistanceMeasurement$Builder;
    .registers 6
    .param p1, "errorMeters"    # D

    .line 177
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_f

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_f

    .line 181
    iput-wide p1, p0, Landroid/uwb/DistanceMeasurement$Builder;->mErrorMeters:D

    .line 182
    return-object p0

    .line 178
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMeters must be >= 0.0 and not NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMeters(D)Landroid/uwb/DistanceMeasurement$Builder;
    .registers 5
    .param p1, "meters"    # D

    .line 162
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    .line 165
    iput-wide p1, p0, Landroid/uwb/DistanceMeasurement$Builder;->mMeters:D

    .line 166
    return-object p0

    .line 163
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "meters cannot be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
