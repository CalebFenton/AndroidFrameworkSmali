.class public final Landroid/location/CorrelationVector$Builder;
.super Ljava/lang/Object;
.source "CorrelationVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/CorrelationVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFrequencyOffsetMetersPerSecond:D

.field private blacklist mMagnitude:[I

.field private blacklist mSamplingStartMeters:D

.field private blacklist mSamplingWidthMeters:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyOffsetMetersPerSecond(Landroid/location/CorrelationVector$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/CorrelationVector$Builder;->mFrequencyOffsetMetersPerSecond:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMagnitude(Landroid/location/CorrelationVector$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/location/CorrelationVector$Builder;->mMagnitude:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSamplingStartMeters(Landroid/location/CorrelationVector$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/CorrelationVector$Builder;->mSamplingStartMeters:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSamplingWidthMeters(Landroid/location/CorrelationVector$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/CorrelationVector$Builder;->mSamplingWidthMeters:D

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/CorrelationVector;
    .registers 3

    .line 225
    new-instance v0, Landroid/location/CorrelationVector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/CorrelationVector;-><init>(Landroid/location/CorrelationVector$Builder;Landroid/location/CorrelationVector-IA;)V

    return-object v0
.end method

.method public whitelist setFrequencyOffsetMetersPerSecond(D)Landroid/location/CorrelationVector$Builder;
    .registers 3
    .param p1, "frequencyOffsetMetersPerSecond"    # D

    .line 207
    iput-wide p1, p0, Landroid/location/CorrelationVector$Builder;->mFrequencyOffsetMetersPerSecond:D

    .line 208
    return-object p0
.end method

.method public whitelist setMagnitude([I)Landroid/location/CorrelationVector$Builder;
    .registers 2
    .param p1, "magnitude"    # [I

    .line 214
    iput-object p1, p0, Landroid/location/CorrelationVector$Builder;->mMagnitude:[I

    .line 215
    return-object p0
.end method

.method public whitelist setSamplingStartMeters(D)Landroid/location/CorrelationVector$Builder;
    .registers 3
    .param p1, "samplingStartMeters"    # D

    .line 199
    iput-wide p1, p0, Landroid/location/CorrelationVector$Builder;->mSamplingStartMeters:D

    .line 200
    return-object p0
.end method

.method public whitelist setSamplingWidthMeters(D)Landroid/location/CorrelationVector$Builder;
    .registers 3
    .param p1, "samplingWidthMeters"    # D

    .line 192
    iput-wide p1, p0, Landroid/location/CorrelationVector$Builder;->mSamplingWidthMeters:D

    .line 193
    return-object p0
.end method
