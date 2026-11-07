.class public final Landroid/location/GnssMeasurementRequest$Builder;
.super Ljava/lang/Object;
.source "GnssMeasurementRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCorrelationVectorOutputsEnabled:Z

.field private blacklist mFullTracking:Z

.field private blacklist mIntervalMillis:I

.field private blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssMeasurementRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    .line 232
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    .line 233
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    .line 234
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 235
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssMeasurementRequest;
    .registers 7

    .line 315
    new-instance v0, Landroid/location/GnssMeasurementRequest;

    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    iget-boolean v2, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    iget v3, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    new-instance v4, Landroid/os/WorkSource;

    iget-object v5, p0, Landroid/location/GnssMeasurementRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {v4, v5}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/location/GnssMeasurementRequest;-><init>(ZZILandroid/os/WorkSource;Landroid/location/GnssMeasurementRequest-IA;)V

    return-object v0
.end method

.method public whitelist setCorrelationVectorOutputsEnabled(Z)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 247
    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    .line 248
    return-object p0
.end method

.method public whitelist setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 269
    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    .line 270
    return-object p0
.end method

.method public whitelist setIntervalMillis(I)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 5
    .param p1, "value"    # I

    .line 288
    const v0, 0x7fffffff

    const-string v1, "intervalMillis"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    .line 290
    return-object p0
.end method

.method public whitelist setWorkSource(Landroid/os/WorkSource;)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 2
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 308
    iput-object p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 309
    return-object p0
.end method
