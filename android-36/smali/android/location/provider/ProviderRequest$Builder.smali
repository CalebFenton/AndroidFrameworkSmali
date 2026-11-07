.class public final Landroid/location/provider/ProviderRequest$Builder;
.super Ljava/lang/Object;
.source "ProviderRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ProviderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdasGnssBypass:Z

.field private blacklist mIntervalMillis:J

.field private blacklist mLocationSettingsIgnored:Z

.field private blacklist mLowPower:Z

.field private blacklist mMaxUpdateDelayMillis:J

.field private blacklist mQuality:I

.field private blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mIntervalMillis:J

    .line 287
    const/16 v0, 0x66

    iput v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mQuality:I

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mMaxUpdateDelayMillis:J

    .line 292
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/provider/ProviderRequest;
    .registers 13

    .line 369
    iget-wide v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 370
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object v0

    .line 372
    :cond_e
    new-instance v1, Landroid/location/provider/ProviderRequest;

    iget-wide v2, p0, Landroid/location/provider/ProviderRequest$Builder;->mIntervalMillis:J

    iget v4, p0, Landroid/location/provider/ProviderRequest$Builder;->mQuality:I

    iget-wide v5, p0, Landroid/location/provider/ProviderRequest$Builder;->mMaxUpdateDelayMillis:J

    iget-boolean v7, p0, Landroid/location/provider/ProviderRequest$Builder;->mLowPower:Z

    iget-boolean v8, p0, Landroid/location/provider/ProviderRequest$Builder;->mAdasGnssBypass:Z

    iget-boolean v9, p0, Landroid/location/provider/ProviderRequest$Builder;->mLocationSettingsIgnored:Z

    iget-object v10, p0, Landroid/location/provider/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/location/provider/ProviderRequest;-><init>(JIJZZZLandroid/os/WorkSource;Landroid/location/provider/ProviderRequest-IA;)V

    return-object v1
.end method

.method public blacklist setAdasGnssBypass(Z)Landroid/location/provider/ProviderRequest$Builder;
    .registers 2
    .param p1, "adasGnssBypass"    # Z

    .line 345
    iput-boolean p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mAdasGnssBypass:Z

    .line 346
    return-object p0
.end method

.method public whitelist setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;
    .registers 10
    .param p1, "intervalMillis"    # J

    .line 299
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMillis"

    const-wide/16 v2, 0x0

    move-wide v0, p1

    .end local p1    # "intervalMillis":J
    .local v0, "intervalMillis":J
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mIntervalMillis:J

    .line 301
    return-object p0
.end method

.method public whitelist setLocationSettingsIgnored(Z)Landroid/location/provider/ProviderRequest$Builder;
    .registers 2
    .param p1, "locationSettingsIgnored"    # Z

    .line 353
    iput-boolean p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mLocationSettingsIgnored:Z

    .line 354
    return-object p0
.end method

.method public whitelist setLowPower(Z)Landroid/location/provider/ProviderRequest$Builder;
    .registers 2
    .param p1, "lowPower"    # Z

    .line 335
    iput-boolean p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mLowPower:Z

    .line 336
    return-object p0
.end method

.method public whitelist setMaxUpdateDelayMillis(J)Landroid/location/provider/ProviderRequest$Builder;
    .registers 10
    .param p1, "maxUpdateDelayMillis"    # J

    .line 326
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "maxUpdateDelayMillis"

    const-wide/16 v2, 0x0

    move-wide v0, p1

    .end local p1    # "maxUpdateDelayMillis":J
    .local v0, "maxUpdateDelayMillis":J
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mMaxUpdateDelayMillis:J

    .line 328
    return-object p0
.end method

.method public whitelist setQuality(I)Landroid/location/provider/ProviderRequest$Builder;
    .registers 3
    .param p1, "quality"    # I

    .line 311
    const/16 v0, 0x68

    if-eq p1, v0, :cond_f

    const/16 v0, 0x66

    if-eq p1, v0, :cond_f

    const/16 v0, 0x64

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 314
    iput p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mQuality:I

    .line 315
    return-object p0
.end method

.method public whitelist setWorkSource(Landroid/os/WorkSource;)Landroid/location/provider/ProviderRequest$Builder;
    .registers 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 361
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 362
    return-object p0
.end method
