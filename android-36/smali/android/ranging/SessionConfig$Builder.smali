.class public final Landroid/ranging/SessionConfig$Builder;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

.field private blacklist mFusionParams:Landroid/ranging/SensorFusionParams;

.field private blacklist mIsAngleOfArrivalNeeded:Z

.field private blacklist mRangingMeasurementsLimit:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataNotificationConfig(Landroid/ranging/SessionConfig$Builder;)Landroid/ranging/DataNotificationConfig;
    .registers 1

    iget-object p0, p0, Landroid/ranging/SessionConfig$Builder;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFusionParams(Landroid/ranging/SessionConfig$Builder;)Landroid/ranging/SensorFusionParams;
    .registers 1

    iget-object p0, p0, Landroid/ranging/SessionConfig$Builder;->mFusionParams:Landroid/ranging/SensorFusionParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAngleOfArrivalNeeded(Landroid/ranging/SessionConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/SessionConfig$Builder;->mIsAngleOfArrivalNeeded:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingMeasurementsLimit(Landroid/ranging/SessionConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/SessionConfig$Builder;->mRangingMeasurementsLimit:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/ranging/DataNotificationConfig$Builder;

    invoke-direct {v0}, Landroid/ranging/DataNotificationConfig$Builder;-><init>()V

    .line 125
    invoke-virtual {v0}, Landroid/ranging/DataNotificationConfig$Builder;->build()Landroid/ranging/DataNotificationConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/SessionConfig$Builder;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    .line 126
    new-instance v0, Landroid/ranging/SensorFusionParams$Builder;

    invoke-direct {v0}, Landroid/ranging/SensorFusionParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/ranging/SensorFusionParams$Builder;->build()Landroid/ranging/SensorFusionParams;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/SessionConfig$Builder;->mFusionParams:Landroid/ranging/SensorFusionParams;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/ranging/SessionConfig$Builder;->mIsAngleOfArrivalNeeded:Z

    .line 128
    iput v0, p0, Landroid/ranging/SessionConfig$Builder;->mRangingMeasurementsLimit:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/SessionConfig;
    .registers 3

    .line 204
    new-instance v0, Landroid/ranging/SessionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/SessionConfig;-><init>(Landroid/ranging/SessionConfig$Builder;Landroid/ranging/SessionConfig-IA;)V

    return-object v0
.end method

.method public whitelist setAngleOfArrivalNeeded(Z)Landroid/ranging/SessionConfig$Builder;
    .registers 2
    .param p1, "isAngleOfArrivalNeeded"    # Z

    .line 169
    iput-boolean p1, p0, Landroid/ranging/SessionConfig$Builder;->mIsAngleOfArrivalNeeded:Z

    .line 170
    return-object p0
.end method

.method public whitelist setDataNotificationConfig(Landroid/ranging/DataNotificationConfig;)Landroid/ranging/SessionConfig$Builder;
    .registers 2
    .param p1, "config"    # Landroid/ranging/DataNotificationConfig;

    .line 154
    iput-object p1, p0, Landroid/ranging/SessionConfig$Builder;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    .line 155
    return-object p0
.end method

.method public whitelist setRangingMeasurementsLimit(I)Landroid/ranging/SessionConfig$Builder;
    .registers 4
    .param p1, "rangingMeasurementsLimit"    # I

    .line 188
    if-ltz p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 193
    iput p1, p0, Landroid/ranging/SessionConfig$Builder;->mRangingMeasurementsLimit:I

    .line 194
    return-object p0

    .line 190
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging measurements limit must be between 0 and 65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSensorFusionParams(Landroid/ranging/SensorFusionParams;)Landroid/ranging/SessionConfig$Builder;
    .registers 2
    .param p1, "parameters"    # Landroid/ranging/SensorFusionParams;

    .line 140
    iput-object p1, p0, Landroid/ranging/SessionConfig$Builder;->mFusionParams:Landroid/ranging/SensorFusionParams;

    .line 141
    return-object p0
.end method
