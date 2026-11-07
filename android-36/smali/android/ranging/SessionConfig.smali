.class public final Landroid/ranging/SessionConfig;
.super Ljava/lang/Object;
.source "SessionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/SessionConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/SessionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

.field private final blacklist mFusionParams:Landroid/ranging/SensorFusionParams;

.field private final blacklist mIsAngleOfArrivalNeeded:Z

.field private final blacklist mRangingMeasurementsLimit:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Landroid/ranging/SessionConfig$1;

    invoke-direct {v0}, Landroid/ranging/SessionConfig$1;-><init>()V

    sput-object v0, Landroid/ranging/SessionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Landroid/ranging/SensorFusionParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/SensorFusionParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/SensorFusionParams;

    iput-object v0, p0, Landroid/ranging/SessionConfig;->mFusionParams:Landroid/ranging/SensorFusionParams;

    .line 52
    const-class v0, Landroid/ranging/DataNotificationConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/DataNotificationConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/DataNotificationConfig;

    iput-object v0, p0, Landroid/ranging/SessionConfig;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/SessionConfig;->mIsAngleOfArrivalNeeded:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/SessionConfig;->mRangingMeasurementsLimit:I

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/SessionConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/SessionConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/SessionConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/SessionConfig$Builder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/ranging/SessionConfig$Builder;->-$$Nest$fgetmFusionParams(Landroid/ranging/SessionConfig$Builder;)Landroid/ranging/SensorFusionParams;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/SessionConfig;->mFusionParams:Landroid/ranging/SensorFusionParams;

    .line 44
    invoke-static {p1}, Landroid/ranging/SessionConfig$Builder;->-$$Nest$fgetmDataNotificationConfig(Landroid/ranging/SessionConfig$Builder;)Landroid/ranging/DataNotificationConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/SessionConfig;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    .line 45
    invoke-static {p1}, Landroid/ranging/SessionConfig$Builder;->-$$Nest$fgetmIsAngleOfArrivalNeeded(Landroid/ranging/SessionConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/SessionConfig;->mIsAngleOfArrivalNeeded:Z

    .line 46
    invoke-static {p1}, Landroid/ranging/SessionConfig$Builder;->-$$Nest$fgetmRangingMeasurementsLimit(Landroid/ranging/SessionConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/SessionConfig;->mRangingMeasurementsLimit:I

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/SessionConfig$Builder;Landroid/ranging/SessionConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/SessionConfig;-><init>(Landroid/ranging/SessionConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 228
    :cond_4
    instance-of v1, p1, Landroid/ranging/SessionConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Landroid/ranging/SessionConfig;

    .line 229
    .local v1, "that":Landroid/ranging/SessionConfig;
    iget-boolean v3, p0, Landroid/ranging/SessionConfig;->mIsAngleOfArrivalNeeded:Z

    iget-boolean v4, v1, Landroid/ranging/SessionConfig;->mIsAngleOfArrivalNeeded:Z

    if-ne v3, v4, :cond_2d

    iget v3, p0, Landroid/ranging/SessionConfig;->mRangingMeasurementsLimit:I

    iget v4, v1, Landroid/ranging/SessionConfig;->mRangingMeasurementsLimit:I

    if-ne v3, v4, :cond_2d

    iget-object v3, p0, Landroid/ranging/SessionConfig;->mFusionParams:Landroid/ranging/SensorFusionParams;

    iget-object v4, v1, Landroid/ranging/SessionConfig;->mFusionParams:Landroid/ranging/SensorFusionParams;

    .line 231
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/ranging/SessionConfig;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    iget-object v4, v1, Landroid/ranging/SessionConfig;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    .line 232
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 229
    :goto_2e
    return v0

    .line 228
    .end local v1    # "that":Landroid/ranging/SessionConfig;
    :cond_2f
    return v2
.end method

.method public whitelist getDataNotificationConfig()Landroid/ranging/DataNotificationConfig;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/ranging/SessionConfig;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    return-object v0
.end method

.method public whitelist getRangingMeasurementsLimit()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/ranging/SessionConfig;->mRangingMeasurementsLimit:I

    return v0
.end method

.method public whitelist getSensorFusionParams()Landroid/ranging/SensorFusionParams;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/ranging/SessionConfig;->mFusionParams:Landroid/ranging/SensorFusionParams;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 240
    iget-object v0, p0, Landroid/ranging/SessionConfig;->mFusionParams:Landroid/ranging/SensorFusionParams;

    iget-object v1, p0, Landroid/ranging/SessionConfig;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    iget-boolean v2, p0, Landroid/ranging/SessionConfig;->mIsAngleOfArrivalNeeded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Landroid/ranging/SessionConfig;->mRangingMeasurementsLimit:I

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 240
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAngleOfArrivalNeeded()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Landroid/ranging/SessionConfig;->mIsAngleOfArrivalNeeded:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionConfig{mFusionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/SessionConfig;->mFusionParams:Landroid/ranging/SensorFusionParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDataNotificationConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/SessionConfig;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAngleOfArrivalNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/ranging/SessionConfig;->mIsAngleOfArrivalNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingMeasurementsLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/SessionConfig;->mRangingMeasurementsLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    iget-object v0, p0, Landroid/ranging/SessionConfig;->mFusionParams:Landroid/ranging/SensorFusionParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Landroid/ranging/SessionConfig;->mDataNotificationConfig:Landroid/ranging/DataNotificationConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-boolean v0, p0, Landroid/ranging/SessionConfig;->mIsAngleOfArrivalNeeded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 63
    iget v0, p0, Landroid/ranging/SessionConfig;->mRangingMeasurementsLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
