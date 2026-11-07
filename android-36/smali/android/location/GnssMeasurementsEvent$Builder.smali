.class public final Landroid/location/GnssMeasurementsEvent$Builder;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClock:Landroid/location/GnssClock;

.field private blacklist mFlag:I

.field private blacklist mGnssAgcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsFullTracking:Z

.field private blacklist mMeasurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Landroid/location/GnssClock;

    invoke-direct {v0}, Landroid/location/GnssClock;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    .line 260
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-static {p1}, Landroid/location/GnssMeasurementsEvent;->-$$Nest$fgetmFlag(Landroid/location/GnssMeasurementsEvent;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mFlag:I

    .line 268
    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getClock()Landroid/location/GnssClock;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    .line 269
    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    .line 270
    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->getGnssAutomaticGainControls()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    .line 271
    invoke-virtual {p1}, Landroid/location/GnssMeasurementsEvent;->isFullTracking()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mIsFullTracking:Z

    .line 272
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssMeasurementsEvent;
    .registers 8

    .line 363
    new-instance v0, Landroid/location/GnssMeasurementsEvent;

    iget v1, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mFlag:I

    iget-object v2, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    iget-object v3, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    iget-object v4, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    iget-boolean v5, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mIsFullTracking:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssMeasurementsEvent;-><init>(ILandroid/location/GnssClock;Ljava/util/List;Ljava/util/List;ZLandroid/location/GnssMeasurementsEvent-IA;)V

    return-object v0
.end method

.method public whitelist clearIsFullTracking()Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 2

    .line 356
    iget v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mFlag:I

    .line 357
    return-object p0
.end method

.method public whitelist setClock(Landroid/location/GnssClock;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 2
    .param p1, "clock"    # Landroid/location/GnssClock;

    .line 279
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iput-object p1, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mClock:Landroid/location/GnssClock;

    .line 281
    return-object p0
.end method

.method public whitelist setGnssAutomaticGainControls(Ljava/util/Collection;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;)",
            "Landroid/location/GnssMeasurementsEvent$Builder;"
        }
    .end annotation

    .line 326
    .local p1, "agcs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GnssAutomaticGainControl;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    .line 327
    return-object p0
.end method

.method public varargs blacklist setGnssAutomaticGainControls([Landroid/location/GnssAutomaticGainControl;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3
    .param p1, "agcs"    # [Landroid/location/GnssAutomaticGainControl;

    .line 316
    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mGnssAgcs:Ljava/util/List;

    .line 317
    return-object p0
.end method

.method public whitelist setIsFullTracking(Z)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3
    .param p1, "isFullTracking"    # Z

    .line 346
    iget v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mFlag:I

    .line 347
    iput-boolean p1, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mIsFullTracking:Z

    .line 348
    return-object p0
.end method

.method public whitelist setMeasurements(Ljava/util/Collection;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/GnssMeasurement;",
            ">;)",
            "Landroid/location/GnssMeasurementsEvent$Builder;"
        }
    .end annotation

    .line 303
    .local p1, "measurements":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/GnssMeasurement;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    .line 304
    return-object p0
.end method

.method public varargs blacklist setMeasurements([Landroid/location/GnssMeasurement;)Landroid/location/GnssMeasurementsEvent$Builder;
    .registers 3
    .param p1, "measurements"    # [Landroid/location/GnssMeasurement;

    .line 293
    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Landroid/location/GnssMeasurementsEvent$Builder;->mMeasurements:Ljava/util/List;

    .line 295
    return-object p0
.end method
